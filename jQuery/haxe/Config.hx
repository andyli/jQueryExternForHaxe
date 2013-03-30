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
	static var plugins(default, null) = new Map<String, Array<Field>>();
	static var isBuilt(default, null) = false;
	
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
		Build function of all generated extern.
		Used for injecting plugin extern and setting @:native.
	**/
	static public function build():Array<Field> {
		var fields = Context.getBuildFields();
		var cls = Context.getLocalClass();
		var clsType = cls.get();
		switch (cls.toString()) {
			case "jQuery.JQuery":
				for (plugin in plugins) {
					for (field in plugin) {
						if (!field.access.has(AStatic))
							fields.push(field);
					}
				}
				clsType.meta.add(":native", [macro $v{native}], clsType.pos);
			case "jQuery.JQueryStatic":
				for (plugin in plugins) {
					for (field in plugin) {
						if (field.access.has(AStatic))
							fields.push(field);
					}
				}
				clsType.meta.add(":native", [macro $v{native}], clsType.pos);
			default:
				var native = native + "." + clsType.name;
				clsType.meta.add(":native", [macro $v{native}], clsType.pos);
		}
		isBuilt = true;
		return fields;
	}
}
#end
