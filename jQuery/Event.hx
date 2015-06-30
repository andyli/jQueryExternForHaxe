/* This file is generated, do not edit! Visit http://api.jquery.com/ for API documentation. */
package jQuery;
@:final @:build(jQuery.haxe.Config.build()) extern class Event extends js.html.Event {
	/**
		The element where the currently-called jQuery event handler was attached.
	**/
	@:jQueryVersion({ added : "1.7" })
	public var delegateTarget : js.html.Node;
	/**
		The namespace specified when the event was triggered.
	**/
	@:jQueryVersion({ added : "1.4.3" })
	public var namespace : String;
	/**
		For key or mouse events, this property indicates the specific key or button that was pressed.
	**/
	@:jQueryVersion({ added : "1.1.3" })
	public var which : Float;
	/**
		  Returns whether <a href="/event.stopPropagation/">event.stopPropagation()</a> was ever called on this event object. 
	**/
	@:jQueryVersion({ added : "1.3" })
	public function isPropagationStopped():Bool;
	/**
		  Returns whether event.stopImmediatePropagation() was ever called on this event object. 
	**/
	@:jQueryVersion({ added : "1.3" })
	public function isImmediatePropagationStopped():Bool;
	/**
		An optional object of data passed to an event method when the current executing handler is bound.  
	**/
	@:jQueryVersion({ added : "1.1" })
	public var data : Dynamic;
	/**
		Indicates whether the META key was pressed when the event fired.
	**/
	@:jQueryVersion({ added : "1.0.4" })
	public var metaKey : Bool;
	/**
		The other DOM element involved in the event, if any.
	**/
	@:jQueryVersion({ added : "1.1.4" })
	public var relatedTarget : js.html.Node;
	/**
		The mouse position relative to the left edge of the document.
	**/
	@:jQueryVersion({ added : "1.0.4" })
	public var pageX : Float;
	/**
		The last value returned by an event handler that was triggered by this event, unless the value was <code>undefined</code>.
	**/
	@:jQueryVersion({ added : "1.3" })
	public var result : Dynamic;
	/**
		Returns whether <a href="/event.preventDefault/">event.preventDefault()</a> was ever called on this event object. 
	**/
	@:jQueryVersion({ added : "1.3" })
	public function isDefaultPrevented():Bool;
	/**
		The mouse position relative to the top edge of the document.
	**/
	@:jQueryVersion({ added : "1.0.4" })
	public var pageY : Float;
}