/* This file is generated, do not edit! Visit https://api.jquery.com/ for API documentation. */
package js.jquery;
@:build(js.jquery.Config.build()) extern class Callbacks {
	/**
		Add a callback or a collection of callbacks to a callback list.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function add(callbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):js.jquery.Callbacks;
	/**
		Disable a callback list from doing anything more.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function disable():js.jquery.Callbacks;
	/**
		Determine if the callbacks list has been disabled.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function disabled():Bool;
	/**
		Remove all of the callbacks from a list.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function empty():js.jquery.Callbacks;
	/**
		Call all of the callbacks with the given arguments.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function fire(arguments:Dynamic):js.jquery.Callbacks;
	/**
		Call all callbacks in a list with the given context and arguments.
	**/
	@:jQueryVersion({ added : "1.7" })
	public function fireWith(?context:Dynamic, ?args:haxe.extern.EitherType<Array<Dynamic>, js.html.NodeList>):js.jquery.Callbacks;
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
	public function lock():js.jquery.Callbacks;
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
	public function remove(callbacks:haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.Constraints.Function>>):js.jquery.Callbacks;
}