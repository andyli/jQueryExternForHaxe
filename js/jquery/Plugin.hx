package js.jquery;

import js.jquery.*;
import haxe.macro.Expr;
import haxe.macro.Context;

/**
	Plugin is macro-based, responsible for copy-and-pasting the fields in the extern classes
	into JQuery and JQueryStatic.
	
	To write a jQuery plugin extern, create an extern class that implements Plugin, 
	and start writing the members as if writing directly inside the JQuery class.
	
	To use an plugin extern, add the following compiler option:
	--macro js.jquery.Plugin.add('pack.JQueryPlugIn')
**/

@:noPackageRestrict
#if !macro @:autoBuild(js.jquery.PluginBuilder.build()) #end
extern interface Plugin {}

@:noPackageRestrict
#if !macro extern #end
class PluginBuilder {
	#if macro
	static public function build():Array<Field> {
		var plugin = Context.getLocalClass();
		var pluginClass = plugin.get();
		var pluginFullName = plugin.toString();
		
		var compilerOption = "--macro js.jquery.Config.addPlugin('" + pluginFullName + "')";
		
		if (Context.defined("debug") && !Config.plugins.exists(pluginFullName))
			Context.warning('JQuery plugin being imported without compiler option: $compilerOption', pluginClass.pos);
		
		if (Config.isBuilt) 
			Context.error('JQuery class is already built before inserting plugin. Most likely due to missing compiler option: $compilerOption', pluginClass.pos);
		
		if (!pluginClass.isExtern)
			Context.error("Plugin is for extern only.", pluginClass.pos);
		
		//mark the Plugin final
		pluginClass.meta.add(":final", [], pluginClass.pos);
		
		var fields = Context.getBuildFields();
		Config.plugins.set(pluginFullName, fields);
		return [];
	}
	#end
}