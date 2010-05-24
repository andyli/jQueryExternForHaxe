import haxe.unit.TestCase;
import haxe.unit.TestRunner;

import jQ.JQuery;
using jQ.TypedJQuery;

class Test extends TestCase{
	public function test1():Void {
		var body = new JQuery("body");
		body.addClass("myclass");
		this.assertTrue(body.hasClass("myclass"));
		this.assertEquals(3,body.add0("html").add0("title").size());
	}

	public function test2():Void {
		var div = new JQuery("div#test2")[0];
		JQueryS.data(div, "test", { first: 16, last: "pizza!" });
		new JQuery("span:first").text(JQueryS.data(div, "test").first);
		new JQuery("span:last").text(JQueryS.data(div, "test").last);
		this.assertEquals("The values stored were 16 and pizza!",JQueryS.trim(new JQuery(div).text()));
	}

	static public function main():Void {
		new JQuery(function():Void{
			var runner = new TestRunner();
			runner.add(new Test());
			runner.run();
		});
	}
}
