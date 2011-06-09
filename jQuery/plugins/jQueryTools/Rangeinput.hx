package jQuery.plugins.jQueryTools;

import jQuery.JQuery;

/**
	Rangeinput
	http://flowplayer.org/tools/rangeinput/index.html
**/

extern class Rangeinput {
	inline static public function rangeinput(jQ:JQuery, configuration:Dynamic):JQuery untyped {
		return jQ.rangeinput(configuration);
	}

	inline static public function getRangeinputAPI(jQ:JQuery):RangeinputAPI untyped {
		return jQ.data("rangeinput");
	}
}

extern class RangeinputAPI {
	/**
		Returns the configuration of the current instance.
	**/
	public function getConf():Dynamic;
	
	/**
		Returns the drag handle element.
	**/
	public function getHandle():JQuery;

	/**
		Returns the input element.
	**/
	public function getInput():JQuery;

	/**
		Returns the progress element. The one that "follows" the handle.
	**/
	public function getProgress():JQuery;
	
	/** 
		Returns the current value of the range.
	**/
	public function getValue():Float;
	
	/** 
		Advance to the next step (value).
	**/
	public function next():RangeinputAPI;
	
	/** 
		Return to the previous step (value).
	**/
	public function prev():RangeinputAPI;

	/**
		Sets the range value to the one specified in the argument.
	**/
	public function setValue(value:Float):RangeinputAPI;

	/**
		Earliest selectable range. See supplying range values. If the fit argument is true and the current value is earlier than the minimum value then the current value is changed to the minimum value. By default fit is false.
	**/
	public function setMin(value:Dynamic, ?fit:Bool = false):RangeinputAPI;

	/**
		Changes the range value by the value given in the step configuration option multiplied by amount. The default amount is 1. A negative value decreases the value and a positive value increases it.
	**/
	public function step(amount:Float):RangeinputAPI;

	/**
		Decreases the value with the amount of steps given in the argument. identical to step(-amount).
	**/
	public function stepDown(amount:Float):RangeinputAPI;

	/**
		Increases the value with the amount of steps given in the argument. identical to step(amount).
	**/
	public function stepUp(amount:Float):RangeinputAPI;
}
