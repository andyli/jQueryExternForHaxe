/* This file is generated, do not edit! Visit http://api.jquery.com/ for API documentation. */
package jQuery;
@:final @:genericBuild(jQuery.haxe.Config.buildPromise()) @:build(jQuery.haxe.Config.build()) extern class Promise {
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress. 
	**/
	@:overload
	@:jQueryVersion({ added : "1.5", removed : "1.8" })
	public function then(doneCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, failCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):jQuery.Promise;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress. 
	**/
	@:overload
	@:jQueryVersion({ added : "1.8" })
	public function then(doneFilter:haxe.Constraints.Function, ?failFilter:haxe.Constraints.Function, ?progressFilter:haxe.Constraints.Function):jQuery.Promise;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress. 
	**/
	@:overload
	@:jQueryVersion({ added : "1.7", removed : "1.8" })
	public function then(doneCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, failCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, ?progressCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):jQuery.Promise;
	/**
		 Add handlers to be called when the Deferred object is rejected. 
	**/
	@:jQueryVersion({ added : "1.5" })
	public function fail(failCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, ?failCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):jQuery.Deferred;
	/**
		 Utility method to filter and/or chain Deferreds.  
	**/
	@:overload
	@:jQueryVersion({ added : "1.6", deprecated : "1.8" })
	public function pipe(?doneFilter:haxe.Constraints.Function, ?failFilter:haxe.Constraints.Function):jQuery.Promise;
	/**
		 Utility method to filter and/or chain Deferreds.  
	**/
	@:overload
	@:jQueryVersion({ added : "1.7", deprecated : "1.8" })
	public function pipe(?doneFilter:haxe.Constraints.Function, ?failFilter:haxe.Constraints.Function, ?progressFilter:haxe.Constraints.Function):jQuery.Promise;
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
		 Add handlers to be called when the Deferred object is either resolved or rejected. 
	**/
	@:jQueryVersion({ added : "1.6" })
	public function always(alwaysCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, ?alwaysCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):jQuery.Deferred;
	/**
		 Add handlers to be called when the Deferred object generates progress notifications.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function progress(progressCallbacks:jQuery.haxe.Either<jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, Array<Dynamic>>, ?progressCallbacks:jQuery.haxe.Either<jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, Array<Dynamic>>):jQuery.Deferred;
	/**
		Determine the current state of a Deferred object. 
	**/
	@:jQueryVersion({ added : "1.7" })
	public function state():String;
	/**
		 Add handlers to be called when the Deferred object is resolved. 
	**/
	@:jQueryVersion({ added : "1.5" })
	public function done(doneCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>, ?doneCallbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):jQuery.Deferred;
}