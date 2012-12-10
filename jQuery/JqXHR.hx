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
extern class JqXHR extends XMLHttpRequest {
	private function new():Void; //use JQueryStatic.ajax() to create;
	
	public function error(callb:Dynamic):JqXHR;
	public function success(callb:Dynamic):JqXHR;
	public function complete(callb:Dynamic):JqXHR;
	public function statusCode(callb:Dynamic):JqXHR;
	
	/* following are already in Haxe's XMLHttpRequest
	
	public var readyState:Int;
	public var responseText:String;
	public var responseXML:Element;
	public var status:Int;
	public var statusText:String;
	public function abort() : Void;
	public function getAllResponseHeaders():String;
	public function getResponseHeader( name:String ):String;
	public function setRequestHeader( name:String, value:String ):Void;
	*/
	
	
	/*
	 * The JqXHR objects returned by $.ajax() implement the Promise interface, giving them all the properties, methods, and behavior of a Promise (see Deferred object for more information).
	 */
	
	 /**
	 * Add handlers to be called when the Deferred object is either resolved or rejected.
	 * @param	alwaysCallbacks A function, or array of functions, that is called when the Deferred is resolved or rejected.
	 */
	public function always(alwaysCallbacks:Dynamic):Deferred;
	
	/**
	 * Utility method to filter and/or chain Deferreds.
	 * @param	doneFilter An optional function that is called when the Deferred is resolved.
	 * @param	failFilter An optional function that is called when the Deferred is rejected.
	 * @param	An optional function that is called when progress notifications are sent to the Deferred.
	 */
	public function pipe(?doneFilter:Dynamic, ?failFilter:Dynamic, ?progressFilter:Dynamic):Promise;
	
	/**
	 * Add handlers to be called when the Deferred object is resolved.
	 * @param	doneCallbacks A function, or array of functions, that are called when the Deferred is resolved.
	 */
	public function done(doneCallbacks:Dynamic):JqXHR;
	
	/**
	 * Add handlers to be called when the Deferred object is rejected.
	 * @param	failCallbacks A function, or array of functions, that are called when the Deferred is rejected.
	 */
	public function fail(failCallbacks:Dynamic):JqXHR;
	
	/**
	 * Add handlers to be called when the Deferred object is resolved or rejected.
	 * @param	doneCallbacks A function, or array of functions, that are called when the Deferred is resolved.
	 * @param	failCallbacks A function, or array of functions, that are called when the Deferred is rejected.
	 * @param	progressCallbacks A function, or array of functions, called when the Deferred notifies progress.
	 */
	public function then(doneCallbacks:Dynamic, failCallbacks:Dynamic, ?progressCallbacks:Dynamic):JqXHR;
	
	/**
	 * Get a promise for this deferred.
	 * @param	obj If obj is provided, the promise aspect is added to the object
	 */
	public function promise(?obj:Dynamic):Promise;
	
	public function state():String;
}