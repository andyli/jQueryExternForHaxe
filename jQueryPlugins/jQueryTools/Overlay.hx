package jQueryPlugins.jQueryTools;

import JQuery;

/**
	Overlay
	http://flowplayer.org/tools/overlay/index.html
**/

extern class Overlay {
	inline static public function overlay(jQ:JQuery, configuration:Dynamic):JQuery untyped {
		return jQ.overlay(configuration);
	}

	inline static public function getOverlayAPI(jQ:JQuery):OverlayAPI untyped {
		return jQ.data("overlay");
	}
}

extern class OverlayS {
	inline static public function addEffect(name:String, loadfunc:Dynamic, closefunc:Dynamic):Void untyped {
		JQueryS.tools.overlay.addEffect(name, loadfunc, closefunc);
	}
}

extern class OverlayAPI {
	/** 
		Closes the overlay.
	**/
	public function close():OverlayAPI;

	/**
		Returns the closing element(s) as a jQuery object.
	**/
	public function getClosers():JQuery;

	/**
		Returns the configuration for the overlay.
	**/
	public function getConf():Dynamic;
	
	/**
		Returns the overlayed element as a jQuery object.
	**/
	public function getOverlay():JQuery;

	/**
		Returns the triggering element as a jQuery object.
	**/
	public function getTrigger():JQuery;

	/**
		Returns true if the overlay is opened.
	**/
	public function isOpened():Bool;
	
	/** 
		Opens the overlay.
	**/
	public function load():OverlayAPI;
}
