package jQuery.plugins.jQueryTools;

import jQuery.JQuery;

/**
	Mousewheel
	http://flowplayer.org/tools/toolbox/mousewheel.html
**/

extern class Mousewheel {
	inline static public function mousewheel(jQ:JQuery, _callback:Event->Float->Void):Void untyped {
		jQ.mousewheel(_callback);
	}
}
