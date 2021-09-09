/* This file is generated, do not edit! Visit https://api.jquery.com/ for API documentation. */
package js.jquery;
@:build(js.jquery.Config.build()) extern class JQuery implements ArrayAccess<js.html.Element> {
	/**
		A multi-purpose callbacks list object that provides a powerful way to manage callback lists.
	**/
	@:jQueryVersion({ added : "1.7" })
	static public function Callbacks(flags:String):js.jquery.Callbacks;
	/**
		A factory function that returns a chainable utility object with methods to register multiple callbacks into callback queues, invoke callback queues, and relay the success or failure state of any synchronous or asynchronous function.
	**/
	@:jQueryVersion({ added : "1.5" })
	static public function Deferred(?beforeStart:js.jquery.Deferred -> Void):js.jquery.Deferred;
	/**
		Perform an asynchronous HTTP (Ajax) request.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	static public function ajax(?settings:Dynamic):js.jquery.JqXHR;
	/**
		Perform an asynchronous HTTP (Ajax) request.
	**/
	@:overload
	@:jQueryVersion({ added : "1.5" })
	static public function ajax(url:String, ?settings:Dynamic):js.jquery.JqXHR;
	/**
		Handle custom Ajax options or modify existing options before each request is sent and before they are processed by <code>$.ajax()</code>.
	**/
	@:jQueryVersion({ added : "1.5" })
	static public function ajaxPrefilter(?dataTypes:String, handler:Dynamic -> Dynamic -> js.jquery.JqXHR -> Void):Void;
	/**
		Set default values for future Ajax requests. Its use is not recommended.
	**/
	@:jQueryVersion({ added : "1.1" })
	static public function ajaxSetup(options:Dynamic):Dynamic;
	/**
		Creates an object that handles the actual transmission of Ajax data.
	**/
	@:jQueryVersion({ added : "1.5" })
	static public function ajaxTransport(dataType:String, handler:Dynamic -> Dynamic -> js.jquery.JqXHR -> Void):Void;
	/**
		States if the current page, in the user's browser, is being rendered using the <a href="https://www.w3.org/TR/REC-CSS2/box.html">W3C CSS Box Model</a>.
	**/
	@:jQueryVersion({ added : "1.0", deprecated : "1.3", removed : "1.8" })
	static public var boxModel : Bool;
	/**
		Contains flags for the useragent, read from navigator.userAgent. <strong>This property was removed in jQuery 1.9</strong> and is available only through the jQuery.migrate plugin. Please try to use feature detection instead.
	**/
	@:jQueryVersion({ added : "1.0", deprecated : "1.3", removed : "1.9" })
	static public var browser : Dynamic;
	/**
		Check to see if a DOM element is a descendant of another DOM element.
	**/
	@:jQueryVersion({ added : "1.4" })
	static public function contains(container:js.html.Element, contained:js.html.Element):Bool;
	/**
		Hook directly into jQuery to override how particular CSS properties are retrieved or set, normalize CSS property naming, or create custom properties.
	**/
	@:jQueryVersion({ added : "1.4.3" })
	static public var cssHooks : Dynamic;
	/**
		An object containing all CSS properties that may be used without a unit. The <a href="/css/"><code>.css()</code></a> method uses this object to see if it may append <code>px</code> to unitless values.
	**/
	@:jQueryVersion({ added : "1.4.3" })
	static public var cssNumber : Dynamic;
	/**
		Returns value at named data store for the element, as set by <code>jQuery.data(element, name, value)</code>, or the full data store for the element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	static public function data(element:js.html.Element):Dynamic;
	/**
		Returns value at named data store for the element, as set by <code>jQuery.data(element, name, value)</code>, or the full data store for the element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.3" })
	static public function data(element:js.html.Element, key:String):Dynamic;
	/**
		Store arbitrary data associated with the specified element. Returns the value that was set.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.3" })
	static public function data(element:js.html.Element, key:String, value:Dynamic):Dynamic;
	/**
		Execute the next function on the queue for the matched element.
	**/
	@:jQueryVersion({ added : "1.3" })
	static public function dequeue(element:js.html.Element, ?queueName:String):Void;
	/**
		A generic iterator function, which can be used to seamlessly iterate over both objects and arrays. Arrays and array-like objects with a length property (such as a function's arguments object) are iterated by numeric index, from 0 to length-1. Other objects are iterated via their named properties.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	static public function each(array:haxe.extern.EitherType<Array<Dynamic>, js.html.NodeList>, callback:Int -> Dynamic -> Void):Dynamic;
	/**
		A generic iterator function, which can be used to seamlessly iterate over both objects and arrays. Arrays and array-like objects with a length property (such as a function's arguments object) are iterated by numeric index, from 0 to length-1. Other objects are iterated via their named properties.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	static public function each(object:Dynamic, callback:String -> Dynamic -> Void):Dynamic;
	/**
		Takes a string and throws an exception containing it.
	**/
	@:jQueryVersion({ added : "1.4.1" })
	static public function error(message:String):Void;
	/**
		Escapes any character that has a special meaning in a CSS selector.
	**/
	@:jQueryVersion({ added : "3.0" })
	static public function escapeSelector(selector:String):String;
	/**
		Merge the contents of two or more objects together into the first object.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	static public function extend(object:Dynamic):Dynamic;
	/**
		Merge the contents of two or more objects together into the first object.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	static public function extend(target:Dynamic, object1:Dynamic, ?objectN:Dynamic):Dynamic;
	/**
		Merge the contents of two or more objects together into the first object.
	**/
	@:overload
	@:jQueryVersion({ added : "1.1.4" })
	static public function extend(?deep:Bool, target:Dynamic, object1:Dynamic, ?objectN:Dynamic):Dynamic;
	/**
		An alias to `jQuery.prototype`.
	**/
	static public var fn : Dynamic;
	static public var fx : { /**
		The rate (in milliseconds) at which animations fire.
	**/
	@:jQueryVersion({ added : "1.4.3", deprecated : "3.0" })
	var interval : Float; /**
		Globally disable all animations.
	**/
	@:jQueryVersion({ added : "1.3" })
	var off : Bool; };
	/**
		Load data from the server using a HTTP GET request.
	**/
	@:overload
	@:jQueryVersion({ added : "1.12-and-2.2" })
	static public function get(settings:Dynamic):js.jquery.JqXHR;
	/**
		Load data from the server using a HTTP GET request.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	static public function get(url:String, ?data:Dynamic, ?success:Dynamic -> String -> js.jquery.JqXHR -> Void, ?dataType:String):js.jquery.JqXHR;
	/**
		Load JSON-encoded data from the server using a GET HTTP request.
	**/
	@:jQueryVersion({ added : "1.0" })
	static public function getJSON(url:String, ?data:Dynamic, ?success:Dynamic -> String -> js.jquery.JqXHR -> Void):js.jquery.JqXHR;
	/**
		Load a JavaScript file from the server using a GET HTTP request, then execute it.
	**/
	@:jQueryVersion({ added : "1.0" })
	static public function getScript(url:String, ?success:String -> String -> js.jquery.JqXHR -> Void):js.jquery.JqXHR;
	/**
		Execute some JavaScript code globally.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0.4" })
	static public function globalEval(code:String):Dynamic;
	/**
		Execute some JavaScript code globally.
	**/
	@:overload
	@:jQueryVersion({ added : "3.4.0" })
	static public function globalEval(code:String, ?options:Dynamic):Dynamic;
	/**
		Execute some JavaScript code globally.
	**/
	@:overload
	@:jQueryVersion({ added : "3.5.0" })
	static public function globalEval(code:String, ?options:Dynamic, ?doc:js.html.Document):Dynamic;
	/**
		Finds the elements of an array which satisfy a filter function. The original array is not affected.
	**/
	@:jQueryVersion({ added : "1.0" })
	static public function grep(array:haxe.extern.EitherType<Array<Dynamic>, js.html.NodeList>, _function:Dynamic -> Int -> Bool, ?invert:Bool):Array<Dynamic>;
	/**
		Determine whether an element has any jQuery data associated with it.
	**/
	@:jQueryVersion({ added : "1.5" })
	static public function hasData(element:js.html.Element):Bool;
	/**
		Holds or releases the execution of jQuery's ready event.
	**/
	@:jQueryVersion({ added : "1.6", deprecated : "3.2" })
	static public function holdReady(hold:Bool):Void;
	/**
		Modify and filter HTML strings passed through <a href="/category/manipulation/">jQuery manipulation methods</a>.
	**/
	@:jQueryVersion({ added : "1.12-and-2.2" })
	static public function htmlPrefilter(html:String):String;
	/**
		Search for a specified value within an array and return its index (or -1 if not found).
	**/
	@:jQueryVersion({ added : "1.2" })
	static public function inArray(value:Dynamic, array:Array<Dynamic>, ?fromIndex:Float):Float;
	/**
		Determine whether the argument is an array.
	**/
	@:jQueryVersion({ added : "1.3", deprecated : "3.2" })
	static public function isArray(obj:Dynamic):Bool;
	/**
		Check to see if an object is empty (contains no enumerable properties).
	**/
	@:jQueryVersion({ added : "1.4" })
	static public function isEmptyObject(object:Dynamic):Bool;
	/**
		Determines if its argument is callable as a function.
	**/
	@:jQueryVersion({ added : "1.2", deprecated : "3.3" })
	static public function isFunction(value:Dynamic):Bool;
	/**
		Determines whether its argument represents a JavaScript number.
	**/
	@:jQueryVersion({ added : "1.7", deprecated : "3.3" })
	static public function isNumeric(value:Dynamic):Bool;
	/**
		Check to see if an object is a plain object (created using "{}" or "new Object").
	**/
	@:jQueryVersion({ added : "1.4" })
	static public function isPlainObject(object:Dynamic):Bool;
	/**
		Determine whether the argument is a window.
	**/
	@:jQueryVersion({ added : "1.4.3", deprecated : "3.3" })
	static public function isWindow(obj:Dynamic):Bool;
	/**
		Check to see if a DOM node is within an XML document (or is an XML document).
	**/
	@:jQueryVersion({ added : "1.1.4" })
	static public function isXMLDoc(node:js.html.Element):Bool;
	/**
		Convert an array-like object into a true JavaScript array.
	**/
	@:jQueryVersion({ added : "1.2" })
	static public function makeArray(obj:Dynamic):Array<Dynamic>;
	/**
		Translate all items in an array or object to new array of items.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	static public function map(array:Array<Dynamic>, callback:Dynamic -> Int -> Dynamic):Array<Dynamic>;
	/**
		Translate all items in an array or object to new array of items.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	static public function map(object:Dynamic, callback:Dynamic -> String -> Dynamic):Array<Dynamic>;
	/**
		Merge the contents of two arrays together into the first array.
	**/
	@:jQueryVersion({ added : "1.0" })
	static public function merge(first:haxe.extern.EitherType<Array<Dynamic>, js.html.NodeList>, second:haxe.extern.EitherType<Array<Dynamic>, js.html.NodeList>):Array<Dynamic>;
	/**
		Relinquish jQuery's control of the <code>$</code> variable.
	**/
	@:jQueryVersion({ added : "1.0" })
	static public function noConflict(?removeAll:Bool):Dynamic;
	/**
		An empty function.
	**/
	@:jQueryVersion({ added : "1.4" })
	static public function noop():Void;
	/**
		Return a number representing the current time.
	**/
	@:jQueryVersion({ added : "1.4.3", deprecated : "3.3" })
	static public function now():Float;
	/**
		Create a serialized representation of an array, a plain object, or a jQuery object suitable for use in a URL query string or Ajax request. In case a jQuery object is passed, it should contain input elements with name/value properties.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2" })
	static public function param(obj:Dynamic):String;
	/**
		Create a serialized representation of an array, a plain object, or a jQuery object suitable for use in a URL query string or Ajax request. In case a jQuery object is passed, it should contain input elements with name/value properties.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	static public function param(obj:Dynamic, traditional:Bool):String;
	/**
		Parses a string into an array of DOM nodes.
	**/
	@:jQueryVersion({ added : "1.8" })
	static public function parseHTML(data:String, ?context:js.html.Element, ?keepScripts:Bool):Array<js.html.Element>;
	/**
		Takes a well-formed JSON string and returns the resulting JavaScript value.
	**/
	@:jQueryVersion({ added : "1.4.1", deprecated : "3.0" })
	static public function parseJSON(json:String):Dynamic;
	/**
		Parses a string into an XML document.
	**/
	@:jQueryVersion({ added : "1.5" })
	static public function parseXML(data:String):js.html.Document;
	/**
		Send data to the server using a HTTP POST request.
	**/
	@:overload
	@:jQueryVersion({ added : "1.12-and-2.2" })
	static public function post(settings:Dynamic):js.jquery.JqXHR;
	/**
		Send data to the server using a HTTP POST request.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	static public function post(url:String, ?data:Dynamic, ?success:Dynamic -> String -> js.jquery.JqXHR -> Void, ?dataType:String):js.jquery.JqXHR;
	/**
		Takes a function and returns a new one that will always have a particular context.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4", deprecated : "3.3" })
	static public function proxy(_function:haxe.Constraints.Function, context:Dynamic):haxe.Constraints.Function;
	/**
		Takes a function and returns a new one that will always have a particular context.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4", deprecated : "3.3" })
	static public function proxy(context:Dynamic, name:String):haxe.Constraints.Function;
	/**
		Takes a function and returns a new one that will always have a particular context.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6", deprecated : "3.3" })
	static public function proxy(_function:haxe.Constraints.Function, context:Dynamic, ?additionalArguments:Dynamic):haxe.Constraints.Function;
	/**
		Takes a function and returns a new one that will always have a particular context.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6", deprecated : "3.3" })
	static public function proxy(context:Dynamic, name:String, ?additionalArguments:Dynamic):haxe.Constraints.Function;
	/**
		Show the queue of functions to be executed on the matched element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3" })
	static public function queue(element:js.html.Element, ?queueName:String):Array<Void -> Void>;
	/**
		Manipulate the queue of functions to be executed on the matched element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3" })
	static public function queue(element:js.html.Element, queueName:String, newQueue:Array<Void -> Void>):Array<Void -> Void>;
	/**
		Manipulate the queue of functions to be executed on the matched element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3" })
	static public function queue(element:js.html.Element, queueName:String, callback:haxe.Constraints.Function):Array<Void -> Void>;
	/**
		A Promise-like object (or "thenable") that resolves when the document is ready.
	**/
	@:jQueryVersion({ added : "1.8" })
	static public var ready : js.jquery.Thenable<Dynamic>;
	/**
		Handles errors thrown synchronously in functions wrapped in <code>jQuery()</code>.
	**/
	@:jQueryVersion({ added : "3.1" })
	static public dynamic function readyException(error:js.jquery.Error):String;
	/**
		Remove a previously-stored piece of data.
	**/
	@:jQueryVersion({ added : "1.2.3" })
	static public function removeData(element:js.html.Element, ?name:String):Void;
	/**
		Creates an object containing a set of properties ready to be used in the definition of custom animations.
	**/
	@:overload
	@:jQueryVersion({ added : "1.1" })
	static public function speed(settings:Dynamic):Dynamic;
	/**
		Creates an object containing a set of properties ready to be used in the definition of custom animations.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	static public function speed(?duration:haxe.extern.EitherType<Float, String>, ?settings:Dynamic):Dynamic;
	/**
		Creates an object containing a set of properties ready to be used in the definition of custom animations.
	**/
	@:overload
	@:jQueryVersion({ added : "1.1" })
	static public function speed(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):Dynamic;
	/**
		Creates a new copy of jQuery whose properties and methods can be modified without affecting the original jQuery object.
	**/
	@:jQueryVersion({ added : "1.5", deprecated : "1.7", removed : "1.9" })
	static public function sub():js.jquery.JQuery;
	/**
		A collection of properties that represent the presence of different browser features or bugs. Intended for jQuery's internal use; specific properties may be removed when they are no longer needed internally to improve page startup performance. For your own project's feature-detection needs, we strongly recommend the use of an external library such as <a href="https://modernizr.com">Modernizr</a> instead of dependency on properties in <code>jQuery.support</code>.
	**/
	@:jQueryVersion({ added : "1.3", deprecated : "1.9" })
	static public var support : Dynamic;
	/**
		Remove the whitespace from the beginning and end of a string.
	**/
	@:jQueryVersion({ added : "1.0", deprecated : "3.5" })
	static public function trim(str:String):String;
	/**
		Determine the internal JavaScript [[Class]] of an object.
	**/
	@:jQueryVersion({ added : "1.4.3", deprecated : "3.3" })
	static public function type(obj:Dynamic):String;
	/**
		Sorts an array of DOM elements, in place, with the duplicates removed. Note that this only works on arrays of DOM elements, not strings or numbers.
	**/
	@:jQueryVersion({ added : "1.1.3", deprecated : "3.0" })
	static public function unique(array:Array<js.html.Element>):Array<js.html.Element>;
	/**
		Sorts an array of DOM elements, in place, with the duplicates removed. Note that this only works on arrays of DOM elements, not strings or numbers.
	**/
	@:jQueryVersion({ added : "1.12-and-2.2" })
	static public function uniqueSort(array:Array<js.html.Element>):Array<js.html.Element>;
	/**
		Provides a way to execute callback functions based on zero or more Thenable objects, usually <a href="/category/deferred-object/">Deferred</a> objects that represent asynchronous events.
	**/
	@:jQueryVersion({ added : "1.5" })
	static public function when(deferreds:haxe.extern.EitherType<js.jquery.Promise, haxe.extern.EitherType<js.jquery.Thenable<Dynamic>, haxe.extern.Rest<js.jquery.Deferred>>>):js.jquery.Promise;
	/**
		Create a new jQuery object with elements added to the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function add(selector:String):js.jquery.JQuery;
	/**
		Create a new jQuery object with elements added to the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function add(elements:js.html.Element):js.jquery.JQuery;
	/**
		Create a new jQuery object with elements added to the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function add(html:String):js.jquery.JQuery;
	/**
		Create a new jQuery object with elements added to the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3.2" })
	public function add(selection:js.jquery.JQuery):js.jquery.JQuery;
	/**
		Create a new jQuery object with elements added to the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function add(selector:String, context:js.html.Element):js.jquery.JQuery;
	/**
		Add the previous set of elements on the stack to the current set, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.8" })
	public function addBack(?selector:String):js.jquery.JQuery;
	/**
		Adds the specified class(es) to each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function addClass(className:String):js.jquery.JQuery;
	/**
		Adds the specified class(es) to each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "3.3" })
	public function addClass(classNames:Array<String>):js.jquery.JQuery;
	/**
		Adds the specified class(es) to each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function addClass(_function:Int -> String -> String):js.jquery.JQuery;
	/**
		Adds the specified class(es) to each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "3.3" })
	public function addClass(_function:Int -> String -> String):js.jquery.JQuery;
	/**
		Insert content, specified by the parameter, after each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function after(_function:Int -> haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>):js.jquery.JQuery;
	/**
		Insert content, specified by the parameter, after each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.10" })
	public function after(_function:Int -> String -> haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>):js.jquery.JQuery;
	/**
		Insert content, specified by the parameter, after each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function after(content:haxe.extern.EitherType<Array<String>, haxe.extern.EitherType<Array<js.jquery.JQuery>, haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<js.html.NodeList, haxe.extern.EitherType<String, js.jquery.JQuery>>>>>>, ?content:haxe.extern.EitherType<Array<String>, haxe.extern.EitherType<Array<js.jquery.JQuery>, haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<js.html.NodeList, haxe.extern.EitherType<String, js.jquery.JQuery>>>>>>):js.jquery.JQuery;
	/**
		Register a handler to be called when Ajax requests complete. This is an <a href="/Ajax_Events/">AjaxEvent</a>.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function ajaxComplete(handler:js.jquery.Event -> js.jquery.JqXHR -> Dynamic -> Void):js.jquery.JQuery;
	/**
		Register a handler to be called when Ajax requests complete with an error. This is an <a href="/Ajax_Events/">Ajax Event</a>.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function ajaxError(handler:js.jquery.Event -> js.jquery.JqXHR -> Dynamic -> String -> Void):js.jquery.JQuery;
	/**
		Attach a function to be executed before an Ajax request is sent. This is an <a href="/Ajax_Events/">Ajax Event</a>.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function ajaxSend(handler:js.jquery.Event -> js.jquery.JqXHR -> Dynamic -> Void):js.jquery.JQuery;
	/**
		Register a handler to be called when the first Ajax request begins. This is an <a href="/Ajax_Events/">Ajax Event</a>.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function ajaxStart(handler:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Register a handler to be called when all Ajax requests have completed. This is an <a href="/Ajax_Events/">Ajax Event</a>.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function ajaxStop(handler:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Attach a function to be executed whenever an Ajax request completes successfully. This is an <a href="/Ajax_Events/">Ajax Event</a>.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function ajaxSuccess(handler:js.jquery.Event -> js.jquery.JqXHR -> Dynamic -> Dynamic -> Void):js.jquery.JQuery;
	/**
		Add the previous set of elements on the stack to the current set.
	**/
	@:jQueryVersion({ added : "1.2", deprecated : "1.8", removed : "3.0" })
	public function andSelf():js.jquery.JQuery;
	/**
		Perform a custom animation of a set of CSS properties.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function animate(properties:Dynamic, options:Dynamic):js.jquery.JQuery;
	/**
		Perform a custom animation of a set of CSS properties.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function animate(properties:Dynamic, ?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function append(_function:Int -> String -> haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>):js.jquery.JQuery;
	/**
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function append(content:haxe.extern.EitherType<Array<String>, haxe.extern.EitherType<Array<js.jquery.JQuery>, haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<js.html.NodeList, haxe.extern.EitherType<String, js.jquery.JQuery>>>>>>, ?content:haxe.extern.EitherType<Array<String>, haxe.extern.EitherType<Array<js.jquery.JQuery>, haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<js.html.NodeList, haxe.extern.EitherType<String, js.jquery.JQuery>>>>>>):js.jquery.JQuery;
	/**
		Insert every element in the set of matched elements to the end of the target.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function appendTo(target:haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<String, js.jquery.JQuery>>>):js.jquery.JQuery;
	/**
		Get the value of an attribute for the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function attr(attributeName:String):String;
	/**
		Set one or more attributes for the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function attr(attributes:Dynamic):js.jquery.JQuery;
	/**
		Set one or more attributes for the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function attr(attributeName:String, value:haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Set one or more attributes for the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.1" })
	public function attr(attributeName:String, _function:Int -> String -> haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Insert content, specified by the parameter, before each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function before(_function:Int -> haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>):js.jquery.JQuery;
	/**
		Insert content, specified by the parameter, before each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.10" })
	public function before(_function:Int -> String -> haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>):js.jquery.JQuery;
	/**
		Insert content, specified by the parameter, before each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function before(content:haxe.extern.EitherType<Array<String>, haxe.extern.EitherType<Array<js.jquery.JQuery>, haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<js.html.NodeList, haxe.extern.EitherType<String, js.jquery.JQuery>>>>>>, ?content:haxe.extern.EitherType<Array<String>, haxe.extern.EitherType<Array<js.jquery.JQuery>, haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<js.html.NodeList, haxe.extern.EitherType<String, js.jquery.JQuery>>>>>>):js.jquery.JQuery;
	/**
		Attach a handler to an event for the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4", deprecated : "3.0" })
	public function bind(events:Dynamic):js.jquery.JQuery;
	/**
		Attach a handler to an event for the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0", deprecated : "3.0" })
	public function bind(eventType:String, ?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Attach a handler to an event for the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3", deprecated : "3.0" })
	public function bind(eventType:String, ?eventData:Dynamic, ?preventBubble:Bool):js.jquery.JQuery;
	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function blur():js.jquery.JQuery;
	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function blur(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function blur(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function change():js.jquery.JQuery;
	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function change(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function change(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Get the children of each element in the set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function children(?selector:String):js.jquery.JQuery;
	/**
		Remove from the queue all items that have not yet been run.
	**/
	@:jQueryVersion({ added : "1.4" })
	public function clearQueue(?queueName:String):js.jquery.JQuery;
	/**
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function click():js.jquery.JQuery;
	/**
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function click(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function click(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Create a deep copy of the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function clone(?withDataAndEvents:Bool):js.jquery.JQuery;
	/**
		Create a deep copy of the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.5" })
	public function clone(?withDataAndEvents:Bool, ?deepWithDataAndEvents:Bool):js.jquery.JQuery;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3" })
	public function closest(selector:String):js.jquery.JQuery;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function closest(selection:js.jquery.JQuery):js.jquery.JQuery;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function closest(element:js.html.Element):js.jquery.JQuery;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function closest(selector:String, ?context:js.html.Element):js.jquery.JQuery;
	/**
		Get an array of all the elements and selectors matched against the current element up through the DOM tree.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4", deprecated : "1.7", removed : "1.8" })
	public function closest(selectors:haxe.extern.EitherType<Array<String>, haxe.extern.EitherType<String, js.jquery.JQuery>>, ?context:js.html.Element):Array<Dynamic>;
	/**
		Get the children of each element in the set of matched elements, including text and comment nodes.
	**/
	@:jQueryVersion({ added : "1.2" })
	public function contents():js.jquery.JQuery;
	/**
		The DOM node context originally passed to <code>jQuery()</code>; if none was passed then context will likely be the document.
	**/
	@:jQueryVersion({ added : "1.3", deprecated : "1.10", removed : "3.0" })
	public var context : js.html.Element;
	/**
		Bind an event handler to the "contextmenu" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function contextmenu():js.jquery.JQuery;
	/**
		Bind an event handler to the "contextmenu" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function contextmenu(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "contextmenu" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function contextmenu(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Get the computed style properties for the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function css(propertyName:String):String;
	/**
		Get the computed style properties for the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.9" })
	public function css(propertyNames:Array<String>):String;
	/**
		Set one or more CSS properties for the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function css(properties:Dynamic):js.jquery.JQuery;
	/**
		Set one or more CSS properties for the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function css(propertyName:String, value:haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Set one or more CSS properties for the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function css(propertyName:String, _function:Int -> String -> haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Return arbitrary data associated with the first element in the jQuery collection, as set by data() or by an HTML5 <code>data-*</code> attribute.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function data():Dynamic;
	/**
		Return arbitrary data associated with the first element in the jQuery collection, as set by data() or by an HTML5 <code>data-*</code> attribute.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.3" })
	public function data(key:String):Dynamic;
	/**
		Store arbitrary data associated with the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function data(obj:Dynamic):js.jquery.JQuery;
	/**
		Store arbitrary data associated with the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.3" })
	public function data(key:String, value:Dynamic):js.jquery.JQuery;
	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function dblclick():js.jquery.JQuery;
	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function dblclick(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function dblclick(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Set a timer to delay execution of subsequent items in the queue.
	**/
	@:jQueryVersion({ added : "1.4" })
	public function delay(duration:Int, ?queueName:String):js.jquery.JQuery;
	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3", deprecated : "3.0" })
	public function delegate(selector:String, events:Dynamic):js.jquery.JQuery;
	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.2", deprecated : "3.0" })
	public function delegate(selector:String, eventType:String, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.2", deprecated : "3.0" })
	public function delegate(selector:String, eventType:String, eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Execute the next function on the queue for the matched elements.
	**/
	@:jQueryVersion({ added : "1.2" })
	public function dequeue(?queueName:String):js.jquery.JQuery;
	/**
		Remove the set of matched elements from the DOM.
	**/
	@:jQueryVersion({ added : "1.4" })
	public function detach(?selector:String):js.jquery.JQuery;
	/**
		Remove event handlers previously attached using <code>.live()</code> from the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.1", deprecated : "1.7", removed : "1.9" })
	public function die():js.jquery.JQuery;
	/**
		Remove event handlers previously attached using <code>.live()</code> from the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3", deprecated : "1.7", removed : "1.9" })
	public function die(events:Dynamic):js.jquery.JQuery;
	/**
		Remove event handlers previously attached using <code>.live()</code> from the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3", deprecated : "1.7", removed : "1.9" })
	public function die(eventType:String, ?handler:String):js.jquery.JQuery;
	/**
		Iterate over a jQuery object, executing a function for each matched element.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function each(_function:Int -> js.html.Element -> Void):js.jquery.JQuery;
	/**
		Remove all child nodes of the set of matched elements from the DOM.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function empty():js.jquery.JQuery;
	/**
		End the most recent filtering operation in the current chain and return the set of matched elements to its previous state.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function end():js.jquery.JQuery;
	/**
		Reduce the set of matched elements to the one at the specified index.
	**/
	@:overload
	@:jQueryVersion({ added : "1.1.2" })
	public function eq(index:Int):js.jquery.JQuery;
	/**
		Reduce the set of matched elements to the one at the specified index.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function eq(indexFromEnd:Int):js.jquery.JQuery;
	/**
		Bind an event handler to the "error" JavaScript event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0", deprecated : "1.8", removed : "3.0" })
	public function error(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "error" JavaScript event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3", deprecated : "1.8", removed : "3.0" })
	public function error(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Reduce the set of matched elements to the even ones in the set, numbered from zero.
	**/
	@:jQueryVersion({ added : "3.5" })
	public function even():js.jquery.JQuery;
	/**
		Display the matched elements by fading them to opaque.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function fadeIn(options:Dynamic):js.jquery.JQuery;
	/**
		Display the matched elements by fading them to opaque.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function fadeIn(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Display the matched elements by fading them to opaque.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function fadeIn(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Hide the matched elements by fading them to transparent.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function fadeOut(options:Dynamic):js.jquery.JQuery;
	/**
		Hide the matched elements by fading them to transparent.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function fadeOut(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Hide the matched elements by fading them to transparent.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function fadeOut(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Adjust the opacity of the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function fadeTo(duration:haxe.extern.EitherType<Float, String>, opacity:Float, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Adjust the opacity of the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function fadeTo(duration:haxe.extern.EitherType<Float, String>, opacity:Float, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Display or hide the matched elements by animating their opacity.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.4" })
	public function fadeToggle(options:Dynamic):js.jquery.JQuery;
	/**
		Display or hide the matched elements by animating their opacity.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.4" })
	public function fadeToggle(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function filter(selector:String):js.jquery.JQuery;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function filter(elements:js.html.Element):js.jquery.JQuery;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function filter(selection:js.jquery.JQuery):js.jquery.JQuery;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function filter(_function:Int -> js.html.Element -> Bool):js.jquery.JQuery;
	/**
		Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function find(selector:String):js.jquery.JQuery;
	/**
		Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function find(element:haxe.extern.EitherType<js.html.Element, js.jquery.JQuery>):js.jquery.JQuery;
	/**
		Stop the currently-running animation, remove all queued animations, and complete all animations for the matched elements.
	**/
	@:jQueryVersion({ added : "1.9" })
	public function finish(?queue:String):js.jquery.JQuery;
	/**
		Reduce the set of matched elements to the first in the set.
	**/
	@:jQueryVersion({ added : "1.4" })
	public function first():js.jquery.JQuery;
	/**
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function focus():js.jquery.JQuery;
	/**
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function focus(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function focus(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "focusin" event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function focusin():js.jquery.JQuery;
	/**
		Bind an event handler to the "focusin" event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function focusin(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "focusin" event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function focusin(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "focusout" JavaScript event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function focusout():js.jquery.JQuery;
	/**
		Bind an event handler to the "focusout" JavaScript event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function focusout(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "focusout" JavaScript event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function focusout(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Retrieve the elements matched by the jQuery object.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function get():Array<js.html.Element>;
	/**
		Retrieve one of the elements matched by the jQuery object.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function get(index:Int):js.html.Element;
	/**
		Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function has(selector:String):js.jquery.JQuery;
	/**
		Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function has(contained:js.html.Element):js.jquery.JQuery;
	/**
		Determine whether any of the matched elements are assigned the given class.
	**/
	@:jQueryVersion({ added : "1.2" })
	public function hasClass(className:String):Bool;
	/**
		Get the current computed height for the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function height():Float;
	/**
		Set the CSS height of every matched element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function height(value:haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Set the CSS height of every matched element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.1" })
	public function height(_function:Int -> Int -> haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Hide the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function hide():js.jquery.JQuery;
	/**
		Hide the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function hide(options:Dynamic):js.jquery.JQuery;
	/**
		Hide the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function hide(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Hide the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function hide(duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Bind a single handler to the matched elements, to be executed when the mouse pointer enters or leaves the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function hover(handlerInOut:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind two handlers to the matched elements, to be executed when the mouse pointer enters and leaves the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function hover(handlerIn:js.jquery.Event -> Void, handlerOut:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Get the HTML contents of the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function html():String;
	/**
		Set the HTML contents of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function html(htmlString:String):js.jquery.JQuery;
	/**
		Set the HTML contents of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function html(_function:Int -> String -> String):js.jquery.JQuery;
	/**
		Search for a given element from among the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function index():Int;
	/**
		Search for a given element from among the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function index(selector:String):Int;
	/**
		Search for a given element from among the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function index(element:haxe.extern.EitherType<js.html.Element, js.jquery.JQuery>):Int;
	/**
		Get the current computed height for the first element in the set of matched elements, including padding but not border.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.6" })
	public function innerHeight():Float;
	/**
		Set the CSS inner height of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.8.0" })
	public function innerHeight(value:haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Set the CSS inner height of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.8.0" })
	public function innerHeight(_function:Int -> Float -> haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Get the current computed inner width for the first element in the set of matched elements, including padding but not border.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.6" })
	public function innerWidth():Float;
	/**
		Set the CSS inner width of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.8.0" })
	public function innerWidth(value:haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Set the CSS inner width of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.8.0" })
	public function innerWidth(_function:Int -> Float -> haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Insert every element in the set of matched elements after the target.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function insertAfter(target:haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<String, js.jquery.JQuery>>>):js.jquery.JQuery;
	/**
		Insert every element in the set of matched elements before the target.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function insertBefore(target:haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<String, js.jquery.JQuery>>>):js.jquery.JQuery;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return <code>true</code> if at least one of these elements matches the given arguments.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function is(selector:String):Bool;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return <code>true</code> if at least one of these elements matches the given arguments.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function is(selection:js.jquery.JQuery):Bool;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return <code>true</code> if at least one of these elements matches the given arguments.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function is(elements:js.html.Element):Bool;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return <code>true</code> if at least one of these elements matches the given arguments.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function is(_function:Int -> js.html.Element -> Bool):Bool;
	/**
		A string containing the jQuery version number.
	**/
	@:jQueryVersion({ added : "1.0" })
	public var jquery : String;
	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function keydown():js.jquery.JQuery;
	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function keydown(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function keydown(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function keypress():js.jquery.JQuery;
	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function keypress(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function keypress(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function keyup():js.jquery.JQuery;
	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function keyup(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function keyup(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Reduce the set of matched elements to the final one in the set.
	**/
	@:jQueryVersion({ added : "1.4" })
	public function last():js.jquery.JQuery;
	/**
		The number of elements in the jQuery object.
	**/
	@:jQueryVersion({ added : "1.0" })
	public var length(default, null) : Int;
	/**
		Attach an event handler for all elements which match the current selector, now and in the future.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3", deprecated : "1.7", removed : "1.9" })
	public function live(events:Dynamic):js.jquery.JQuery;
	/**
		Attach an event handler for all elements which match the current selector, now and in the future.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3", deprecated : "1.7", removed : "1.9" })
	public function live(events:String, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Attach an event handler for all elements which match the current selector, now and in the future.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4", deprecated : "1.7", removed : "1.9" })
	public function live(events:String, ?data:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "load" JavaScript event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0", deprecated : "1.8", removed : "3.0" })
	public function load(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "load" JavaScript event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3", deprecated : "1.8", removed : "3.0" })
	public function load(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Load data from the server and place the returned HTML into the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function load(url:String, ?data:Dynamic, ?complete:String -> String -> js.jquery.JqXHR -> Void):js.jquery.JQuery;
	/**
		Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.
	**/
	@:jQueryVersion({ added : "1.2" })
	public function map(callback:Int -> js.html.Element -> Dynamic):js.jquery.JQuery;
	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mousedown():js.jquery.JQuery;
	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mousedown(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function mousedown(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mouseenter():js.jquery.JQuery;
	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mouseenter(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function mouseenter(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mouseleave():js.jquery.JQuery;
	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mouseleave(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function mouseleave(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mousemove():js.jquery.JQuery;
	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mousemove(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function mousemove(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mouseout():js.jquery.JQuery;
	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mouseout(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function mouseout(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mouseover():js.jquery.JQuery;
	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mouseover(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function mouseover(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mouseup():js.jquery.JQuery;
	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function mouseup(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function mouseup(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:selfCall
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function new():Void;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:selfCall
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function new(element:js.html.Element):Void;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:selfCall
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function new(elementArray:haxe.extern.EitherType<js.html.NodeList, Array<js.html.Element>>):Void;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:selfCall
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function new(selection:js.jquery.JQuery):Void;
	/**
		Binds a function to be executed when the DOM has finished loading.
	**/
	@:selfCall
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function new(callback:haxe.Constraints.Function):Void;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:selfCall
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function new(object:Dynamic):Void;
	/**
		Creates DOM elements on the fly from the provided string of raw HTML.
	**/
	@:selfCall
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function new(html:String, attributes:Dynamic):Void;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:selfCall
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function new(selector:String, ?context:haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>):Void;
	/**
		Creates DOM elements on the fly from the provided string of raw HTML.
	**/
	@:selfCall
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function new(html:String, ?ownerDocument:js.html.Document):Void;
	/**
		Get the immediately following sibling of each element in the set of matched elements. If a selector is provided, it retrieves the next sibling only if it matches that selector.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function next(?selector:String):js.jquery.JQuery;
	/**
		Get all following siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.2" })
	public function nextAll(?selector:String):js.jquery.JQuery;
	/**
		Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function nextUntil(?selector:String, ?filter:String):js.jquery.JQuery;
	/**
		Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function nextUntil(?element:haxe.extern.EitherType<js.html.Element, js.jquery.JQuery>, ?filter:String):js.jquery.JQuery;
	/**
		Remove elements from the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function not(selector:haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, String>>):js.jquery.JQuery;
	/**
		Remove elements from the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function not(selection:js.jquery.JQuery):js.jquery.JQuery;
	/**
		Remove elements from the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function not(_function:Int -> js.html.Element -> Bool):js.jquery.JQuery;
	/**
		Reduce the set of matched elements to the odd ones in the set, numbered from zero.
	**/
	@:jQueryVersion({ added : "3.5" })
	public function odd():js.jquery.JQuery;
	/**
		Remove an event handler.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7" })
	public function off():js.jquery.JQuery;
	/**
		Remove an event handler.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7" })
	public function off(event:js.jquery.Event):js.jquery.JQuery;
	/**
		Remove an event handler.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7" })
	public function off(events:Dynamic, ?selector:String):js.jquery.JQuery;
	/**
		Remove an event handler.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7" })
	public function off(events:String, ?selector:String, ?handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the document.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2" })
	public function offset():{ var top : Float; var left : Float; };
	/**
		Set the current coordinates of every element in the set of matched elements, relative to the document.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function offset(coordinates:{ var top : Float; var left : Float; }):js.jquery.JQuery;
	/**
		Set the current coordinates of every element in the set of matched elements, relative to the document.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function offset(_function:Int -> { var top : Float; var left : Float; } -> Dynamic):js.jquery.JQuery;
	/**
		Get the closest ancestor element that is positioned.
	**/
	@:jQueryVersion({ added : "1.2.6" })
	public function offsetParent():js.jquery.JQuery;
	/**
		Attach an event handler function for one or more events to the selected elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7" })
	public function on(events:Dynamic, ?selector:String, ?data:Dynamic):js.jquery.JQuery;
	/**
		Attach an event handler function for one or more events to the selected elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7" })
	public function on(events:String, ?selector:String, ?data:Dynamic, handler:js.jquery.Event -> haxe.extern.Rest<Dynamic> -> Void):js.jquery.JQuery;
	/**
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
	**/
	@:overload
	@:jQueryVersion({ added : "1.1" })
	public function one(events:String, ?data:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7" })
	public function one(events:Dynamic, ?selector:String, ?data:Dynamic):js.jquery.JQuery;
	/**
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7" })
	public function one(events:String, ?selector:String, ?data:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Set the CSS outer height of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.8.0" })
	public function outerHeight(_function:Int -> Float -> haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Get the current computed outer height (including padding, border, and optionally margin) for the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.6" })
	public function outerHeight(?includeMargin:Bool):Float;
	/**
		Set the CSS outer height of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.8.0" })
	public function outerHeight(value:haxe.extern.EitherType<Float, String>, ?includeMargin:Bool):js.jquery.JQuery;
	/**
		Set the CSS outer width of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.8.0" })
	public function outerWidth(_function:Int -> Float -> haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Get the current computed outer width (including padding, border, and optionally margin) for the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.6" })
	public function outerWidth(?includeMargin:Bool):Float;
	/**
		Set the CSS outer width of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.8.0" })
	public function outerWidth(value:haxe.extern.EitherType<Float, String>, ?includeMargin:Bool):js.jquery.JQuery;
	/**
		Get the parent of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function parent(?selector:String):js.jquery.JQuery;
	/**
		Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function parents(?selector:String):js.jquery.JQuery;
	/**
		Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function parentsUntil(?selector:String, ?filter:String):js.jquery.JQuery;
	/**
		Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function parentsUntil(?element:haxe.extern.EitherType<js.html.Element, js.jquery.JQuery>, ?filter:String):js.jquery.JQuery;
	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the offset parent.
	**/
	@:jQueryVersion({ added : "1.2" })
	public function position():{ var top : Float; var left : Float; };
	/**
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function prepend(_function:Int -> String -> haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>):js.jquery.JQuery;
	/**
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function prepend(content:haxe.extern.EitherType<Array<String>, haxe.extern.EitherType<Array<js.jquery.JQuery>, haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<js.html.NodeList, haxe.extern.EitherType<String, js.jquery.JQuery>>>>>>, ?content:haxe.extern.EitherType<Array<String>, haxe.extern.EitherType<Array<js.jquery.JQuery>, haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<js.html.NodeList, haxe.extern.EitherType<String, js.jquery.JQuery>>>>>>):js.jquery.JQuery;
	/**
		Insert every element in the set of matched elements to the beginning of the target.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function prependTo(target:haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<String, js.jquery.JQuery>>>):js.jquery.JQuery;
	/**
		Get the immediately preceding sibling of each element in the set of matched elements. If a selector is provided, it retrieves the previous sibling only if it matches that selector.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function prev(?selector:String):js.jquery.JQuery;
	/**
		Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.2" })
	public function prevAll(?selector:String):js.jquery.JQuery;
	/**
		Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function prevUntil(?selector:String, ?filter:String):js.jquery.JQuery;
	/**
		Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function prevUntil(?element:haxe.extern.EitherType<js.html.Element, js.jquery.JQuery>, ?filter:String):js.jquery.JQuery;
	/**
		Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished.
	**/
	@:jQueryVersion({ added : "1.6" })
	public function promise(?type:String, ?target:Dynamic):js.jquery.Promise;
	/**
		Get the value of a property for the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function prop(propertyName:String):Dynamic;
	/**
		Set one or more properties for the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function prop(properties:Dynamic):js.jquery.JQuery;
	/**
		Set one or more properties for the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function prop(propertyName:String, _function:Int -> Dynamic -> Dynamic):js.jquery.JQuery;
	/**
		Set one or more properties for the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6" })
	public function prop(propertyName:String, value:Dynamic):js.jquery.JQuery;
	/**
		Add a collection of DOM elements onto the jQuery stack.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function pushStack(elements:haxe.extern.EitherType<Array<js.html.Element>, js.html.NodeList>):js.jquery.JQuery;
	/**
		Add a collection of DOM elements onto the jQuery stack.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3" })
	public function pushStack(elements:haxe.extern.EitherType<Array<js.html.Element>, js.html.NodeList>, name:String, arguments:Array<Dynamic>):js.jquery.JQuery;
	/**
		Show the queue of functions to be executed on the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2" })
	public function queue(?queueName:String):Array<Void -> Void>;
	/**
		Manipulate the queue of functions to be executed, once for each matched element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2" })
	public function queue(?queueName:String, newQueue:Array<Void -> Void>):js.jquery.JQuery;
	/**
		Manipulate the queue of functions to be executed, once for each matched element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2" })
	public function queue(?queueName:String, callback:haxe.Constraints.Function -> Void):js.jquery.JQuery;
	/**
		Specify a function to execute when the DOM is fully loaded.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function ready(handler:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Remove the set of matched elements from the DOM.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function remove(?selector:String):js.jquery.JQuery;
	/**
		Remove an attribute from each element in the set of matched elements.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function removeAttr(attributeName:String):js.jquery.JQuery;
	/**
		Remove all classes from each matched element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function removeClass():js.jquery.JQuery;
	/**
		Remove a single class or multiple classes from each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function removeClass(className:String):js.jquery.JQuery;
	/**
		Remove a single class or multiple classes from each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "3.3" })
	public function removeClass(classNames:Array<String>):js.jquery.JQuery;
	/**
		Remove a single class or multiple classes from each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function removeClass(_function:Int -> String -> String):js.jquery.JQuery;
	/**
		Remove a single class or multiple classes from each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "3.3" })
	public function removeClass(_function:Int -> String -> String):js.jquery.JQuery;
	/**
		Remove a previously-stored piece of data.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.3" })
	public function removeData(?name:String):js.jquery.JQuery;
	/**
		Remove a previously-stored piece of data.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7" })
	public function removeData(?list:haxe.extern.EitherType<Array<String>, String>):js.jquery.JQuery;
	/**
		Remove a property for the set of matched elements.
	**/
	@:jQueryVersion({ added : "1.6" })
	public function removeProp(propertyName:String):js.jquery.JQuery;
	/**
		Replace each target element with the set of matched elements.
	**/
	@:jQueryVersion({ added : "1.2" })
	public function replaceAll(target:haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>>):js.jquery.JQuery;
	/**
		Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2" })
	public function replaceWith(newContent:haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<Array<js.html.Element>, haxe.extern.EitherType<String, js.jquery.JQuery>>>):js.jquery.JQuery;
	/**
		Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function replaceWith(_function:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function resize():js.jquery.JQuery;
	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function resize(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function resize(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function scroll():js.jquery.JQuery;
	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function scroll(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function scroll(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Get the current horizontal position of the scroll bar for the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.6" })
	public function scrollLeft():Int;
	/**
		Set the current horizontal position of the scroll bar for each of the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.6" })
	public function scrollLeft(value:Float):js.jquery.JQuery;
	/**
		Get the current vertical position of the scroll bar for the first element in the set of matched elements or set the vertical position of the scroll bar for every matched element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.6" })
	public function scrollTop():Float;
	/**
		Set the current vertical position of the scroll bar for each of the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2.6" })
	public function scrollTop(value:Float):js.jquery.JQuery;
	/**
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function select():js.jquery.JQuery;
	/**
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function select(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function select(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		A selector representing selector passed to jQuery(), if any, when creating the original set.
	**/
	@:jQueryVersion({ added : "1.3", deprecated : "1.7", removed : "3.0" })
	public var selector : String;
	/**
		Encode a set of form elements as a string for submission.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function serialize():String;
	/**
		Encode a set of form elements as an array of names and values.
	**/
	@:jQueryVersion({ added : "1.2" })
	public function serializeArray():Array<Dynamic>;
	/**
		Display the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function show():js.jquery.JQuery;
	/**
		Display the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function show(options:Dynamic):js.jquery.JQuery;
	/**
		Display the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function show(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Display the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function show(duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Get the siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.0" })
	public function siblings(?selector:String):js.jquery.JQuery;
	/**
		Return the number of elements in the jQuery object.
	**/
	@:jQueryVersion({ added : "1.0", deprecated : "1.8", removed : "3.0" })
	public function size():Int;
	/**
		Reduce the set of matched elements to a subset specified by a range of indices.
	**/
	@:jQueryVersion({ added : "1.1.4" })
	public function slice(start:Int, ?end:Int):js.jquery.JQuery;
	/**
		Display the matched elements with a sliding motion.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function slideDown(options:Dynamic):js.jquery.JQuery;
	/**
		Display the matched elements with a sliding motion.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function slideDown(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Display the matched elements with a sliding motion.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function slideDown(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Display or hide the matched elements with a sliding motion.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function slideToggle(options:Dynamic):js.jquery.JQuery;
	/**
		Display or hide the matched elements with a sliding motion.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function slideToggle(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Display or hide the matched elements with a sliding motion.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function slideToggle(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Hide the matched elements with a sliding motion.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function slideUp(options:Dynamic):js.jquery.JQuery;
	/**
		Hide the matched elements with a sliding motion.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function slideUp(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Hide the matched elements with a sliding motion.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function slideUp(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Stop the currently-running animation on the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2" })
	public function stop(?clearQueue:Bool, ?jumpToEnd:Bool):js.jquery.JQuery;
	/**
		Stop the currently-running animation on the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.7" })
	public function stop(?queue:String, ?clearQueue:Bool, ?jumpToEnd:Bool):js.jquery.JQuery;
	/**
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function submit():js.jquery.JQuery;
	/**
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function submit(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function submit(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Get the combined text contents of each element in the set of matched elements, including their descendants.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function text():String;
	/**
		Set the content of each element in the set of matched elements to the specified text.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function text(text:haxe.extern.EitherType<Float, haxe.extern.EitherType<Bool, String>>):js.jquery.JQuery;
	/**
		Set the content of each element in the set of matched elements to the specified text.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function text(_function:Int -> String -> String):js.jquery.JQuery;
	/**
		Retrieve all the elements contained in the jQuery set, as an array.
	**/
	@:jQueryVersion({ added : "1.4" })
	public function toArray():Array<js.html.Element>;
	/**
		Display or hide the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3" })
	public function toggle(display:Bool):js.jquery.JQuery;
	/**
		Display or hide the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function toggle(options:Dynamic):js.jquery.JQuery;
	/**
		Display or hide the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function toggle(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Display or hide the matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3" })
	public function toggle(duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):js.jquery.JQuery;
	/**
		Bind two or more handlers to the matched elements, to be executed on alternate clicks.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0", deprecated : "1.8", removed : "1.9" })
	public function toggle(handler:js.jquery.Event -> Void, handler:js.jquery.Event -> Void, ?handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function toggleClass(className:String):js.jquery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.
	**/
	@:overload
	@:jQueryVersion({ added : "3.3" })
	public function toggleClass(classNames:Array<String>):js.jquery.JQuery;
	@:overload
	@:jQueryVersion({ added : "1.4", deprecated : "3.0" })
	public function toggleClass(?state:Bool):js.jquery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3" })
	public function toggleClass(className:String, state:Bool):js.jquery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.
	**/
	@:overload
	@:jQueryVersion({ added : "3.3" })
	public function toggleClass(classNames:Array<String>, state:Bool):js.jquery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function toggleClass(_function:Int -> String -> Bool -> String, ?state:Bool):js.jquery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.
	**/
	@:overload
	@:jQueryVersion({ added : "3.3" })
	public function toggleClass(_function:Int -> String -> Bool -> String, ?state:Bool):js.jquery.JQuery;
	/**
		Execute all handlers and behaviors attached to the matched elements for the given event type.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function trigger(eventType:String, ?extraParameters:Dynamic):js.jquery.JQuery;
	/**
		Execute all handlers and behaviors attached to the matched elements for the given event type.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3" })
	public function trigger(event:js.jquery.Event, ?extraParameters:Dynamic):js.jquery.JQuery;
	/**
		Execute all handlers attached to an element for an event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2" })
	public function triggerHandler(eventType:String, ?extraParameters:Dynamic):Dynamic;
	/**
		Execute all handlers attached to an element for an event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.3" })
	public function triggerHandler(event:js.jquery.Event, ?extraParameters:Dynamic):Dynamic;
	/**
		Remove a previously-attached event handler from the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0", deprecated : "3.0" })
	public function unbind():js.jquery.JQuery;
	/**
		Remove a previously-attached event handler from the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0", deprecated : "3.0" })
	public function unbind(event:js.jquery.Event):js.jquery.JQuery;
	/**
		Remove a previously-attached event handler from the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3", deprecated : "3.0" })
	public function unbind(eventType:String, _false:Bool):js.jquery.JQuery;
	/**
		Remove a previously-attached event handler from the elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0", deprecated : "3.0" })
	public function unbind(eventType:String, ?handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.2", deprecated : "3.0" })
	public function undelegate():js.jquery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.6", deprecated : "3.0" })
	public function undelegate(namespace:String):js.jquery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.2", deprecated : "3.0" })
	public function undelegate(selector:String, eventType:String):js.jquery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3", deprecated : "3.0" })
	public function undelegate(selector:String, events:Dynamic):js.jquery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.2", deprecated : "3.0" })
	public function undelegate(selector:String, eventType:String, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "unload" JavaScript event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0", deprecated : "1.8", removed : "3.0" })
	public function unload(handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Bind an event handler to the "unload" JavaScript event.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.3", deprecated : "1.8", removed : "3.0" })
	public function unload(?eventData:Dynamic, handler:js.jquery.Event -> Void):js.jquery.JQuery;
	/**
		Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function unwrap():js.jquery.JQuery;
	/**
		Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
	**/
	@:overload
	@:jQueryVersion({ added : "3.0" })
	public function unwrap(?selector:String):js.jquery.JQuery;
	/**
		Get the current value of the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function val():Dynamic;
	/**
		Set the value of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function val(value:haxe.extern.EitherType<Float, haxe.extern.EitherType<Array<String>, String>>):js.jquery.JQuery;
	/**
		Set the value of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function val(_function:Int -> String -> String):js.jquery.JQuery;
	/**
		Get the current computed width for the first element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function width():Float;
	/**
		Set the CSS width of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function width(value:haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Set the CSS width of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4.1" })
	public function width(_function:Int -> Int -> haxe.extern.EitherType<Float, String>):js.jquery.JQuery;
	/**
		Wrap an HTML structure around each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.0" })
	public function wrap(wrappingElement:haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>):js.jquery.JQuery;
	/**
		Wrap an HTML structure around each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function wrap(_function:Int -> haxe.extern.EitherType<String, js.jquery.JQuery>):js.jquery.JQuery;
	/**
		Wrap an HTML structure around all elements in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2" })
	public function wrapAll(wrappingElement:haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>):js.jquery.JQuery;
	/**
		Wrap an HTML structure around all elements in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function wrapAll(_function:Void -> haxe.extern.EitherType<String, js.jquery.JQuery>):js.jquery.JQuery;
	/**
		Wrap an HTML structure around the content of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.2" })
	public function wrapInner(wrappingElement:haxe.extern.EitherType<js.html.Element, haxe.extern.EitherType<String, js.jquery.JQuery>>):js.jquery.JQuery;
	/**
		Wrap an HTML structure around the content of each element in the set of matched elements.
	**/
	@:overload
	@:jQueryVersion({ added : "1.4" })
	public function wrapInner(_function:Int -> String):js.jquery.JQuery;
	/**
		Haxe iterator.
	**/
	@:runtime
	inline public function iterator():js.jquery.JqIterator return new js.jquery.JqIterator(this);
	/**
		Haxe iterator.
	**/
	@:runtime
	inline public function elements():js.jquery.JqEltsIterator return new js.jquery.JqEltsIterator(this);
}