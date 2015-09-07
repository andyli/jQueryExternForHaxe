/* This file is generated, do not edit! Visit http://api.jquery.com/ for API documentation. */
package js.jquery;
@:build(js.jquery.Config.build()) extern class Event extends js.html.Event {
	/**
		An optional object of data passed to an event method when the current executing handler is bound.  
	**/
	@:jQueryVersion({ added : "1.1" })
	public var data : Dynamic;
	/**
		The element where the currently-called jQuery event handler was attached.
	**/
	@:jQueryVersion({ added : "1.7" })
	public var delegateTarget : js.html.Element;
	/**
		Returns whether <a href="/event.preventDefault/">event.preventDefault()</a> was ever called on this event object. 
	**/
	@:jQueryVersion({ added : "1.3" })
	public function isDefaultPrevented():Bool;
	/**
		  Returns whether event.stopImmediatePropagation() was ever called on this event object. 
	**/
	@:jQueryVersion({ added : "1.3" })
	public function isImmediatePropagationStopped():Bool;
	/**
		  Returns whether <a href="/event.stopPropagation/">event.stopPropagation()</a> was ever called on this event object. 
	**/
	@:jQueryVersion({ added : "1.3" })
	public function isPropagationStopped():Bool;
	/**
		Indicates whether the META key was pressed when the event fired.
	**/
	@:jQueryVersion({ added : "1.0.4" })
	public var metaKey : Bool;
	/**
		The namespace specified when the event was triggered.
	**/
	@:jQueryVersion({ added : "1.4.3" })
	public var namespace : String;
	/**
		The mouse position relative to the left edge of the document.
	**/
	@:jQueryVersion({ added : "1.0.4" })
	public var pageX : Float;
	/**
		The mouse position relative to the top edge of the document.
	**/
	@:jQueryVersion({ added : "1.0.4" })
	public var pageY : Float;
	/**
		The other DOM element involved in the event, if any.
	**/
	@:jQueryVersion({ added : "1.1.4" })
	public var relatedTarget : js.html.Element;
	/**
		The last value returned by an event handler that was triggered by this event, unless the value was <code>undefined</code>.
	**/
	@:jQueryVersion({ added : "1.3" })
	public var result : Dynamic;
	/**
		For key or mouse events, this property indicates the specific key or button that was pressed.
	**/
	@:jQueryVersion({ added : "1.1.3" })
	public var which : Float;
	public var altKey : Bool;
	public var button : Int;
	public var buttons : Int;
	public var char : Int;
	public var charCode : Int;
	public var clientX : Int;
	public var clientY : Int;
	public var ctrlKey : Bool;
	public var detail : Int;
	public var key : String;
	public var keyCode : Int;
	public var offsetX : Int;
	public var offsetY : Int;
	public var screenX : Int;
	public var screenY : Int;
	public var shiftKey : Bool;
	public var toElement : js.html.Element;
	public var view : js.html.Window;
}