/* This file is generated, do not edit! */
package jQuery;
@:final @:native("jQuery") @:build(jQuery.haxe.Config.build()) extern class JQuery implements ArrayAccess<js.html.Node> {
	/**
		Add the previous set of elements on the stack to the current set.
	**/
	public function andSelf():jQuery.JQuery;
	/**
		A string containing the jQuery version number.
	**/
	public var jquery:String;
	/**
		Get the HTML contents of the first element in the set of matched elements.
		OR: Set the HTML contents of each element in the set of matched elements.
	**/
	@:overload(function (htmlString:String):jQuery.JQuery {
	}) @:overload(function (_function:Int->String->Void):jQuery.JQuery {
	}) public function html():String;
	/**
		Attach a function to be executed before an Ajax request is sent. This is an <a href="/Ajax_Events">Ajax Event</a>.
	**/
	public function ajaxSend(handler:jQuery.Event->jQuery.JqXHR->Dynamic->Void):jQuery.JQuery;
	/**
		Remove from the queue all items that have not yet been run.
	**/
	public function clearQueue(?queueName:String):jQuery.JQuery;
	/**
		Insert every element in the set of matched elements to the end of the target.
	**/
	@:overload(function (target:String):jQuery.JQuery {
	}) @:overload(function (target:js.html.Node):jQuery.JQuery {
	}) @:overload(function (target:jQuery.JQuery):jQuery.JQuery {
	}) public function appendTo(target:String):jQuery.JQuery;
	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function mousedown():jQuery.JQuery;
	/**
		Retrieve the DOM elements matched by the jQuery object.
	**/
	@:overload(function (index:Int):js.html.Node {
	}) public function get():Array<js.html.Node>;
	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function keydown():jQuery.JQuery;
	/**
		Hide the matched elements with a sliding motion.
	**/
	@:overload(function (?duration:Float,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function slideUp(options:Dynamic):jQuery.JQuery;
	/**
		Attach a function to be executed whenever an Ajax request completes successfully. This is an <a href="/Ajax_Events">Ajax Event</a>.
	**/
	public function ajaxSuccess(handler:jQuery.Event->js.html.XMLHttpRequest->Dynamic->Void):jQuery.JQuery;
	/**
		Get the value of an attribute for the first element in the set of matched elements.
		OR: Set one or more attributes for the set of matched elements.
	**/
	@:overload(function (attributes:Dynamic):jQuery.JQuery {
	}) @:overload(function (attributeName:String,value:String):jQuery.JQuery {
	}) @:overload(function (attributeName:String,value:Float):jQuery.JQuery {
	}) @:overload(function (attributeName:String,_function:Int->String->String):jQuery.JQuery {
	}) public function attr(attributeName:String):String;
	/**
		Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	@:overload(function (?element:js.html.Node,?filter:String):jQuery.JQuery {
	}) public function prevUntil(?selector:String,?filter:String):jQuery.JQuery;
	/**
		Encode a set of form elements as an array of names and values.
	**/
	public function serializeArray():Array<Dynamic>;
	/**
		Get the siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function siblings(?selector:String):jQuery.JQuery;
	/**
		Display the matched elements with a sliding motion.
	**/
	@:overload(function (?duration:Float,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function slideDown(options:Dynamic):jQuery.JQuery;
	/**
		Get the combined text contents of each element in the set of matched elements, including their descendants.
		OR: Set the content of each element in the set of matched elements to the specified text.
	**/
	@:overload(function (textString:String):jQuery.JQuery {
	}) @:overload(function (_function:Int->String->Void):jQuery.JQuery {
	}) public function text():String;
	/**
		Search for a given element from among the matched elements.
	**/
	@:overload(function (selector:String):Float {
	}) @:overload(function (element:js.html.Node):Float {
	}) @:overload(function (element:jQuery.JQuery):Float {
	}) public function index():Float;
	/**
		Execute all handlers attached to an element for an event.
	**/
	public function triggerHandler(eventType:String,?extraParameters:Array<Dynamic>):Dynamic;
	/**
		Get the current computed height for the first element in the set of matched elements, including padding but not border.
	**/
	public function innerHeight():Int;
	/**
		End the most recent filtering operation in the current chain and return the set of matched elements to its previous state.
	**/
	public function end():jQuery.JQuery;
	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function dblclick():jQuery.JQuery;
	/**
		Get the immediately following sibling of each element in the set of matched elements. If a selector is provided, it retrieves the next sibling only if it matches that selector.
	**/
	public function next(?selector:String):jQuery.JQuery;
	/**
		Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	public function parents(?selector:String):jQuery.JQuery;
	/**
		A selector representing selector originally passed to jQuery().
	**/
	public var selector:String;
	/**
		Get the current vertical position of the scroll bar for the first element in the set of matched elements or set the vertical position of the scroll bar for every matched element.
		OR: Set the current vertical position of the scroll bar for each of the set of matched elements.
	**/
	@:overload(function (value:Float):jQuery.JQuery {
	}) public function scrollTop():Int;
	/**
		Register a handler to be called when Ajax requests complete. This is an <a href="/Ajax_Events">AjaxEvent</a>.
	**/
	public function ajaxComplete(handler:jQuery.Event->js.html.XMLHttpRequest->Dynamic->Void):jQuery.JQuery;
	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function blur():jQuery.JQuery;
	/**
		Get the current computed height for the first element in the set of matched elements.
		OR: Set the CSS height of every matched element.
	**/
	@:overload(function (value:String):jQuery.JQuery {
	}) @:overload(function (value:Float):jQuery.JQuery {
	}) @:overload(function (_function:Int->String->Dynamic):jQuery.JQuery {
	}) public function height():Int;
	/**
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function focus():jQuery.JQuery;
	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function keypress():jQuery.JQuery;
	/**
		Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
	**/
	@:overload(function (newContent:js.html.Node):jQuery.JQuery {
	}) @:overload(function (newContent:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (_function:Void->Dynamic):jQuery.JQuery {
	}) public function replaceWith(newContent:String):jQuery.JQuery;
	/**
		Perform a custom animation of a set of CSS properties.
	**/
	@:overload(function (properties:Dynamic,?duration:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (properties:Dynamic,?duration:String,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function animate(properties:Dynamic,options:Dynamic):jQuery.JQuery;
	/**
		Adjust the opacity of the matched elements.
	**/
	@:overload(function (duration:Float,opacity:Float,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (duration:String,opacity:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (duration:Float,opacity:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function fadeTo(duration:String,opacity:Float,?complete:Void->Void):jQuery.JQuery;
	/**
		Set a timer to delay execution of subsequent items in the queue.
	**/
	public function delay(duration:Int,?queueName:String):jQuery.JQuery;
	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function mouseout():jQuery.JQuery;
	/**
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
	**/
	@:overload(function (content:String,?content:String):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:String):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:String):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:Array<js.html.Node>):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:Array<String>):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:Array<jQuery.JQuery>):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:Array<js.html.Node>):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:Array<String>):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:Array<jQuery.JQuery>):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (content:String,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:String,?content:Array<js.html.Node>):jQuery.JQuery {
	}) @:overload(function (content:String,?content:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (content:String,?content:Array<String>):jQuery.JQuery {
	}) @:overload(function (content:String,?content:Array<jQuery.JQuery>):jQuery.JQuery {
	}) @:overload(function (content:String,?content:jQuery.JQuery):jQuery.JQuery {
	}) public function append(_function:Int->String->Void):jQuery.JQuery;
	/**
		Bind an event handler to the "focusin" event.
	**/
	@:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function focusin(handler:jQuery.Event->Void):jQuery.JQuery;
	/**
		Remove elements from the set of matched elements.
	**/
	@:overload(function (elements:js.html.Node):jQuery.JQuery {
	}) @:overload(function (elements:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (elements:Array<js.html.Node>):jQuery.JQuery {
	}) @:overload(function (jQuery:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (_function:Int->Void):jQuery.JQuery {
	}) public function not(selector:String):jQuery.JQuery;
	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function mouseleave():jQuery.JQuery;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
		OR: Creates DOM elements on the fly from the provided string of raw HTML.
		OR: Binds a function to be executed when the DOM has finished loading.
	**/
	@:overload(function (element:js.html.Node):Void {
	}) @:overload(function (elementArray:js.html.NodeList):Void {
	}) @:overload(function (elementArray:Array<js.html.Node>):Void {
	}) @:overload(function (jQuery:jQuery.JQuery):Void {
	}) @:overload(function (callback:Void->Void):Void {
	}) @:overload(function (callback:Class<jQuery.JQuery>->Void):Void {
	}) @:overload(function (object:Dynamic):Void {
	}) @:overload(function (html:String,attributes:Dynamic):Void {
	}) @:overload(function (selector:String,?context:js.html.Node):Void {
	}) @:overload(function (selector:String,?context:jQuery.JQuery):Void {
	}) @:overload(function (html:String,?ownerDocument:js.html.Document):Void {
	}) public function new():Void;
	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	@:overload(function (selector:String,eventType:String,handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (selector:String,eventType:String,eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function delegate(selector:String,events:Dynamic):jQuery.JQuery;
	/**
		Attach an event handler function for one or more events to the selected elements.
	**/
	@:overload(function (events:String,?selector:String,?data:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function on(events:Dynamic,?selector:String,?data:Dynamic):jQuery.JQuery;
	/**
		Get the current computed width for the first element in the set of matched elements, including padding and border.
	**/
	public function outerWidth(?includeMargin:Bool):Int;
	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function resize():jQuery.JQuery;
	/**
		Store arbitrary data associated with the matched elements.
		OR: Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
	**/
	@:overload(function (key:String):Dynamic {
	}) @:overload(function (obj:Dynamic):jQuery.JQuery {
	}) @:overload(function (key:String,value:Dynamic):jQuery.JQuery {
	}) public function data():Dynamic;
	/**
		Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function prevAll(?selector:String):jQuery.JQuery;
	/**
		Remove a property for the set of matched elements.
	**/
	public function removeProp(propertyName:String):jQuery.JQuery;
	/**
		Get the current value of the first element in the set of matched elements.
		OR: Set the value of each element in the set of matched elements.
	**/
	@:overload(function (value:String):jQuery.JQuery {
	}) @:overload(function (value:Array<String>):jQuery.JQuery {
	}) @:overload(function (_function:Int->Dynamic->Void):jQuery.JQuery {
	}) public function val():Dynamic;
	/**
		Register a handler to be called when Ajax requests complete with an error. This is an <a href="/Ajax_Events">Ajax Event</a>.
	**/
	public function ajaxError(handler:jQuery.Event->jQuery.JqXHR->Dynamic->String->Void):jQuery.JQuery;
	/**
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function click():jQuery.JQuery;
	/**
		Bind an event handler to the "error" JavaScript event.
	**/
	@:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function error(handler:jQuery.Event->Void):jQuery.JQuery;
	/**
		Bind two handlers to the matched elements, to be executed when the mouse pointer enters and leaves the elements.
		OR: Bind a single handler to the matched elements, to be executed when the mouse pointer enters or leaves the elements.
	**/
	@:overload(function (handlerIn:jQuery.Event->Void,handlerOut:jQuery.Event->Void):jQuery.JQuery {
	}) public function hover(handlerInOut:jQuery.Event->Void):jQuery.JQuery;
	/**
		Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
	**/
	@:overload(function (?className:String):jQuery.JQuery {
	}) public function removeClass(_function:Int->String->Void):jQuery.JQuery;
	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function scroll():jQuery.JQuery;
	/**
		The number of elements in the jQuery object.
	**/
	public var length:Float;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
		OR: Get an array of all the elements and selectors matched against the current element up through the DOM tree.
	**/
	@:overload(function (jQuery:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (element:js.html.Node):jQuery.JQuery {
	}) @:overload(function (selector:String,?context:js.html.Node):jQuery.JQuery {
	}) @:overload(function (selectors:String,?context:js.html.Node):Array<Dynamic> {
	}) @:overload(function (selectors:Array<String>,?context:js.html.Node):Array<Dynamic> {
	}) @:overload(function (selectors:jQuery.JQuery,?context:js.html.Node):Array<Dynamic> {
	}) public function closest(selector:String):jQuery.JQuery;
	/**
		Remove all child nodes of the set of matched elements from the DOM.
	**/
	public function empty():jQuery.JQuery;
	/**
		Insert content, specified by the parameter, after each element in the set of matched elements.
	**/
	@:overload(function (content:String,?content:String):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:String):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:String):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:Array<js.html.Node>):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:Array<String>):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:Array<jQuery.JQuery>):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:Array<js.html.Node>):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:Array<String>):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:Array<jQuery.JQuery>):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (content:String,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:String,?content:Array<js.html.Node>):jQuery.JQuery {
	}) @:overload(function (content:String,?content:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (content:String,?content:Array<String>):jQuery.JQuery {
	}) @:overload(function (content:String,?content:Array<jQuery.JQuery>):jQuery.JQuery {
	}) @:overload(function (content:String,?content:jQuery.JQuery):jQuery.JQuery {
	}) public function after(_function:Int->Void):jQuery.JQuery;
	/**
		Get the closest ancestor element that is positioned.
	**/
	public function offsetParent():jQuery.JQuery;
	/**
		Bind an event handler to the "load" JavaScript event.
		OR: Load data from the server and place the returned HTML into the matched element.
	**/
	@:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (url:String,?data:String,?complete:Dynamic->String->js.html.XMLHttpRequest->Void):jQuery.JQuery {
	}) @:overload(function (url:String,?data:Dynamic,?complete:Dynamic->String->js.html.XMLHttpRequest->Void):jQuery.JQuery {
	}) public function load(handler:jQuery.Event->Void):jQuery.JQuery;
	/**
		Remove the set of matched elements from the DOM.
	**/
	public function detach(?selector:String):jQuery.JQuery;
	/**
		Bind an event handler to the "unload" JavaScript event.
	**/
	@:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function unload(handler:jQuery.Event->Void):jQuery.JQuery;
	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function mouseup():jQuery.JQuery;
	/**
		Iterate over a jQuery object, executing a function for each matched element. 
	**/
	public function each(_function:Int->js.html.Node->Void):jQuery.JQuery;
	/**
		 Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished. 
	**/
	public function promise(?type:String,?target:Dynamic):jQuery.Promise;
	/**
		Get the current computed width for the first element in the set of matched elements.
		OR: Set the CSS width of each element in the set of matched elements.
	**/
	@:overload(function (value:String):jQuery.JQuery {
	}) @:overload(function (value:Float):jQuery.JQuery {
	}) @:overload(function (_function:Int->String->Dynamic):jQuery.JQuery {
	}) public function width():Int;
	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the document.
		OR: Set the current coordinates of every element in the set of matched elements, relative to the document.
	**/
	@:overload(function (coordinates:{var top:Float;var left:Float;}):jQuery.JQuery {
	}) @:overload(function (_function:Int->{var left:Float;var top:Float;}->{var left:Float;var top:Float;}):jQuery.JQuery {
	}) public function offset():{var top:Float;var left:Float;};
	/**
		Get the current computed height for the first element in the set of matched elements, including padding, border, and optionally margin. Returns an integer (without "px") representation of the value or null if called on an empty set of elements.
	**/
	public function outerHeight(?includeMargin:Bool):Int;
	/**
		Stop the currently-running animation on the matched elements.
	**/
	@:overload(function (?queue:String,?clearQueue:Bool,?jumpToEnd:Bool):jQuery.JQuery {
	}) public function stop(?clearQueue:Bool,?jumpToEnd:Bool):jQuery.JQuery;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test. 
	**/
	@:overload(function (element:js.html.Node):jQuery.JQuery {
	}) @:overload(function (jQuery:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (_function:Int->Void):jQuery.JQuery {
	}) public function filter(selector:String):jQuery.JQuery;
	/**
		Attach an event handler for all elements which match the current selector, now and in the future.
	**/
	@:overload(function (events:String,handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (events:String,data:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function live(events:Dynamic):jQuery.JQuery;
	/**
		Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.
	**/
	@:overload(function (?element:js.html.Node,?filter:String):jQuery.JQuery {
	}) public function nextUntil(?selector:String,?filter:String):jQuery.JQuery;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return <code>true</code> if at least one of these elements matches the given arguments.
	**/
	@:overload(function (jQuery:jQuery.JQuery):Bool {
	}) @:overload(function (element:js.html.Node):Bool {
	}) @:overload(function (_function:Int->Void):Bool {
	}) public function is(selector:String):Bool;
	/**
		Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.
	**/
	public function map(callback:Int->js.html.Node->jQuery.JQuery):jQuery.JQuery;
	/**
		Remove the set of matched elements from the DOM.
	**/
	public function remove(?selector:String):jQuery.JQuery;
	/**
		Return the number of elements in the jQuery object.
	**/
	public function size():Float;
	/**
		Hide the matched elements.
	**/
	@:overload(function (options:Dynamic):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function hide():jQuery.JQuery;
	/**
		Remove a previously-attached event handler from the elements.
	**/
	@:overload(function (eventType:String,_false:Bool):jQuery.JQuery {
	}) @:overload(function (?eventType:String,?handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function unbind(event:Dynamic):jQuery.JQuery;
	/**
		Adds the specified class(es) to each of the set of matched elements.
	**/
	@:overload(function (_function:Int->String->Void):jQuery.JQuery {
	}) public function addClass(className:String):jQuery.JQuery;
	/**
		Insert content, specified by the parameter, before each element in the set of matched elements.
	**/
	@:overload(function (content:String,?content:String):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:String):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:String):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:Array<js.html.Node>):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:Array<String>):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:Array<jQuery.JQuery>):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:Array<js.html.Node>):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:Array<String>):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:Array<jQuery.JQuery>):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (content:String,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:String,?content:Array<js.html.Node>):jQuery.JQuery {
	}) @:overload(function (content:String,?content:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (content:String,?content:Array<String>):jQuery.JQuery {
	}) @:overload(function (content:String,?content:Array<jQuery.JQuery>):jQuery.JQuery {
	}) @:overload(function (content:String,?content:jQuery.JQuery):jQuery.JQuery {
	}) public function before(_function:Int->Dynamic):jQuery.JQuery;
	/**
		Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
	**/
	@:overload(function (jQuery:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (element:js.html.Node):jQuery.JQuery {
	}) public function find(selector:String):jQuery.JQuery;
	/**
		Attach a handler to an event for the elements.
	**/
	@:overload(function (eventType:String,?eventData:Dynamic,preventBubble:Bool):jQuery.JQuery {
	}) @:overload(function (eventType:String,?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function bind(events:Dynamic):jQuery.JQuery;
	/**
		Display the matched elements by fading them to opaque.
	**/
	@:overload(function (?duration:Float,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function fadeIn(options:Dynamic):jQuery.JQuery;
	/**
		Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	@:overload(function (?element:js.html.Node,?filter:String):jQuery.JQuery {
	}) public function parentsUntil(?selector:String,?filter:String):jQuery.JQuery;
	/**
		Wrap an HTML structure around all elements in the set of matched elements.
	**/
	@:overload(function (wrappingElement:String):jQuery.JQuery {
	}) @:overload(function (wrappingElement:js.html.Node):jQuery.JQuery {
	}) @:overload(function (wrappingElement:jQuery.JQuery):jQuery.JQuery {
	}) public function wrapAll(wrappingElement:String):jQuery.JQuery;
	/**
		Add a collection of DOM elements onto the jQuery stack.
	**/
	@:overload(function (elements:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (elements:Array<js.html.Node>,name:String,arguments:Array<Dynamic>):jQuery.JQuery {
	}) @:overload(function (elements:js.html.NodeList,name:String,arguments:Array<Dynamic>):jQuery.JQuery {
	}) public function pushStack(elements:Array<js.html.Node>):jQuery.JQuery;
	/**
		Retrieve all the DOM elements contained in the jQuery set, as an array.
	**/
	public function toArray():Array<js.html.Node>;
	/**
		Get the immediately preceding sibling of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function prev(?selector:String):jQuery.JQuery;
	/**
		Execute the next function on the queue for the matched elements.
	**/
	public function dequeue(?queueName:String):jQuery.JQuery;
	/**
		Determine whether any of the matched elements are assigned the given class.
	**/
	public function hasClass(className:String):Bool;
	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function keyup():jQuery.JQuery;
	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function mousemove():jQuery.JQuery;
	/**
		Get the children of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function children(?selector:String):jQuery.JQuery;
	/**
		Execute all handlers and behaviors attached to the matched elements for the given event type.
	**/
	@:overload(function (eventType:String,?extraParameters:Array<Dynamic>):jQuery.JQuery {
	}) @:overload(function (eventType:String,?extraParameters:Dynamic):jQuery.JQuery {
	}) public function trigger(event:jQuery.Event):jQuery.JQuery;
	/**
		Wrap an HTML structure around the content of each element in the set of matched elements.
	**/
	@:overload(function (_function:Int->Void):jQuery.JQuery {
	}) public function wrapInner(wrappingElement:String):jQuery.JQuery;
	/**
		Remove an attribute from each element in the set of matched elements.
	**/
	public function removeAttr(attributeName:String):jQuery.JQuery;
	/**
		Bind an event handler to the "focusout" JavaScript event.
	**/
	@:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function focusout(handler:jQuery.Event->Void):jQuery.JQuery;
	/**
		Reduce the set of matched elements to a subset specified by a range of indices.
	**/
	public function slice(start:Int,?end:Int):jQuery.JQuery;
	/**
		Remove event handlers previously attached using <code>.live()</code> from the elements.
	**/
	@:overload(function (events:Dynamic):jQuery.JQuery {
	}) @:overload(function (eventType:String,?handler:String):jQuery.JQuery {
	}) public function die():jQuery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
	**/
	@:overload(function (?_switch:Bool):jQuery.JQuery {
	}) @:overload(function (className:String,_switch:Bool):jQuery.JQuery {
	}) @:overload(function (_function:Int->String->Bool->String,?_switch:Bool):jQuery.JQuery {
	}) public function toggleClass(className:String):jQuery.JQuery;
	/**
		The DOM node context originally passed to <code>jQuery()</code>; if none was passed then context will likely be the document.
	**/
	public var context:js.html.Node;
	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the offset parent.
	**/
	public function position():{var top:Float;var left:Float;};
	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function mouseover():jQuery.JQuery;
	/**
		Show the queue of functions to be executed on the matched elements.
		OR: Manipulate the queue of functions to be executed, once for each matched element.
	**/
	@:overload(function (?queueName:String,newQueue:Array<Void->Void>):jQuery.JQuery {
	}) @:overload(function (?queueName:String,callback:(Void->Void)->Void):jQuery.JQuery {
	}) public function queue(?queueName:String):Array<Void->Void>;
	/**
		Reduce the set of matched elements to the first in the set.
	**/
	public function first():jQuery.JQuery;
	/**
		Insert every element in the set of matched elements before the target.
	**/
	@:overload(function (target:String):jQuery.JQuery {
	}) @:overload(function (target:js.html.Node):jQuery.JQuery {
	}) @:overload(function (target:jQuery.JQuery):jQuery.JQuery {
	}) public function insertBefore(target:String):jQuery.JQuery;
	/**
		Replace each target element with the set of matched elements.
	**/
	public function replaceAll(target:String):jQuery.JQuery;
	/**
		Register a handler to be called when all Ajax requests have completed. This is an <a href="/Ajax_Events">Ajax Event</a>.
	**/
	public function ajaxStop(handler:Void->Void):jQuery.JQuery;
	/**
		Hide the matched elements by fading them to transparent.
	**/
	@:overload(function (?duration:Float,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function fadeOut(options:Dynamic):jQuery.JQuery;
	/**
		Attach a handler to an event for the elements. The handler is executed at most once per element.
	**/
	@:overload(function (events:Dynamic,?selector:String,?data:Dynamic):jQuery.JQuery {
	}) @:overload(function (events:String,?selector:String,?data:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function one(events:String,?data:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery;
	/**
		Get the parent of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	public function parent(?selector:String):jQuery.JQuery;
	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function change():jQuery.JQuery;
	/**
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function select():jQuery.JQuery;
	/**
		Add the previous set of elements on the stack to the current set, optionally filtered by a selector.
	**/
	public function addBack(?selector:String):jQuery.JQuery;
	/**
		Register a handler to be called when the first Ajax request begins. This is an <a href="/Ajax_Events">Ajax Event</a>.
	**/
	public function ajaxStart(handler:Void->Void):jQuery.JQuery;
	/**
		Get all following siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	public function nextAll(?selector:String):jQuery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload(function (namespace:String):jQuery.JQuery {
	}) @:overload(function (selector:String,eventType:String):jQuery.JQuery {
	}) @:overload(function (selector:String,events:Dynamic):jQuery.JQuery {
	}) @:overload(function (selector:String,eventType:String,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function undelegate():jQuery.JQuery;
	/**
		Add elements to the set of matched elements.
	**/
	@:overload(function (elements:js.html.Node):jQuery.JQuery {
	}) @:overload(function (elements:js.html.NodeList):jQuery.JQuery {
	}) @:overload(function (html:String):jQuery.JQuery {
	}) @:overload(function (jQuery:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (selector:String,context:js.html.Node):jQuery.JQuery {
	}) public function add(selector:String):jQuery.JQuery;
	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function mouseenter():jQuery.JQuery;
	/**
		Insert every element in the set of matched elements to the beginning of the target.
	**/
	@:overload(function (target:String):jQuery.JQuery {
	}) @:overload(function (target:js.html.Node):jQuery.JQuery {
	}) @:overload(function (target:jQuery.JQuery):jQuery.JQuery {
	}) public function prependTo(target:String):jQuery.JQuery;
	/**
		Display or hide the matched elements with a sliding motion.
	**/
	@:overload(function (?duration:Float,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function slideToggle(options:Dynamic):jQuery.JQuery;
	/**
		Encode a set of form elements as a string for submission.
	**/
	public function serialize():String;
	/**
		Specify a function to execute when the DOM is fully loaded.
	**/
	public function ready(handler:Void->Void):jQuery.JQuery;
	/**
		Display the matched elements.
	**/
	@:overload(function (options:Dynamic):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function show():jQuery.JQuery;
	/**
		Get the children of each element in the set of matched elements, including text and comment nodes.
	**/
	public function contents():jQuery.JQuery;
	/**
		Create a deep copy of the set of matched elements.
	**/
	@:overload(function (?withDataAndEvents:Bool,?deepWithDataAndEvents:Bool):jQuery.JQuery {
	}) public function clone(?withDataAndEvents:Bool):jQuery.JQuery;
	/**
		Get the value of a property for the first element in the set of matched elements.
		OR: Set one or more properties for the set of matched elements.
	**/
	@:overload(function (properties:Dynamic):jQuery.JQuery {
	}) @:overload(function (propertyName:String,value:String):jQuery.JQuery {
	}) @:overload(function (propertyName:String,value:Float):jQuery.JQuery {
	}) @:overload(function (propertyName:String,value:Bool):jQuery.JQuery {
	}) @:overload(function (propertyName:String,_function:Int->String->String):jQuery.JQuery {
	}) @:overload(function (propertyName:String,_function:Int->Float->Float):jQuery.JQuery {
	}) @:overload(function (propertyName:String,_function:Int->Bool->Bool):jQuery.JQuery {
	}) public function prop(propertyName:String):String;
	/**
		Stop the currently-running animation, remove all queued animations, and complete all animations for the matched elements.
	**/
	public function finish(?queue:String):jQuery.JQuery;
	/**
		Display or hide the matched elements by animating their opacity.
	**/
	@:overload(function (?duration:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function fadeToggle(options:Dynamic):jQuery.JQuery;
	/**
		Reduce the set of matched elements to the one at the specified index.
	**/
	@:overload(function (index:Int):jQuery.JQuery {
	}) public function eq(index:Int):jQuery.JQuery;
	/**
		Get the current computed width for the first element in the set of matched elements, including padding but not border.
	**/
	public function innerWidth():Int;
	/**
		Get the current horizontal position of the scroll bar for the first element in the set of matched elements.
		OR: Set the current horizontal position of the scroll bar for each of the set of matched elements.
	**/
	@:overload(function (value:Float):jQuery.JQuery {
	}) public function scrollLeft():Int;
	/**
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	**/
	@:overload(function (handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?eventData:Dynamic,handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function submit():jQuery.JQuery;
	/**
		Bind two or more handlers to the matched elements, to be executed on alternate clicks.
		OR: Display or hide the matched elements.
	**/
	@:overload(function (options:Dynamic):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (handler:jQuery.Event->Void,handler:jQuery.Event->Void,?handler:jQuery.Event->Void):jQuery.JQuery {
	}) @:overload(function (?duration:Float,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) @:overload(function (?duration:String,?easing:String,?complete:Void->Void):jQuery.JQuery {
	}) public function toggle(showOrHide:Bool):jQuery.JQuery;
	/**
		Get the value of style properties for the first element in the set of matched elements.
		OR: Set one or more CSS properties for the set of matched elements.
	**/
	@:overload(function (propertyNames:Array<String>):String {
	}) @:overload(function (properties:Dynamic):jQuery.JQuery {
	}) @:overload(function (propertyName:String,value:String):jQuery.JQuery {
	}) @:overload(function (propertyName:String,value:Float):jQuery.JQuery {
	}) @:overload(function (propertyName:String,_function:Int->String->Dynamic):jQuery.JQuery {
	}) public function css(propertyName:String):String;
	/**
		Remove an event handler.
	**/
	@:overload(function (events:String,?selector:String,?handler:jQuery.Event->Void):jQuery.JQuery {
	}) public function off(events:Dynamic,?selector:String):jQuery.JQuery;
	/**
		Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
	**/
	@:overload(function (contained:js.html.Node):jQuery.JQuery {
	}) public function has(selector:String):jQuery.JQuery;
	/**
		Reduce the set of matched elements to the final one in the set.
	**/
	public function last():jQuery.JQuery;
	/**
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
	**/
	@:overload(function (content:String,?content:String):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:String):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:String):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:jQuery.JQuery,?content:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:js.html.Node,?content:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (content:String,?content:js.html.Node):jQuery.JQuery {
	}) @:overload(function (content:String,?content:jQuery.JQuery):jQuery.JQuery {
	}) public function prepend(_function:Int->String->Void):jQuery.JQuery;
	/**
		Remove a previously-stored piece of data.
	**/
	@:overload(function (?list:Array<String>):jQuery.JQuery {
	}) @:overload(function (?list:String):jQuery.JQuery {
	}) public function removeData(?name:String):jQuery.JQuery;
	/**
		Wrap an HTML structure around each element in the set of matched elements.
	**/
	@:overload(function (wrappingElement:String):jQuery.JQuery {
	}) @:overload(function (wrappingElement:js.html.Node):jQuery.JQuery {
	}) @:overload(function (wrappingElement:jQuery.JQuery):jQuery.JQuery {
	}) @:overload(function (_function:Int->Void):jQuery.JQuery {
	}) public function wrap(wrappingElement:String):jQuery.JQuery;
	/**
		Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
	**/
	public function unwrap():jQuery.JQuery;
	/**
		Insert every element in the set of matched elements after the target.
	**/
	@:overload(function (target:String):jQuery.JQuery {
	}) @:overload(function (target:js.html.Node):jQuery.JQuery {
	}) @:overload(function (target:jQuery.JQuery):jQuery.JQuery {
	}) public function insertAfter(target:String):jQuery.JQuery;
	/**
		Compile-time short cut to JQueryStatic.
	**/
	inline static public var _static=jQuery.JQueryStatic;
}