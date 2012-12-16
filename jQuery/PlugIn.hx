package jQuery;

import haxe.macro.Expr;
import haxe.macro.Context;
using Lambda;

@:autoBuild(jQuery.Plugin.build())
@:macro class Plugin {
	#if macro
	static var plugins = new Hash<Array<Field>>();
	#end
	
	static public function add(pluginFullName:String):Void {
		plugins.set(pluginFullName, null);
		Context.getType(pluginFullName);
	}
	
	static public function build():Array<Field> {
		var plugin = Context.getLocalClass();
		var pluginFullName = plugin.toString();
		
		if (!plugins.exists(pluginFullName)) 
			Context.error("Missing compiler option: --macro jQuery.Plugin.add('" + pluginFullName + "')", plugin.get().pos);
		
		var fields = Context.getBuildFields();
		plugins.set(pluginFullName, fields);
		return fields;
	}
	
	static public function insert(_static:Bool):Array<Field> {
		var fields = Context.getBuildFields();
		
		if (_static) {
			for (plugin in plugins) {
				for (field in plugin) {
					if (field.access.has(AStatic))
						fields.push(field);
				}
			}
		} else {
			for (plugin in plugins) {
				for (field in plugin) {
					if (!field.access.has(AStatic))
						fields.push(field);
				}
			}
		}
		
		return fields;
	}
}