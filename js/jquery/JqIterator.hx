package js.jquery;

class JqIterator {
	var j:JQuery;
	var i:Int;
	inline public function new(j:JQuery):Void {
		this.i = 0;
		this.j = j;
	}
	inline public function hasNext():Bool {
		return i < j.length;
	}
	inline public function next():js.html.Element {
		return this.j[i++];
	}

	static function __init__() {
		var typeofJQuery = #if (haxe_ver < 4) untyped __typeof__(JQuery) #else js.Syntax.typeof(JQuery) #end ;
		if (typeofJQuery != 'undefined' && JQuery.fn != null)
			JQuery.fn.iterator = function() return new JqIterator(js.Lib.nativeThis);
	}
}