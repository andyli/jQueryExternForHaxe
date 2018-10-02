package js.jquery;

class JqEltsIterator {
	var j:JQuery;
	var i:Int;
	inline public function new(j:JQuery):Void {
		this.i = 0;
		this.j = j;
	}
	inline public function hasNext():Bool {
		return i < j.length;
	}
	inline public function next():JQuery {
		return new JQuery(this.j[i++]);
	}

	static function __init__() {
		var typeofJQuery = #if (haxe_ver < 4) untyped __typeof__(JQuery) #else js.Syntax.typeof(JQuery) #end ;
		if (typeofJQuery != 'undefined' && JQuery.fn != null)
			JQuery.fn.elements = function() return new JqEltsIterator(js.Lib.nativeThis);
	}
}