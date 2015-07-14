import haxe.unit.*;
import jQuery.*;

class TestOldExtern extends TestCase {
	public function test1():Void {
		var body = new JQuery("body");
		body.addClass("myclass");
		this.assertTrue(body.hasClass("myclass"));
		this.assertEquals(3.0, body.add("html").add("title").length);
	}

	public function test2():Void {
		var div = new JQuery("div#test2")[0];
		JQuery._static.data(div, "test", { first: 16, last: "pizza!" } );
		new JQuery("span:first").text(JQuery._static.data(div, "test").first);
		new JQuery("span:last").text(JQuery._static.data(div, "test").last);
		this.assertEquals("The values stored were 16 and pizza!",JQuery._static.trim(new JQuery(div).text()));
	}
	
	public function test3():Void {
		var d1 = new Deferred().resolve(1);
		var d2 = new Deferred().resolve(2);
		
		var result = 0;
		#if (haxe_ver <= 3.103)
			JQuery._static.when(d1).done(function (v1) result = v1);
			assertEquals(1, result);
		#else
			JQuery._static.when(d1, d2).done(function (v1, v2) result = v1 + v2);
			assertEquals(3, result);
		#end

		var result = 0;
		Reflect.callMethod(null, JQuery._static.when, [d1, d2])
			.done(function (v1, v2) result = v1 + v2);
		assertEquals(3, result);
	}

	public function testPromise():Void {
		var p:Promise = new Deferred().resolve(1).promise();
		assertEquals("resolved", p.state());
	}
	
	public function testForIn():Void {
		var bodyChildren = new JQuery("body>*");
		this.assertEquals(2.0, bodyChildren.length);
		for (ele in bodyChildren) {
			this.assertEquals(1, ele.nodeType);
		}
	}
}