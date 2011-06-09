package jQuery.plugins.jQueryTools;

import jQuery.JQuery;

/**
	Validator
	http://flowplayer.org/tools/validator/index.html
**/

extern class Validator {
	inline static public function validator(jQ:JQuery, configuration:Dynamic):JQuery untyped {
		return jQ.validator(configuration);
	}

	inline static public function getValidatorAPI(jQ:JQuery):ValidatorAPI untyped {
		return jQ.data("validator");
	}
	
	inline static public var _static = ValidatorStatic;
}

extern class ValidatorStatic {
	inline static public function localize(lang:String, configuration:Dynamic):Void untyped {
		JQueryStatic.tools.validator.localize(lang, configuration);
	}
	
	inline static public function localizeFn(inputType:String, configuration:Dynamic):Void untyped {
		JQueryStatic.tools.validator.localizeFn(inputType, configuration);
	}
	
	inline static public function fn(matcher:Dynamic, errorMsg:Dynamic, validator:Dynamic):Void untyped {
		JQueryStatic.tools.validator.fn(matcher, errorMsg, func);
	}

	inline static public function addEffect(name:String, showfunc:Dynamic, hidefunc:Dynamic):Void untyped {
		JQueryStatic.tools.validator.addEffect(name, showfunc, hidefunc);
	}
}

extern class ValidatorAPI {
	/** 
		Performs the form validation routine.
	**/
	public function checkValidity():Bool;

	/**
		Since 1.2.3 completely removes existing validator instance.
	**/
	public function destroy():ValidatorAPI;

	/**
		Returns the configuration of the current instance.
	**/
	public function getConf():Dynamic;
	
	/**
		Returns the form element associated with the validator. May be null.
	**/
	public function getForm():Null<JQuery>;

	/**
		Returns all input fields associated with the validator.
	**/
	public function getInputs():JQuery;

	/**
		Invalidates the form with the error messages given in the argument. Causes the onFail event and input specific ininvalid events to be fired. This function is useful for server-side integration.
	**/
	public function invalidate(obj:Dynamic):ValidatorAPI;
	
	/** 
		since 1.2.2 resets the input fields that given in argument. This is opposite to the invalidate method making the fields valid. If no fields are give then all inputs are made valid. If you have a reset button on your form this reset function is automatically bind to it.
	**/
	public function reset(jQuery:JQuery):ValidatorAPI;
}
