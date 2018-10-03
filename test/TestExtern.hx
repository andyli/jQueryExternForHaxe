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
        Assert.equals(haxe.macro.Compiler.getDefine("jquery_ver"), v[0] + StringTools.lpad(v[1], "0", 2) + StringTools.lpad(v[2], "0", 2));
    }
}