import haxe.macro.Context;
import js.jquery.*;
import js.jquery.Helper.*;
import utest.*;

class TestExtern {
    public function new() {};

    function testBasic() {
        var j = new JQuery("<div></div>");
        Assert.equals(1, j.length);
    }

    function testRenamedStaticFields() {
        JQuery.each([123], function(i, e) {
            Assert.equals(0, i);
            Assert.equals(123, e);
        });
    }

    function testIterator() {
        var div = Lambda.find(new JQuery("<div></div>"), function(ele) return ele.tagName.toLowerCase() == "div");
        Assert.equals("div", div.tagName.toLowerCase());
    }

    function testHelper() {
        var j = J("<div id='test'></div>");
        j.each(function(i,e){
            Assert.equals("test", JTHIS.attr("id"));
        });
    }

    function testVersion() {
        var versionStr:String = JQuery.fn.jquery;
        var v = versionStr.split(".");
        Assert.equals(3, v.length);
        var versionFormatted = v[0] + StringTools.lpad(v[1], "0", 2) + StringTools.lpad(v[2], "0", 2);
        var versionAsInt = Std.parseInt(versionFormatted);
        var definedVersionAsInt = Std.parseInt(haxe.macro.Compiler.getDefine("jquery_ver"));

        Assert.isTrue(versionAsInt > 0);
        Assert.isTrue(definedVersionAsInt > 0);

        // For Haxe 3, in which std lib has its own jQuery extern, jquery_ver is already defined as its supported version.
        // For Haxe 4, in which the std jQuery extern is removed, jquery_ver is defined as jQueryExtern's supported version.
        // In general, we can just test whether the test runtime loaded jQuery is more updated than the extern version.
        Assert.isTrue(versionAsInt >= definedVersionAsInt);
    }
}