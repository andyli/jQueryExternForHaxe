import js.jquery.ExternGenerator;
import utest.*;
using Lambda;

class TestExternGenerator {
	public function new() {};

	public function testCompareComplexType():Void {
		Assert.isTrue(ExternGenerator.compareComplexType(macro:Dynamic, macro:Void) > 0);
		Assert.isTrue(ExternGenerator.compareComplexType(macro:Dynamic, macro:String) > 0);
		Assert.isTrue(ExternGenerator.compareComplexType(macro:Dynamic, macro:Int) > 0);
		Assert.isTrue(ExternGenerator.compareComplexType(macro:Dynamic, macro:Float) > 0);
		
		Assert.isTrue(ExternGenerator.compareComplexType(macro:Dynamic<String>, macro:Void) > 0);
		Assert.isTrue(ExternGenerator.compareComplexType(macro:Dynamic<String>, macro:String) > 0);
		Assert.isTrue(ExternGenerator.compareComplexType(macro:Dynamic<String>, macro:Int) > 0);
		Assert.isTrue(ExternGenerator.compareComplexType(macro:Dynamic<String>, macro:Float) > 0);

		Assert.isTrue(ExternGenerator.compareComplexType(macro:Dynamic, macro:Dynamic<String>) > 0);
		
		Assert.isTrue(ExternGenerator.compareComplexType(macro:Float, macro:Int) > 0);
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
		
		sorted.sort(ExternGenerator.compareComplexType);
		
		Assert.equals(
			"2,4,3,6,5,1,0",
			sorted.map(function(_) return types.indexOf(_)).toString()
		);
		
		sorted.sort(function(a,b) return -ExternGenerator.compareComplexType(a,b));
		Assert.equals(
			"0,1,5,6,3,4,2",
			sorted.map(function(_) return types.indexOf(_)).toString()
		);
	}
	
	public function testCompareFunctions():Void {
		var funcs = [
			ExternGenerator.funcSig(function(a:Int, b:Int){}),
			ExternGenerator.funcSig(function(a:Int){}),
		];
		var sorted = funcs.copy();
		sorted.sort(ExternGenerator.compareFunctions);
		Assert.equals(funcs[1], sorted[0]);

		var funcs = [
			ExternGenerator.funcSig(function(a:Int, b:Int){}),
			ExternGenerator.funcSig(function(a:Int, b:Float){}),
		];
		var sorted = funcs.copy();
		sorted.sort(ExternGenerator.compareFunctions);
		Assert.equals(funcs[0], sorted[0]);
		sorted.sort(function(a,b) return -ExternGenerator.compareFunctions(a,b));
		Assert.equals(funcs[1], sorted[0]);
	}
}