import js.jquery.*;
import utest.*;

#if (haxe_ver >= 4)
import js.lib.Promise;
#else
import js.Promise;
#end

@:jsRequire("jsdom", "JSDOM")
extern class JSDOM implements Dynamic {
    public function new(str:String, ?options:Dynamic):Void;

    static public function fromURL(url:String, ?options:Dynamic):Promise<Dynamic>;
    static public function fromFile(url:String, ?options:Dynamic):Promise<Dynamic>;
}

class TestNode {
    public function new():Void {}
    function test():Void {
        var dom = new JSDOM("<html></html>");
        var window = dom.window;
        var j = new JQuery(window);
        Assert.notNull(j);
    }
}