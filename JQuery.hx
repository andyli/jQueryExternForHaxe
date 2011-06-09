package;

/*
 * JQuery is now put inside the package "jQuery".
 * You should "import jQuery.JQuery" instead of using this one.
 * You can try -D JQUERY_NO_DEPRECATED to mirgate piece by piece.
 */

#if !JQUERY_NO_DEPRECATED
import jQuery.JQuery;

typedef JQuery = jQuery.JQuery;
typedef JQueryS = jQuery.JQueryStatic;
typedef JQueryPromise = jQuery.Promise;
typedef JQueryDeferred = jQuery.Deferred;
typedef JqXHR = jQuery.JqXHR;
typedef JQueryEvent = jQuery.Event;
#end