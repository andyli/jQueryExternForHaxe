/* This file is generated, do not edit! */
package jQuery;
@:final @:build(jQuery.haxe.Config.build()) extern class JQueryStatic {
	/**
		Set default values for future Ajax requests.
	**/
	static public function ajaxSetup(options:Dynamic):Void;
	/**
		Creates an object that handles the actual transmission of Ajax data.
	**/
	static public function ajaxTransport(dataType:String,handler:Dynamic->Dynamic->jQuery.JqXHR->Void):Void;
	/**
		Check to see if a DOM element is a descendant of another DOM element.
	**/
	static public function contains(container:js.html.Node,contained:js.html.Node):Bool;
	/**
		Check to see if a DOM node is within an XML document (or is an XML document).
	**/
	static public function isXMLDoc(node:js.html.Node):Bool;
	/**
		Store arbitrary data associated with the specified element. Returns the value that was set.
		OR: Returns value at named data store for the element, as set by <code>jQuery.data(element, name, value)</code>, or the full data store for the element.
	**/
	@:overload(function (element:js.html.Node,key:String):Dynamic {
	}) @:overload(function (element:js.html.Node,key:String,value:Dynamic):Dynamic {
	}) static public function data(element:js.html.Node):Dynamic;
	/**
		Determine whether the argument is a window.
	**/
	static public function isWindow(obj:Dynamic):Bool;
	/**
		Remove a previously-stored piece of data.
	**/
	static public function removeData(element:js.html.Node,?name:String):jQuery.JQuery;
	/**
		Provides a way to execute callback functions based on one or more objects, usually <a href="/category/deferred-object/">Deferred</a> objects that represent asynchronous events.
	**/
	static public function when(deferreds:jQuery.Deferred):jQuery.Promise;
	/**
		A generic iterator function, which can be used to seamlessly iterate over both objects and arrays. Arrays and array-like objects with a length property (such as a function's arguments object) are iterated by numeric index, from 0 to length-1. Other objects are iterated via their named properties.
	**/
	static public function each(collection:Dynamic,callback:Int->Dynamic->Void):Dynamic;
	/**
		Execute the next function on the queue for the matched element.
	**/
	static public function dequeue(element:js.html.Node,?queueName:String):Void;
	/**
		Search for a specified value within an array and return its index (or -1 if not found).
	**/
	static public function inArray<T>(value:T,array:Array<T>,?fromIndex:Int):Int;
	/**
		Load a JavaScript file from the server using a GET HTTP request, then execute it.
	**/
	static public function getScript(url:String,?success:String->String->jQuery.JqXHR->Void):jQuery.JqXHR;
	/**
		Relinquish jQuery's control of the <code>$</code> variable.
	**/
	static public function noConflict(?removeAll:Bool):Dynamic;
	/**
		Create a serialized representation of an array or object, suitable for use in a URL query string or Ajax request. 
	**/
	@:overload(function (obj:Dynamic):String {
	}) @:overload(function (obj:Array<Dynamic>,traditional:Bool):String {
	}) @:overload(function (obj:Dynamic,traditional:Bool):String {
	}) static public function param(obj:Array<Dynamic>):String;
	/**
		Determine if the argument passed is a Javascript function object. 
	**/
	static public function isFunction(obj:Dynamic):Bool;
	/**
		Takes a function and returns a new one that will always have a particular context.
	**/
	@:overload(function (_function:Dynamic,context:Dynamic):Dynamic {
	}) @:overload(function (context:Dynamic,name:String,?additionalArguments:Dynamic):Dynamic {
	}) @:overload(function (_function:Dynamic,context:Dynamic,?additionalArguments:Dynamic):Dynamic {
	}) static public function proxy(context:Dynamic,name:String):Dynamic;
	/**
		Remove the whitespace from the beginning and end of a string.
	**/
	static public function trim(str:String):String;
	/**
		Hook directly into jQuery to override how particular CSS properties are retrieved or set, normalize CSS property naming, or create custom properties.
	**/
	static public var cssHooks:Dynamic;
	/**
		Determine whether the argument is an array.
	**/
	static public function isArray(obj:Dynamic):Bool;
	/**
		Convert an array-like object into a true JavaScript array.
	**/
	static public function makeArray(obj:Dynamic):Array<Dynamic>;
	/**
		Holds or releases the execution of jQuery's ready event.
	**/
	static public function holdReady(hold:Bool):Void;
	/**
		Translate all items in an array or object to new array of items.
	**/
	@:overload(function <T,T2>(array:Array<T>,callback:T->Int->Array<T2>):Array<T2> {
	}) @:overload(function <T,T2>(obj:Dynamic<T>,callback:T->String->T2):Array<T2> {
	}) @:overload(function <T,T2>(obj:Dynamic<T>,callback:T->String->Array<T2>):Array<T2> {
	}) static public function map<T,T2>(array:Array<T>,callback:T->Int->T2):Array<T2>;
	/**
		Show the queue of functions to be executed on the matched element.
		OR: Manipulate the queue of functions to be executed on the matched element.
	**/
	@:overload(function (element:js.html.Node,queueName:String,newQueue:Array<Void->Void>):jQuery.JQuery {
	}) @:overload(function (element:js.html.Node,queueName:String,callback:Void->Void):jQuery.JQuery {
	}) static public function queue(element:js.html.Node,?queueName:String):Array<Void->Void>;
	/**
		Parses a string into an array of DOM nodes.
	**/
	static public function parseHTML(data:String,?context:js.html.Node,?keepScripts:Bool):Array<js.html.Node>;
	/**
		Perform an asynchronous HTTP (Ajax) request.
	**/
	@:overload(function (url:String,?settings:Dynamic):jQuery.JqXHR {
	}) static public function ajax(?settings:Dynamic):jQuery.JqXHR;
	/**
		Takes a string and throws an exception containing it.
	**/
	static public function error(message:String):Void;
	/**
		Merge the contents of two arrays together into the first array. 
	**/
	static public function merge<T>(first:Array<T>,second:Array<T>):Array<T>;
	/**
		Parses a string into an XML document.
	**/
	static public function parseXML(data:String):js.html.Document;
	/**
		Check to see if an object is empty (contains no enumerable properties).
	**/
	static public function isEmptyObject(object:Dynamic):Bool;
	/**
		Handle custom Ajax options or modify existing options before each request is sent and before they are processed by <code>$.ajax()</code>.
	**/
	static public function ajaxPrefilter(?dataTypes:String,handler:Dynamic->Dynamic->jQuery.JqXHR->Void):Void;
	/**
		Contains flags for the useragent, read from navigator.userAgent. <strong>We recommend against using this property; please try to use feature detection instead (see jQuery.support). jQuery.browser may be moved to a plugin in a future release of jQuery.</strong> 
	**/
	static public var browser:{@:optional var webkit:Null<Bool>;@:optional var safari:Null<Bool>;@:optional var opera:Null<Bool>;@:optional var msie:Null<Bool>;@:optional var mozilla:Null<Bool>;var version:String;};
	/**
		Creates a new copy of jQuery whose properties and methods can be modified without affecting the original jQuery object.
	**/
	static public function sub():jQuery.JQuery;
	/**
		Execute some JavaScript code globally.
	**/
	static public function globalEval(code:String):Void;
	/**
		<strong>Deprecated in jQuery 1.3 (see <a href="/jQuery.support">jQuery.support</a>)</strong>. States if the current page, in the user's browser, is being rendered using the <a href="http://www.w3.org/TR/REC-CSS2/box.html">W3C CSS Box Model</a>.
	**/
	static public var boxModel:Bool;
	/**
		Load JSON-encoded data from the server using a GET HTTP request.
	**/
	static public function getJSON(url:String,?data:Dynamic,?success:Dynamic->String->jQuery.JqXHR->Void):jQuery.JqXHR;
	/**
		Finds the elements of an array which satisfy a filter function. The original array is not affected.
	**/
	static public function grep<T>(array:Array<T>,funct:T->Int->Bool,?invert:Bool):Array<T>;
	/**
		Load data from the server using a HTTP POST request.
	**/
	@:overload(function (url:String,?data:Dynamic,?success:Dynamic->String->jQuery.JqXHR->Void,?dataType:String):jQuery.JqXHR {
	}) static public function post(url:String,?data:String,?success:Dynamic->String->jQuery.JqXHR->Void,?dataType:String):jQuery.JqXHR;
	/**
		 A constructor function that returns a chainable utility object with methods to register multiple callbacks into callback queues, invoke callback queues, and relay the success or failure state of any synchronous or asynchronous function.
	**/
	static public function Deferred(?beforeStart:jQuery.Deferred->Void):jQuery.Deferred;
	/**
		A multi-purpose callbacks list object that provides a powerful way to manage callback lists.
	**/
	static public function Callbacks(flags:String):jQuery.Callbacks;
	/**
		An empty function.
	**/
	static public function noop():Void;
	/**
		Determines whether its argument is a number.
	**/
	static public function isNumeric(value:Dynamic):Bool;
	/**
		Check to see if an object is a plain object (created using "{}" or "new Object").
	**/
	static public function isPlainObject(object:Dynamic):Bool;
	/**
		Takes a well-formed JSON string and returns the resulting JavaScript object.
	**/
	static public function parseJSON(json:String):Dynamic;
	/**
		A collection of properties that represent the presence of different browser features or bugs. Primarily intended for jQuery's internal use; specific properties may be removed when they are no longer needed internally to improve page startup performance.
	**/
	static public var support:{var ajax:Bool;var boxModel:Bool;var changeBubbles:Bool;var checkClone:Bool;var checkOn:Bool;var cors:Bool;var cssFloat:Bool;var hrefNormalized:Bool;var htmlSerialize:Bool;var leadingWhitespace:Bool;var noCloneChecked:Bool;var noCloneEvent:Bool;var opacity:Bool;var optDisabled:Bool;var optSelected:Bool;var scriptEval:Void->Bool;var style:Bool;var submitBubbles:Bool;var tbody:Bool;};
	/**
		Sorts an array of DOM elements, in place, with the duplicates removed. Note that this only works on arrays of DOM elements, not strings or numbers.
	**/
	static public function unique(array:Array<js.html.Node>):Array<js.html.Node>;
	/**
		Determine whether an element has any jQuery data associated with it.
	**/
	static public function hasData(element:js.html.Node):Bool;
	/**
		Merge the contents of two or more objects together into the first object.
	**/
	@:overload(function (?deep:Bool,target:Dynamic,object1:Dynamic,?objectN:Dynamic):Dynamic {
	}) static public function extend(target:Dynamic,?object1:Dynamic,?objectN:Dynamic):Dynamic;
	static public var fx:{/**
		The rate (in milliseconds) at which animations fire.
	**/
	var interval:Float;/**
		Globally disable all animations.
	**/
	var off:Bool;};
	/**
		Load data from the server using a HTTP GET request.
	**/
	@:overload(function (url:String,?data:Dynamic,?success:Dynamic->String->jQuery.JqXHR->Void,?dataType:String):jQuery.JqXHR {
	}) static public function get(url:String,?data:String,?success:Dynamic->String->jQuery.JqXHR->Void,?dataType:String):jQuery.JqXHR;
	/**
		Return a number representing the current time.
	**/
	static public function now():Float;
	/**
		Determine the internal JavaScript [[Class]] of an object.
	**/
	static public function type(obj:Dynamic):String;
}