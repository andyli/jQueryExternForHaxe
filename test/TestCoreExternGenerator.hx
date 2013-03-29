import haxe.unit.*;
import jQuery.haxe.gen.CoreExternGenerator;

class TestCoreExternGenerator extends TestCase {
	public function testCompareComplexType():Void {
		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Dynamic, macro:Void) > 0);
		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Dynamic, macro:String) > 0);
		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Dynamic, macro:Int) > 0);
		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Dynamic, macro:Float) > 0);
		
		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Dynamic<String>, macro:Void) > 0);
		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Dynamic<String>, macro:String) > 0);
		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Dynamic<String>, macro:Int) > 0);
		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Dynamic<String>, macro:Float) > 0);

		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Dynamic, macro:Dynamic<String>) > 0);
		
		this.assertTrue(CoreExternGenerator.compareComplexType(macro:Float, macro:Int) > 0);
	}
	
	public function testCompareComplexTypeSorting():Void {
		var types = [
			macro:Dynamic,
			macro:Dynamic<String>,
			macro:String,
			macro:Float,
			macro:Int,
			macro:{a:Int},
			macro:{a:Int, b:Int}
		];
		var printer = new haxe.macro.Printer();
		
		types.sort(CoreExternGenerator.compareComplexType);
		
		this.assertEquals(
			"String,Int,Float,{var a:Int;var b:Int;},{var a:Int;},Dynamic<String>,Dynamic",
			types.map(printer.printComplexType).toString()
		);
		
		types.sort(function(a,b) return -CoreExternGenerator.compareComplexType(a,b));
		this.assertEquals(
			"Dynamic,Dynamic<String>,{var a:Int;},{var a:Int;var b:Int;},Float,Int,String",
			types.map(printer.printComplexType).toString().split("\n").join("")
		);
	}
}