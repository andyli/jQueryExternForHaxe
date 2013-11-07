package jQuery.haxe;

import haxe.macro.Expr;
import haxe.macro.Context;
using Lambda;

#if macro
/**
	Compile-time configuration of jQuery.
**/
@:allow(jQuery.haxe)
class Config {
	static var plugins(default, null):Map<String, Array<Field>> = new Map();
	static var isBuilt(default, null):Bool = false;
	
	/**
		The fields of Promise, got from Deferred.
	**/
	static var promiseFields:Array<Field>;
	@:allow(jQuery) static function getPromiseFields():Array<Field> {
		Context.getType("jQuery.Deferred");
		return promiseFields;
	}
	
	/**
		Add an Plugin extern class. All fields of the class will be injected into JQuery/JQueryStatic.
	**/
	static public function addPlugin(pluginFullName:String):Void {
		//indicate that the Plugin is added by calling this function
		plugins.set(pluginFullName, null);
		
		//force building the Plugin
		Context.getType(pluginFullName);
	}
	
	/**
		Will be set as the value of @:native on JQuery and JQueryStatic.
		Can be "$" or "jQuery". Default to "$". Other values need to be handled manually.
	**/
	static public var native(default, null):String = "$";
	
	/**
		Setter of Config.native.
		Used in hxml: --macro jQuery.haxe.Config.setNative('jQuery')
	**/
	static public function setNative(v:String):String {
		return native = v;
	}
	
	/**
		Define jQuery version to be used.
		Default is the latest version supported.
	**/
	static public var version(default, null):String = "1.10.2";
	
	/**
		Setter of Config.version.
		Used in hxml: --macro jQuery.haxe.Config.setVersion("1.8.3")
	**/
	static public function setVersion(v:String):String {
		return version = v;
	}
	
	/**
		Define if deprecated jQuery APIs are allowed or not.
	**/
	static public var allowDeprecated(default, null):Bool = false;
	
	/**
		Setter of Config.allowDeprecated.
		Used in hxml: --macro jQuery.haxe.Config.setAllowDeprecated(true)
	**/
	static public function setAllowDeprecated(v:Bool):Bool {
		return allowDeprecated = v;
	}
	
	/**
		Build function of all generated extern.
		Used for injecting plugin extern and setting @:native.
	**/
	static public function build():Array<Field> {
		var fields = Context.getBuildFields();
		var cls = Context.getLocalClass();
		var clsType = cls.get();
		var clsName = cls.toString();
		
		switch (clsName) {
			case "jQuery.JQuery":
				//force building JQueryStatic before JQuery, 
				//such that code completion of JQuery._static.| works...
				Context.getType("jQuery.JQueryStatic");
				
				for (plugin in plugins) {
					for (field in plugin) {
						if (!field.access.has(AStatic))
							fields.push(field);
					}
				}
			case "jQuery.JQueryStatic":
				for (plugin in plugins) {
					for (field in plugin) {
						if (field.access.has(AStatic))
							fields.push(field);
					}
				}
			case "jQuery.Event":
				var evtCls = switch (Context.getType("js.html.Event")) {
					case TInst(t, _): t;
					default: throw "js.html.Event should be TInst...";
				}
				var evtFields = evtCls.get().fields.get();
				for (f in fields.copy()) {
					if (evtFields.exists(function(ef) return ef.name == f.name)) {
						switch (f.kind) {
							case FVar(_, _) | FProp(_, _, _, _):
								//simply remove the property, since we cannot override
								fields.remove(f);
							case FFun(_):
								//add override
								f.access.push(AOverride);
						}
					}
				}
			case "jQuery.JqXHR":
				fields = fields.concat(getPromiseFields());
			default:
				//pass
		}
		
		// add @:native
		switch (clsName) {
			case "jQuery.JQuery" | "jQuery.JQueryStatic":
				clsType.meta.add(":native", [macro $v{native}], clsType.pos);
			default:
				var native = native + "." + clsType.name;
				clsType.meta.add(":native", [macro $v{native}], clsType.pos);
		}
		
		// filter and group the fields
		var ver = Utils.toVersion(version);
		var fieldMap = new Map<String, Array<Field>>();
		for (field in fields) {
			// filtering based on @:jQueryVersion
			var jQueryVersionMeta = field.meta.filter(function(m) return m.name == ":jQueryVersion")[0];
			if (jQueryVersionMeta != null) {
				var jQueryVersionMetaVal = jQueryVersionMeta.params[0];
				if (jQueryVersionMetaVal != null) {
					switch (jQueryVersionMetaVal.expr) {
						case EObjectDecl(fields):
							if (fields.exists(function(f):Bool {
								return switch(f) {
									case { field: "added", expr: {expr: EConst(CString(val)), pos:_} }:
										Utils.compareVersion(ver, Utils.toVersion(val)) < 0;
									case { field: "deprecated", expr: {expr: EConst(CString(val)), pos:_} }:
										!allowDeprecated && Utils.compareVersion(ver, Utils.toVersion(val)) >= 0;
									case { field: "removed", expr: {expr: EConst(CString(val)), pos:_} }:
										Utils.compareVersion(ver, Utils.toVersion(val)) >= 0;
									default:
										throw 'Invalid field of @:jQueryVersion: ${f.field}: ${f.expr}';
								}
							})) continue;
						default:
							throw "Param of @:jQueryVersion should be EObjectDecl.";
					}
				}
			}
			
			// valid field, add to fieldMap 
			if (!fieldMap.exists(field.name)) {
				fieldMap.set(field.name, new Array<Field>());
			}
			fieldMap.get(field.name).push(field);
		}
		
		// return new fields with @:overload aggregated
		var newFields = [];
		for (fields in fieldMap) {
			var field = fields.pop();
			field.meta = [];
			
			var docMap = new Map<String,Void>();
			if (field.doc != null)
				docMap.set(field.doc, null);
			
			for (overload in fields) {
				var func:Function = switch(overload.kind) {
					case FFun(f): f;
					default: throw "Should only overload a function.";
				}
				func.expr = macro {};
				field.meta.push({
					name: ":overload",
					params: [{ expr: EFunction(null, func), pos: overload.pos }],
					pos: overload.pos
				});
				
				if (overload.doc != null && !docMap.exists(overload.doc)) {
					field.doc = (field.doc == null ? "" : field.doc + "\n OR: ") + overload.doc;
					docMap.set(overload.doc, null);
				}
			}
			newFields.push(field);
		}
		
		if (clsName == "jQuery.Deferred") {
			promiseFields = [];
			for (field in newFields) {
				if (["then", "done", "fail", "always", "pipe", "isResolved", "isRejected"].indexOf(field.name) == -1)
					continue;
				promiseFields.push(field);
			}
		}
		
		isBuilt = true;
		return newFields;
	}
}
#end
