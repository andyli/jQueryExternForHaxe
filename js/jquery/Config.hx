package js.jquery;

import js.jquery.*;
import haxe.macro.Expr;
import haxe.macro.Context;
using Lambda;

#if macro
/**
	Compile-time configuration of jQuery.
**/
@:noPackageRestrict
@:allow(js.jquery)
class Config {
	static var plugins(default, null):Map<String, Array<Field>> = new Map();
	static var isBuilt(default, null):Bool = false;
	
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
		Used in hxml: --macro js.jquery.Config.setNative('jQuery')
	**/
	static public function setNative(v:String):String {
		return native = v;
	}
	
	/**
		jQuery version to be used. Encoded as dot-format, e.g. "1.11.3".
		Default is the version supported by haxe std lib.
	**/
	static public var version(get, never):String;
	static function get_version():String {
		var jquery_ver = haxe.macro.Compiler.getDefine("jquery_ver");
		return Utils.parseIntVersion(Std.parseInt(jquery_ver)).join(".");
	}
	
	/**
		Setter of Config.version.
		Used in hxml: --macro js.jquery.Config.setVersion("1.8.3")
	**/
	static public function setVersion(v:String):String {
		haxe.macro.Compiler.define("jquery_ver", v);
		return v;
	}
	
	/**
		Define if deprecated jQuery APIs are allowed or not.
	**/
	static public var allowDeprecated(default, null):Bool = true;
	
	/**
		Setter of Config.allowDeprecated.
		Used in hxml: --macro js.jquery.Config.setAllowDeprecated(true)
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
		var clsType = Context.getLocalClass().get();
		
		// add @:native
		switch (clsType.name) {
			case "JQuery":
				clsType.meta.add(":native", [macro $v{native}], clsType.pos);

				for (plugin in plugins) {
					for (field in plugin) {
						fields.push(field);
					}
				}
			default:
				var native = native + "." + clsType.name;
				clsType.meta.add(":native", [macro $v{native}], clsType.pos);
		}
		
		// filter and group the fields
		var ver = Utils.parseStringVersion(version);
		var instanceFieldMap = new Map<String, Array<Field>>();
		var staticFieldMap = new Map<String, Array<Field>>();
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
										val = val.split("/")[0];
										Utils.compareVersion(ver, Utils.parseStringVersion(val)) < 0;
									case { field: "deprecated", expr: {expr: EConst(CString(val)), pos:_} }:
										!allowDeprecated && Utils.compareVersion(ver, Utils.parseStringVersion(val)) >= 0;
									case { field: "removed", expr: {expr: EConst(CString(val)), pos:_} }:
										Utils.compareVersion(ver, Utils.parseStringVersion(val)) >= 0;
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
			var fieldMap = if (field.access.has(AStatic))
				staticFieldMap;
			else
				instanceFieldMap;

			if (!fieldMap.exists(field.name)) {
				fieldMap.set(field.name, new Array<Field>());
			}
			fieldMap.get(field.name).push(field);
		}
		
		// return new fields with @:overload aggregated
		var newFields = [];
		for (fieldMap in [staticFieldMap, instanceFieldMap])
		for (fields in fieldMap) {
			var field = fields.shift();
			field.meta = [
				for (m in field.meta)
				if (![":overload", ":jQueryVersion"].has(m.name))
				m
			];
			
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
		
		isBuilt = true;
		return newFields;
	}
}
#end
