package jQuery;

import js.html.*;

#if JQUERY_NOCONFLICT
@:native("jQuery")
#else
@:native("$")
#end
@:final
@:build(jQuery.Plugin.insert())
extern class JQuery<T:Node> implements ArrayAccess<T> {	
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
		Or creates DOM elements on the fly from the provided string of raw HTML.
		Or binds a function to be executed when the DOM has finished loading.
	**/
	public function new(in1:Dynamic,?in2:Dynamic):Void;

	/**
		Add elements to the set of matched elements.
	**/
	@:overload(function(elements:NodeList):JQuery<T>{})
	@:overload(function(element:Element):JQuery<T>{})
	@:overload(function(j:JQuery<T>):JQuery<T>{})
	@:overload(function(selector:String, context:Element):JQuery<T>{})
	@:overload(function(selector:String, context:Document):JQuery<T>{})
	@:overload(function(selector:String, context:JQuery<T>):JQuery<T>{})
	public function add(selectorOrHtml:String):JQuery<T>;

	/**
		Adds the specified class(es) to each of the set of matched elements.
	**/
	@:overload(function(func:Int->String->Void):JQuery<T>{})
	public function addClass(className:String):JQuery<T>;

	/**
		Insert content, specified by the parameter, after each element in the set of matched elements.
	**/
	@:overload(function(content:Element):JQuery<T>{})
	@:overload(function(content:NodeList):JQuery<T>{})
	@:overload(function(content:JQuery<T>):JQuery<T>{})
	@:overload(function(content:Array<Element>):JQuery<T>{})
	@:overload(function(content:Array<JQuery<T>>):JQuery<T>{})
	@:overload(function(content:Int->String):JQuery<T>{})
	@:overload(function(content:Int->Element):JQuery<T>{})
	@:overload(function(content:Int->NodeList):JQuery<T>{})
	@:overload(function(content:Int->JQuery<T>):JQuery<T>{})
	public function after(content:String):JQuery<T>;

	/**
		Register a handler to be called when Ajax requests complete. This is an Ajax Event.
	**/
	public function ajaxComplete(handler:Dynamic):JQuery<T>;

	/**
		Register a handler to be called when Ajax requests complete with an error. This is an Ajax Event.
	**/
	public function ajaxError(handler:Dynamic):JQuery<T>;

	/**
		Show a message before an Ajax request is sent.
	**/
	public function ajaxSend(handler:Dynamic):JQuery<T>;

	/**
		Register a handler to be called when the first Ajax request begins. This is an Ajax Event.
	**/
	public function ajaxStart(handler:Dynamic):JQuery<T>;

	/**
		Hide a loading message after all the Ajax requests have stopped.
	**/
	public function ajaxStop(handler:Dynamic):JQuery<T>;

	/**
		Show a message when an Ajax request completes successfully.
	**/
	public function ajaxSuccess(handler:Dynamic):JQuery<T>;

	/**
		Add the previous set of elements on the stack to the current set.
	**/
	public function andSelf():JQuery<T>;

	/**
		Perform a custom animation of a set of CSS properties.
	**/
	public function animate(properties:Dynamic, ?durationOrOptions:Dynamic, ?easing:Dynamic, ?callBack:Dynamic):JQuery<T>;

	/**
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
	**/
	@:overload(function(content:Array<JQuery<T>>):JQuery<T>{})
	@:overload(function(content:Array<Element>):JQuery<T>{})
	@:overload(function(content:String):JQuery<T>{})
	@:overload(function(content:Element):JQuery<T>{})
	@:overload(function(content:Int->String->Dynamic):JQuery<T>{})
	public function append(content:JQuery<T>):JQuery<T>;

	/**
		Insert every element in the set of matched elements to the end of the target.
	**/
	public function appendTo(target:Dynamic):JQuery<T>;

	/**
		Get the value of an attribute for the first element in the set of matched elements.
	**/
	@:overload(function(attributeName:String, valueOrFunction:Dynamic):JQuery<T>{})
	public function attr(attributeName:String):String;

	/**
		Insert content, specified by the parameter, before each element in the set of matched elements.
	**/
	@:overload(function(content:Array<JQuery<T>>):JQuery<T>{})
	@:overload(function(content:Array<Element>):JQuery<T>{})
	@:overload(function(content:String):JQuery<T>{})
	@:overload(function(content:Element):JQuery<T>{})
	@:overload(function(content:Int->Dynamic):JQuery<T>{})
	public function before(content:JQuery<T>):JQuery<T>;

	/**
		Attach a handler to an event for the elements.
	**/
	public function bind(eventType:Dynamic, ?eventData:Dynamic, ?handlerOrFalse:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	public function blur(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	public function change(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Get the children of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function children(?selector:String):JQuery<T>;

	/**
		Remove from the queue all items that have not yet been run.
	**/
	public function clearQueue(?queueName:String):JQuery<T>;

	/**
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
	**/
	public function click(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
	 * Create a deep copy of the set of matched elements.
	 * @param	?withDataAndEvents A Boolean indicating whether event handlers and data should be copied along with the elements. The default value is false.*For 1.5.0 the default value is incorrectly true. This will be changed back to false in 1.5.1 and up.
	 * @param	?deepWithDataAndEvents A Boolean indicating whether event handlers and data for all children of the cloned element should be copied. By default its value matches the first argument's value (which defaults to false).
	 */
	public function clone(?withDataAndEvents:Bool, ?deepWithDataAndEvents:Bool):JQuery<T>;

	/**
		Get the first ancestor element that matches the selector, beginning at the current element and progressing up through the DOM tree.
	**/
	public function closest(selector:Dynamic, ?context:Dynamic):JQuery<T>;

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
	public function contents():JQuery<T>;
	
	/**
		The DOM node context originally passed to jQuery(); if none was passed then context will likely be the document.
	**/
	public var context:Document;
	
	/**
		Get the value of a style property for the first element in the set of matched elements.
	**/
	@:overload(function(attributeName:String, valueOrFunction:Dynamic):JQuery<T>{})
	public function css(attributeName:String):String;

	/**
		Store arbitrary data associated with the matched elements.
	**/
	@:overload(function(key:String, value:Dynamic):JQuery<T>{})
	public function data(?key:String):Dynamic;

	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	public function dblclick(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Set a timer to delay execution of subsequent items in the queue.
	**/
	public function delay(duration:Int, ?queueName:String):JQuery<T>;

	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	public function delegate(selector:String, eventType:String, ?eventData:Dynamic, handler:Dynamic):JQuery<T>;

	/**
		Execute the next function on the queue for the matched elements.
	**/
	public function dequeue(?queueName:String):JQuery<T>;

	/**
		Remove the set of matched elements from the DOM.
	**/
	public function detach(?selector:String):JQuery<T>;

	/**
		Remove all event handlers previously attached using .live() from the elements.
	**/
	public function die(?eventType:String,?handler:Dynamic):JQuery<T>;

	/**
		Iterate over a jQuery object, executing a function for each matched element.
	**/
	public function each(callBack:Dynamic):JQuery<T>;

	/**
		Remove all child nodes of the set of matched elements from the DOM.
	**/
	public function empty():JQuery<T>;

	/**
		End the most recent filtering operation in the current chain and return the set of matched elements to its previous state.
	**/
	public function end():JQuery<T>;

	/**
		Reduce the set of matched elements to the one at the specified index.
	**/
	public function eq(index:Int):JQuery<T>;

	/**
		Bind an event handler to the "error" JavaScript event.
		#11733: Deprecate .load(), .unload(), and .error() methods
	**/
	public function error(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Display the matched elements by fading them to opaque.
	**/
	public function fadeIn(?duration:Dynamic, ?easingOrCallback:Dynamic ,?callBack:Dynamic):JQuery<T>;

	/**
		Hide the matched elements by fading them to transparent.
	**/
	public function fadeOut(?duration:Dynamic,?easingOrCallback:Dynamic ,?callBack:Dynamic):JQuery<T>;

	/**
		Adjust the opacity of the matched elements.
	**/
	public function fadeTo(duration:Dynamic, opacity:Float, ?easingOrCallback:Dynamic , ?callBack:Dynamic):JQuery<T>;
	
	/**
		Display or hide the matched elements by animating their opacity.
	 **/
	public function fadeToggle(?duration:Dynamic, ?easing:Dynamic, ?callBack:Dynamic):JQuery<T>;

	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test.
	**/
	public function filter(selectorOrFunction:Dynamic):JQuery<T>;

	/**
		Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
	**/
	public function find(selector:Dynamic):JQuery<T>;

	/**
		Reduce the set of matched elements to the first in the set.
	**/
	public function first():JQuery<T>;

	/**
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
	**/
	public function focus(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "focusin" JavaScript event.
	**/
	public function focusin(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "focusout" JavaScript event.
	**/
	public function focusout(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Retrieve the DOM elements matched by the jQuery object.
	**/
	public function get(?index:Int):Dynamic;

	/**
		Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
	**/
	public function has(ele:Dynamic):JQuery<T>;

	/**
		Determine whether any of the matched elements are assigned the given class.
	**/
	public function hasClass(className:String):Bool;

	/**
		Get the current computed height for the first element in the set of matched elements.
	**/
	@:overload(function(valueOrFunction:Dynamic):JQuery<T>{})
	public function height():Int;

	/**
		Hide the matched elements.
	**/
	public function hide(?duration:Dynamic, ?easingOrCallback:Dynamic, ?callBack:Dynamic):JQuery<T>;

	/**
		Bind two handlers to the matched elements, to be executed when the mouse pointer enters and leaves the elements.
	**/
	public function hover(?handler:Dynamic,?handler2:Dynamic):JQuery<T>;

	/**
		Get the HTML contents of the first element in the set of matched elements.
	**/
	@:overload(function(valueOrFunction:Dynamic):JQuery<T>{})
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
	public function insertAfter(target:Dynamic):JQuery<T>;

	/**
		Insert every element in the set of matched elements before the target.
	**/
	public function insertBefore(target:Dynamic):JQuery<T>;

	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
	**/
	public function is(selector:Dynamic):Bool;

	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	public function keydown(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	public function keypress(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	public function keyup(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Reduce the set of matched elements to the final one in the set.
	**/
	public function last():JQuery<T>;

	/**
		The number of elements in the jQuery object.
	**/
	public var length(default,null):Int;

	/**
		Attach a handler to the event for all elements which match the current selector, now or in the future.
	**/
	public function live(eventType:String, ?eventData:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Load data from the server and place the returned HTML into the matched element.
		Bind an event handler to the "load" JavaScript event.
		#11733: Deprecate .load(), .unload(), and .error() methods
	**/
	public function load(urlOrEventDataOrHandler:Dynamic, ?dataOrHandler:Dynamic, ?complete:Dynamic):JQuery<T>;

	/**
		Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.
	**/
	public function map(callBack:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	public function mousedown(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	public function mouseenter(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	public function mouseleave(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	public function mousemove(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	public function mouseout(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	public function mouseover(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	public function mouseup(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Get the immediately following sibling of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function next(?selector:String):JQuery<T>;

	/**
		Get all following siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function nextAll(?selector:String):JQuery<T>;

	/**
		Get all following siblings of each element up to but not including the element matched by the selector.
	**/
	public function nextUntil(?selector:String):JQuery<T>;

	/**
		Remove elements from the set of matched elements.
	**/
	public function not(ele:Dynamic):JQuery<T>;

	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the document.
	**/
	@:overload(function(coordinatesOrFunction:Dynamic):JQuery<T>{})
	public function offset():{top:Float, left:Float};

	/**
		Get the closest ancestor element that is positioned.
	**/
	public function offsetParent():JQuery<T>;

	/**
		Attach a handler to an event for the elements. The handler is executed at most once per element.
	**/
	public function one(eventType:Dynamic, ?eventData:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Get the current computed height for the first element in the set of matched elements, including padding and border.
		#10877: Make outerWidth/Height a setter
	**/
	@:overload(function(value:Int):JQuery<T>{})
	public function outerHeight(?includeMargin:Bool):Int;

	/**
		Get the current computed width for the first element in the set of matched elements, including padding and border.
		#10877: Make outerWidth/Height a setter
	**/
	@:overload(function(value:Int):JQuery<T>{})
	public function outerWidth(?includeMargin:Bool):Int;

	/**
		Get the parent of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	public function parent(?selector:String):JQuery<T>;

	/**
		Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	public function parents(?selector:String):JQuery<T>;

	/**
		Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector.
	**/
	public function parentsUntil(?selector:String):JQuery<T>;

	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the offset parent.
	**/
	public function position():{top:Float, left:Float};

	/**
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
	**/
	@:overload(function(content:Array<JQuery<T>>):JQuery<T>{})
	@:overload(function(content:Array<Element>):JQuery<T>{})
	@:overload(function(content:String):JQuery<T>{})
	@:overload(function(content:Element):JQuery<T>{})
	@:overload(function(content:Int->String->Dynamic):JQuery<T>{})
	public function prepend(content:JQuery<T>):JQuery<T>;

	/**
		Insert every element in the set of matched elements to the beginning of the target.
	**/
	public function prependTo(target:Dynamic):JQuery<T>;

	/**
		Get the immediately preceding sibling of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function prev(?selector:String):JQuery<T>;

	/**
		Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function prevAll(?selector:String):JQuery<T>;

	/**
		Get all preceding siblings of each element up to but not including the element matched by the selector.
	**/
	public function prevUntil(?selector:String):JQuery<T>;
	
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
	@:overload(function(propertyNameOrMap:Dynamic, value:Dynamic):JQuery<T>{})
	public function prop(propertyName:String):String;

	/**
		Show the queue of functions to be executed on the matched elements.
	**/
	public function queue(?queueName:Dynamic, ?newQueueOrCallback:Dynamic):Dynamic;

	/**
		Specify a function to execute when the DOM is fully loaded.
	**/
	public function ready(?handler:Dynamic):JQuery<T>;

	/**
		Remove the set of matched elements from the DOM.
	**/
	public function remove(?selector:String):JQuery<T>;

	/**
		Remove an attribute from each element in the set of matched elements.
	**/
	public function removeAttr(attributeName:String):JQuery<T>;

	/**
		Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
	**/
	public function removeClass(?classNameOrFunction:Dynamic):JQuery<T>;

	/**
		Remove a previously-stored piece of data.
		@param	name	A string naming the piece of data to delete.
		@param	list	An array or space-separated string naming the pieces of data to delete.
	**/
	@:overload(function(?list:Array<String>):JQuery<T>{})
	public function removeData(?name:String):JQuery<T>;
	
	/**
	 * Remove a property for the set of matched elements.
	 * @param	propertyName The name of the property to set.
	 */
	public function removeProp(propertyName:String):JQuery<T>;

	/**
		A selector expression indicating which element(s) to replace.
	**/
	public function replaceAll(selector:String):JQuery<T>;

	/**
		Replace each element in the set of matched elements with the provided new content.
	**/
	public function replaceWith(newContentOrFunction:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	public function resize(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	public function scroll(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Get the current horizontal position of the scroll bar for the first element in the set of matched elements.
	**/
	@:overload(function(value:Float):JQuery<T>{})
	public function scrollLeft():Int;

	/**
		Get the current vertical position of the scroll bar for the first element in the set of matched elements.
	**/
	@:overload(function(value:Float):JQuery<T>{})
	public function scrollTop():Int;

	/**
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
	**/
	public function select(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

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
	public function show(?duration:Dynamic, ?easingOrCallBack:Dynamic, ?callBack:Dynamic):JQuery<T>;

	/**
		Get the siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function siblings(?selector:String):JQuery<T>;

	/**
		Return the number of DOM elements matched by the jQuery object.
	**/
	public function size():Int;

	/**
		Reduce the set of matched elements to a subset specified by a range of indices.
	**/
	public function slice(start:Int, ?end:Int):JQuery<T>;

	/**
		Display the matched elements with a sliding motion.
	**/
	public function slideDown(?duration:Dynamic, ?easingOrCallBack:Dynamic ,?callBack:Dynamic):JQuery<T>;

	/**
		Display or hide the matched elements with a sliding motion.
	**/
	public function slideToggle(?duration:Dynamic, ?easingOrCallBack:Dynamic ,?callBack:Dynamic):JQuery<T>;

	/**
		Hide the matched elements with a sliding motion.
	**/
	public function slideUp(?duration:Dynamic, ?easingOrCallBack:Dynamic , ?callBack:Dynamic):JQuery<T>;

	inline static public var _static = JQueryStatic;

	/**
		Stop the currently-running animation on the matched elements.
	**/
	public function stop(?clearQueue:Bool, ?jumpToEnd:Bool):JQuery<T>;

	/**
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	**/
	public function submit(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Get the combined text contents of each element in the set of matched elements, including their descendants.
	**/
	@:overload(function(valueOrFunction:Dynamic):JQuery<T>{})
	public function text():String;

	/**
		Retrieve all the DOM elements contained in the jQuery set, as an array.
	**/
	public function toArray():Array<Element>;

	/**
		Bind two or more handlers to the matched elements, to be executed on alternate clicks.
	**/
	@:overload(function(?showOrHide:Bool):JQuery<T>{})
	@:overload(function(duration:Int, _callback:Dynamic):JQuery<T>{})
	public function toggle(duration:Int, easing:String, _callback:Dynamic):JQuery<T>;

	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
	**/
	public function toggleClass(classNameOrFunction:Dynamic, ?_switch:Bool):JQuery<T>;

	/**
		Execute all handlers and behaviors attached to the matched elements for the given event type.
		http://api.jquery.com/trigger/
	**/
	@:overload(function(event:Event):JQuery<T>{})
	public function trigger(eventType:String, extraParameters:Array<String>):JQuery<T>;

	/**
		Execute all handlers attached to an element for an event.
	**/
	public function triggerHandler(eventType:String, extraParameters:Array<String>):JQuery<T>;

	/**
		Remove a previously-attached event handler from the elements.
	**/
	public function unbind(eventType:Dynamic, ?handlerOrFalse:Dynamic):JQuery<T>;

	/**
		Remove a handler from the event for all elements which match the current selector, now or in the future, based upon a specific set of root elements.
	**/
	public function undelegate(?selector:String, ?eventType:String, ?handler:Dynamic):JQuery<T>;

	/**
		Bind an event handler to the "unload" JavaScript event.
	**/
	public function unload(?eventDataOrHandler:Dynamic, ?handler:Dynamic):JQuery<T>;

	/**
		Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
	**/
	public function unwrap():JQuery<T>;

	/**
		Get the current value of the first element in the set of matched elements.
	**/
	@:overload(function(valueOrFunction:Dynamic):JQuery<T>{})
	public function val():Dynamic;

	/**
		Get the current computed width for the first element in the set of matched elements.
	**/
	@:overload(function(valueOrFunction:Dynamic):JQuery<T>{})
	public function width():Int;

	/**
		Wrap an HTML structure around each element in the set of matched elements.
	**/
	public function wrap(ele:Dynamic):JQuery<T>;

	/**
		Wrap an HTML structure around all elements in the set of matched elements.
	**/
	public function wrapAll(ele:Dynamic):JQuery<T>;

	/**
		Wrap an HTML structure around the content of each element in the set of matched elements.
	**/
	public function wrapInner(ele:Dynamic):JQuery<T>;
	
	/**
	 * Remove an event handler.
	 * http://api.jquery.com/off/
	 * @param	?events One or more space-separated event types and optional namespaces, or just namespaces, such as "click", "keydown.myPlugin", or ".myPlugin".
	 * @param	?selector A selector which should match the one originally passed to .on() when attaching event handlers.
	 * @param	?handler A handler function previously attached for the event(s), or the special value false.
	 */
	@:overload(function(?events:String, ?selector:String, ?handler:Dynamic):JQuery<T>{})
	public function off(events_map:Dynamic, ?selector:String):JQuery<T>;
	
	/**
	 * Attach an event handler function for one or more events to the selected elements.
	 * http://api.jquery.com/on/
	 * @param	events One or more space-separated event types and optional namespaces, such as "click" or "keydown.myPlugin".
	 * @param	?selector A selector string to filter the descendants of the selected elements that trigger the event. If the selector is null or omitted, the event is always triggered when it reaches the selected element.
	 * @param 	?data Data to be passed to the handler in event.data when an event is triggered.
	 * @param	handler A function to execute when the event is triggered. The value false is also allowed as a shorthand for a function that simply does return false.
	 */
	@:overload(function(events_map:Dynamic, ?selector:String, ?data:Dynamic):JQuery<T>{})
	@:overload(function(events:String, selector:String, handler:Dynamic):JQuery<T>{})
	@:overload(function(events:String, data:Dynamic, handler:Dynamic):JQuery<T>{})
	@:overload(function(events:String, selector:String, data:Dynamic, handler:Dynamic):JQuery<T>{})
	public function on(events:String, handler:Dynamic):JQuery<T>;
	
	/**
	 * @param	data String of html
	 * @param	?context If specified, the fragment will be created in this context, defaults to document
	 * @param	?scripts If true, will include scripts passed in the html string
	 */
	public function parseHTML(data:String, ?context:Dynamic, ?scripts:Bool):JQuery<T>;
}

typedef AjaxSettings = {
	/**
		Default: depends on DataType
		The content type sent in the request header that tells the server what kind of response it will accept in return. If the accepts setting needs modification, it is recommended to do so once in the $.ajaxSetup() method.
	**/
	@:optional var accepts:Dynamic;

	/**
		Default: true
		By default, all requests are sent asynchronously (i.e. this is set to true by default). If you need synchronous requests, set this option to false. Cross-domain requests and dataType: "jsonp" requests do not support synchronous operation. Note that synchronous requests may temporarily lock the browser, disabling any actions while the request is active. As of jQuery 1.8, the use of async: false with jqXHR ($.Deferred) is deprecated; you must use the complete/success/error callbacks.
	**/
	@:optional var async:Bool;

	/**
		A pre-request callback function that can be used to modify the jqXHR (in jQuery 1.4.x, XMLHTTPRequest) object before it is sent. Use this to set custom headers, etc. The jqXHR and settings maps are passed as arguments. This is an Ajax Event. Returning false in the beforeSend function will cancel the request. As of jQuery 1.5, the beforeSend option will be called regardless of the type of request.
	**/
	@:optional function beforeSend(jqXHR:JqXHR, settings:AjaxSettings):Void;

	/**
		Default: true, false for dataType 'script' and 'jsonp'
		If set to false, it will force requested pages not to be cached by the browser. Setting cache to false also appends a query string parameter, "_=[TIMESTAMP]", to the URL.
	**/
	@:optional var cache:Bool;

	/**
		A function to be called when the request finishes (after success and error callbacks are executed). The function gets passed two arguments: The jqXHR (in jQuery 1.4.x, XMLHTTPRequest) object and a string categorizing the status of the request ("success", "notmodified", "error", "timeout", "abort", or "parsererror"). As of jQuery 1.5, the complete setting can accept an array of functions. Each function will be called in turn. This is an Ajax Event.
	**/
	@:optional function complete(jqXHR:JqXHR, textStatus:String):Void;

	/**
		A map of string/regular-expression pairs that determine how jQuery will parse the response, given its content type.
	**/
	@:optional var contents:Dynamic;

	/**
		Default: 'application/x-www-form-urlencoded; charset=UTF-8'
		When sending data to the server, use this content type. Default is "application/x-www-form-urlencoded; charset=UTF-8", which is fine for most cases. If you explicitly pass in a content-type to $.ajax(), then it'll always be sent to the server (even if no data is sent). If no charset is specified, data will be transmitted to the server using the server's default charset; you must decode this appropriately on the server side.
	**/
	@:optional var context:Dynamic;

	/**
		Default: {"* text": window.String, "text html": true, "text json": jQuery.parseJSON, "text xml": jQuery.parseXML}
		A map of dataType-to-dataType converters. Each converter's value is a function that returns the transformed value of the response.
	**/
	@:optional var converters:Dynamic;

	/**
		Default: false for same-domain requests, true for cross-domain requests
		If you wish to force a crossDomain request (such as JSONP) on the same domain, set the value of crossDomain to true. This allows, for example, server-side redirection to another domain.
	**/
	@:optional var crossDomain:Bool;

	/**
		Data to be sent to the server. It is converted to a query string, if not already a string. It's appended to the url for GET-requests. See processData option to prevent this automatic processing. Object must be Key/Value pairs. If value is an Array, jQuery serializes multiple values with same key based on the value of the traditional setting (described below).
	**/
	@:optional var data:Dynamic;

	/**
		A function to be used to handle the raw response data of XMLHttpRequest.This is a pre-filtering function to sanitize the response. You should return the sanitized data. The function accepts two arguments: The raw data returned from the server and the 'dataType' parameter.
	**/
	@:optional function dataFilter(data:String, type:String):Dynamic;

	/**
		Default: Intelligent Guess (xml, json, script, or html)
		The type of data that you're expecting back from the server. If none is specified, jQuery will try to infer it based on the MIME type of the response (an XML MIME type will yield XML, in 1.4 JSON will yield a JavaScript object, in 1.4 script will execute the script, and anything else will be returned as a string). The available types (and the result passed as the first argument to your success callback) are:

		"xml": Returns a XML document that can be processed via jQuery.
		"html": Returns HTML as plain text; included script tags are evaluated when inserted in the DOM.
		"script": Evaluates the response as JavaScript and returns it as plain text. Disables caching by appending a query string parameter, "_=[TIMESTAMP]", to the URL unless the cache option is set to true. Note: This will turn POSTs into GETs for remote-domain requests.
		"json": Evaluates the response as JSON and returns a JavaScript object. In jQuery 1.4 the JSON data is parsed in a strict manner; any malformed JSON is rejected and a parse error is thrown. (See json.org for more information on proper JSON formatting.)
		"jsonp": Loads in a JSON block using JSONP. Adds an extra "?callback=?" to the end of your URL to specify the callback. Disables caching by appending a query string parameter, "_=[TIMESTAMP]", to the URL unless the cache option is set to true.
		"text": A plain text string.
		multiple, space-separated values: As of jQuery 1.5, jQuery can convert a dataType from what it received in the Content-Type header to what you require. For example, if you want a text response to be treated as XML, use "text xml" for the dataType. You can also make a JSONP request, have it received as text, and interpreted by jQuery as XML: "jsonp text xml." Similarly, a shorthand string such as "jsonp xml" will first attempt to convert from jsonp to xml, and, failing that, convert from jsonp to text, and then from text to xml.
	**/
	@:optional var dataType:String;

	/**
		A function to be called if the request fails. The function receives three arguments: The jqXHR (in jQuery 1.4.x, XMLHttpRequest) object, a string describing the type of error that occurred and an optional exception object, if one occurred. Possible values for the second argument (besides null) are "timeout", "error", "abort", and "parsererror". When an HTTP error occurs, errorThrown receives the textual portion of the HTTP status, such as "Not Found" or "Internal Server Error." As of jQuery 1.5, the error setting can accept an array of functions. Each function will be called in turn. Note: This handler is not called for cross-domain script and JSONP requests. This is an Ajax Event.
	**/
	@:optional function error(jqXHR:JqXHR, textStatus:String, errorThrown:String):Void;

	/**
		Default: true
		Whether to trigger global Ajax event handlers for this request. The default is true. Set to false to prevent the global handlers like ajaxStart or ajaxStop from being triggered. This can be used to control various Ajax Events.
	**/
	@:optional var global:Bool;

	/**
		Default: {}
		A map of additional header key/value pairs to send along with the request. This setting is set before the beforeSend function is called; therefore, any values in the headers setting can be overwritten from within the beforeSend function.
	**/
	@:optional var headers:Dynamic;

	/**
		Default: false
		Allow the request to be successful only if the response has changed since the last request. This is done by checking the Last-Modified header. Default value is false, ignoring the header. In jQuery 1.4 this technique also checks the 'etag' specified by the server to catch unmodified data.
	**/
	@:optional var ifModified:Bool;

	/**
		Default: depends on current location protocol
		Allow the current environment to be recognized as "local," (e.g. the filesystem), even if jQuery does not recognize it as such by default. The following protocols are currently recognized as local: file, *-extension, and widget. If the isLocal setting needs modification, it is recommended to do so once in the $.ajaxSetup() method.
	**/
	@:optional var isLocal:Bool;

	/**
		Override the callback function name in a jsonp request. This value will be used instead of 'callback' in the 'callback=?' part of the query string in the url. So {jsonp:'onJSONPLoad'} would result in 'onJSONPLoad=?' passed to the server. As of jQuery 1.5, setting the jsonp option to false prevents jQuery from adding the "?callback" string to the URL or attempting to use "=?" for transformation. In this case, you should also explicitly set the jsonpCallback setting. For example, { jsonp: false, jsonpCallback: "callbackName" }
	**/
	@:optional var jsonp:Dynamic;

	/**
		Specify the callback function name for a JSONP request. This value will be used instead of the random name automatically generated by jQuery. It is preferable to let jQuery generate a unique name as it'll make it easier to manage the requests and provide callbacks and error handling. You may want to specify the callback when you want to enable better browser caching of GET requests. As of jQuery 1.5, you can also use a function for this setting, in which case the value of jsonpCallback is set to the return value of that function.
	**/
	@:optional var jsonpCallback:Dynamic;

	/**
		A mime type to override the XHR mime type.
	**/
	@:optional var mimeType:String;

	/**
		A password to be used in response to an HTTP access authentication request.
	**/
	@:optional var password:String;

	/**
		Default: true
		By default, data passed in to the data option as an object (technically, anything other than a string) will be processed and transformed into a query string, fitting to the default content-type "application/x-www-form-urlencoded". If you want to send a DOMDocument, or other non-processed data, set this option to false.
	**/
	@:optional var processData:Bool;

	/**
		Only for requests with "jsonp" or "script" dataType and "GET" type. Forces the request to be interpreted as a certain charset. Only needed for charset differences between the remote and local content.
	**/
	@:optional var scriptCharset:String;

	/**
		Default: {}
		A map of numeric HTTP codes and functions to be called when the response has the corresponding code.
	**/
	@:optional var statusCode:Dynamic;

	/**
		A function to be called if the request succeeds. The function gets passed three arguments: The data returned from the server, formatted according to the dataType parameter; a string describing the status; and the jqXHR (in jQuery 1.4.x, XMLHttpRequest) object. As of jQuery 1.5, the success setting can accept an array of functions. Each function will be called in turn. This is an Ajax Event.
	**/
	@:optional function success(data:Dynamic, textStatus:String, jqXHR:JqXHR):Void;

	/**
		Set a timeout (in milliseconds) for the request. This will override any global timeout set with $.ajaxSetup(). The timeout period starts at the point the $.ajax call is made; if several other requests are in progress and the browser has no connections available, it is possible for a request to time out before it can be sent. In jQuery 1.4.x and below, the XMLHttpRequest object will be in an invalid state if the request times out; accessing any object members may throw an exception. In Firefox 3.0+ only, script and JSONP requests cannot be cancelled by a timeout; the script will run even if it arrives after the timeout period.
	**/
	@:optional var timeout:Int;

	/**
		Set this to true if you wish to use the traditional style of param serialization.
	**/
	@:optional var traditional:Bool;

	/**
		Default: 'GET'
		The type of request to make ("POST" or "GET"), default is "GET". Note: Other HTTP request methods, such as PUT and DELETE, can also be used here, but they are not supported by all browsers.
	**/
	@:optional var type:String;

	/**
		Default: The current page
		A string containing the URL to which the request is sent.
	**/
	@:optional var url:String;

	/**
		A username to be used in response to an HTTP access authentication request.
	**/
	@:optional var username:String;

	/**
		Default: ActiveXObject when available (IE), the XMLHttpRequest otherwise
		Callback for creating the XMLHttpRequest object. Defaults to the ActiveXObject when available (IE), the XMLHttpRequest otherwise. Override to provide your own implementation for XMLHttpRequest or enhancements to the factory.
	**/
	@:optional var xhr:Void->Dynamic;

	/**
		A map of fieldName-fieldValue pairs to set on the native XHR object. For example, you can use it to set withCredentials to true for cross-domain requests if needed.
	**/
	@:optional var xhrFields:Dynamic;
}

/**
	JQuery<T>Static group all the static methods/properties of jQuery. It is because Haxe does not allow using same name for static and non-static methods/properties.
**/
#if JQUERY_NOCONFLICT
@:native("jQuery")
#else
@:native("$")
#end
@:final
@:build(jQuery.Plugin.insertStatic())
extern class JQueryStatic {
	/**
		Perform an asynchronous HTTP (Ajax) request.
	**/
	@:overload(function(settings:AjaxSettings):JqXHR{})
	static public function ajax(url:String, settings:AjaxSettings):JqXHR;

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
	static public function dequeue<T:Node>(ele:Element, ?queueName:String):JQuery<T>;

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
	static public function pushStack<T:Node>(elements:Array<Dynamic>, ?name:String, ?arguments:Dynamic):JQuery<T>;

	/**
		Show the queue of functions to be executed on the matched element.
	**/
	static public function queue(element:Element, ?queueName:Dynamic, newQueue:Dynamic):Dynamic;

	/**
		Remove a previously-stored piece of data.
	**/
	static public function removeData<T:Node>(element:Element, ?name:String):JQuery<T>;

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