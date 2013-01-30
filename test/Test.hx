import haxe.unit.TestCase;
import haxe.unit.TestRunner;

import jQuery.JQuery;

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

	public function testCsses():Void {
		var values:Hash<String> = cast({
			"border-style": "solid",
			"border-color": "rgb(0,255,0)",
			"border-width": "2px",
		});

		new JQuery("body").css(values);

		this.assertEquals("solid", new JQuery("body").css("border-style"));
		this.assertEquals("rgb(0, 255, 0)", new JQuery("body").css("border-color"));
		this.assertEquals("2px", new JQuery("body").css("border-width"));
	}

	public function testAattrs():Void {
		var values:Hash<String> = cast({
			"id": "test5-1",
			"name": "test5-2",
			"href": "http://example.com",
		});

		new JQuery("a").attr(values);

		this.assertEquals("test5-1", new JQuery("a").attr("id"));
		this.assertEquals("test5-2", new JQuery("a").attr("name"));
		this.assertEquals("http://example.com", new JQuery("a").attr("href"));
	}

	static public function main():Void {
		new JQuery(function():Void{
			var runner = new TestRunner();
			runner.add(new Test());
			runner.run();
		});
	}
}
