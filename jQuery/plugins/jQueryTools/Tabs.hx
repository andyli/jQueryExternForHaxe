package jQuery.plugins.jQueryTools;

import jQuery.JQuery;

/**
	Tabs
	http://flowplayer.org/tools/tabs/index.html
**/

extern class Tabs {
	inline static public function tabs(jQ:JQuery, pane_selector:String, configuration:Dynamic):JQuery untyped {
		return jQ.tabs(pane_selector, configuration);
	}

	inline static public function getTabsAPI(jQ:JQuery):TabsAPI untyped {
		return jQ.data("tabs");
	}
	
	inline static public var _static = TabsStatic;
}

extern class TabsStatic {
	inline static public function addEffect(name:String, func:Dynamic):Void untyped {
		JQueryStatic.tools.tabs.addEffect(name, func);
	}
}

extern class TabsAPI {
	/** 
		Activates the tab specified in the argument. The argument can be either an integer number specifying the tab index (starting from 0) or, when the tabs are a tags, it can be the href attribute as a quoted string. 
	**/
	public function click(index:Dynamic):TabsAPI;

	/**
		Since 1.2.3 completely removes existing tabs instance.
	**/
	public function destroy():TabsAPI;

	/**
		Since 1.0.1. Returns the configuration object for the tabs instance. This object can be modified and the changes are dynamically reflected in the behaviour of the tabs.
	**/
	public function getConf():Dynamic;

	/**
		Returns the current pane as a jQuery object.
	**/
	public function getCurrentPane():JQuery;

	/**
		Returns the current tab as a jQuery object.
	**/
	public function getCurrentTab():JQuery;

	/**
		Returns the current tab index number.
	**/
	public function getIndex():Int;

	/**
		Returns the panes as a jQuery object.
	**/
	public function getPanes():JQuery;

	/**
		Returns the tabs as a jQuery object.
	**/
	public function getTabs():JQuery;

	/**
		Advances to the next tab.
	**/
	public function next():TabsAPI;

	/**
		Advances to the previous tab.
	**/
	public function prev():TabsAPI;
}


/**
	Slideshow plugin for Tabs
	http://flowplayer.org/tools/tabs/slideshow.html
**/

extern class SlideshowPlugin {
	inline static public function slideshow(tabs:JQuery, configuration:Dynamic):JQuery untyped {
		return tabs.slideshow(configuration);
	}

	inline static public function getSlideshowPluginAPI(jQ:JQuery):SlideshowPluginAPI untyped {
		return jQ.data("slideshow");
	}
}

extern class SlideshowPluginAPI {
	/**
		since 1.2.0. returns the configuration object for this plugin
	**/
	public function getConf():Dynamic;

	/**
		since 1.2.0. returns a reference to the Tabs API.
	**/
	public function getTabs():TabsAPI;

	/**
		Begins a playable slideshow.
	**/
	public function play():SlideshowPluginAPI;

	/**
		Pauses the slideshow. Playback will resume when the mouse has moved away from the tabs, panes and navigational buttons.
	**/
	public function pause():SlideshowPluginAPI;

	/**
		Stops the slideshow. This can only be resumed by calling the play() method.
	**/
	public function stop():SlideshowPluginAPI;
}
