import ceylon.test{test,assertEquals}
import ceylon.markdown.core{parse}
import ceylon.markdown.html{renderPartialHtml}
import ceylon.html{renderTemplate,Node}

/*
  The code in this file was generated by the make_tests.py script
  You might want to run it from time to time
  to keep these tests up to date with the latest
  commonmark spec tests
*/
shared class Textual_content() {
    String render(String md) {
        value sb = StringBuilder();
        value f = sb.append;
        for (node in renderPartialHtml(parse(md))) {
            assert(is Node node);
            renderTemplate(node, f);
        }
        return sb.string;
    }

    """Test for example 617 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-617"""
    test
    shared void specTest_Textual_content_617() {
        value md = "hello $.;'there\n";
        value html = "<p>hello $.;'there</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 618 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-618"""
    test
    shared void specTest_Textual_content_618() {
        value md = "Foo χρῆν\n";
        value html = "<p>Foo χρῆν</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 619 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-619"""
    test
    shared void specTest_Textual_content_619() {
        value md = "Multiple     spaces\n";
        value html = "<p>Multiple     spaces</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

}
