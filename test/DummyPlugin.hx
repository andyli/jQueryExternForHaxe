extern class DummyPlugin 
#if (haxe_ver >= 3.3)
implements js.jquery.haxe.Plugin
#else
implements jQuery.haxe.Plugin
#end
{
	inline public function dummyMethod():JQuery return this;
	public var dummyProperty(get,null):Int;
	inline public function get_dummyProperty():Int return 123;
	
	inline static public function staticDummyMethod():String return "static dummy";
	inline static public var staticDummyProperty:Int = 456;
}