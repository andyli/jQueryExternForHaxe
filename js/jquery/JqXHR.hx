/* This file is generated, do not edit! Visit https://api.jquery.com/ for API documentation. */
package js.jquery;
@:build(js.jquery.Config.build()) extern class JqXHR extends js.html.XMLHttpRequest {
	/**
		Add handlers to be called when the Deferred object is either resolved or rejected.
	**/
	@:jQueryVersion({ added : "1.6" })
	public function always(alwaysCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, ?alwaysCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):js.jquery.Deferred;
	/**
		Add handlers to be called when the Deferred object is resolved.
	**/
	@:jQueryVersion({ added : "1.5" })
	public function done(doneCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, ?doneCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):js.jquery.Deferred;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	@:jQueryVersion({ added : "1.5" })
	public function fail(failCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, ?failCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):js.jquery.Deferred;
	/**
		Determine whether a Deferred object has been rejected.
	**/
	@:jQueryVersion({ added : "1.5", deprecated : "1.7", removed : "1.8" })
	public function isRejected():Bool;
	/**
		Determine whether a Deferred object has been resolved.
	**/
	@:jQueryVersion({ added : "1.5", deprecated : "1.7", removed : "1.8" })
	public function isResolved():Bool;
	/**
		Utility method to filter and/or chain Deferreds.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6", deprecated : "1.8" })
	public function pipe(?doneFilter:haxe.Constraints.Function, ?failFilter:haxe.Constraints.Function):js.jquery.Promise;
	/**
		Utility method to filter and/or chain Deferreds.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7", deprecated : "1.8" })
	public function pipe(?doneFilter:haxe.Constraints.Function, ?failFilter:haxe.Constraints.Function, ?progressFilter:haxe.Constraints.Function):js.jquery.Promise;
	/**
		Add handlers to be called when the Deferred object generates progress notifications.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function progress(progressCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<Array<Dynamic>, Array<haxe.Constraints.Function>>>, ?progressCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<Array<Dynamic>, Array<haxe.Constraints.Function>>>):js.jquery.Deferred;
	/**
		Determine the current state of a Deferred object.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function state():String;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
	**/
	@:overload
	@:jQueryVersion({ added : "1.5", removed : "1.8" })
	public function then(doneCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, failCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):js.jquery.Promise;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
	**/
	@:overload
	@:jQueryVersion({ added : "1.8" })
	public function then(doneFilter:haxe.Constraints.Function, ?failFilter:haxe.Constraints.Function, ?progressFilter:haxe.Constraints.Function):js.jquery.Promise;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7", removed : "1.8" })
	public function then(doneCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, failCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, ?progressCallbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):js.jquery.Promise;
}