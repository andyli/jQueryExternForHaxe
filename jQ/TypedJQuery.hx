package jQ;

import js.Dom.Document;
import js.Dom.Dom;
import js.Dom.HtmlCollection;

/**
	TypedJQuery list all the typed verion of the jQuery methods.
	Use it as "using jQ.TypedJQuery;"
**/
//defined as extern so that the compiled JS file wouldn't include this class.
extern class TypedJQuery{
	/**
		selector A string containing a selector expression to match additional elements against.
	**/
	inline public static function add0(j:JQuery, selector:String):JQuery {
		return j.add(selector);
	}
	/**
		elements one or more elements to add to the set of matched elements.
	**/
	inline public static function add1(j:JQuery, element:Dom):JQuery {
		return j.add(element);
	}
	/**
		elements one or more elements to add to the set of matched elements.
	**/
	inline public static function add2(j:JQuery, elements:HtmlCollection<Dom>):JQuery {
		return j.add(elements);
	}
	/**
		html An HTML fragment to add to the set of matched elements.
	**/
	inline public static function add3(j:JQuery, html:String):JQuery {
		return j.add(html);
	}
	/**
		selector A string containing a selector expression to match additional elements against.
		context Add some elements rooted against the specified context.
	**/
	inline public static function add4(j:JQuery, selector:String, context:Document):JQuery {
		return j.add(selector,context);
	}

	/**
		className One or more class names to be added to the class attribute of each matched element.
	**/
	inline public static function addClass0(j:JQuery, className:String):JQuery {
		return j.addClass(className);
	}
	/**
		function(index, class) A function returning one or more space-separated class names to be added. Receives the index position of the element in the set and the old class value as arguments.
	**/
	inline public static function addClass1(j:JQuery, funct:Int->String->String):JQuery {
		return j.addClass(funct);
	}
}
