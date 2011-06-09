package jQuery.plugins.jQueryTools;

import jQuery.JQuery;

/**
	Expose
	http://flowplayer.org/tools/toolbox/expose.html
**/

extern class Expose {
	inline static public function expose(jQ:JQuery, configuration:Dynamic):JQuery untyped {
		return jQ.expose(configuration);
	}

	inline static public function getExposeAPI(jQ:JQuery):ExposeAPI untyped {
		return jQ.data("expose");
	}
}

extern class ExposeAPI {
	/** 
		Closes the mask.
	**/
	public function close():ExposeAPI;

	/**
		Forces the mask to fill the whole document. This is usually not needed since the tool itself does this. You'll need this on occasions when the mask is loaded and your document has grown in size in the meantime.
	**/
	public function fit():ExposeAPI;

	/**
		Returns true if mask is active.
	**/
	public function isLoaded():Bool;
	
	/**
		Returns the mask as a jQuery object. You can use jQuery methods such as css or animate to modify it.
	**/
	public function getMask():JQuery;

	/**
		Returns exposed elements (if any) as a jQuery object.
	**/
	public function getExposed():JQuery;

	/**
		Returns the masking configuration.
	**/
	public function getConf():Dynamic;
}
