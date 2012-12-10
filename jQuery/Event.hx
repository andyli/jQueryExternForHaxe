package jQuery;

import js.html.*;

#if JQUERY_NOCONFLICT
@:native("jQuery.Event")
#else
@:native("$.Event")
#end
extern class Event {
	public function new(name:String):Void;

	/**
		The current DOM element within the event bubbling phase.
	**/
	public var currentTarget:HtmlElement;

	/**
		Contains the optional data passed to jQuery.fn.bind when the current executing handler was bound.
	**/
	public var data:Dynamic;

	/**
		Returns whether event.preventDefault() was ever called on this event object.
	**/
	public function isDefaultPrevented():Bool;

	/**
		Returns whether event.stopImmediatePropagation() was ever called on this event object.
	**/
	public function isImmediatePropagationStopped():Bool;

	/**
		Returns whether event.stopPropagation() was ever called on this event object.
	**/
	public function isPropagationStopped():Bool;

	/**
		This attribute contains the namespace specified when the event was triggered.
	**/
	public var namespace:String;

	/**
		The mouse position relative to the left edge of the document.
	**/
	public var pageX:Float;

	/**
		The mouse position relative to the top edge of the document.
	**/
	public var pageY:Float;

	/**
		If this method is called, the default action of the event will not be triggered.
	**/
	public function preventDefault():Void;

	/**
		The other DOM element involved in the event, if any.
	**/
	public var relatedTarget:HtmlElement;

	/**
		This attribute contains the last value returned by an event handler that was triggered by this event, unless the value was undefined.
	**/
	public var result:Dynamic;

	/**
		Prevents other event handlers from being called.
	**/
	public function stopImmediatePropagation():Void;

	/**
		Prevents the event from bubbling up the DOM tree, preventing any parent handlers from being notified of the event.
	**/
	public function stopPropagation():Void;

	/**
		The DOM element that initiated the event.
	**/
	public var target:HtmlElement;

	/**
		This attribute returns the number of milliseconds since January 1, 1970, when the event is triggered.
	**/
	public var timeStamp:Float;

	/**
		Describes the nature of the event.
	**/
	public var type:String;

	/**
		For key or button events, this attribute indicates the specific button or key that was pressed.
	**/
	public var which:Int;
	
	/**
		The event object that haven't processed by jQuery
	**/
	public var originalEvent:js.html.Event;
	
	/**
	 * The element where the currently-called jQuery event handler was attached.
	 * http://api.jquery.com/event.delegateTarget/
	 */
	public var delegateTarget:HtmlElement;
	
	
	
	/** <code>true</code> if the alt key was down when the mouse event was fired. <strong>Read only.</strong> */
	var altKey (default,null) :Bool;
	
	/** A boolean indicating whether the event bubbles up through the DOM or not. */
	var bubbles (default,null) :Bool;
	
	/** The button number that was pressed when the mouse event was fired:&nbsp;Left button=0, middle button=1 (if present), right button=2. For mice configured for left handed use in which the button actions are reversed the values are instead read from right to left. <strong>Read only.</strong> */
	var button (default,null) :Int;
	
	/** A boolean indicating whether the event is cancelable. */
	var cancelable (default,null) :Bool;
	
	var charCode (default,null) :Int;
	
	/** The X coordinate of the mouse pointer in local (DOM content)&nbsp;coordinates. <strong>Read only.</strong> */
	var clientX (default,null) :Int;
	
	/** The Y coordinate of the mouse pointer in local (DOM content)&nbsp;coordinates. <strong>Read only.</strong> */
	var clientY (default,null) :Int;
	
	/** <code>true</code> if the control key was down when the mouse event was fired. <strong>Read only.</strong> */
	var ctrlKey (default,null) :Bool;
	
	/** Detail about the event, depending on the type of event. <strong>Read only.</strong> */
	var detail (default,null) :Int;
	
	/** Indicates which phase of the event flow is being processed. */
	var eventPhase (default,null) :Int;
	
	/** <code>true</code> if the Meta (or Command, on Mac) key was active when the key event was generated. <strong>Read only.</strong> */
	var metaKey (default,null) :Bool;
	
	var offsetX (default,null) :Int;

	var offsetY (default,null) :Int;
	
	var prevValue (default,null) :String;
	
	/** The X coordinate of the mouse pointer in global (screen)&nbsp;coordinates. <strong>Read only.</strong> */
	var screenX (default,null) :Int;

	/** The Y coordinate of the mouse pointer in global (screen)&nbsp;coordinates. <strong>Read only.</strong> */
	var screenY (default,null) :Int;
	
	/** <code>true</code> if the shift key was down when the mouse event was fired. <strong>Read only.</strong> */
	var shiftKey (default,null) :Bool;
	
	/** A view which generated the event. <strong>Read only.</strong> */
	var view (default,null) :DOMWindow;
}