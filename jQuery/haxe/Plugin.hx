package jQuery.haxe;

import haxe.macro.Expr;
import haxe.macro.Context;
using Lambda;

@:native("JQueryPlugin")
@:autoBuild(jQuery.haxe.Plugin.build())
class Plugin {
	#if macro
	static public function build():Array<Field> {
		var plugin = Context.getLocalClass();
		var pluginClass = plugin.get();
		var pluginFullName = plugin.toString();
		
		var compilerOption = "--macro jQuery.haxe.Config.addPlugin('" + pluginFullName + "')";
		
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
		return fields;
	}
	#end
}