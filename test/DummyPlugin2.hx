extern class DummyPlugin2
#if (haxe_ver >= 3.3)
implements js.jquery.haxe.Plugin
#else
implements jQuery.haxe.Plugin
#end
{
	inline public function dummyMethod2():String return "dummy";
}