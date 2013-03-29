import haxe.unit.*;
import jQuery.haxe.gen.CoreExternGenerator;

class TestCoreExternGenerator extends TestCase {
	public function testCompareComplexType():Void {
		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Dynamic, macro:Void) > 0);
	}
}