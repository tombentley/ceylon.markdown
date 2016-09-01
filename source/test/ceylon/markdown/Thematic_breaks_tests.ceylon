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
shared class Thematic_breaks() {
    String render(String md) {
        value sb = StringBuilder();
        value f = sb.append;
        for (node in renderPartialHtml(parse(md))) {
            assert(is Node node);
            renderTemplate(node, f);
        }
        return sb.string;
    }

    """Test for example 13 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-13"""
    test
    shared void specTest_Thematic_breaks_13() {
        value md = "***\n---\n___\n";
        value html = "<hr />\n<hr />\n<hr />\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 14 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-14"""
    test
    shared void specTest_Thematic_breaks_14() {
        value md = "+++\n";
        value html = "<p>+++</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 15 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-15"""
    test
    shared void specTest_Thematic_breaks_15() {
        value md = "===\n";
        value html = "<p>===</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 16 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-16"""
    test
    shared void specTest_Thematic_breaks_16() {
        value md = "--\n**\n__\n";
        value html = "<p>--\n**\n__</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 17 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-17"""
    test
    shared void specTest_Thematic_breaks_17() {
        value md = " ***\n  ***\n   ***\n";
        value html = "<hr />\n<hr />\n<hr />\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 18 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-18"""
    test
    shared void specTest_Thematic_breaks_18() {
        value md = "    ***\n";
        value html = "<pre><code>***\n</code></pre>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 19 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-19"""
    test
    shared void specTest_Thematic_breaks_19() {
        value md = "Foo\n    ***\n";
        value html = "<p>Foo\n***</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 20 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-20"""
    test
    shared void specTest_Thematic_breaks_20() {
        value md = "_____________________________________\n";
        value html = "<hr />\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 21 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-21"""
    test
    shared void specTest_Thematic_breaks_21() {
        value md = " - - -\n";
        value html = "<hr />\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 22 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-22"""
    test
    shared void specTest_Thematic_breaks_22() {
        value md = " **  * ** * ** * **\n";
        value html = "<hr />\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 23 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-23"""
    test
    shared void specTest_Thematic_breaks_23() {
        value md = "-     -      -      -\n";
        value html = "<hr />\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 24 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-24"""
    test
    shared void specTest_Thematic_breaks_24() {
        value md = "- - - -    \n";
        value html = "<hr />\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 25 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-25"""
    test
    shared void specTest_Thematic_breaks_25() {
        value md = "_ _ _ _ a\n\na------\n\n---a---\n";
        value html = "<p>_ _ _ _ a</p>\n<p>a------</p>\n<p>---a---</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 26 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-26"""
    test
    shared void specTest_Thematic_breaks_26() {
        value md = " *-*\n";
        value html = "<p><em>-</em></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 27 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-27"""
    test
    shared void specTest_Thematic_breaks_27() {
        value md = "- foo\n***\n- bar\n";
        value html = "<ul>\n<li>foo</li>\n</ul>\n<hr />\n<ul>\n<li>bar</li>\n</ul>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 28 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-28"""
    test
    shared void specTest_Thematic_breaks_28() {
        value md = "Foo\n***\nbar\n";
        value html = "<p>Foo</p>\n<hr />\n<p>bar</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 29 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-29"""
    test
    shared void specTest_Thematic_breaks_29() {
        value md = "Foo\n---\nbar\n";
        value html = "<h2>Foo</h2>\n<p>bar</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 30 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-30"""
    test
    shared void specTest_Thematic_breaks_30() {
        value md = "* Foo\n* * *\n* Bar\n";
        value html = "<ul>\n<li>Foo</li>\n</ul>\n<hr />\n<ul>\n<li>Bar</li>\n</ul>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 31 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-31"""
    test
    shared void specTest_Thematic_breaks_31() {
        value md = "- Foo\n- * * *\n";
        value html = "<ul>\n<li>Foo</li>\n<li>\n<hr />\n</li>\n</ul>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

}
