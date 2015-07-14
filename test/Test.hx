import haxe.unit.*;
import js.phantomjs.*;
import js.*;
import jQuery.*;

class Test {
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
				runner.add(new TestOldExtern());
				#if (haxe_ver >= 3.3)
				runner.add(new TestNewExtern());
				#end
				#if test_plugin
				runner.add(new TestPlugin());
				#end
				#if (haxe_ver >= 3.2)
				runner.add(new TestCoreExternGenerator());
				#end
				runner.add(new TestUtils());
				var success = runner.run();
				
				//report the test result back to phantom
				log(printBuf.toString());
				log("success:" + success);
			});
		}
	}
}
