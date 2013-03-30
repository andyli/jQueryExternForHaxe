extern class DummyPlugin implements jQuery.haxe.Plugin {
	inline public function dummyMethod():String return "dummy";
	public var dummyProperty(get,null):Int;
	inline public function get_dummyProperty():Int return 123;
	
	inline static public function staticDummyMethod():String return "static dummy";
	inline static public var staticDummyProperty:Int = 456;
}