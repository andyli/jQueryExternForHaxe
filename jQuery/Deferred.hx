/* This file is generated, do not edit! */
package jQuery;
@:final @:build(jQuery.haxe.Config.build()) extern class Deferred {
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress. 
	**/
	@:overload(function (doneCallbacks:Array<Dynamic>,failCallbacks:Dynamic):jQuery.Promise {
	}) @:overload(function (doneCallbacks:Dynamic,failCallbacks:Array<Dynamic>):jQuery.Promise {
	}) @:overload(function (doneCallbacks:Dynamic,failCallbacks:Dynamic):jQuery.Promise {
	}) @:overload(function (doneCallbacks:Array<Dynamic>,failCallbacks:Array<Dynamic>,?progressCallbacks:Array<Dynamic>):jQuery.Promise {
	}) @:overload(function (doneCallbacks:Array<Dynamic>,failCallbacks:Array<Dynamic>,?progressCallbacks:Dynamic):jQuery.Promise {
	}) @:overload(function (doneCallbacks:Array<Dynamic>,failCallbacks:Dynamic,?progressCallbacks:Array<Dynamic>):jQuery.Promise {
	}) @:overload(function (doneCallbacks:Array<Dynamic>,failCallbacks:Dynamic,?progressCallbacks:Dynamic):jQuery.Promise {
	}) @:overload(function (doneCallbacks:Dynamic,failCallbacks:Array<Dynamic>,?progressCallbacks:Array<Dynamic>):jQuery.Promise {
	}) @:overload(function (doneCallbacks:Dynamic,failCallbacks:Array<Dynamic>,?progressCallbacks:Dynamic):jQuery.Promise {
	}) @:overload(function (doneCallbacks:Dynamic,failCallbacks:Dynamic,?progressCallbacks:Array<Dynamic>):jQuery.Promise {
	}) @:overload(function (doneCallbacks:Dynamic,failCallbacks:Dynamic,?progressCallbacks:Dynamic):jQuery.Promise {
	}) @:overload(function (doneFilter:Dynamic,?failFilter:Dynamic,?progressFilter:Dynamic):jQuery.Promise {
	}) public function then(doneCallbacks:Array<Dynamic>,failCallbacks:Array<Dynamic>):jQuery.Promise;
	/**
		 Add handlers to be called when the Deferred object is rejected. 
	**/
	@:overload(function (failCallbacks:Array<Dynamic>,?failCallbacks:Dynamic):jQuery.Deferred {
	}) @:overload(function (failCallbacks:Dynamic,?failCallbacks:Array<Dynamic>):jQuery.Deferred {
	}) @:overload(function (failCallbacks:Dynamic,?failCallbacks:Dynamic):jQuery.Deferred {
	}) public function fail(failCallbacks:Array<Dynamic>,?failCallbacks:Array<Dynamic>):jQuery.Deferred;
	/**
		 Utility method to filter and/or chain Deferreds.  
	**/
	@:overload(function (?doneFilter:Dynamic,?failFilter:Dynamic,?progressFilter:Dynamic):jQuery.Promise {
	}) public function pipe(?doneFilter:Dynamic,?failFilter:Dynamic):jQuery.Promise;
	/**
		 Reject a Deferred object and call any failCallbacks with the given <code>args</code>. 
	**/
	public function reject(args:Dynamic):jQuery.Deferred;
	/**
		 Determine whether a Deferred object has been rejected. 
	**/
	public function isRejected():Bool;
	/**
		 Determine whether a Deferred object has been resolved. 
	**/
	public function isResolved():Bool;
	/**
		 Resolve a Deferred object and call any doneCallbacks with the given <code>context</code> and <code>args</code>. 
	**/
	public function resolveWith(context:Dynamic,?args:Array<Dynamic>):jQuery.Deferred;
	/**
		 Add handlers to be called when the Deferred object is either resolved or rejected. 
	**/
	@:overload(function (alwaysCallbacks:Array<Dynamic>,?alwaysCallbacks:Dynamic):jQuery.Deferred {
	}) @:overload(function (alwaysCallbacks:Dynamic,?alwaysCallbacks:Array<Dynamic>):jQuery.Deferred {
	}) @:overload(function (alwaysCallbacks:Dynamic,?alwaysCallbacks:Dynamic):jQuery.Deferred {
	}) public function always(alwaysCallbacks:Array<Dynamic>,?alwaysCallbacks:Array<Dynamic>):jQuery.Deferred;
	/**
		 A constructor function that returns a chainable utility object with methods to register multiple callbacks into callback queues, invoke callback queues, and relay the success or failure state of any synchronous or asynchronous function.
	**/
	public function new(?beforeStart:jQuery.Deferred->Void):Void;
	/**
		 Call the progressCallbacks on a Deferred object with the given <code>args</code>. 
	**/
	public function notify(args:Dynamic):jQuery.Deferred;
	/**
		 Call the progressCallbacks on a Deferred object with the given context and <code>args</code>. 
	**/
	public function notifyWith(context:Dynamic,?args:Dynamic):jQuery.Deferred;
	/**
		 Add handlers to be called when the Deferred object generates progress notifications.
	**/
	@:overload(function (progressCallbacks:Dynamic):jQuery.Deferred {
	}) public function progress(progressCallbacks:Array<Dynamic>):jQuery.Deferred;
	/**
		 Reject a Deferred object and call any failCallbacks with the given <code>context</code> and <code>args</code>. 
	**/
	public function rejectWith(context:Dynamic,?args:Array<Dynamic>):jQuery.Deferred;
	/**
		 Return a Deferred's Promise object. 
	**/
	public function promise(?target:Dynamic):jQuery.Promise;
	/**
		Determine the current state of a Deferred object. 
	**/
	public function state():String;
	/**
		 Add handlers to be called when the Deferred object is resolved. 
	**/
	@:overload(function (doneCallbacks:Array<Dynamic>,?doneCallbacks:Dynamic):jQuery.Deferred {
	}) @:overload(function (doneCallbacks:Dynamic,?doneCallbacks:Array<Dynamic>):jQuery.Deferred {
	}) @:overload(function (doneCallbacks:Dynamic,?doneCallbacks:Dynamic):jQuery.Deferred {
	}) public function done(doneCallbacks:Array<Dynamic>,?doneCallbacks:Array<Dynamic>):jQuery.Deferred;
	/**
		 Resolve a Deferred object and call any doneCallbacks with the given <code>args</code>. 
	**/
	@:overload(function (args:Dynamic):jQuery.Deferred {
	}) public function resolve():jQuery.Deferred;
}