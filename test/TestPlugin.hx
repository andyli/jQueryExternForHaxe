import haxe.unit.*;

#if (haxe_ver >= 3.3)
import js.jquery.*;
#else
import jQuery.*;
#end

class TestPlugin extends TestCase {
	public function testInstanceMember():Void {
		var j = new JQuery();
		this.assertEquals(j, j.dummyMethod());
		this.assertEquals(123,  new JQuery().dummyProperty);
	}
	
	public function testStaticMember():Void {
		#if (haxe_ver >= 3.3)
		this.assertEquals("static dummy", JQuery.staticDummyMethod());
		this.assertEquals(456, JQuery.staticDummyProperty);
		#else
		this.assertEquals("static dummy", JQuery._static.staticDummyMethod());
		this.assertEquals(456, JQueryStatic.staticDummyProperty);
		#end
	}

	public function testInstanceMember2():Void {
		this.assertEquals("dummy", new JQuery().dummyMethod2());
	}
}