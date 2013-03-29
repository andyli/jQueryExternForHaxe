import haxe.unit.*;
import jQuery.haxe.gen.CoreExternGenerator;
using Lambda;

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
			macro:Dynamic,         //0
			macro:Dynamic<String>, //1
			macro:String,          //2
			macro:Float,           //3
			macro:Int,             //4
			macro:{a:Int},         //5
			macro:{a:Int, b:Int}   //6
		];
		var sorted = types.copy();
		
		sorted.sort(CoreExternGenerator.compareComplexType);
		
		this.assertEquals(
			"2,4,3,6,5,1,0",
			sorted.map(types.indexOf).toString()
		);
		
		sorted.sort(function(a,b) return -CoreExternGenerator.compareComplexType(a,b));
		this.assertEquals(
			"0,1,5,6,3,4,2",
			sorted.map(types.indexOf).toString()
		);
	}
	
	public function testCompareFunctions():Void {
		var funcs = [
			CoreExternGenerator.funcSig(function(a:Int, b:Int){}),
			CoreExternGenerator.funcSig(function(a:Int){}),
		];
		var sorted = funcs.copy();
		sorted.sort(CoreExternGenerator.compareFunctions);
		this.assertEquals(funcs[1], sorted[0]);

		var funcs = [
			CoreExternGenerator.funcSig(function(a:Int, b:Int){}),
			CoreExternGenerator.funcSig(function(a:Int, b:Float){}),
		];
		var sorted = funcs.copy();
		sorted.sort(CoreExternGenerator.compareFunctions);
		this.assertEquals(funcs[0], sorted[0]);
		sorted.sort(function(a,b) return -CoreExternGenerator.compareFunctions(a,b));
		this.assertEquals(funcs[1], sorted[0]);
	}
}