package jQuery.plugins.jQueryTools;

import jQuery.JQuery;

/**
	Scrollable
	http://flowplayer.org/tools/scrollable/index.html
**/

extern class Scrollable {
	inline static public function scrollable(jQ:JQuery, configuration:Dynamic):JQuery untyped {
		return jQ.scrollable(configuration);
	}

	inline static public function getScrollableAPI(jQ:JQuery):ScrollableAPI untyped {
		return jQ.data("scrollable");
	}
}

extern class ScrollableAPI {
	/** 
		scrollable supports the dynamic addition and removal of scrollable elements and all core functionalities such as circular looping, navigator resizing, browser back button navigation (via toolbox.history) which will work as expected. Take a look at this demo for more details.
	**/
	public function addItem():ScrollableAPI;

	/**
		Moves to the beginning. Identical to seekTo(0).
	**/
	public function begin(?speed:Float):ScrollableAPI;

	/**
		Moves to the end.
	**/
	public function end(?speed:Float):ScrollableAPI;

	/**
		After this call the keyboard arrow keys will control this particular scrollable instance.
	**/
	public function focus():ScrollableAPI;
	
	/**
		Returns the configuration object for the scrollable instance. Note that this object can be modified and the changes are dynamically reflected in the behaviour of the associated scrollable element.
	**/
	public function getConf():Dynamic;
	
	/**
		Returns the current scroll position. This is the index number of the first visible item of the scrollable. Indexing starts from zero.
	**/
	public function getIndex():Int;
	
	/**
		Returns the scrollable items as a jQuery object.
	**/
	public function getItems():JQuery;
	
	/**
		Returns the parent element for the scrollable items as a jQuery object.
	**/
	public function getItemWrap():JQuery;
	
	/**
		Returns navigational buttons (next/prev/prevAll/nextAll) as a single jQuery object. If you are using the navigator plugin it is also appended to this return value.
	**/
	public function getNaviButtons():JQuery;
	
	/**
		Returns the main scrollable element as a jQuery object.
	**/
	public function getRoot():JQuery;
	
	/**
		Returns the amount of items in the scrollable. Identical to getItems().size().
	**/
	public function getSize():Float;

	/** 
		Moves a certain number of items from the current position. For example, move(2) moves two items forward. Negative numbers move backwards.
	**/
	public function move(offset:Float, ?speed:Float):ScrollableAPI;

	/**
		Scrolls one item forward.
	**/
	public function next(?speed:Float):ScrollableAPI;

	/**
		Scrolls one item backward.
	**/
	public function prev(?speed:Float):ScrollableAPI;

	/**
		Seeks to the specified index.
	**/
	public function seekTo(index:Int, ?speed:Float):ScrollableAPI;
}

/**
	Autoscroll plugin
	http://flowplayer.org/tools/scrollable/autoscroll.html
**/

extern class AutoscrollPlugin {
	inline static public function autoscroll(scrollable:JQuery, configuration:Dynamic):JQuery untyped {
		return scrollable.autoscroll(configuration);
	}

	inline static public function getAutoscrollPluginAPI(jQ:JQuery):AutoscrollPluginAPI untyped {
		return jQ.data("scrollable"); //there is no AutoscrollPluginAPI actually but the methods are added into the ScrollableAPI
	}
}

extern class AutoscrollPluginAPI extends ScrollableAPI {
	/**
		Begins a playable autoscroll.
	**/
	public function play():AutoscrollPluginAPI;

	/**
		Pauses the autoscroll and it will resume when the mouse has moved away from the navigational buttons.
	**/
	public function pause():AutoscrollPluginAPI;

	/**
		Stops the autoscroll. Autoscroll can only be resumed by calling the play() method.
	**/
	public function stop():AutoscrollPluginAPI;
}

/**
	Navigator plugin
	http://flowplayer.org/tools/scrollable/navigator.html
**/

extern class NavigatorPlugin {
	inline static public function navigator(scrollable:JQuery, configuration:Dynamic):ScrollableAPI untyped {
		return scrollable.navigator(configuration);
	}
}
