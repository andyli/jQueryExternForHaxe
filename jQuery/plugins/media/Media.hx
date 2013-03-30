package jQuery.plugins.media;

import jQuery.*;

/**
	jQuery Media Plugin
	http://jquery.malsup.com/media/
**/

extern class Media implements jQuery.haxe.Plugin {
	/**
	 * Converts the matched set of elements to <div> elements which contain rich media. The media method accepts three arguments, all of which are optional.
	 * @param	jQ
	 * @param	configuration An object literal that is used to override the global defaults.
	 */
	public function media(configuration:Dynamic):JQuery;
	
	/**
	 * Converts the matched set of elements to <div> elements which contain rich media. The media method accepts three arguments, all of which are optional.
	 * @param	jQ
	 * @param	configuration An object literal that is used to override the global defaults.
	 * @param	fn1 Callback function which is passed the original element and the options, before conversion to media
	 * @param	fn2 Callback function which is passed the original element, the new <div> element and the options
	 */
	public function mediaWithCallbacks(jQ:JQuery, configuration:Dynamic, fn1:Dynamic, fn2:Dynamic):JQuery;
	
	/**
	 * Associates a media type with a specific media player. This can be used to override a default mapping or to add a new media type.
	 * @param	type Any media type, such as swf, mov, mp3, etc
	 * @param	player One of: flash, quicktime, realplayer, silverlight, winmedia or iframe
	 */
	inline static public function mediaMapFormat(type:String, player:String):Void untyped {
		JQuery._static.fn.media.mapFormat(type, player);
	}
	
	inline static var mediaDefaults(get_mediaDefaults, set_mediaDefaults):Dynamic;
	
	inline static private function get_mediaDefaults():Dynamic untyped {
		return JQuery._static.fn.media.defaults;
	}
	inline static private function set_mediaDefaults(val:Dynamic):Dynamic untyped {
		return JQuery._static.fn.media.defaults = val;
	}
}