package jQuery.plugins.jQueryTools;

import jQuery.JQuery;

/**
	Dateinput
	http://flowplayer.org/tools/dateinput/index.html
**/

extern class Dateinput {
	inline static public function dateinput(jQ:JQuery, configuration:Dynamic):JQuery untyped {
		return jQ.dateinput(configuration);
	}

	inline static public function getDateinputAPI(jQ:JQuery):DateinputAPI untyped {
		return jQ.data("dateinput");
	}
	
	inline static public var _static = DateinputStatic;
}

extern class DateinputStatic {
	inline static public function localize(lang:String, configuration:Dynamic):Void untyped {
		JQueryStatic.tools.dateinput.localize(lang, configuration);
	}
}

extern class DateinputAPI {
	/** 
		Adds days to the currently selected date. The amount of days is specified in the argument. Without an argument one day is added and a negative argument moves backwards. Does not have any effect when the calendar is opened.
	**/
	public function addDay(amount:Int):DateinputAPI;

	/**
		Adds months to the currently selected date. The amount of months is specified in the argument. Without an argument one month is added and a negative argument moves backwards. If you call this method while the calendar is opened then the calendar seeks forward and backward but the value does not change.
	**/
	public function addMonth(amount:Int):DateinputAPI;

	/**
		Adds years to the currently selected date. The amount of years is specified in the argument. Without an argument one year is added and a negative argument moves backwards. If you call this method while the calendar is opened then the calendar seeks forward and backward but the value does not change.
	**/
	public function addYear(amount:Int):DateinputAPI;

	/**
		Returns the configuration of the current instance.
	**/
	public function getConf():Dynamic;
	
	/**
		Returns the root element for the calendar.
	**/
	public function getCalendar():JQuery;

	/**
		Returns the input field associated with the dateinput.
	**/
	public function getInput():JQuery;

	/**
		Returns the currently selected date.
		Returns the current date, formatted with the pattern given as the argument.
	**/
	public function getValue(?format:String):Dynamic;
	
	/** 
		Hides the calendar.
	**/
	public function hide():DateinputAPI;
	
	/** 
		Whether calendar is opened (true) or closed (false).
	**/
	public function isOpen():Bool;

	/**
		Sets the latest selectable date. See supplying date values. If the fit argument is true and the current value is later than the maximum value then the current value is changed to the maximum value. By default fit is false.
	**/
	public function setMax(value:Dynamic, ?fit:Bool = false):DateinputAPI;

	/**
		Earliest selectable date. See supplying date values. If the fit argument is true and the current value is earlier than the minimum value then the current value is changed to the minimum value. By default fit is false.
	**/
	public function setMin(value:Dynamic, ?fit:Bool = false):DateinputAPI;

	/**
		Sets the current date to the one given in the argument. Must be a JavaScript Date object. If the argument is empty and the calendar is opened then the calendar is moved to the month where the currently selected date is.
		Sets the current date.
	**/
	public function setValue(?dateOrYear:Dynamic, ?month:Int, ?day:Int):DateinputAPI;
	
	/** 
		Shows the calendar.
	**/
	public function show():DateinputAPI;
	
	/** 
		Goes to today.
	**/
	public function today():DateinputAPI;
}
