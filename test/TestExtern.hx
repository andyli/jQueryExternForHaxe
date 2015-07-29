import js.jquery.*;
import js.jquery.Helper.*;
import haxe.unit.*;

class TestExtern extends TestCase {

    function testBasic() {
        var j = new JQuery("<div></div>");
        assertEquals(1, j.length);
    }

    function testRenamedStaticFields() {
        JQuery.each([123], function(i, e) {
            assertEquals(0, i);
            assertEquals(123, e);
        });
    }

    function testIterator() {
        var div = Lambda.find(new JQuery("<div></div>"), function(ele) return ele.tagName.toLowerCase() == "div");
        assertEquals("div", div.tagName.toLowerCase());
    }

    function testHelper() {
        var j = J("<div id='test'></div>");
        j.each(function(i,e){
            assertEquals("test", JTHIS.attr("id"));
        });
    }

}