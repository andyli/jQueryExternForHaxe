package jQuery;

import js.html.*;

#if JQUERY_NOCONFLICT
@:native("jQuery")
#else
@:native("$")
#end
extern class JQuery implements ArrayAccess<Element> {	
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
		Or creates DOM elements on the fly from the provided string of raw HTML.
		Or binds a function to be executed when the DOM has finished loading.
	**/
	public function new(in1:Dynamic,?in2:Dynamic):Void;

	/**
		Add elements to the set of matched elements.
	**/
	public function add(ele:Dynamic, ?context:Document):JQuery;

	/**
		Adds the specified class(es) to each of the set of matched elements.
	**/
	public function addClass(className:Dynamic):JQuery;

	/**
		Insert content, specified by the parameter, after each element in the set of matched elements.
	**/
	@:overload(function(content:Array<JQuery>):JQuery{})
	@:overload(function(content:Array<Element>):JQuery{})
	@:overload(function(content:String):JQuery{})
	@:overload(function(content:Element):JQuery{})
	@:overload(function(content:Int->Dynamic):JQuery{})
	public function after(content:JQuery):JQuery;

	/**
		Register a handler to be called when Ajax requests complete. This is an Ajax Event.
	**/
	public function ajaxComplete(handler:Dynamic):JQuery;

	/**
		Register a handler to be called when Ajax requests complete with an error. This is an Ajax Event.
	**/
	public function ajaxError(handler:Dynamic):JQuery;

	/**
		Show a message before an Ajax request is sent.
	**/
	public function ajaxSend(handler:Dynamic):JQuery;

	/**
		Register a handler to be called when the first Ajax request begins. This is an Ajax Event.
	**/
	public function ajaxStart(handler:Dynamic):JQuery;

	/**
		Hide a loading message after all the Ajax requests have stopped.
	**/
	public function ajaxStop(handler:Dynamic):JQuery;

	/**
		Show a message when an Ajax request completes successfully.
	**/
	public function ajaxSuccess(handler:Dynamic):JQuery;

	/**
		Add the previous set of elements on the stack to the current set.
	**/
	public function andSelf():JQuery;

	/**
		Perform a custom animation of a set of CSS properties.
	**/
	public function animate(properties:Dynamic, ?durationOrOptions:Dynamic, ?easing:Dynamic, ?callBack:Dynamic):JQuery;

	/**
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
	**/
	@:overload(function(content:Array<JQuery>):JQuery{})
	@:overload(function(content:Array<Element>):JQuery{})
	@:overload(function(content:String):JQuery{})
	@:overload(function(content:Element):JQuery{})
	@:overload(function(content:Int->String->Dynamic):JQuery{})
	public function append(content:JQuery):JQuery;

	/**
		Insert every element in the set of matched elements to the end of the target.
	**/
	public function appendTo(target:Dynamic):JQuery;

	/**
		Get the value of an attribute for the first element in the set of matched elements.
	**/
	@:overload(function(attributeName:String, valueOrFunction:Dynamic):JQuery{})
	public function attr(attributeName:String):String;

	/**
		Insert content, specified by the parameter, before each element in the set of matched elements.
	**/
	@:overload(function(content:Array<JQuery>):JQuery{})
	@:overload(function(content:Array<Element>):JQuery{})
	@:overload(function(content:String):JQuery{})
	@:overload(function(content:Element):JQuery{})
	@:overload(function(content:Int->Dynamic):JQuery{})
	public function before(content:JQuery):JQuery;

	/**
		Attach a handler to an event for the elements.
	**/
	public function bind(eventType:Dynamic, ?eventData:Dynamic, ?handlerOrFalse:Dynamic):JQuery;

	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	public function blur(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	public function change(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Get the children of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function children(?selector:String):JQuery;

	/**
		Remove from the queue all items that have not yet been run.
	**/
	public function clearQueue(?queueName:String):JQuery;

	/**
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
	**/
	public function click(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
	 * Create a deep copy of the set of matched elements.
	 * @param	?withDataAndEvents A Boolean indicating whether event handlers and data should be copied along with the elements. The default value is false.*For 1.5.0 the default value is incorrectly true. This will be changed back to false in 1.5.1 and up.
	 * @param	?deepWithDataAndEvents A Boolean indicating whether event handlers and data for all children of the cloned element should be copied. By default its value matches the first argument's value (which defaults to false).
	 */
	public function clone(?withDataAndEvents:Bool, ?deepWithDataAndEvents:Bool):JQuery;

	/**
		Get the first ancestor element that matches the selector, beginning at the current element and progressing up through the DOM tree.
	**/
	public function closest(selector:Dynamic, ?context:Dynamic):JQuery;

	/**
		Gets an array of all the elements and selectors matched against the current element up through the DOM tree.
		This method is primarily meant to be used internally or by plugin authors.
	**/
	inline public function closestMulti(selectors:Dynamic, ?context:Dynamic):Array<{selector:String, elem:Element}> {
		return cast closest(selectors, context);
	}

	/**
		Get the children of each element in the set of matched elements, including text nodes.
	**/
	public function contents():JQuery;
	
	/**
		The DOM node context originally passed to jQuery(); if none was passed then context will likely be the document.
	**/
	public var context:Document;
	
	/**
		Get the value of a style property for the first element in the set of matched elements.
	**/
	@:overload(function(attributeName:String, valueOrFunction:Dynamic):JQuery{})
	public function css(attributeName:String):String;

	/**
		Store arbitrary data associated with the matched elements.
	**/
	@:overload(function(key:String, value:Dynamic):JQuery{})
	public function data(?key:String):Dynamic;

	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	public function dblclick(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Set a timer to delay execution of subsequent items in the queue.
	**/
	public function delay(duration:Int, ?queueName:String):JQuery;

	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	public function delegate(selector:String, eventType:String, ?eventData:Dynamic, handler:Dynamic):JQuery;

	/**
		Execute the next function on the queue for the matched elements.
	**/
	public function dequeue(?queueName:String):JQuery;

	/**
		Remove the set of matched elements from the DOM.
	**/
	public function detach(?selector:String):JQuery;

	/**
		Remove all event handlers previously attached using .live() from the elements.
	**/
	public function die(?eventType:String,?handler:Dynamic):JQuery;

	/**
		Iterate over a jQuery object, executing a function for each matched element.
	**/
	public function each(callBack:Dynamic):JQuery;

	/**
		Remove all child nodes of the set of matched elements from the DOM.
	**/
	public function empty():JQuery;

	/**
		End the most recent filtering operation in the current chain and return the set of matched elements to its previous state.
	**/
	public function end():JQuery;

	/**
		Reduce the set of matched elements to the one at the specified index.
	**/
	public function eq(index:Int):JQuery;

	/**
		Bind an event handler to the "error" JavaScript event.
		#11733: Deprecate .load(), .unload(), and .error() methods
	**/
	public function error(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Display the matched elements by fading them to opaque.
	**/
	public function fadeIn(?duration:Dynamic, ?easingOrCallback:Dynamic ,?callBack:Dynamic):JQuery;

	/**
		Hide the matched elements by fading them to transparent.
	**/
	public function fadeOut(?duration:Dynamic,?easingOrCallback:Dynamic ,?callBack:Dynamic):JQuery;

	/**
		Adjust the opacity of the matched elements.
	**/
	public function fadeTo(duration:Dynamic, opacity:Float, ?easingOrCallback:Dynamic , ?callBack:Dynamic):JQuery;
	
	/**
		Display or hide the matched elements by animating their opacity.
	 **/
	public function fadeToggle(?duration:Dynamic, ?easing:Dynamic, ?callBack:Dynamic):JQuery;

	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test.
	**/
	public function filter(selectorOrFunction:Dynamic):JQuery;

	/**
		Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
	**/
	public function find(selector:Dynamic):JQuery;

	/**
		Reduce the set of matched elements to the first in the set.
	**/
	public function first():JQuery;

	/**
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
	**/
	public function focus(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "focusin" JavaScript event.
	**/
	public function focusin(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "focusout" JavaScript event.
	**/
	public function focusout(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Retrieve the DOM elements matched by the jQuery object.
	**/
	public function get(?index:Int):Dynamic;

	/**
		Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
	**/
	public function has(ele:Dynamic):JQuery;

	/**
		Determine whether any of the matched elements are assigned the given class.
	**/
	public function hasClass(className:String):Bool;

	/**
		Get the current computed height for the first element in the set of matched elements.
	**/
	@:overload(function(valueOrFunction:Dynamic):JQuery{})
	public function height():Int;

	/**
		Hide the matched elements.
	**/
	public function hide(?duration:Dynamic, ?easingOrCallback:Dynamic, ?callBack:Dynamic):JQuery;

	/**
		Bind two handlers to the matched elements, to be executed when the mouse pointer enters and leaves the elements.
	**/
	public function hover(?handler:Dynamic,?handler2:Dynamic):JQuery;

	/**
		Get the HTML contents of the first element in the set of matched elements.
	**/
	@:overload(function(valueOrFunction:Dynamic):JQuery{})
	public function html():String;

	/**
		Search for a given element from among the matched elements.
	**/
	public function index(?ele:Dynamic):Int;

	/**
		Get the current computed height for the first element in the set of matched elements, including padding but not border.
	**/
	public function innerHeight():Int;

	/**
		Get the current computed width for the first element in the set of matched elements, including padding but not border.
	**/
	public function innerWidth():Int;

	/**
		Insert every element in the set of matched elements after the target.
	**/
	public function insertAfter(target:Dynamic):JQuery;

	/**
		Insert every element in the set of matched elements before the target.
	**/
	public function insertBefore(target:Dynamic):JQuery;

	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
	**/
	public function is(selector:Dynamic):Bool;

	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	public function keydown(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	public function keypress(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	public function keyup(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Reduce the set of matched elements to the final one in the set.
	**/
	public function last():JQuery;

	/**
		The number of elements in the jQuery object.
	**/
	public var length(default,null):Int;

	/**
		Attach a handler to the event for all elements which match the current selector, now or in the future.
	**/
	public function live(eventType:String, ?eventData:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Load data from the server and place the returned HTML into the matched element.
		Bind an event handler to the "load" JavaScript event.
		#11733: Deprecate .load(), .unload(), and .error() methods
	**/
	public function load(urlOrEventDataOrHandler:Dynamic, ?dataOrHandler:Dynamic, ?complete:Dynamic):JQuery;

	/**
		Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.
	**/
	public function map(callBack:Dynamic):JQuery;

	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	public function mousedown(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	public function mouseenter(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	public function mouseleave(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	public function mousemove(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	public function mouseout(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	public function mouseover(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	public function mouseup(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Get the immediately following sibling of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function next(?selector:String):JQuery;

	/**
		Get all following siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function nextAll(?selector:String):JQuery;

	/**
		Get all following siblings of each element up to but not including the element matched by the selector.
	**/
	public function nextUntil(?selector:String):JQuery;

	/**
		Remove elements from the set of matched elements.
	**/
	public function not(ele:Dynamic):JQuery;

	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the document.
	**/
	@:overload(function(coordinatesOrFunction:Dynamic):JQuery{})
	public function offset():{top:Float, left:Float};

	/**
		Get the closest ancestor element that is positioned.
	**/
	public function offsetParent():JQuery;

	/**
		Attach a handler to an event for the elements. The handler is executed at most once per element.
	**/
	public function one(eventType:Dynamic, ?eventData:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Get the current computed height for the first element in the set of matched elements, including padding and border.
		#10877: Make outerWidth/Height a setter
	**/
	@:overload(function(value:Int):JQuery{})
	public function outerHeight(?includeMargin:Bool):Int;

	/**
		Get the current computed width for the first element in the set of matched elements, including padding and border.
		#10877: Make outerWidth/Height a setter
	**/
	@:overload(function(value:Int):JQuery{})
	public function outerWidth(?includeMargin:Bool):Int;

	/**
		Get the parent of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	public function parent(?selector:String):JQuery;

	/**
		Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	public function parents(?selector:String):JQuery;

	/**
		Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector.
	**/
	public function parentsUntil(?selector:String):JQuery;

	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the offset parent.
	**/
	public function position():{top:Float, left:Float};

	/**
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
	**/
	@:overload(function(content:Array<JQuery>):JQuery{})
	@:overload(function(content:Array<Element>):JQuery{})
	@:overload(function(content:String):JQuery{})
	@:overload(function(content:Element):JQuery{})
	@:overload(function(content:Int->String->Dynamic):JQuery{})
	public function prepend(content:JQuery):JQuery;

	/**
		Insert every element in the set of matched elements to the beginning of the target.
	**/
	public function prependTo(target:Dynamic):JQuery;

	/**
		Get the immediately preceding sibling of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function prev(?selector:String):JQuery;

	/**
		Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function prevAll(?selector:String):JQuery;

	/**
		Get all preceding siblings of each element up to but not including the element matched by the selector.
	**/
	public function prevUntil(?selector:String):JQuery;
	
	/**
	 * Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished.
	 * @param	?type The type of queue that needs to be observed.
	 * @param	?target Object onto which the promise methods have to be attached
	 */
	public function promise(?type:String, ?target:Dynamic):Promise;
	
	/**
	 * Get/set the value of a property for the first element in the set of matched elements.
	 * @param	propertyName The name of the property to get.
	 * @param	?value
	 * @return
	 */
	@:overload(function(propertyNameOrMap:Dynamic, value:Dynamic):JQuery{})
	public function prop(propertyName:String):String;

	/**
		Show the queue of functions to be executed on the matched elements.
	**/
	public function queue(?queueName:Dynamic, ?newQueueOrCallback:Dynamic):Dynamic;

	/**
		Specify a function to execute when the DOM is fully loaded.
	**/
	public function ready(?handler:Dynamic):JQuery;

	/**
		Remove the set of matched elements from the DOM.
	**/
	public function remove(?selector:String):JQuery;

	/**
		Remove an attribute from each element in the set of matched elements.
	**/
	public function removeAttr(attributeName:String):JQuery;

	/**
		Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
	**/
	public function removeClass(?classNameOrFunction:Dynamic):JQuery;

	/**
		Remove a previously-stored piece of data.
		@param	name	A string naming the piece of data to delete.
		@param	list	An array or space-separated string naming the pieces of data to delete.
	**/
	@:overload(function(?list:Array<String>):JQuery{})
	public function removeData(?name:String):JQuery;
	
	/**
	 * Remove a property for the set of matched elements.
	 * @param	propertyName The name of the property to set.
	 */
	public function removeProp(propertyName:String):JQuery;

	/**
		A selector expression indicating which element(s) to replace.
	**/
	public function replaceAll(selector:String):JQuery;

	/**
		Replace each element in the set of matched elements with the provided new content.
	**/
	public function replaceWith(newContentOrFunction:Dynamic):JQuery;

	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	public function resize(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	public function scroll(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Get the current horizontal position of the scroll bar for the first element in the set of matched elements.
	**/
	@:overload(function(value:Float):JQuery{})
	public function scrollLeft():Int;

	/**
		Get the current vertical position of the scroll bar for the first element in the set of matched elements.
	**/
	@:overload(function(value:Float):JQuery{})
	public function scrollTop():Int;

	/**
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
	**/
	public function select(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		A selector representing selector originally passed to jQuery().
	**/
	public var selector(default,null):String;

	/**
		Encode a set of form elements as a string for submission.
	**/
	public function serialize():String;

	/**
		Encode a set of form elements as an array of names and values.
	**/
	public function serializeArray():String;

	/**
		Display the matched elements.
	**/
	public function show(?duration:Dynamic, ?easingOrCallBack:Dynamic, ?callBack:Dynamic):JQuery;

	/**
		Get the siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function siblings(?selector:String):JQuery;

	/**
		Return the number of DOM elements matched by the jQuery object.
	**/
	public function size():Int;

	/**
		Reduce the set of matched elements to a subset specified by a range of indices.
	**/
	public function slice(start:Int, ?end:Int):JQuery;

	/**
		Display the matched elements with a sliding motion.
	**/
	public function slideDown(?duration:Dynamic, ?easingOrCallBack:Dynamic ,?callBack:Dynamic):JQuery;

	/**
		Display or hide the matched elements with a sliding motion.
	**/
	public function slideToggle(?duration:Dynamic, ?easingOrCallBack:Dynamic ,?callBack:Dynamic):JQuery;

	/**
		Hide the matched elements with a sliding motion.
	**/
	public function slideUp(?duration:Dynamic, ?easingOrCallBack:Dynamic , ?callBack:Dynamic):JQuery;

	inline static public var _static = JQueryStatic;

	/**
		Stop the currently-running animation on the matched elements.
	**/
	public function stop(?clearQueue:Bool, ?jumpToEnd:Bool):JQuery;

	/**
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	**/
	public function submit(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Get the combined text contents of each element in the set of matched elements, including their descendants.
	**/
	@:overload(function(valueOrFunction:Dynamic):JQuery{})
	public function text():String;

	/**
		Retrieve all the DOM elements contained in the jQuery set, as an array.
	**/
	public function toArray():Array<Element>;

	/**
		Bind two or more handlers to the matched elements, to be executed on alternate clicks.
	**/
	@:overload(function(?showOrHide:Bool):JQuery{})
	@:overload(function(duration:Int, _callback:Dynamic):JQuery{})
	public function toggle(duration:Int, easing:String, _callback:Dynamic):JQuery;

	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
	**/
	public function toggleClass(classNameOrFunction:Dynamic, ?_switch:Bool):JQuery;

	/**
		Execute all handlers and behaviors attached to the matched elements for the given event type.
		http://api.jquery.com/trigger/
	**/
	@:overload(function(event:Event):JQuery{})
	public function trigger(eventType:String, extraParameters:Array<String>):JQuery;

	/**
		Execute all handlers attached to an element for an event.
	**/
	public function triggerHandler(eventType:String, extraParameters:Array<String>):JQuery;

	/**
		Remove a previously-attached event handler from the elements.
	**/
	public function unbind(eventType:Dynamic, ?handlerOrFalse:Dynamic):JQuery;

	/**
		Remove a handler from the event for all elements which match the current selector, now or in the future, based upon a specific set of root elements.
	**/
	public function undelegate(?selector:String, ?eventType:String, ?handler:Dynamic):JQuery;

	/**
		Bind an event handler to the "unload" JavaScript event.
	**/
	public function unload(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery;

	/**
		Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
	**/
	public function unwrap():JQuery;

	/**
		Get the current value of the first element in the set of matched elements.
	**/
	@:overload(function(valueOrFunction:Dynamic):JQuery{})
	public function val():Dynamic;

	/**
		Get the current computed width for the first element in the set of matched elements.
	**/
	@:overload(function(valueOrFunction:Dynamic):JQuery{})
	public function width():Int;

	/**
		Wrap an HTML structure around each element in the set of matched elements.
	**/
	public function wrap(ele:Dynamic):JQuery;

	/**
		Wrap an HTML structure around all elements in the set of matched elements.
	**/
	public function wrapAll(ele:Dynamic):JQuery;

	/**
		Wrap an HTML structure around the content of each element in the set of matched elements.
	**/
	public function wrapInner(ele:Dynamic):JQuery;
	
	/**
	 * Remove an event handler.
	 * http://api.jquery.com/off/
	 * @param	?events One or more space-separated event types and optional namespaces, or just namespaces, such as "click", "keydown.myPlugin", or ".myPlugin".
	 * @param	?selector A selector which should match the one originally passed to .on() when attaching event handlers.
	 * @param	?handler A handler function previously attached for the event(s), or the special value false.
	 */
	@:overload(function(?events:String, ?selector:String, ?handler:Dynamic):JQuery{})
	public function off(events_map:Dynamic, ?selector:String):JQuery;
	
	/**
	 * Attach an event handler function for one or more events to the selected elements.
	 * http://api.jquery.com/on/
	 * @param	events One or more space-separated event types and optional namespaces, such as "click" or "keydown.myPlugin".
	 * @param	?selector A selector string to filter the descendants of the selected elements that trigger the event. If the selector is null or omitted, the event is always triggered when it reaches the selected element.
	 * @param 	?data Data to be passed to the handler in event.data when an event is triggered.
	 * @param	handler A function to execute when the event is triggered. The value false is also allowed as a shorthand for a function that simply does return false.
	 */
	@:overload(function(events_map:Dynamic, ?selector:String, ?data:Dynamic):JQuery{})
	@:overload(function(events:String, selector:String, handler:Dynamic):JQuery{})
	@:overload(function(events:String, data:Dynamic, handler:Dynamic):JQuery{})
	@:overload(function(events:String, selector:String, data:Dynamic, handler:Dynamic):JQuery{})
	public function on(events:String, handler:Dynamic):JQuery;
	
	/**
	 * @param	data String of html
	 * @param	?context If specified, the fragment will be created in this context, defaults to document
	 * @param	?scripts If true, will include scripts passed in the html string
	 */
	public function parseHTML(data:String, ?context:Dynamic, ?scripts:Bool):JQuery;
}

/**
	JQueryStatic group all the static methods/properties of jQuery. It is because Haxe does not allow using same name for static and non-static methods/properties.
**/
#if JQUERY_NOCONFLICT
@:native("jQuery")
#else
@:native("$")
#end
extern class JQueryStatic {
	/**
		Perform an asynchronous HTTP (Ajax) request.
	**/
	static public function ajax(urlOrSetting:Dynamic, ?setting:Dynamic):JqXHR;

	/**
		Set default values for future Ajax requests.
	**/
	static public function ajaxSetup(setting:Dynamic):Void;
	
	/**
	 * A prefilter is a callback function that is called before each request is sent, and prior to any $.ajax() option handling.
	 * @param	callb function( options, originalOptions, JqXHR ) {} // Modify options, control originalOptions, store JqXHR, etc
	 */
	static public function ajaxPrefilter(callb:Dynamic->Dynamic->JqXHR->Void):Void;
	
	/**
	 * A transport is an object that provides two methods, send and abort, that are used internally by $.ajax() to issue requests. 
	 * A transport is the most advanced way to enhance $.ajax() and should be used only as a last resort when prefilters and 
	 * converters are insufficient.
	 * @param	callbfunction( options, originalOptions, JqXHR ) {}
	 */
	static public function ajaxTransport(callb:Dynamic->Dynamic->JqXHR->Void):Void;

	/**
		Deprecated in jQuery 1.3 (see jQuery.support). States if the current page, in the user's browser, is being rendered using 
		the W3C CSS Box Model.
	**/
	static public var boxModel(default,null):Bool;

	/**
		We recommend against using this property, please try to use feature detection instead (see jQuery.support). Contains flags 
		for the useragent, read from navigator.userAgent. While jQuery.browser will not be removed from future versions of jQuery, 
		every effort to use jQuery.support and proper feature detection should be made.
	**/
	static public var browser(default,null):{
												webkit:Null<Bool>,
												safari:Null<Bool>, //deprecated
												opera:Null<Bool>,
												msie:Null<Bool>,
												mozilla:Null<Bool>,
												version:String
											};

	/**
		Check to see if a DOM node is within another DOM node.
	**/
	static public function contains(container:Element, contained:Element):Bool;

	/**
		Store arbitrary data associated with the specified element.
	**/
	static public function data(ele:Element, key:String, ?value:Dynamic):Dynamic;

	/**
		Execute the next function on the queue for the matched element.
	**/
	static public function dequeue(ele:Element, ?queueName:String):JQuery;

	/**
		Iterates through the array displaying each number as both a word and numeral
	**/
	static public function each<T>(collection:T, ?callBack:Dynamic):T;
	
	/**
		Easing functions
	**/
	static public var easing:Dynamic < Dynamic->Float->Float->Float->Float->Float > ;

	/**
		Takes a string and throws an exception containing it.
	**/
	static public function error(message:String):Void;

	/**
		Merge the contents of two or more objects together into the first object.
	**/
	static public function extend(?deep:Bool, target:Dynamic, object1:Dynamic, ?objectN:Dynamic):Dynamic;

	/**
		Globally disable all animations.
	**/
	static public var fx(default,null):{off:Bool, interval:Int};

	/**
		Load data from the server using a HTTP GET request.
	**/
	static public function get(url:String, ?data:Dynamic, ?callBack:Dynamic, ?dataType:String):JqXHR;

	/**
		Load JSON-encoded data from the server using a GET HTTP request.
	**/
	static public function getJSON(url:String, ?data:Dynamic, ?callBack:Dynamic):JqXHR;

	/**
		Load a JavaScript file from the server using a GET HTTP request, then execute it.
	**/
	static public function getScript(url:String, ?success:Dynamic):JqXHR;

	/**
		Execute some JavaScript code globally.
	**/
	static public function globalEval(code:String):Void;

	/**
		Finds the elements of an array which satisfy a filter function. The original array is not affected.
	**/
	static public function grep<T>(array:Array<T>, ?funct:Dynamic, ?invert:Bool):Array<T>;
	
	/**
	 * Holds or releases the execution of jQuery's ready event.
	 * @param	hold Indicates whether the ready hold is being requested or released.
	 */
	static public function holdReady(hold:Bool):Bool;

	/**
		Search for a specified value within an array and return its index (or -1 if not found).
	**/
	static public function inArray<T>(value:T, array:Array<T>):Int;

	/**
		Determine whether the argument is an array.
	**/
	static public function isArray(obj:Dynamic):Bool;

	/**
		Check to see if an object is empty (contains no properties).
	**/
	static public function isEmptyObject(obj:Dynamic):Bool;

	/**
		Determine if the argument passed is a Javascript function object.
	**/
	static public function isFunction(obj:Dynamic):Bool;

	/**
		Check to see if an object is a plain object (created using "{}" or "new Object").
	**/
	static public function isPlainObject(obj:Dynamic):Bool;

	/**
		Check to see if a DOM node is within an XML document (or is an XML document).
	**/
	static public function isXMLDoc(obj:Element):Bool;

	/**
		Determine whether the argument is a window.
	**/
	static public function isWindow(obj:Element):Bool;
	
	/**
		Convert an array-like object into a true JavaScript array.
	**/
	static public function makeArray(obj:Dynamic):Array<Dynamic>;

	/**
		Translate all items in an array or object to new array of items.
	**/
	static public function map(arrayOrObject:Dynamic, ?callBack:Dynamic):Array<Dynamic>;

	/**
		Merge the contents of two arraystogether into the first array.
	**/
	static public function merge<T>(first:Array<T>, second:Array<T>):Array<T>;

	/**
		Relinquish jQuery's control of the $ variable.
	**/
	static public function noConflict(?removeAll:Bool):Dynamic;

	/**
		An empty function.
	**/
	static public function noop():Void;

	/**
		Create a serialized representation of an array or object, suitable for use in a URL query string or Ajax request.
	**/
	static public function param(obj:Dynamic, traditional:Bool):String;

	/**
		Takes a well-formed JSON string and returns the resulting JavaScript object.
	**/
	static public function parseJSON(json:String):Dynamic;
	
	/**
	 * Parses a string into an XML document.
	 * @param	data a well-formed XML string to be parsed
	 * @return	XMLDocument
	 */
	static public function parseXML(data:String):Dynamic;

	/**
		Load data from the server using a HTTP POST request.
	**/
	static public function post(url:String, ?data:Dynamic, ?callBack:Dynamic, ?dataType:String):JqXHR;

	/**
		Takes a function and returns a new one that will always have a particular context.
	**/
	static public function proxy(funct:Dynamic, context:Dynamic):Dynamic;

	/**
		Add a collection of DOM elements onto the jQuery stack.
	**/
	static public function pushStack(elements:Array<Dynamic>, ?name:String, ?arguments:Dynamic):JQuery;

	/**
		Show the queue of functions to be executed on the matched element.
	**/
	static public function queue(element:Element, ?queueName:Dynamic, newQueue:Dynamic):Dynamic;

	/**
		Remove a previously-stored piece of data.
	**/
	static public function removeData(element:Element, ?name:String):JQuery;

	/**
		A collection of properties that represent the presence of different browser features or bugs.
	**/
	static public var support(default,null):{	
		ajax:Bool,
		boxModel:Bool,
		cssFloat:Bool,
		hrefNormalized:Bool,
		htmlSerialize:Bool,
		leadingWhitespace:Bool,
		noCloneEvent:Bool,
		objectAll:Bool,
		opacity:Bool,
		scriptEval:Bool,
		style:Bool,
		tbody:Bool 
	};

	/**
		Remove the whitespace from the beginning and end of a string.
	**/
	static public function trim(str:String):String;

	/**
		Determine the internal JavaScript [[Class]] of an object.
	**/
	static public function type(obj:Dynamic):String;

	/**
		Sorts an array of DOM elements, in place, with the duplicates removed. 
		Note that this only works on arrays of DOM elements, not strings or numbers.
	**/
	static public function unique<T>(array:Array<T>):Array<T>;
	
	/**
	 * Provides a way to execute callback functions based on one or more objects, usually Deferred objects that represent asynchronous events.
	 * @param	deferreds One or more Deferred objects, or plain JavaScript objects.
	 */
	static public function when(deferreds:Dynamic):Deferred;
	
	/**
	 * A multi-purpose callbacks list object that provides a powerful way to manage callback lists.
	 * http://api.jquery.com/jQuery.Callbacks/
	 * Supported Flags
	 * 	- once
	 * 	- memory
	 *  - unique
	 * 	- stopOnFalse
	 */
	static public function callbacks():Callbacks;
	
	/**
	 * Determines whether its argument is a number.
	 * http://api.jquery.com/jQuery.isNumeric/
	 * @param	value The value to be tested.
	 */
	static public function isNumeric(value:Dynamic):Bool;
}