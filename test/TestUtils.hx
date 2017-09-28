import js.jquery.Utils;
import utest.*;
using Std;

class TestUtils {
	public function new() {};

	function testCompareVersion():Void {
		var v = Utils.parseStringVersion("1.8.2");
		Assert.equals(0, Utils.compareVersion(v, Utils.parseStringVersion("1.8.2")));
		Assert.equals(1, Utils.compareVersion(v, Utils.parseStringVersion("1.8.1")));
		Assert.equals(-1, Utils.compareVersion(v, Utils.parseStringVersion("1.8.3")));
	}

	function test_parseIntVersion():Void {
		Assert.equals([1, 11, 3].string(), Utils.parseIntVersion(11103).string());
	}

	function test_versionToInt():Void {
		Assert.equals(11103, Utils.versionToInt([1, 11, 3]));
	}
}