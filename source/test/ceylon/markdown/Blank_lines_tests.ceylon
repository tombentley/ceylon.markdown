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
shared class Blank_lines() {
    String render(String md) {
        value sb = StringBuilder();
        value f = sb.append;
        for (node in renderPartialHtml(parse(md))) {
            assert(is Node node);
            renderTemplate(node, f);
        }
        return sb.string;
    }

    """Test for example 188 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-188"""
    test
    shared void specTest_Blank_lines_188() {
        value md = "  \n\naaa\n  \n\n# aaa\n\n  \n";
        value html = "<p>aaa</p>\n<h1>aaa</h1>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

}
