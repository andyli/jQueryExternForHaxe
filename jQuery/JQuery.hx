/* This file is generated, do not edit! Visit http://api.jquery.com/ for API documentation. */
package jQuery;
@:final @:build(jQuery.haxe.Config.build()) extern class JQuery implements ArrayAccess<js.html.Node> {
	/**
		Add the previous set of elements on the stack to the current set.
	**/
	@:jQueryVersion({ added : "1.2" ,deprecated : "1.8" }) public function andSelf(  ) : jQuery.JQuery;
	/**
		A string containing the jQuery version number.
	**/
	@:jQueryVersion({ added : "1.0" }) public var jquery : String;
	/**
		Get the HTML contents of the first element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function html(  ) : String;
	/**
		Set the HTML contents of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function html( htmlString : String ) : jQuery.JQuery;
	/**
		Set the HTML contents of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function html( _function : Int -> String -> Void ) : jQuery.JQuery;
	/**
		Attach a function to be executed before an Ajax request is sent. This is an <a href="/Ajax_Events/">Ajax Event</a>.
	**/
	@:jQueryVersion({ added : "1.0" }) public function ajaxSend( handler : jQuery.Event -> jQuery.JqXHR -> Dynamic -> Void ) : jQuery.JQuery;
	/**
		Remove from the queue all items that have not yet been run.
	**/
	@:jQueryVersion({ added : "1.4" }) public function clearQueue( ?queueName : String ) : jQuery.JQuery;
	/**
		Insert every element in the set of matched elements to the end of the target.
	**/
	@:jQueryVersion({ added : "1.0" }) public function appendTo( target : jQuery.haxe.Either<String, jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.JQuery>>>> ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mousedown(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mousedown( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function mousedown( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Retrieve the DOM elements matched by the jQuery object.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function get(  ) : Array<js.html.Node>;
	/**
		Retrieve one of the DOM elements matched by the jQuery object.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function get( index : Int ) : js.html.Node;
	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function keydown(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function keydown( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function keydown( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Hide the matched elements with a sliding motion.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function slideUp( options : Dynamic ) : jQuery.JQuery;
	/**
		Hide the matched elements with a sliding motion.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function slideUp( ?duration : jQuery.haxe.Either<Float, String>, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Hide the matched elements with a sliding motion.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function slideUp( ?duration : jQuery.haxe.Either<Float, String>, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Attach a function to be executed whenever an Ajax request completes successfully. This is an <a href="/Ajax_Events/">Ajax Event</a>.
	**/
	@:jQueryVersion({ added : "1.0" }) public function ajaxSuccess( handler : jQuery.Event -> js.html.XMLHttpRequest -> Dynamic -> Void ) : jQuery.JQuery;
	/**
		Get the value of an attribute for the first element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function attr( attributeName : String ) : String;
	/**
		Set one or more attributes for the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function attr( attributes : Dynamic ) : jQuery.JQuery;
	/**
		Set one or more attributes for the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function attr( attributeName : String, value : jQuery.haxe.Either<String, Float> ) : jQuery.JQuery;
	/**
		Set one or more attributes for the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.1" }) public function attr( attributeName : String, _function : Int -> String -> String ) : jQuery.JQuery;
	/**
		Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function prevUntil( ?selector : String, ?filter : String ) : jQuery.JQuery;
	/**
		Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function prevUntil( ?element : js.html.Node, ?filter : String ) : jQuery.JQuery;
	/**
		Encode a set of form elements as an array of names and values.
	**/
	@:jQueryVersion({ added : "1.2" }) public function serializeArray(  ) : Array<Dynamic>;
	/**
		Get the siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.0" }) public function siblings( ?selector : String ) : jQuery.JQuery;
	/**
		Display the matched elements with a sliding motion.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function slideDown( options : Dynamic ) : jQuery.JQuery;
	/**
		Display the matched elements with a sliding motion.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function slideDown( ?duration : jQuery.haxe.Either<Float, String>, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Display the matched elements with a sliding motion.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function slideDown( ?duration : jQuery.haxe.Either<Float, String>, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Get the combined text contents of each element in the set of matched elements, including their descendants.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function text(  ) : String;
	/**
		Set the content of each element in the set of matched elements to the specified text.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function text( textString : String ) : jQuery.JQuery;
	/**
		Set the content of each element in the set of matched elements to the specified text.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function text( _function : Int -> String -> Void ) : jQuery.JQuery;
	/**
		Search for a given element from among the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function index(  ) : Float;
	/**
		Search for a given element from among the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function index( selector : String ) : Float;
	/**
		Search for a given element from among the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function index( element : jQuery.haxe.Either<js.html.Node, jQuery.JQuery> ) : Float;
	/**
		Execute all handlers attached to an element for an event.
	**/
	@:jQueryVersion({ added : "1.2" }) public function triggerHandler( eventType : String, ?extraParameters : Array<Dynamic> ) : Dynamic;
	/**
		Get the current computed height for the first element in the set of matched elements, including padding but not border.
	**/
	@:jQueryVersion({ added : "1.2.6" }) public function innerHeight(  ) : Int;
	/**
		End the most recent filtering operation in the current chain and return the set of matched elements to its previous state.
	**/
	@:jQueryVersion({ added : "1.0" }) public function end(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function dblclick(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function dblclick( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function dblclick( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Get the immediately following sibling of each element in the set of matched elements. If a selector is provided, it retrieves the next sibling only if it matches that selector.
	**/
	@:jQueryVersion({ added : "1.0" }) public function next( ?selector : String ) : jQuery.JQuery;
	/**
		Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.0" }) public function parents( ?selector : String ) : jQuery.JQuery;
	/**
		A selector representing selector passed to jQuery(), if any, when creating the original set.
	**/
	@:jQueryVersion({ added : "1.3" ,deprecated : "1.7" ,removed : "1.9" }) public var selector : String;
	/**
		Get the current vertical position of the scroll bar for the first element in the set of matched elements or set the vertical position of the scroll bar for every matched element.
	**/
	@:overload @:jQueryVersion({ added : "1.2.6" }) public function scrollTop(  ) : Int;
	/**
		Set the current vertical position of the scroll bar for each of the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.2.6" }) public function scrollTop( value : Float ) : jQuery.JQuery;
	/**
		Register a handler to be called when Ajax requests complete. This is an <a href="/Ajax_Events/">AjaxEvent</a>.
	**/
	@:jQueryVersion({ added : "1.0" }) public function ajaxComplete( handler : jQuery.Event -> js.html.XMLHttpRequest -> Dynamic -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function blur(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function blur( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function blur( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Get the current computed height for the first element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function height(  ) : Int;
	/**
		Set the CSS height of every matched element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function height( value : jQuery.haxe.Either<String, Float> ) : jQuery.JQuery;
	/**
		Set the CSS height of every matched element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.1" }) public function height( _function : Int -> String -> Dynamic ) : jQuery.JQuery;
	/**
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function focus(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function focus( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function focus( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function keypress(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function keypress( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function keypress( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
	**/
	@:overload @:jQueryVersion({ added : "1.2" }) public function replaceWith( newContent : jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.JQuery>>> ) : jQuery.JQuery;
	/**
		Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function replaceWith( _function : Void -> Dynamic ) : jQuery.JQuery;
	/**
		Perform a custom animation of a set of CSS properties.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function animate( properties : Dynamic, options : Dynamic ) : jQuery.JQuery;
	/**
		Perform a custom animation of a set of CSS properties.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function animate( properties : Dynamic, ?duration : jQuery.haxe.Either<Float, String>, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Adjust the opacity of the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function fadeTo( duration : jQuery.haxe.Either<String, Float>, opacity : Float, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Adjust the opacity of the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function fadeTo( duration : jQuery.haxe.Either<String, Float>, opacity : Float, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Set a timer to delay execution of subsequent items in the queue.
	**/
	@:jQueryVersion({ added : "1.4" }) public function delay( duration : Int, ?queueName : String ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mouseout(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mouseout( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function mouseout( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function append( _function : Int -> String -> Void ) : jQuery.JQuery;
	/**
		Insert content, specified by the parameter, to the end of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function append( content : jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.haxe.Either<js.html.NodeList, jQuery.haxe.Either<Array<String>, jQuery.haxe.Either<Array<jQuery.JQuery>, jQuery.JQuery>>>>>>, ?content : jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.haxe.Either<js.html.NodeList, jQuery.haxe.Either<Array<String>, jQuery.haxe.Either<Array<jQuery.JQuery>, jQuery.JQuery>>>>>> ) : jQuery.JQuery;
	/**
		Bind an event handler to the "focusin" event.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function focusin( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "focusin" event.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function focusin( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Remove elements from the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function not( selector : String ) : jQuery.JQuery;
	/**
		Remove elements from the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function not( elements : jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<js.html.NodeList, Array<js.html.Node>>> ) : jQuery.JQuery;
	/**
		Remove elements from the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function not( jQuery : jQuery.JQuery ) : jQuery.JQuery;
	/**
		Remove elements from the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function not( _function : Int -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mouseleave(  ) : jQuery.JQuery;
	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mouseleave( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function mouseleave( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function new(  ) : Void;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function new( element : js.html.Node ) : Void;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function new( elementArray : jQuery.haxe.Either<js.html.NodeList, Array<js.html.Node>> ) : Void;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function new( jQuery : jQuery.JQuery ) : Void;
	/**
		Binds a function to be executed when the DOM has finished loading.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function new( callback : jQuery.haxe.Either<Void -> Void, Class<jQuery.JQuery> -> Void> ) : Void;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function new( object : Dynamic ) : Void;
	/**
		Creates DOM elements on the fly from the provided string of raw HTML.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function new( html : String, attributes : Dynamic ) : Void;
	/**
		Accepts a string containing a CSS selector which is then used to match a set of elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function new( selector : String, ?context : jQuery.haxe.Either<js.html.Node, jQuery.JQuery> ) : Void;
	/**
		Creates DOM elements on the fly from the provided string of raw HTML.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function new( html : String, ?ownerDocument : js.html.Document ) : Void;
	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function delegate( selector : String, events : Dynamic ) : jQuery.JQuery;
	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.2" }) public function delegate( selector : String, eventType : String, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.2" }) public function delegate( selector : String, eventType : String, eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Attach an event handler function for one or more events to the selected elements.
	**/
	@:overload @:jQueryVersion({ added : "1.7" }) public function on( events : Dynamic, ?selector : String, ?data : Dynamic ) : jQuery.JQuery;
	/**
		Attach an event handler function for one or more events to the selected elements.
	**/
	@:overload @:jQueryVersion({ added : "1.7" }) public function on( events : String, ?selector : String, ?data : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Get the current computed width for the first element in the set of matched elements, including padding and border.
	**/
	@:jQueryVersion({ added : "1.2.6" }) public function outerWidth( ?includeMargin : Bool ) : Int;
	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function resize(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function resize( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function resize( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function data(  ) : Dynamic;
	/**
		Return the value at the named data store for the first element in the jQuery collection, as set by data(name, value) or by an HTML5 data-* attribute.
	**/
	@:overload @:jQueryVersion({ added : "1.2.3" }) public function data( key : String ) : Dynamic;
	/**
		Store arbitrary data associated with the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function data( obj : Dynamic ) : jQuery.JQuery;
	/**
		Store arbitrary data associated with the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.2.3" }) public function data( key : String, value : Dynamic ) : jQuery.JQuery;
	/**
		Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.2" }) public function prevAll( ?selector : String ) : jQuery.JQuery;
	/**
		Remove a property for the set of matched elements.
	**/
	@:jQueryVersion({ added : "1.6" }) public function removeProp( propertyName : String ) : jQuery.JQuery;
	/**
		Get the current value of the first element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function val(  ) : jQuery.haxe.Either<String, jQuery.haxe.Either<Float, Array<Dynamic>>>;
	/**
		Set the value of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function val( value : jQuery.haxe.Either<String, Array<String>> ) : jQuery.JQuery;
	/**
		Set the value of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function val( _function : Int -> Dynamic -> Void ) : jQuery.JQuery;
	/**
		Register a handler to be called when Ajax requests complete with an error. This is an <a href="/Ajax_Events/">Ajax Event</a>.
	**/
	@:jQueryVersion({ added : "1.0" }) public function ajaxError( handler : jQuery.Event -> jQuery.JqXHR -> Dynamic -> String -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function click(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function click( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function click( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "error" JavaScript event.
	**/
	@:overload @:jQueryVersion({ added : "1.0" ,deprecated : "1.8" }) public function error( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "error" JavaScript event.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" ,deprecated : "1.8" }) public function error( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind a single handler to the matched elements, to be executed when the mouse pointer enters or leaves the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function hover( handlerInOut : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind two handlers to the matched elements, to be executed when the mouse pointer enters and leaves the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function hover( handlerIn : jQuery.Event -> Void, handlerOut : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function removeClass( _function : Int -> String -> Void ) : jQuery.JQuery;
	/**
		Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function removeClass( ?className : String ) : jQuery.JQuery;
	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function scroll(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function scroll( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function scroll( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		The number of elements in the jQuery object.
	**/
	@:jQueryVersion({ added : "1.0" }) public var length : Int;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
	**/
	@:overload @:jQueryVersion({ added : "1.3" }) public function closest( selector : String ) : jQuery.JQuery;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function closest( jQuery : jQuery.JQuery ) : jQuery.JQuery;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function closest( element : js.html.Node ) : jQuery.JQuery;
	/**
		For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function closest( selector : String, ?context : js.html.Node ) : jQuery.JQuery;
	/**
		Get an array of all the elements and selectors matched against the current element up through the DOM tree.
	**/
	@:overload @:jQueryVersion({ added : "1.4" ,deprecated : "1.7" ,removed : "1.8" }) public function closest( selectors : jQuery.haxe.Either<String, jQuery.haxe.Either<Array<String>, jQuery.JQuery>>, ?context : js.html.Node ) : Array<Dynamic>;
	/**
		Remove all child nodes of the set of matched elements from the DOM.
	**/
	@:jQueryVersion({ added : "1.0" }) public function empty(  ) : jQuery.JQuery;
	/**
		Insert content, specified by the parameter, after each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function after( _function : Int -> Void ) : jQuery.JQuery;
	/**
		Insert content, specified by the parameter, after each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function after( content : jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.haxe.Either<js.html.NodeList, jQuery.haxe.Either<Array<String>, jQuery.haxe.Either<Array<jQuery.JQuery>, jQuery.JQuery>>>>>>, ?content : jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.haxe.Either<js.html.NodeList, jQuery.haxe.Either<Array<String>, jQuery.haxe.Either<Array<jQuery.JQuery>, jQuery.JQuery>>>>>> ) : jQuery.JQuery;
	/**
		Get the closest ancestor element that is positioned.
	**/
	@:jQueryVersion({ added : "1.2.6" }) public function offsetParent(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "load" JavaScript event.
	**/
	@:overload @:jQueryVersion({ added : "1.0" ,deprecated : "1.8" }) public function load( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "load" JavaScript event.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" ,deprecated : "1.8" }) public function load( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Load data from the server and place the returned HTML into the matched element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function load( url : String, ?data : jQuery.haxe.Either<Dynamic, String>, ?complete : Dynamic -> String -> js.html.XMLHttpRequest -> Void ) : jQuery.JQuery;
	/**
		Remove the set of matched elements from the DOM.
	**/
	@:jQueryVersion({ added : "1.4" }) public function detach( ?selector : String ) : jQuery.JQuery;
	/**
		Bind an event handler to the "unload" JavaScript event.
	**/
	@:overload @:jQueryVersion({ added : "1.0" ,deprecated : "1.8" }) public function unload( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "unload" JavaScript event.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" ,deprecated : "1.8" }) public function unload( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mouseup(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mouseup( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function mouseup( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Iterate over a jQuery object, executing a function for each matched element. 
	**/
	@:jQueryVersion({ added : "1.0" }) public function each( _function : Int -> js.html.Node -> Void ) : jQuery.JQuery;
	/**
		 Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished. 
	**/
	@:jQueryVersion({ added : "1.6" }) public function promise( ?type : String, ?target : Dynamic ) : jQuery.Promise;
	/**
		Get the current computed width for the first element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function width(  ) : Int;
	/**
		Set the CSS width of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function width( value : jQuery.haxe.Either<String, Float> ) : jQuery.JQuery;
	/**
		Set the CSS width of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.1" }) public function width( _function : Int -> String -> Dynamic ) : jQuery.JQuery;
	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the document.
	**/
	@:overload @:jQueryVersion({ added : "1.2" }) public function offset(  ) : { var top : Float; var left : Float; };
	/**
		Set the current coordinates of every element in the set of matched elements, relative to the document.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function offset( coordinates : { var top : Float; var left : Float; } ) : jQuery.JQuery;
	/**
		Set the current coordinates of every element in the set of matched elements, relative to the document.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function offset( _function : Int -> { var left : Float; var top : Float; } -> { var left : Float; var top : Float; } ) : jQuery.JQuery;
	/**
		Get the current computed height for the first element in the set of matched elements, including padding, border, and optionally margin. Returns an integer (without "px") representation of the value or null if called on an empty set of elements.
	**/
	@:jQueryVersion({ added : "1.2.6" }) public function outerHeight( ?includeMargin : Bool ) : Int;
	/**
		Stop the currently-running animation on the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.2" }) public function stop( ?clearQueue : Bool, ?jumpToEnd : Bool ) : jQuery.JQuery;
	/**
		Stop the currently-running animation on the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.7" }) public function stop( ?queue : String, ?clearQueue : Bool, ?jumpToEnd : Bool ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test. 
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function filter( selector : String ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test. 
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function filter( element : js.html.Node ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test. 
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function filter( jQuery : jQuery.JQuery ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to those that match the selector or pass the function's test. 
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function filter( _function : Int -> Void ) : jQuery.JQuery;
	/**
		Attach an event handler for all elements which match the current selector, now and in the future.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" ,deprecated : "1.7" ,removed : "1.9" }) public function live( events : Dynamic ) : jQuery.JQuery;
	/**
		Attach an event handler for all elements which match the current selector, now and in the future.
	**/
	@:overload @:jQueryVersion({ added : "1.3" ,deprecated : "1.7" ,removed : "1.9" }) public function live( events : String, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Attach an event handler for all elements which match the current selector, now and in the future.
	**/
	@:overload @:jQueryVersion({ added : "1.4" ,deprecated : "1.7" ,removed : "1.9" }) public function live( events : String, data : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function nextUntil( ?selector : String, ?filter : String ) : jQuery.JQuery;
	/**
		Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function nextUntil( ?element : js.html.Node, ?filter : String ) : jQuery.JQuery;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return <code>true</code> if at least one of these elements matches the given arguments.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function is( selector : String ) : Bool;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return <code>true</code> if at least one of these elements matches the given arguments.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function is( jQuery : jQuery.JQuery ) : Bool;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return <code>true</code> if at least one of these elements matches the given arguments.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function is( element : js.html.Node ) : Bool;
	/**
		Check the current matched set of elements against a selector, element, or jQuery object and return <code>true</code> if at least one of these elements matches the given arguments.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function is( _function : Int -> Void ) : Bool;
	/**
		Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.
	**/
	@:jQueryVersion({ added : "1.2" }) public function map( callback : Int -> js.html.Node -> Dynamic ) : jQuery.JQuery;
	/**
		Remove the set of matched elements from the DOM.
	**/
	@:jQueryVersion({ added : "1.0" }) public function remove( ?selector : String ) : jQuery.JQuery;
	/**
		Return the number of elements in the jQuery object.
	**/
	@:jQueryVersion({ added : "1.0" ,deprecated : "1.8" }) public function size(  ) : Int;
	/**
		Hide the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function hide(  ) : jQuery.JQuery;
	/**
		Hide the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function hide( options : Dynamic ) : jQuery.JQuery;
	/**
		Hide the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function hide( ?duration : jQuery.haxe.Either<Float, String>, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Hide the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function hide( duration : jQuery.haxe.Either<Float, String>, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Remove a previously-attached event handler from the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function unbind(  ) : jQuery.JQuery;
	/**
		Remove a previously-attached event handler from the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function unbind( event : Dynamic ) : jQuery.JQuery;
	/**
		Remove a previously-attached event handler from the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function unbind( eventType : String, _false : Bool ) : jQuery.JQuery;
	/**
		Remove a previously-attached event handler from the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function unbind( eventType : String, ?handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Adds the specified class(es) to each of the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function addClass( className : String ) : jQuery.JQuery;
	/**
		Adds the specified class(es) to each of the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function addClass( _function : Int -> String -> Void ) : jQuery.JQuery;
	/**
		Insert content, specified by the parameter, before each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function before( _function : Int -> Dynamic ) : jQuery.JQuery;
	/**
		Insert content, specified by the parameter, before each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function before( content : jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.haxe.Either<js.html.NodeList, jQuery.haxe.Either<Array<String>, jQuery.haxe.Either<Array<jQuery.JQuery>, jQuery.JQuery>>>>>>, ?content : jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.haxe.Either<js.html.NodeList, jQuery.haxe.Either<Array<String>, jQuery.haxe.Either<Array<jQuery.JQuery>, jQuery.JQuery>>>>>> ) : jQuery.JQuery;
	/**
		Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function find( selector : String ) : jQuery.JQuery;
	/**
		Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function find( jQuery : jQuery.JQuery ) : jQuery.JQuery;
	/**
		Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function find( element : js.html.Node ) : jQuery.JQuery;
	/**
		Attach a handler to an event for the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function bind( events : Dynamic ) : jQuery.JQuery;
	/**
		Attach a handler to an event for the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function bind( eventType : String, ?eventData : Dynamic, preventBubble : Bool ) : jQuery.JQuery;
	/**
		Attach a handler to an event for the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function bind( eventType : String, ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Display the matched elements by fading them to opaque.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function fadeIn( options : Dynamic ) : jQuery.JQuery;
	/**
		Display the matched elements by fading them to opaque.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function fadeIn( ?duration : jQuery.haxe.Either<Float, String>, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Display the matched elements by fading them to opaque.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function fadeIn( ?duration : jQuery.haxe.Either<Float, String>, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function parentsUntil( ?selector : String, ?filter : String ) : jQuery.JQuery;
	/**
		Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function parentsUntil( ?element : js.html.Node, ?filter : String ) : jQuery.JQuery;
	/**
		Wrap an HTML structure around all elements in the set of matched elements.
	**/
	@:jQueryVersion({ added : "1.2" }) public function wrapAll( wrappingElement : jQuery.haxe.Either<String, jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.JQuery>>> ) : jQuery.JQuery;
	/**
		Add a collection of DOM elements onto the jQuery stack.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function pushStack( elements : jQuery.haxe.Either<Array<js.html.Node>, js.html.NodeList> ) : jQuery.JQuery;
	/**
		Add a collection of DOM elements onto the jQuery stack.
	**/
	@:overload @:jQueryVersion({ added : "1.3" }) public function pushStack( elements : jQuery.haxe.Either<Array<js.html.Node>, js.html.NodeList>, name : String, arguments : Array<Dynamic> ) : jQuery.JQuery;
	/**
		Retrieve all the DOM elements contained in the jQuery set, as an array.
	**/
	@:jQueryVersion({ added : "1.4" }) public function toArray(  ) : Array<js.html.Node>;
	/**
		Get the immediately preceding sibling of each element in the set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.0" }) public function prev( ?selector : String ) : jQuery.JQuery;
	/**
		Execute the next function on the queue for the matched elements.
	**/
	@:jQueryVersion({ added : "1.2" }) public function dequeue( ?queueName : String ) : jQuery.JQuery;
	/**
		Determine whether any of the matched elements are assigned the given class.
	**/
	@:jQueryVersion({ added : "1.2" }) public function hasClass( className : String ) : Bool;
	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function keyup(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function keyup( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function keyup( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mousemove(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mousemove( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function mousemove( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Get the children of each element in the set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.0" }) public function children( ?selector : String ) : jQuery.JQuery;
	/**
		Execute all handlers and behaviors attached to the matched elements for the given event type.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function trigger( eventType : String, ?extraParameters : jQuery.haxe.Either<Array<Dynamic>, Dynamic> ) : jQuery.JQuery;
	/**
		Execute all handlers and behaviors attached to the matched elements for the given event type.
	**/
	@:overload @:jQueryVersion({ added : "1.3" }) public function trigger( event : jQuery.Event, ?extraParameters : jQuery.haxe.Either<Array<Dynamic>, Dynamic> ) : jQuery.JQuery;
	/**
		Wrap an HTML structure around the content of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.2" }) public function wrapInner( wrappingElement : String ) : jQuery.JQuery;
	/**
		Wrap an HTML structure around the content of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function wrapInner( _function : Int -> Void ) : jQuery.JQuery;
	/**
		Remove an attribute from each element in the set of matched elements.
	**/
	@:jQueryVersion({ added : "1.0" }) public function removeAttr( attributeName : String ) : jQuery.JQuery;
	/**
		Bind an event handler to the "focusout" JavaScript event.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function focusout( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "focusout" JavaScript event.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function focusout( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to a subset specified by a range of indices.
	**/
	@:jQueryVersion({ added : "1.1.4" }) public function slice( start : Int, ?end : Int ) : jQuery.JQuery;
	/**
		Remove event handlers previously attached using <code>.live()</code> from the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.1" ,deprecated : "1.7" ,removed : "1.9" }) public function die(  ) : jQuery.JQuery;
	/**
		Remove event handlers previously attached using <code>.live()</code> from the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" ,deprecated : "1.7" ,removed : "1.9" }) public function die( events : Dynamic ) : jQuery.JQuery;
	/**
		Remove event handlers previously attached using <code>.live()</code> from the elements.
	**/
	@:overload @:jQueryVersion({ added : "1.3" ,deprecated : "1.7" ,removed : "1.9" }) public function die( eventType : String, ?handler : String ) : jQuery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function toggleClass( className : String ) : jQuery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function toggleClass( ?_switch : Bool ) : jQuery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
	**/
	@:overload @:jQueryVersion({ added : "1.3" }) public function toggleClass( className : String, _switch : Bool ) : jQuery.JQuery;
	/**
		Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function toggleClass( _function : Int -> String -> Bool -> String, ?_switch : Bool ) : jQuery.JQuery;
	/**
		The DOM node context originally passed to <code>jQuery()</code>; if none was passed then context will likely be the document.
	**/
	@:jQueryVersion({ added : "1.3" ,deprecated : "1.10" }) public var context : js.html.Node;
	/**
		Get the current coordinates of the first element in the set of matched elements, relative to the offset parent.
	**/
	@:jQueryVersion({ added : "1.2" }) public function position(  ) : { var top : Float; var left : Float; };
	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mouseover(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mouseover( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function mouseover( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Show the queue of functions to be executed on the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.2" }) public function queue( ?queueName : String ) : Array<Void -> Void>;
	/**
		Manipulate the queue of functions to be executed, once for each matched element.
	**/
	@:overload @:jQueryVersion({ added : "1.2" }) public function queue( ?queueName : String, newQueue : Array<Void -> Void> ) : jQuery.JQuery;
	/**
		Manipulate the queue of functions to be executed, once for each matched element.
	**/
	@:overload @:jQueryVersion({ added : "1.2" }) public function queue( ?queueName : String, callback : (Void -> Void) -> Void ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to the first in the set.
	**/
	@:jQueryVersion({ added : "1.4" }) public function first(  ) : jQuery.JQuery;
	/**
		Insert every element in the set of matched elements before the target.
	**/
	@:jQueryVersion({ added : "1.0" }) public function insertBefore( target : jQuery.haxe.Either<String, jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.JQuery>>>> ) : jQuery.JQuery;
	/**
		Replace each target element with the set of matched elements.
	**/
	@:jQueryVersion({ added : "1.2" }) public function replaceAll( target : jQuery.haxe.Either<String, jQuery.haxe.Either<jQuery.JQuery, jQuery.haxe.Either<Array<js.html.Node>, js.html.Node>>> ) : jQuery.JQuery;
	/**
		Register a handler to be called when all Ajax requests have completed. This is an <a href="/Ajax_Events/">Ajax Event</a>.
	**/
	@:jQueryVersion({ added : "1.0" }) public function ajaxStop( handler : Void -> Void ) : jQuery.JQuery;
	/**
		Hide the matched elements by fading them to transparent.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function fadeOut( options : Dynamic ) : jQuery.JQuery;
	/**
		Hide the matched elements by fading them to transparent.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function fadeOut( ?duration : jQuery.haxe.Either<Float, String>, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Hide the matched elements by fading them to transparent.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function fadeOut( ?duration : jQuery.haxe.Either<Float, String>, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
	**/
	@:overload @:jQueryVersion({ added : "1.1" }) public function one( events : String, ?data : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
	**/
	@:overload @:jQueryVersion({ added : "1.7" }) public function one( events : Dynamic, ?selector : String, ?data : Dynamic ) : jQuery.JQuery;
	/**
		Attach a handler to an event for the elements. The handler is executed at most once per element per event type.
	**/
	@:overload @:jQueryVersion({ added : "1.7" }) public function one( events : String, ?selector : String, ?data : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Get the parent of each element in the current set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.0" }) public function parent( ?selector : String ) : jQuery.JQuery;
	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function change(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function change( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function change( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function select(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function select( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function select( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Add the previous set of elements on the stack to the current set, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.8" }) public function addBack( ?selector : String ) : jQuery.JQuery;
	/**
		Register a handler to be called when the first Ajax request begins. This is an <a href="/Ajax_Events/">Ajax Event</a>.
	**/
	@:jQueryVersion({ added : "1.0" }) public function ajaxStart( handler : Void -> Void ) : jQuery.JQuery;
	/**
		Get all following siblings of each element in the set of matched elements, optionally filtered by a selector.
	**/
	@:jQueryVersion({ added : "1.2" }) public function nextAll( ?selector : String ) : jQuery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.2" }) public function undelegate(  ) : jQuery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function undelegate( namespace : String ) : jQuery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.2" }) public function undelegate( selector : String, eventType : String ) : jQuery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function undelegate( selector : String, events : Dynamic ) : jQuery.JQuery;
	/**
		Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.2" }) public function undelegate( selector : String, eventType : String, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Add elements to the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function add( selector : String ) : jQuery.JQuery;
	/**
		Add elements to the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function add( elements : jQuery.haxe.Either<js.html.Node, js.html.NodeList> ) : jQuery.JQuery;
	/**
		Add elements to the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function add( html : String ) : jQuery.JQuery;
	/**
		Add elements to the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.3.2" }) public function add( jQuery : jQuery.JQuery ) : jQuery.JQuery;
	/**
		Add elements to the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function add( selector : String, context : js.html.Node ) : jQuery.JQuery;
	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mouseenter(  ) : jQuery.JQuery;
	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function mouseenter( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function mouseenter( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Insert every element in the set of matched elements to the beginning of the target.
	**/
	@:jQueryVersion({ added : "1.0" }) public function prependTo( target : jQuery.haxe.Either<String, jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.JQuery>>>> ) : jQuery.JQuery;
	/**
		Display or hide the matched elements with a sliding motion.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function slideToggle( options : Dynamic ) : jQuery.JQuery;
	/**
		Display or hide the matched elements with a sliding motion.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function slideToggle( ?duration : jQuery.haxe.Either<Float, String>, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Display or hide the matched elements with a sliding motion.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function slideToggle( ?duration : jQuery.haxe.Either<Float, String>, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Encode a set of form elements as a string for submission.
	**/
	@:jQueryVersion({ added : "1.0" }) public function serialize(  ) : String;
	/**
		Specify a function to execute when the DOM is fully loaded.
	**/
	@:jQueryVersion({ added : "1.0" }) public function ready( handler : Void -> Void ) : jQuery.JQuery;
	/**
		Display the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function show(  ) : jQuery.JQuery;
	/**
		Display the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function show( options : Dynamic ) : jQuery.JQuery;
	/**
		Display the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function show( ?duration : jQuery.haxe.Either<Float, String>, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Display the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function show( duration : jQuery.haxe.Either<Float, String>, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Get the children of each element in the set of matched elements, including text and comment nodes.
	**/
	@:jQueryVersion({ added : "1.2" }) public function contents(  ) : jQuery.JQuery;
	/**
		Create a deep copy of the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function clone( ?withDataAndEvents : Bool ) : jQuery.JQuery;
	/**
		Create a deep copy of the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.5" }) public function clone( ?withDataAndEvents : Bool, ?deepWithDataAndEvents : Bool ) : jQuery.JQuery;
	/**
		Get the value of a property for the first element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function prop( propertyName : String ) : jQuery.haxe.Either<String, Bool>;
	/**
		Set one or more properties for the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function prop( properties : Dynamic ) : jQuery.JQuery;
	/**
		Set one or more properties for the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function prop( propertyName : String, value : jQuery.haxe.Either<String, jQuery.haxe.Either<Float, Bool>> ) : jQuery.JQuery;
	/**
		Set one or more properties for the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.6" }) public function prop( propertyName : String, _function : jQuery.haxe.Either<Int -> String -> String, jQuery.haxe.Either<Int -> Float -> Float, Int -> Bool -> Bool>> ) : jQuery.JQuery;
	/**
		Stop the currently-running animation, remove all queued animations, and complete all animations for the matched elements.
	**/
	@:jQueryVersion({ added : "1.9" }) public function finish( ?queue : String ) : jQuery.JQuery;
	/**
		Display or hide the matched elements by animating their opacity.
	**/
	@:overload @:jQueryVersion({ added : "1.4.4" }) public function fadeToggle( options : Dynamic ) : jQuery.JQuery;
	/**
		Display or hide the matched elements by animating their opacity.
	**/
	@:overload @:jQueryVersion({ added : "1.4.4" }) public function fadeToggle( ?duration : jQuery.haxe.Either<Float, String>, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to the one at the specified index.
	**/
	@:overload @:jQueryVersion({ added : "1.1.2" }) public function eq( index : Int ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to the one at the specified index.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function eq( index : Int ) : jQuery.JQuery;
	/**
		Get the current computed width for the first element in the set of matched elements, including padding but not border.
	**/
	@:jQueryVersion({ added : "1.2.6" }) public function innerWidth(  ) : Int;
	/**
		Get the current horizontal position of the scroll bar for the first element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.2.6" }) public function scrollLeft(  ) : Int;
	/**
		Set the current horizontal position of the scroll bar for each of the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.2.6" }) public function scrollLeft( value : Float ) : jQuery.JQuery;
	/**
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function submit(  ) : jQuery.JQuery;
	/**
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function submit( handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function submit( ?eventData : Dynamic, handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Display or hide the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.3" }) public function toggle( showOrHide : Bool ) : jQuery.JQuery;
	/**
		Display or hide the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function toggle( options : Dynamic ) : jQuery.JQuery;
	/**
		Display or hide the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function toggle( ?duration : jQuery.haxe.Either<Float, String>, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Display or hide the matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4.3" }) public function toggle( duration : jQuery.haxe.Either<Float, String>, ?easing : String, ?complete : Void -> Void ) : jQuery.JQuery;
	/**
		Bind two or more handlers to the matched elements, to be executed on alternate clicks.
	**/
	@:overload @:jQueryVersion({ added : "1.0" ,deprecated : "1.8" ,removed : "1.9" }) public function toggle( handler : jQuery.Event -> Void, handler : jQuery.Event -> Void, ?handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Get the value of style properties for the first element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function css( propertyName : String ) : String;
	/**
		Get the value of style properties for the first element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.9" }) public function css( propertyNames : Array<String> ) : String;
	/**
		Set one or more CSS properties for the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function css( properties : Dynamic ) : jQuery.JQuery;
	/**
		Set one or more CSS properties for the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function css( propertyName : String, value : jQuery.haxe.Either<String, Float> ) : jQuery.JQuery;
	/**
		Set one or more CSS properties for the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function css( propertyName : String, _function : Int -> String -> Dynamic ) : jQuery.JQuery;
	/**
		Remove an event handler.
	**/
	@:overload @:jQueryVersion({ added : "1.7" }) public function off(  ) : jQuery.JQuery;
	/**
		Remove an event handler.
	**/
	@:overload @:jQueryVersion({ added : "1.7" }) public function off( events : Dynamic, ?selector : String ) : jQuery.JQuery;
	/**
		Remove an event handler.
	**/
	@:overload @:jQueryVersion({ added : "1.7" }) public function off( events : String, ?selector : String, ?handler : jQuery.Event -> Void ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function has( selector : String ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function has( contained : js.html.Node ) : jQuery.JQuery;
	/**
		Reduce the set of matched elements to the final one in the set.
	**/
	@:jQueryVersion({ added : "1.4" }) public function last(  ) : jQuery.JQuery;
	/**
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function prepend( _function : Int -> String -> Void ) : jQuery.JQuery;
	/**
		Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function prepend( content : jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.haxe.Either<js.html.NodeList, jQuery.haxe.Either<Array<String>, jQuery.haxe.Either<Array<jQuery.JQuery>, jQuery.JQuery>>>>>>, ?content : jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.haxe.Either<js.html.NodeList, jQuery.haxe.Either<Array<String>, jQuery.haxe.Either<Array<jQuery.JQuery>, jQuery.JQuery>>>>>> ) : jQuery.JQuery;
	/**
		Remove a previously-stored piece of data.
	**/
	@:overload @:jQueryVersion({ added : "1.2.3" }) public function removeData( ?name : String ) : jQuery.JQuery;
	/**
		Remove a previously-stored piece of data.
	**/
	@:overload @:jQueryVersion({ added : "1.7" }) public function removeData( ?list : jQuery.haxe.Either<Array<String>, String> ) : jQuery.JQuery;
	/**
		Wrap an HTML structure around each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.0" }) public function wrap( wrappingElement : jQuery.haxe.Either<String, jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.JQuery>>> ) : jQuery.JQuery;
	/**
		Wrap an HTML structure around each element in the set of matched elements.
	**/
	@:overload @:jQueryVersion({ added : "1.4" }) public function wrap( _function : Int -> Void ) : jQuery.JQuery;
	/**
		Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
	**/
	@:jQueryVersion({ added : "1.4" }) public function unwrap(  ) : jQuery.JQuery;
	/**
		Insert every element in the set of matched elements after the target.
	**/
	@:jQueryVersion({ added : "1.0" }) public function insertAfter( target : jQuery.haxe.Either<String, jQuery.haxe.Either<String, jQuery.haxe.Either<js.html.Node, jQuery.haxe.Either<Array<js.html.Node>, jQuery.JQuery>>>> ) : jQuery.JQuery;
	/**
		Compile-time short cut to JQueryStatic.
	**/
	inline static public var _static = jQuery.JQueryStatic;
}