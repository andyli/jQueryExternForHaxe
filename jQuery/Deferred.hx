/* This file is generated, do not edit! Visit http://api.jquery.com/ for API documentation. */
package jQuery;
@:final @:build(jQuery.haxe.Config.build()) extern class Deferred {
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress. 
	**/
	@:overload @:jQueryVersion({ added : "1.5" ,removed : "1.8" }) public function then( doneCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>>, failCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>> ) : jQuery.Promise;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress. 
	**/
	@:overload @:jQueryVersion({ added : "1.7" ,removed : "1.8" }) public function then( doneCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>>, failCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>>, ?progressCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>> ) : jQuery.Promise;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress. 
	**/
	@:overload @:jQueryVersion({ added : "1.8" }) public function then( doneFilter : Dynamic, ?failFilter : Dynamic, ?progressFilter : Dynamic ) : jQuery.Promise;
	/**
		 Add handlers to be called when the Deferred object is rejected. 
	**/
	@:jQueryVersion({ added : "1.5" }) public function fail( failCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>>, ?failCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>> ) : jQuery.Deferred;
	/**
		 Utility method to filter and/or chain Deferreds.  
	**/
	@:overload @:jQueryVersion({ added : "1.6" ,deprecated : "1.8" }) public function pipe( ?doneFilter : Dynamic, ?failFilter : Dynamic ) : jQuery.Promise;
	/**
		 Utility method to filter and/or chain Deferreds.  
	**/
	@:overload @:jQueryVersion({ added : "1.7" ,deprecated : "1.8" }) public function pipe( ?doneFilter : Dynamic, ?failFilter : Dynamic, ?progressFilter : Dynamic ) : jQuery.Promise;
	/**
		 Reject a Deferred object and call any failCallbacks with the given <code>args</code>. 
	**/
	@:jQueryVersion({ added : "1.5" }) public function reject( ?args : Dynamic ) : jQuery.Deferred;
	/**
		 Determine whether a Deferred object has been rejected. 
	**/
	@:jQueryVersion({ added : "1.5" ,deprecated : "1.7" ,removed : "1.8" }) public function isRejected(  ) : Bool;
	/**
		 Determine whether a Deferred object has been resolved. 
	**/
	@:jQueryVersion({ added : "1.5" ,deprecated : "1.7" ,removed : "1.8" }) public function isResolved(  ) : Bool;
	/**
		 Resolve a Deferred object and call any doneCallbacks with the given <code>context</code> and <code>args</code>. 
	**/
	@:jQueryVersion({ added : "1.5" }) public function resolveWith( context : Dynamic, ?args : Array<Dynamic> ) : jQuery.Deferred;
	/**
		 Add handlers to be called when the Deferred object is either resolved or rejected. 
	**/
	@:jQueryVersion({ added : "1.6" }) public function always( alwaysCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>>, ?alwaysCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>> ) : jQuery.Deferred;
	/**
		 A constructor function that returns a chainable utility object with methods to register multiple callbacks into callback queues, invoke callback queues, and relay the success or failure state of any synchronous or asynchronous function.
	**/
	@:jQueryVersion({ added : "1.5" }) public function new( ?beforeStart : jQuery.Deferred -> Void ) : Void;
	/**
		 Call the progressCallbacks on a Deferred object with the given <code>args</code>. 
	**/
	@:jQueryVersion({ added : "1.7" }) public function notify( args : Dynamic ) : jQuery.Deferred;
	/**
		 Call the progressCallbacks on a Deferred object with the given context and <code>args</code>. 
	**/
	@:jQueryVersion({ added : "1.7" }) public function notifyWith( context : Dynamic, ?args : Dynamic ) : jQuery.Deferred;
	/**
		 Add handlers to be called when the Deferred object generates progress notifications.
	**/
	@:jQueryVersion({ added : "1.7" }) public function progress( progressCallbacks : jQuery.haxe.Either<Dynamic, jQuery.haxe.Either<Array<Dynamic>, Array<Dynamic>>> ) : jQuery.Deferred;
	/**
		 Reject a Deferred object and call any failCallbacks with the given <code>context</code> and <code>args</code>. 
	**/
	@:jQueryVersion({ added : "1.5" }) public function rejectWith( context : Dynamic, ?args : Array<Dynamic> ) : jQuery.Deferred;
	/**
		 Return a Deferred's Promise object. 
	**/
	@:jQueryVersion({ added : "1.5" }) public function promise( ?target : Dynamic ) : jQuery.Promise;
	/**
		Determine the current state of a Deferred object. 
	**/
	@:jQueryVersion({ added : "1.7" }) public function state(  ) : String;
	/**
		 Add handlers to be called when the Deferred object is resolved. 
	**/
	@:jQueryVersion({ added : "1.5" }) public function done( doneCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>>, ?doneCallbacks : jQuery.haxe.Either<Dynamic, Array<Dynamic>> ) : jQuery.Deferred;
	/**
		 Resolve a Deferred object and call any doneCallbacks with the given <code>args</code>. 
	**/
	@:jQueryVersion({ added : "1.5" }) public function resolve( ?args : Dynamic ) : jQuery.Deferred;
}