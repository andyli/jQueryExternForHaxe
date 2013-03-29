import haxe.unit.*;
import jQuery.*;

class TestPlugin extends TestCase {
	public function testInstanceMember():Void {
		this.assertEquals("dummy", new JQuery().dummyMethod());
		this.assertEquals(123,  new JQuery().dummyProperty);
	}
	
	public function testStaticMember():Void {
		this.assertEquals("static dummy", JQuery._static.staticDummyMethod());
		this.assertEquals(456, JQueryStatic.staticDummyProperty);
	}
}