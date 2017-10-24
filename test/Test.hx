import utest.*;
import js.*;
import js.jquery.*;

class Test {
	static function main():Void {
		#if hxnodejs
			var runner = new Runner();
			runner.addCase(new TestNode());
			var report = utest.ui.Report.create(runner);
			runner.run();
		#else
			new JQuery(function(){
				var runner = new Runner();
				runner.addCase(new TestExtern());
				#if test_plugin
				runner.addCase(new TestPlugin());
				#end
				runner.addCase(new TestExternGenerator());
				runner.addCase(new TestUtils());
				var report = utest.ui.Report.create(runner);
				runner.run();
			});
		#end
	}
}
