package jQueryExtern;

import js.Dom.Dom;
import js.XMLHttpRequest;

extern class JQuery implements ArrayAccess<Dom>{
	static public function __init__():Void untyped{
		jQueryExtern.JQuery = jQuery;
	}

	public function new(in1:Dynamic,?in2:Dynamic):Void;
	public function add(ele:Dynamic, ?context:Dynamic):JQuery;
	public function addClass(className:Dynamic):JQuery;
	public function after(content:Dynamic):JQuery;
	public function ajaxComplete(handler:Dynamic):JQuery;
	public function ajaxError(handler:Dynamic):JQuery;
	public function ajaxSend(handler:Dynamic):JQuery;
	public function ajaxStart(handler:Dynamic):JQuery;
	public function ajaxStop(handler:Dynamic):JQuery;
	public function ajaxSuccess(handler:Dynamic):JQuery;
	public function andSelf():JQuery;
	public function animate(properties:Dynamic, ?durationOrOptions:Dynamic, ?easing:Dynamic, ?callBack:Dynamic):JQuery;
	public function append(content:Dynamic):JQuery;
	public function appendTo(target:Dynamic):JQuery;
	public function attr(attributeNameOrMap:String, ?valueOrFunction:Dynamic):Dynamic;
	public function before(content:Dynamic):JQuery;
	public function bind(eventType:Dynamic, ?eventData:Dynamic, ?handler:Dynamic):JQuery;
	public function blur(?handler:Dynamic):JQuery;
	public function change(?handler:Dynamic):JQuery;
	public function children(?selector:String):JQuery;
	public function clearQueue(?queueName:String):JQuery;
	public function click(?handler:Dynamic):JQuery;
	public function clone(?withDataAndEvents:Bool):JQuery;
	public function closest(selector:String, ?context:Dynamic):JQuery;
	public function closests(selectors:Array<String>, ?context:Dynamic):Array<{selector:String, elem:Dom }>;
	public function css(propertyNameOrMap:String, ?valueOrFunction:Dynamic):Dynamic;
	public function data(?keyOrMap:Dynamic, ?value:Dynamic):Dynamic;
	public function dblclick(?handler:Dynamic):JQuery;
	public function delay(duration:Int, ?queueName:String):JQuery;
	public function delegate(selector:String, eventType:String, ?eventData:Dynamic, handler:Dynamic):JQuery;
	public function dequeue(?queueName:String):JQuery;
	public function detach(?selector:String):JQuery;
	public function die(?eventType:String,?handler:Dynamic):JQuery;
	public function each(callBack:Dynamic):JQuery;
	public function empty():JQuery;
	public function end():JQuery;
	public function eq(index:Int):JQuery;
	public function error(handler:Dynamic):JQuery;
	public function fadeIn(?duration:Dynamic,?callBack:Dynamic):JQuery;
	public function fadeOut(?duration:Dynamic,?callBack:Dynamic):JQuery;
	public function fadeTo(duration:Dynamic, opacity:Float, ?callBack:Dynamic):JQuery;
	public function filter(selectorOrFunction:Dynamic):JQuery;
	public function find(selector:String):JQuery;
	public function first():JQuery;
	public function focus(?handler:Dynamic):JQuery;
	public function focusin(handler:Dynamic):JQuery;
	public function focusout(handler:Dynamic):JQuery;
	public function get(?index:Int):Dynamic;
	public function has(ele:Dynamic):JQuery;
	public function hasClass(className:String):Bool;
	public function height(?valueOrFunction:Dynamic):Dynamic;
	public function hide(?duration:Dynamic,?callBack:Dynamic):JQuery;
	public function hover(?handler:Dynamic,?handler2:Dynamic):JQuery;
	public function html(?valueOrFunction:Dynamic):Dynamic;
	public function index(?ele:Dynamic):Int;
	public function innerHeight():Int;
	public function innerWidth():Int;
	public function insertAfter(target:Dynamic):JQuery;
	public function insertBefore(target:Dynamic):JQuery;
	public function is(selector:String):Bool;
	public function keydown(?handler:Dynamic):JQuery;
	public function keypress(?handler:Dynamic):JQuery;
	public function keyup(?handler:Dynamic):JQuery;
	public function last():JQuery;
	public var length(default,null):Int;
	public function live(eventType:String, ?eventData:Dynamic, ?handler:Dynamic):JQuery;
	public function load(urlOrHandler:Dynamic, ?data:Dynamic, ?complete:Dynamic):JQuery;
	public function map(callBack:Dynamic):JQuery;
	public function mousedown(?handler:Dynamic):JQuery;
	public function mouseenter(?handler:Dynamic):JQuery;
	public function mouseleave(?handler:Dynamic):JQuery;
	public function mousemove(?handler:Dynamic):JQuery;
	public function mouseout(?handler:Dynamic):JQuery;
	public function mouseover(?handler:Dynamic):JQuery;
	public function mouseup(?handler:Dynamic):JQuery;
	public function next(?selector:String):JQuery;
	public function nextAll(?selector:String):JQuery;
	public function nextUntil(?selector:String):JQuery;
	public function not(ele:Dynamic):JQuery;
	public function offset(?coordinatesOrFunction:Dynamic):Dynamic;
	public function offsetParent():JQuery;
	public function one(eventType:Dynamic, ?eventData:Dynamic, ?handler:Dynamic):JQuery;
	public function outerHeight(?includeMargin:Bool):Int;
	public function outerWidth(?includeMargin:Bool):Int;
	public function parent(?selector:String):JQuery;
	public function parents(?selector:String):JQuery;
	public function parentsUntil(?selector:String):JQuery;
	public function position():Dynamic;
	public function prepend(content:Dynamic):JQuery;
	public function prependTo(target:Dynamic):JQuery;
	public function prev(?selector:String):JQuery;
	public function prevAll(?selector:String):JQuery;
	public function prevUntil(?selector:String):JQuery;
	public function queue(?queueName:Dynamic, newQueue:Dynamic):Dynamic;
	public function ready(?handler:Dynamic):JQuery;
	public function remove(?selector:String):JQuery;
	public function removeAttr(attributeName:String):JQuery;
	public function removeClass(?classNameOrFunction:Dynamic):JQuery;
	public function removeData(?name:String):JQuery;
	public function replaceAll(selector:String):JQuery;
	public function replaceWith(newContentOrFunction:Dynamic):JQuery;
	public function resize(?handler:Dynamic):JQuery;
	public function scroll(?handler:Dynamic):JQuery;
	public function scrollLeft(?value:Float):Dynamic;
	public function scrollTop(?value:Float):Dynamic;
	public function select(?handler:Dynamic):JQuery;
	public var selector(default,null):String;
	public function serialize():String;
	public function serializeArray():String;
	public function show(?duration:Dynamic,?callBack:Dynamic):JQuery;
	public function siblings(?selector:String):JQuery;
	public function size():Int;
	public function slice(start:Int, ?end:Int):JQuery;
	public function slideDown(?duration:Dynamic,?callBack:Dynamic):JQuery;
	public function slideToggle(?duration:Dynamic,?callBack:Dynamic):JQuery;
	public function slideUp(?duration:Dynamic,?callBack:Dynamic):JQuery;
	public function stop(?clearQueue:Bool, ?jumpToEnd:Bool):JQuery;
	public function submit(?handler:Dynamic):JQuery;
	public function text(?valueOrFunction:Dynamic):Dynamic;
	public function toArray():Array<Dom>;
	public function toggle(?handler:Dynamic, ?handler2:Dynamic, ?handler3:Dynamic):JQuery;
	public function toggleClass(classNameOrFunction:Dynamic, ?_switch:Bool):JQuery;
	public function trigger(eventType:String, extraParameters:Array<String>):JQuery;
	public function triggerHandler(eventType:String, extraParameters:Array<String>):JQuery;
	public function unbind(eventType:Dynamic, ?handler:Dynamic):JQuery;
	public function undelegate(?selector:String, ?eventType:String, ?handler:Dynamic):JQuery;
	public function unload(?handler:Dynamic):JQuery;
	public function unwrap():JQuery;
	public function val(?valueOrFunction:Dynamic):Dynamic;
	public function width(?valueOrFunction:Dynamic):Dynamic;
	public function wrap(ele:Dynamic):JQuery;
	public function wrapAll(ele:Dynamic):JQuery;
	public function wrapInner(ele:Dynamic):JQuery;
}

extern class JQueryStatic {
	static public function __init__():Void untyped{
		jQueryExtern.JQueryStatic = jQuery;
	}

	static public function ajax(setting:Dynamic):XMLHttpRequest;
	static public function ajaxSetup(setting:Dynamic):Void;
	static public var browser(default,null):Dynamic;
	static public function contains(container:Dom, contained:Dom):Bool;
	static public var context:Dom;
	static public function data(ele:Dom, key:String, ?value:Dynamic):Dynamic;
	static public function dequeue(ele:Dom, ?queueName:String):JQuery;
	static public function each<T>(collection:T, ?callBack:Dynamic):T;
	static public function error(message:String):Void;
	static public function extend(?deep:Bool, target:Dynamic, object1:Dynamic, ?objectN:Dynamic):Dynamic;
	static public var fx(default,null):{off:Bool};
	static public function get(url:String, ?data:Dynamic, ?callBack:Dynamic, ?dataType:String):XMLHttpRequest;
	static public function getJSON(url:String, ?data:Dynamic, ?callBack:Dynamic):XMLHttpRequest;
	static public function getScript(url:String, ?success:Dynamic):XMLHttpRequest;
	static public function globalEval(code:String):Void;
	static public function grep<T>(array:Array<T>, ?funct:Dynamic, ?invert:Bool):Array<T>;
	static public function inArray<T>(value:T, array:Array<T>):Int;
	static public function isArray(obj:Dynamic):Bool;
	static public function isEmptyObject(obj:Dynamic):Bool;
	static public function isFunction(obj:Dynamic):Bool;
	static public function isPlainObject(obj:Dynamic):Bool;
	static public function isXMLDoc(obj:Dom):Bool;
	static public function makeArray(obj:Dynamic):Array<Dynamic>;
	static public function map(array:Array<Dynamic>, ?callBack:Dynamic):Array<Dynamic>;
	static public function merge<T>(first:Array<T>, second:Array<T>):Array<T>;
	static public function noConflict(?removeAll:Bool):Dynamic;
	static public function noop():Void;
	static public function param(obj:Dynamic, traditional:Bool):String;
	static public function parseJSON(json:String):Dynamic;
	static public function post(url:String, ?data:Dynamic, ?callBack:Dynamic, ?dataType:String):XMLHttpRequest;
	static public function proxy(funct:Dynamic, context:Dynamic):Dynamic;
	static public function pushStack(elements:Array<Dynamic>, ?name:String, ?arguments:Dynamic):JQuery;
	static public function queue(element:Dom	, ?queueName:Dynamic, newQueue:Dynamic):Dynamic;
	static public function removeData(element:Dom, ?name:String):JQuery;
	static public var support(default,null):{	boxModel:Bool,
												cssFloat:Bool,
												hrefNormalized:Bool,
												htmlSerialize:Bool,
												leadingWhitespace:Bool,
												noCloneEvent:Bool,
												objectAll:Bool,
												opacity:Bool,
												scriptEval:Bool,
												style:Bool,
												tbody:Bool };
	static public function trim(str:String):String;
	static public function unique<T>(array:Array<T>):Array<T>;
}

extern class JQueryEvent {
	public var currentTarget:Dom;
	public var data:Dynamic;
	public function isDefaultPrevented():Bool;
	public function isImmediatePropagationStopped():Bool;
	public function isPropagationStopped():Bool;
	public var pageX:Float;
	public var pageY:Float;
	public function preventDefault():Void;
	public var relatedTarget:Dom;
	public var result:Dynamic;
	public function stopImmediatePropagation():Void;
	public function stopPropagation():Void;
	public var target:Dom;
	public var timeStamp:Float;
	public var type:String;
	public var which:String;
}
