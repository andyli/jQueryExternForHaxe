package jQuery.haxe;

import haxe.macro.Expr;
import haxe.macro.Context;
using Lambda;

@:native("JQueryConfig")
class Config {
	#if macro
	static public var plugins(default, null) = new Map<String, Array<Field>>();
	static public var isBuilt(default, null) = false;
	
	static public function addPlugin(pluginFullName:String):Void {
		//indicate that the Plugin is added by calling this function
		plugins.set(pluginFullName, null);
		
		//force building the Plugin
		Context.getType(pluginFullName);
	}
	#end
	
	static public function build():Array<Field> {		
		var fields = Context.getBuildFields();
		var cls = Context.getLocalClass();
		switch (cls.toString()) {
			case "jQuery.JQuery":
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
			default:
				//pass
		}
		isBuilt = true;
		return fields;
	}
}
