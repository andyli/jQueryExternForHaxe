package jQuery;

/**
 * This object provides a subset of the methods of the Deferred object (then, done, fail, always, pipe, state) to prevent users from changing the state of the Deferred.
 * http://api.jquery.com/Types/#Promise
 */
typedef Promise = {
	public function always(alwaysCallbacks:Dynamic):Deferred;
	public function pipe(?doneFilter:Dynamic, ?failFilter:Dynamic, ?progressFilter:Dynamic):Promise;
	public function promise(?obj:Dynamic):Promise;
	public function fail(failCallbacks:Dynamic):Promise;
	public function done(doneCallbacks:Dynamic):Promise;
	public function then(doneCallbacks:Dynamic, failCallbacks:Dynamic, ?progressCallbacks:Dynamic):Promise;
	public function state():String;
}