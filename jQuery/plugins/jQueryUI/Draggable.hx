package jQuery.plugins.jQueryUI;

import jQuery.JQuery;

/**
	Draggable
	http://jqueryui.com/demos/draggable/
**/

extern class Draggable {
	inline static public function draggable(jQ:JQuery, configuration:Dynamic):JQuery untyped {
		return jQ.draggable(configuration);
	}
	
	/**
	 * Remove the draggable functionality completely. This will return the element back to its pre-init state.
	 */
	inline static public function draggableDestroy(jQ:JQuery):JQuery untyped {
		return jQ.draggable("destroy");
	}
	
	/**
	 * Disable the draggable.
	 */
	inline static public function draggableDisable(jQ:JQuery):JQuery untyped {
		return jQ.draggable("disable");
	}
	
	/**
	 * Enable the draggable.
	 */
	inline static public function draggableEnable(jQ:JQuery):JQuery untyped {
		return jQ.draggable("enable");
	}
	
	/**
	 * Get any draggable option
	 */
	inline static public function draggableOptionGet(jQ:JQuery, optionName:String):Dynamic untyped {
		return jQ.draggable("option", optionName);
	}
	
	/**
	 * Set any draggable option
	 */
	inline static public function draggableOptionSet(jQ:JQuery, optionName:String, value:Dynamic):JQuery untyped {
		return jQ.draggable("option", optionName, value);
	}
	
	/**
	 * Returns the .ui-draggable element.
	 */
	inline static public function draggableWidget(jQ:JQuery):JQuery untyped {
		return jQ.draggable("widget");
	}
}
