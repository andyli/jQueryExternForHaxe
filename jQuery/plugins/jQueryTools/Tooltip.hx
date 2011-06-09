package jQuery.plugins.jQueryTools;

import jQuery.JQuery;

/**
	Tooltip
	http://flowplayer.org/tools/tooltip/index.html
**/

extern class Tooltip {
	inline static public function tooltip(jQ:JQuery, configuration:Dynamic):JQuery untyped {
		return jQ.tooltip(configuration);
	}

	inline static public function getTooltipAPI(jQ:JQuery):TooltipAPI untyped {
		return jQ.data("tooltip");
	}
	
	inline static public var _static = TooltipStatic;
}

extern class TooltipStatic {
	inline static public function addEffect(name:String, showfunc:Dynamic, hidefunc:Dynamic):Void untyped {
		JQueryStatic.tools.tooltip.addEffect(name, showfunc, hidefunc);
	}
}

extern class TooltipAPI {
	/** 
		Shows the tooltip.
	**/
	public function show():TooltipAPI;

	/**
		Hides the tooltip.
	**/
	public function hide():TooltipAPI;

	/**
		Returns true if the tooltip is visible. Since 1.2.0 you can supply a boolean argument that makes sure that the function returns true only if the tooltip is fully visible (in it's final position and opacity).
	**/
	public function isShown(?fully:Bool):Bool;

	/**
		Returns the tooltip as a jQuery object.
	**/
	public function getTip():JQuery;

	/**
		Returns the triggering element as a jQuery object.
	**/
	public function getTrigger():JQuery;

	/**
		Returns the tooltip configuration.
	**/
	public function getConf():Dynamic;
}

/**
	Dynamic plugin for Tooltip
	http://flowplayer.org/tools/tooltip/dynamic.html
**/

extern class DynamicPlugin {
	inline static public function dynamicPlugin(tooltip:JQuery, configuration:Dynamic):TooltipAPI untyped {
		return tooltip["dynamic"](configuration);
	}
}
