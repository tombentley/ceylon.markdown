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
shared class Soft_line_breaks() {
    String render(String md) {
        value sb = StringBuilder();
        value f = sb.append;
        for (node in renderPartialHtml(parse(md))) {
            assert(is Node node);
            renderTemplate(node, f);
        }
        return sb.string;
    }

    """Test for example 615 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-615"""
    test
    shared void specTest_Soft_line_breaks_615() {
        value md = "foo\nbaz\n";
        value html = "<p>foo\nbaz</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 616 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-616"""
    test
    shared void specTest_Soft_line_breaks_616() {
        value md = "foo \n baz\n";
        value html = "<p>foo\nbaz</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

}
