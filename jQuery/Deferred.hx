package jQuery;

/**
 * jQuery.Deferred, introduced in version 1.5, is a chainable utility object that can register multiple callbacks
 * into callback queues, invoke callback queues, and relay the success or failure state of any synchronous or 
 * asynchronous function.
 * 
 * http://api.jquery.com/category/deferred-object/
 */
#if JQUERY_NOCONFLICT
@:native("jQuery.Deferred")
#else
@:native("$.Deferred")
#end
extern class Deferred {
	public function new(?callb:Dynamic):Void;
	
	/**
	 * Add handlers to be called when the Deferred object is either resolved or rejected.
	 * @param	alwaysCallbacks A function, or array of functions, that is called when the Deferred is resolved or rejected.
	 */
	public function always(alwaysCallbacks:Dynamic):Deferred;
	
	/**
	 * Add handlers to be called when the Deferred object is resolved.
	 * @param	doneCallbacks A function, or array of functions, that are called when the Deferred is resolved.
	 */
	public function done(doneCallbacks:Dynamic):Deferred;
	
	/**
	 * Add handlers to be called when the Deferred object is rejected.
	 * @param	failCallbacks A function, or array of functions, that are called when the Deferred is rejected.
	 */
	public function fail(failCallbacks:Dynamic):Deferred;
	
	/**
	 * Utility method to filter and/or chain Deferreds.
	 * @param	doneFilter An optional function that is called when the Deferred is resolved.
	 * @param	failFilter An optional function that is called when the Deferred is rejected.
	 * @param	An optional function that is called when progress notifications are sent to the Deferred.
	 */
	public function pipe(?doneFilter:Dynamic, ?failFilter:Dynamic, ?progressFilter:Dynamic):Promise;
	
	/**
	 * Reject a Deferred object and call any failCallbacks with the given args.
	 * @param	args Optional arguments that are passed to the failCallbacks.
	 */
	public function reject(?args:Array<Dynamic>):Deferred;
	
	/**
	 * Reject a Deferred object and call any failCallbacks with the given context and args.
	 * @param	context Context passed to the failCallbacks as the this object.
	 * @param	?args Optional arguments that are passed to the failCallbacks.
	 */
	public function rejectWith(context:Dynamic, ?args:Array<Dynamic>):Deferred;
	
	/**
	 * Resolve a Deferred object and call any doneCallbacks with the given args.
	 * @param	?args Optional arguments that are passed to the doneCallbacks.
	 */
	public function resolve(?args:Dynamic):Deferred;
	
	/**
	 * Resolve a Deferred object and call any doneCallbacks with the given context and args.
	 * @param	context Context passed to the doneCallbacks as the this object.
	 * @param	?args Optional arguments that are passed to the doneCallbacks.
	 */
	public function resolveWith(context:Dynamic, ?args:Array<Dynamic>):Deferred;
	
	/**
	 * Add handlers to be called when the Deferred object is resolved or rejected.
	 * @param	doneCallbacks A function, or array of functions, that are called when the Deferred is resolved.
	 * @param	failCallbacks A function, or array of functions, that are called when the Deferred is rejected.
	 * @param	progressCallbacks A function, or array of functions, called when the Deferred notifies progress.
	 */
	public function then(doneCallbacks:Dynamic, failCallbacks:Dynamic, ?progressCallbacks:Dynamic):Deferred;
	
	/**
	 * Return a Deferred's Promise object.
	 * @param	obj If obj is provided, the promise aspect is added to the object
	 */
	public function promise(?obj:Dynamic):Promise;
	
	/**
	 * Call the progressCallbacks on a Deferred object with the given args.
	 * http://api.jquery.com/deferred.notify/
	 * @param	?args Optional arguments that are passed to the progressCallbacks.
	 */
	public function notify(?args:Dynamic):Deferred;
	
	/**
	 * Call the progressCallbacks on a Deferred object with the given context and args.
	 * http://api.jquery.com/deferred.notifyWith/
	 * @param	context Context passed to the progressCallbacks as the this object.
	 * @param	?args Optional arguments that are passed to the progressCallbacks.
	 */
	public function notifyWith(context:Dynamic, ?args:Dynamic):Deferred;
	
	/**
	 * Add handlers to be called when the Deferred object generates progress notifications.
	 * http://api.jquery.com/deferred.progress/
	 * @param progressCallbacks A function, or array of functions, that is called when the Deferred generates progress notifications.
	 */
	@:overload(function(progressCallbacks:Array<Dynamic>):Deferred{})
	public function progress(progressCallbacks:Dynamic):Deferred;
	
	/**
	 * Determine the current state of a Deferred object.
	 * http://api.jquery.com/deferred.state/
	 */
	public function state():String;
	
}