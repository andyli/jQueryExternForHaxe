package jQuery.plugins.jQueryTools;

import jQuery.JQuery;

/**
	History
	http://flowplayer.org/tools/toolbox/history.html
**/

extern class History {
	inline static public function history(jQ:JQuery, _callback:Event->String->Void):Void untyped {
		jQ.history(_callback);
	}
}
