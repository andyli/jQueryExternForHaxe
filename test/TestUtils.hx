import haxe.unit.*;
import jQuery.haxe.Utils;

class TestUtils extends TestCase {
	public function testCompareVersion():Void {
		var v = Utils.toVersion("1.8.2");
		this.assertEquals(0, Utils.compareVersion(v, Utils.toVersion("1.8.2")));
		this.assertEquals(1, Utils.compareVersion(v, Utils.toVersion("1.8.1")));
		this.assertEquals(-1, Utils.compareVersion(v, Utils.toVersion("1.8.3")));
	}
}