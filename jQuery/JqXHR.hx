package jQuery;

import js.html.*;

/**
 * The jQuery XMLHttpRequest (JqXHR) object returned by $.ajax(), as of jQuery 1.5, is a superset
 * of the browser's native XMLHttpRequest object. For example, it contains responseText and
 * responseXML properties, as well as a getResponseHeader() method. When the transport mechanism 
 * is something other than XMLHttpRequest (for example, a script tag for a JSONP request) the JqXHR 
 * object simulates native XHR functionality where possible.
 * 
 * http://api.jquery.com/jQuery.ajax
 */
@:final @:build(jQuery.haxe.Config.build())
extern class JqXHR extends XMLHttpRequest {
	private function new():Void; //use JQueryStatic.ajax() to create;
	
	/* JqXHR also implements Promise. (Done by the build macros.) */
}