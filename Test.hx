import haxe.unit.TestCase;
import haxe.unit.TestRunner;

import jQueryExtern.JQuery;

class Test extends TestCase{
	public function test1():Void {
		new JQuery("body").add("myclass");
	}

	static public function main():Void {
		var runner = new TestRunner();
		runner.add(new Test());
		runner.run();
	}
}
