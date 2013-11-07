/* This file is generated, do not edit! Visit http://api.jquery.com/ for API documentation. */
package jQuery;
@:final @:build(jQuery.haxe.Config.build()) extern class Event extends js.html.Event {
	/**
		The element where the currently-called jQuery event handler was attached.
	**/
	@:jQueryVersion({ added : "1.7" }) public var delegateTarget : js.html.Node;
	/**
		The namespace specified when the event was triggered.
	**/
	@:jQueryVersion({ added : "1.4.3" }) public var namespace : String;
	/**
		Keeps the rest of the handlers from being executed and prevents the event from bubbling up the DOM tree.
	**/
	@:jQueryVersion({ added : "1.3" }) public function stopImmediatePropagation(  ) : Void;
	/**
		For key or mouse events, this property indicates the specific key or button that was pressed.
	**/
	@:jQueryVersion({ added : "1.1.3" }) public var which : Float;
	/**
		  Returns whether <a href="/event.stopPropagation/">event.stopPropagation()</a> was ever called on this event object. 
	**/
	@:jQueryVersion({ added : "1.3" }) public function isPropagationStopped(  ) : Bool;
	/**
		  Returns whether event.stopImmediatePropagation() was ever called on this event object. 
	**/
	@:jQueryVersion({ added : "1.3" }) public function isImmediatePropagationStopped(  ) : Bool;
	/**
		If this method is called, the default action of the event will not be triggered.
	**/
	@:jQueryVersion({ added : "1.0" }) public function preventDefault(  ) : Void;
	/**
		 The DOM element that initiated the event.  
	**/
	@:jQueryVersion({ added : "1.0" }) public var target : js.html.Node;
	/**
		An optional object of data passed to an event method when the current executing handler is bound.  
	**/
	@:jQueryVersion({ added : "1.1" }) public var data : Dynamic;
	/**
		Prevents the event from bubbling up the DOM tree, preventing any parent handlers from being notified of the event.
	**/
	@:jQueryVersion({ added : "1.0" }) public function stopPropagation(  ) : Void;
	/**
		Describes the nature of the event.
	**/
	@:jQueryVersion({ added : "1.0" }) public var type : String;
	/**
		Indicates whether the META key was pressed when the event fired.
	**/
	@:jQueryVersion({ added : "1.0.4" }) public var metaKey : Bool;
	/**
		The other DOM element involved in the event, if any.
	**/
	@:jQueryVersion({ added : "1.1.4" }) public var relatedTarget : js.html.Node;
	/**
		The difference in milliseconds between the time the browser created the event and January 1, 1970.
	**/
	@:jQueryVersion({ added : "1.2.6" }) public var timeStamp : Float;
	/**
		The mouse position relative to the left edge of the document.
	**/
	@:jQueryVersion({ added : "1.0.4" }) public var pageX : Float;
	/**
		The last value returned by an event handler that was triggered by this event, unless the value was <code>undefined</code>.
	**/
	@:jQueryVersion({ added : "1.3" }) public var result : Dynamic;
	/**
		 The current DOM element within the event bubbling phase.  
	**/
	@:jQueryVersion({ added : "1.3" }) public var currentTarget : js.html.Node;
	/**
		Returns whether <a href="/event.preventDefault/">event.preventDefault()</a> was ever called on this event object. 
	**/
	@:jQueryVersion({ added : "1.3" }) public function isDefaultPrevented(  ) : Bool;
	/**
		The mouse position relative to the top edge of the document.
	**/
	@:jQueryVersion({ added : "1.0.4" }) public var pageY : Float;
}