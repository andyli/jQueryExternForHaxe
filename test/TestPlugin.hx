import js.jquery.*;
import utest.*;

class TestPlugin {
	public function new() {};

	public function testInstanceMember():Void {
		var j = new JQuery();
		Assert.equals(j, j.dummyMethod());
		Assert.equals(123,  new JQuery().dummyProperty);
	}
	
	public function testStaticMember():Void {
		#if (haxe_ver >= 3.3)
		Assert.equals("static dummy", JQuery.staticDummyMethod());
		Assert.equals(456, JQuery.staticDummyProperty);
		#else
		Assert.equals("static dummy", JQuery._static.staticDummyMethod());
		Assert.equals(456, JQueryStatic.staticDummyProperty);
		#end
	}

	public function testInstanceMember2():Void {
		Assert.equals("dummy", new JQuery().dummyMethod2());
	}
}