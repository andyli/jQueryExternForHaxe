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

}