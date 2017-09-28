import js.phantomjs.*;

class PhantomRunner {
	static public function main():Void {
		//log is 'prettier' than trace that does not includes source pos...
		var log = js.Browser.window.console.log;

		//setup a server to serve html
		var port = 8088;
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
			log(msg);
			var success = msg.indexOf("success: true") >= 0;
			Phantom.exit(success ? 0 : 1);
		}
		
		page.open('http://localhost:${port}/test.html', function(status) {
			if (status != "success") {
				Phantom.exit(1);
			}
		});
	}
}