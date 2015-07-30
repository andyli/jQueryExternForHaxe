import haxe.unit.*;
import js.jquery.haxe.Utils;
using Std;

class TestUtils extends TestCase {
	function testCompareVersion():Void {
		var v = Utils.parseStringVersion("1.8.2");
		this.assertEquals(0, Utils.compareVersion(v, Utils.parseStringVersion("1.8.2")));
		this.assertEquals(1, Utils.compareVersion(v, Utils.parseStringVersion("1.8.1")));
		this.assertEquals(-1, Utils.compareVersion(v, Utils.parseStringVersion("1.8.3")));
	}

	function test_parseIntVersion():Void {
		assertEquals([1, 11, 3].string(), Utils.parseIntVersion(11103).string());
	}

	function test_versionToInt():Void {
		assertEquals(11103, Utils.versionToInt([1, 11, 3]));
	}
}