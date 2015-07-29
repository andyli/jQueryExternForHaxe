/* This file is generated, do not edit! Visit http://api.jquery.com/ for API documentation. */
package jQuery;
@:deprecated("Use js.jquery.Callbacks instead.")
@:final @:build(jQuery.haxe.Config.build()) extern class Callbacks {
	/**
		Add a callback or a collection of callbacks to a callback list.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function add(callbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):jQuery.Callbacks;
	/**
		Disable a callback list from doing anything more.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function disable():jQuery.Callbacks;
	/**
		Determine if the callbacks list has been disabled.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function disabled():Bool;
	/**
		Remove all of the callbacks from a list.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function empty():jQuery.Callbacks;
	/**
		Call all of the callbacks with the given arguments.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function fire(arguments:Dynamic):jQuery.Callbacks;
	/**
		Call all callbacks in a list with the given context and arguments.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function fireWith(?context:Dynamic, ?args:Dynamic):jQuery.Callbacks;
	/**
		Determine if the callbacks have already been called at least once.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function fired():Bool;
	/**
		Determine whether or not the list has any callbacks attached. If a callback is provided as an argument, determine whether it is in a list.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function has(?callback:haxe.Constraints.Function):Bool;
	/**
		Lock a callback list in its current state.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function lock():jQuery.Callbacks;
	/**
		Determine if the callbacks list has been locked.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function locked():Bool;
	/**
		A multi-purpose callbacks list object that provides a powerful way to manage callback lists.
	**/
	@:selfCall
	@:jQueryVersion({ added : "1.7" })
	public function new(flags:String):Void;
	/**
		Remove a callback or a collection of callbacks from a callback list.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function remove(callbacks:jQuery.haxe.Either<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):jQuery.Callbacks;
}