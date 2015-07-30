package js.jquery;

using Std;
using StringTools;

@:noPackageRestrict
class Utils {
	static public function parseStringVersion(v:String):Array<Int> {
		return v.split(".").map(Std.parseInt);
	}

	static public function parseIntVersion(v:Int):Array<Int> {
		var major = (v/10000).int();
		var minor = ((v - major * 10000) / 100).int();
		var patch = v - major * 10000 - minor * 100;
		return [major, minor, patch];
	}

	static public function versionToInt(v:Array<Int>):Int {
		return v[0] * 10000 + v[1] * 100 + v[2];
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