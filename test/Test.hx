import haxe.unit.*;
import js.*;
import js.jquery.*;

class Test {
	static public function main():Void {
		//log is 'prettier' than trace that does not includes source pos...
		var log = js.Browser.window.console.log;

		new JQuery(function(){
			var printBuf = new StringBuf();
			haxe.unit.TestRunner.print = printBuf.add;
			
			var runner = new TestRunner();
			runner.add(new TestExtern());
			#if test_plugin
			runner.add(new TestPlugin());
			#end
			runner.add(new TestExternGenerator());
			runner.add(new TestUtils());
			var success = runner.run();
			
			//report the test result back to phantom
			log(printBuf.toString());
			log("success:" + success);
		});
	}
}
