package jQuery;

/**
 * A multi-purpose callbacks list object that provides a powerful way to manage callback lists.
 * http://api.jquery.com/jQuery.Callbacks/
 * Supported Flags
 * 	- once
 * 	- memory
 *  - unique
 * 	- stopOnFalse
 */
#if JQUERY_NOCONFLICT
@:native("jQuery.Callbacks")
#else
@:native("$.Callbacks")
#end
extern class Callbacks {
	public function new(?flags:Dynamic):Void;
	
	/**
	 * Add a callback or a collection of callbacks to a callback list.
	 * http://api.jquery.com/callbacks.add/
	 */
	@:overload(function(callbacks:Array<Dynamic>):Void{})
	public function add(callbacks:Dynamic):Void;
	
	/**
	 * Remove a callback or a collection of callbacks from a callback list.
	 * http://api.jquery.com/callbacks.remove/
	 */
	@:overload(function(callbacks:Array<Dynamic>):Void{})
	public function remove(callbacks:Dynamic):Void;
	
	/**
	 * Call all of the callbacks with the given arguments
	 * http://api.jquery.com/callbacks.fire/
	 */
	public function fire(argurments:Dynamic):Void;
	
	/**
	 * Call all callbacks in a list with the given context and arguments.
	 * http://api.jquery.com/callbacks.fireWith/
	 */
	public function fireWith(context:Dynamic, args:Array<Dynamic>):Void;
	
	/**
	 * Determine if the callbacks have already been called at least once.
	 * http://api.jquery.com/callbacks.fired/
	 */
	public function fired():Bool;
	
	/**
	 * Disable a callback list from doing anything more.
	 * http://api.jquery.com/callbacks.disable/
	 */
	public function disable():Void;
	
	/**
	 * Determine whether a supplied callback is in a list
	 * http://api.jquery.com/callbacks.has/
	 */
	public function has(callbck:Dynamic):Bool;
	
	/**
	 * Remove all of the callbacks from a list.
	 * http://api.jquery.com/callbacks.empty/
	 */
	public function empty():Void;
	
	/**
	 * Lock a callback list in its current state.
	 * http://api.jquery.com/callbacks.lock/
	 */
	public function lock():Void;
	
	/**
	 * Determine if the callbacks list has been locked.
	 * http://api.jquery.com/callbacks.locked/
	 */
	public function locked():Bool;
	
}