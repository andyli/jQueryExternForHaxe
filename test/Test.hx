import haxe.unit.*;
import js.phantomjs.*;

import jQuery.*;

@:expose
class Test extends TestCase {
	public function test1():Void {
		var body = new JQuery("body");
		body.addClass("myclass");
		this.assertTrue(body.hasClass("myclass"));
		this.assertEquals(3.0, body.add("html").add("title").size());
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
	
	static public var result:TestResult;
	static public function main():Void {
		if (PhantomTools.inPhantom()) {
			var page = WebPage.create();
			
			function checkResult():Void {
				result = page.evaluate(function() return Test.result);
				if (result == null) {
					haxe.Timer.delay(checkResult, 10);
				} else {
					//trace test output, note that toString has to be called inside the page
					trace(page.evaluate(function() return Test.result.toString()));
			
					Phantom.exit(result.success ? 0 : 1);
				}
			}
			
			page.open("http://localhost:2000/test.html", function(status) {
				if (status != "success") {
					Phantom.exit(1);
				} else {
					checkResult();
				}
			});
		} else {
			new JQuery(function(){
				var runner = new TestRunner();
				runner.add(new Test());
				runner.add(new TestPlugin());
				runner.add(new TestCoreExternGenerator());
				runner.run();
				result = untyped runner.result;
			});
		}
	}
}
