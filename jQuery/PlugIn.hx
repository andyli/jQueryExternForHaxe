package jQuery;

import haxe.macro.Expr;
import haxe.macro.Context;
using Lambda;

@:autoBuild(jQuery.Plugin.build())
class Plugin {
	#if macro
	static public var plugins(default, null) = new Map<String, Array<Field>>();
	static public var isInserted(default, null) = false;
	static public var isInsertedStatic(default, null) = false;
	
	static public function add(pluginFullName:String):Void {
		//indicate that the Plugin is added by calling this function
		plugins.set(pluginFullName, null);
		
		//force building the Plugin
		Context.getType(pluginFullName);
	}
	#end
	
	static public function build():Array<Field> {
		var plugin = Context.getLocalClass();
		var pluginClass = plugin.get();
		var pluginFullName = plugin.toString();
		
		var compilerOption = "--macro jQuery.Plugin.add('" + pluginFullName + "')";
		
		if (Context.defined("debug") && !plugins.exists(pluginFullName))
			Context.warning('JQuery plugin being imported without compiler option: $compilerOption', pluginClass.pos);
		
		if (isInserted || isInsertedStatic) 
			Context.error('JQuery class is already built before inserting plugin. Most likely due to missing compiler option: $compilerOption', pluginClass.pos);
		
		if (!pluginClass.isExtern)
			Context.error("Plugin is for extern only.", pluginClass.pos);
		
		//mark the Plugin final
		pluginClass.meta.add(":final", [], pluginClass.pos);
		
		var fields = Context.getBuildFields();
		plugins.set(pluginFullName, fields);
		return fields;
	}
	
	static public function insert():Array<Field> {		
		var fields = Context.getBuildFields();
		
		for (plugin in plugins) {
			for (field in plugin) {
				if (!field.access.has(AStatic))
					fields.push(field);
			}
		}
		
		isInserted = true;
		
		return fields;
	}
	
	static public function insertStatic():Array<Field> {
		var fields = Context.getBuildFields();
		
		for (plugin in plugins) {
			for (field in plugin) {
				if (field.access.has(AStatic))
					fields.push(field);
			}
		}
		
		isInsertedStatic = true;
			
		return fields;
	}
}