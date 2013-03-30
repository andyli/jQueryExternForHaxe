/* This file is generated, do not edit! */
package jQuery;
@:final @:build(jQuery.haxe.Config.build()) extern class Callbacks {
	/**
		Disable a callback list from doing anything more.
	**/
	public function disable():jQuery.Callbacks;
	/**
		Remove all of the callbacks from a list.
	**/
	public function empty():jQuery.Callbacks;
	/**
		Determine whether a supplied callback is in a list
	**/
	public function has(callback:Dynamic):Bool;
	/**
		Determine if the callbacks list has been locked.
	**/
	public function locked():Bool;
	/**
		A multi-purpose callbacks list object that provides a powerful way to manage callback lists.
	**/
	public function new(flags:String):Void;
	/**
		Call all of the callbacks with the given arguments
	**/
	public function fire(arguments:Dynamic):jQuery.Callbacks;
	/**
		Call all callbacks in a list with the given context and arguments.
	**/
	public function fireWith(?context:Dynamic,?args:Dynamic):jQuery.Callbacks;
	/**
		Add a callback or a collection of callbacks to a callback list.
	**/
	@:overload(function (callbacks:Dynamic):jQuery.Callbacks {
	}) public function add(callbacks:Array<Dynamic>):jQuery.Callbacks;
	/**
		Lock a callback list in its current state.
	**/
	public function lock():jQuery.Callbacks;
	/**
		Determine if the callbacks have already been called at least once.
	**/
	public function fired():Bool;
	/**
		Remove a callback or a collection of callbacks from a callback list.
	**/
	@:overload(function (callbacks:Dynamic):jQuery.Callbacks {
	}) public function remove(callbacks:Array<Dynamic>):jQuery.Callbacks;
	/**
		Determine if the callbacks list has been disabled.
	**/
	public function disabled():Bool;
}