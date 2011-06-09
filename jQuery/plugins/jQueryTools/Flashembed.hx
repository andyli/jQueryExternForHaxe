package jQuery.plugins.jQueryTools;

import js.Dom;
import jQuery.JQuery;

/**
	Flashembed
	http://flowplayer.org/tools/toolbox/flashembed.html
**/

extern class Flashembed {
	inline static public function flashembed(jQ:JQuery, configuration:Dynamic, flashvars:Dynamic):JQuery untyped {
		return jQ.flashembed(configuration, flashvars);
	}

	inline static public function getFlashembedAPI(jQ:JQuery):FlashembedAPI untyped {
		return jQ.data("flashembed");
	}
	
	inline static public var _static = FlashembedStatic;
}

extern class FlashembedStatic {
	/**
		Converts given Object to a JSON encoded string. The object can contain any JavaScript literals such as strings, arrays and other objects on any level. Function properties are converted to a string: function().
	**/
	inline static public function asString(obj:Dynamic):String untyped {
		return flashembed.asString(obj);
	}

	/**
		Returns the embedding code for the given embedding options and optional Flash configuration. This method is useful if you want to quickly generate the object tag for your Flash objects so that you don't need to use JavaScript on your pages.
	**/
	inline static public function getHTML(configuration:Dynamic, flashvars:Dynamic):String untyped {
		return flashembed.getHTML(configuration, flashvars);
	}

	/**
		Returns the Flash version of the user. Returns the array [major, fix]. For example: [9,45]. If Flash is not installed at all a [0, 0] is returned.
	**/
	inline static public function getVersion():Array<Int> untyped {
		return flashembed.getVersion();
	}

	/**
		Whether the given version is supported. Example: flashembed.isSupported([9, 0]);
	**/
	inline static public function isSupported(version:Array<Int>):Array<Int> untyped {
		return flashembed.isSupported(version);
	}
}

extern class FlashembedAPI {
	/** 
		Some Flash objects have a JavaScript API. This method returns a pointer to that API.
	**/
	public function getApi():Dom;

	/**
		Returns the optional configuration for the Flash object (3rd argument).
	**/
	public function getConf():Dynamic;

	/**
		Returns the embedding options for the Flash component (2nd argument).
	**/
	public function getOptions():Dynamic;
	
	/**
		Returns the container for the Flash object
	**/
	public function getRoot():Dom;
}
