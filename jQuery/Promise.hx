package jQuery;

#if macro
import haxe.macro.Context;
#end
#if !macro extern #end class PromiseBuilder {
	#if macro
	public static function build():haxe.macro.Type {
		return Context.typeof({expr: ECheckType(macro null, TAnonymous(jQuery.haxe.Config.getPromiseFields())), pos:Context.currentPos()});
	}
	#end
}

/**
	This object provides a subset of the methods of the Deferred object (then, done, fail, always, pipe, isResolved, and isRejected) to prevent users from changing the state of the Deferred.
	http://api.jquery.com/Types/#Promise
**/
typedef Promise = haxe.macro.MacroType<[jQuery.PromiseBuilder.build()]>;