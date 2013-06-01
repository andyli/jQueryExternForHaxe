import haxe.unit.*;
import js.phantomjs.*;
import js.*;
import jQuery.*;

class Test extends TestCase {
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
		var d = new Deferred().done(function () assertTrue(true));
		d.resolve();
	}
	
	public function testForIn():Void {
		var bodyChildren = new JQuery("body>*");
		this.assertEquals(2.0, bodyChildren.length);
		for (ele in bodyChildren) {
			this.assertEquals(1, ele.nodeType);
		}
	}
	
	static public function main():Void {
		//log is 'prettier' than trace that does not includes source pos...
		var log = js.Browser.window.console.log;
		
		if (!PhantomTools.noPhantom()) {
			//setup a server to serve html
			var port = 8080;
			var server = WebServer.create();
			server.listen(port, function(request:Request, response:Response):Void {
				var fullpath = Phantom.libraryPath + request.url;
				if (FileSystem.exists(fullpath)) {
					response.statusCode = 200;
					response.write(FileSystem.read(fullpath));
					response.close();
				} else {
					response.statusCode = 404;
					response.close();
				}
			});
			
			//open the test page which loads this script
			var page = WebPage.create();
			
			//receive the test result
			page.onConsoleMessage = function(msg:String):Void {
				if (StringTools.startsWith(msg, "success:")) {
					var success = msg.substr("success:".length) == "true";
					Phantom.exit(success ? 0 : 1);
				} else {
					log(msg);
				}
			}
			
			page.open('http://localhost:${port}/test.html', function(status) {
				if (status != "success") {
					Phantom.exit(1);
				}
			});
		} else {
			new JQuery(function(){
				var printBuf = new StringBuf();
				haxe.unit.TestRunner.print = printBuf.add;
				
				var runner = new TestRunner();
				runner.add(new Test());
				runner.add(new TestPlugin());
				runner.add(new TestCoreExternGenerator());
				runner.add(new TestUtils());
				var success = runner.run();
				
				//report the test result back to phantom
				log(printBuf.toString());
				log("success:" + success);
			});
		}
	}
}
