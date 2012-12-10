import haxe.unit.TestCase;
import haxe.unit.TestRunner;

import jQuery.*;

class Test extends TestCase{
	public function test1():Void {
		var body = new JQuery("body");
		body.addClass("myclass");
		this.assertTrue(body.hasClass("myclass"));
		this.assertEquals(3, body.add("html").add("title").size());
	}

	public function test2():Void {
		var div = new JQuery("div#test2")[0];
		JQuery._static.data(div, "test", { first: 16, last: "pizza!" } );
		new JQuery("span:first").text(JQuery._static.data(div, "test").first);
		new JQuery("span:last").text(JQuery._static.data(div, "test").last);
		this.assertEquals("The values stored were 16 and pizza!",JQuery._static.trim(new JQuery(div).text()));
	}
	
	public function test3():Void {
		var me = this;
		var d = new Deferred().done(function () me.assertTrue(true));
		d.resolve();
	}

	static public function main():Void {
		new JQuery(function():Void{
			var runner = new TestRunner();
			runner.add(new Test());
			runner.run();
		});
	}
}
