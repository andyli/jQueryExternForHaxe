package jQuery.plugins.jQueryUI;

import jQuery.JQuery;

/**
	Datepicker
	http://jqueryui.com/demos/datepicker/
**/

extern class Datepicker {
	inline static public function datepicker(jQ:JQuery, configuration:Dynamic):JQuery untyped {
		return jQ.datepicker(configuration);
	}
	
	/**
	 * Remove the datepicker functionality completely. This will return the element back to its pre-init state.
	 */
	inline static public function datepickerDestroy(jQ:JQuery):JQuery untyped {
		return jQ.datepicker("destroy");
	}
	
	/**
	 * Disable the datepicker.
	 */
	inline static public function datepickerDisable(jQ:JQuery):JQuery untyped {
		return jQ.datepicker("disable");
	}
	
	/**
	 * Enable the datepicker.
	 */
	inline static public function datepickerEnable(jQ:JQuery):JQuery untyped {
		return jQ.datepicker("enable");
	}
	
	/**
	 * Get any datepicker option
	 */
	inline static public function datepickerOptionGet(jQ:JQuery, optionName:String):Dynamic untyped {
		return jQ.datepicker("option", optionName);
	}
	
	/**
	 * Set any datepicker option
	 */
	inline static public function datepickerOptionSet(jQ:JQuery, optionName:String, value:Dynamic):JQuery untyped {
		return jQ.datepicker("option", optionName, value);
	}
	
	/**
	 * Returns the .ui-datepicker element.
	 */
	inline static public function datepickerWidget(jQ:JQuery):JQuery untyped {
		return jQ.datepicker("widget");
	}
	
	/**
	 * Open a datepicker in a "dialog" box.
	 * dateText: the initial date for the date picker as either a Date or a string in the current date format.
	 * onSelect: A callback function when a date is selected. The function receives the date text and date picker instance as parameters.
	 * settings: The new settings for the date picker.
	 * pos: The position of the top/left of the dialog as [x, y] or a MouseEvent that contains the coordinates. If not specified the dialog is centered on the screen.
	 */
	inline static public function datepickerDialog(jQ:JQuery, date:Dynamic, onSelect:Dynamic , settings:Dynamic , pos:Dynamic):JQuery untyped {
		return jQ.datepicker("dialog", date, onSelect , settings , pos);
	}
	
	/**
	 * Determine whether a date picker has been disabled.
	 */
	inline static public function datepickerIsDisabled(jQ:JQuery):JQuery untyped {
		return jQ.datepicker("isDisabled");
	}
	
	/**
	 * Close a previously opened date picker.
	 */
	inline static public function datepickerHide(jQ:JQuery):JQuery untyped {
		return jQ.datepicker("hide");
	}
	
	/**
	 * Call up a previously attached date picker.
	 */
	inline static public function datepickerShow(jQ:JQuery):JQuery untyped {
		return jQ.datepicker("show");
	}
	
	/**
	 * Redraw a date picker, after having made some external modifications.
	 */
	inline static public function datepickerRefresh(jQ:JQuery):JQuery untyped {
		return jQ.datepicker("refresh");
	}
	
	/**
	 * Returns the current date for the datepicker or null if no date has been selected.
	 */
	inline static public function datepickerGetDate(jQ:JQuery):Null<Date> untyped {
		return jQ.datepicker("getDate");
	}
	
	/**
	 * Sets the current date for the datepicker. The new date may be a Date object or a string in the current date format (e.g. '01/26/2009'), a number of days from today (e.g. +7) or a string of values and periods ('y' for years, 'm' for months, 'w' for weeks, 'd' for days, e.g. '+1m +7d'), or null to clear the selected date.
	 */
	inline static public function datepickerSetDate(jQ:JQuery, date:Date):JQuery untyped {
		return jQ.datepicker("setDate");
	}
}
