package jQuery.haxe;

using StringTools;

@:native("jQuery_haxe_Utils")
class Utils {
	static public function toVersion(v:String):Array<Int> {
		return v.split(".").map(Std.parseInt);
	}
	
	static public function compareVersion(v0:Array<Int>, v1:Array<Int>):Int {
		var i:Int = 0,
		    d:Int;
		
		while (i < v0.length && i < v1.length) {
			if ((d = v0[i] - v1[i]) != 0)
				return d;
			else
				++i;
		}
		
		return 0;
	}
}