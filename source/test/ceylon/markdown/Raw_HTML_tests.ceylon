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
shared class Raw_HTML() {
    String render(String md) {
        value sb = StringBuilder();
        value f = sb.append;
        for (node in renderPartialHtml(parse(md))) {
            assert(is Node node);
            renderTemplate(node, f);
        }
        return sb.string;
    }

    """Test for example 579 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-579"""
    test
    shared void specTest_Raw_HTML_579() {
        value md = "<a><bab><c2c>\n";
        value html = "<p><a><bab><c2c></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 580 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-580"""
    test
    shared void specTest_Raw_HTML_580() {
        value md = "<a/><b2/>\n";
        value html = "<p><a/><b2/></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 581 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-581"""
    test
    shared void specTest_Raw_HTML_581() {
        value md = "<a  /><b2\ndata=\"foo\" >\n";
        value html = "<p><a  /><b2\ndata=\"foo\" ></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 582 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-582"""
    test
    shared void specTest_Raw_HTML_582() {
        value md = "<a foo=\"bar\" bam = 'baz <em>\"</em>'\n_boolean zoop:33=zoop:33 />\n";
        value html = "<p><a foo=\"bar\" bam = 'baz <em>\"</em>'\n_boolean zoop:33=zoop:33 /></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 583 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-583"""
    test
    shared void specTest_Raw_HTML_583() {
        value md = "Foo <responsive-image src=\"foo.jpg\" />\n";
        value html = "<p>Foo <responsive-image src=\"foo.jpg\" /></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 584 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-584"""
    test
    shared void specTest_Raw_HTML_584() {
        value md = "<33> <__>\n";
        value html = "<p>&lt;33&gt; &lt;__&gt;</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 585 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-585"""
    test
    shared void specTest_Raw_HTML_585() {
        value md = "<a h*#ref=\"hi\">\n";
        value html = "<p>&lt;a h*#ref=&quot;hi&quot;&gt;</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 586 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-586"""
    test
    shared void specTest_Raw_HTML_586() {
        value md = "<a href=\"hi'> <a href=hi'>\n";
        value html = "<p>&lt;a href=&quot;hi'&gt; &lt;a href=hi'&gt;</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 587 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-587"""
    test
    shared void specTest_Raw_HTML_587() {
        value md = "< a><\nfoo><bar/ >\n";
        value html = "<p>&lt; a&gt;&lt;\nfoo&gt;&lt;bar/ &gt;</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 588 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-588"""
    test
    shared void specTest_Raw_HTML_588() {
        value md = "<a href='bar'title=title>\n";
        value html = "<p>&lt;a href='bar'title=title&gt;</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 589 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-589"""
    test
    shared void specTest_Raw_HTML_589() {
        value md = "</a></foo >\n";
        value html = "<p></a></foo ></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 590 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-590"""
    test
    shared void specTest_Raw_HTML_590() {
        value md = "</a href=\"foo\">\n";
        value html = "<p>&lt;/a href=&quot;foo&quot;&gt;</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 591 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-591"""
    test
    shared void specTest_Raw_HTML_591() {
        value md = "foo <!-- this is a\ncomment - with hyphen -->\n";
        value html = "<p>foo <!-- this is a\ncomment - with hyphen --></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 592 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-592"""
    test
    shared void specTest_Raw_HTML_592() {
        value md = "foo <!-- not a comment -- two hyphens -->\n";
        value html = "<p>foo &lt;!-- not a comment -- two hyphens --&gt;</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 593 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-593"""
    test
    shared void specTest_Raw_HTML_593() {
        value md = "foo <!--> foo -->\n\nfoo <!-- foo--->\n";
        value html = "<p>foo &lt;!--&gt; foo --&gt;</p>\n<p>foo &lt;!-- foo---&gt;</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 594 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-594"""
    test
    shared void specTest_Raw_HTML_594() {
        value md = "foo <?php echo $a; ?>\n";
        value html = "<p>foo <?php echo $a; ?></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 595 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-595"""
    test
    shared void specTest_Raw_HTML_595() {
        value md = "foo <!ELEMENT br EMPTY>\n";
        value html = "<p>foo <!ELEMENT br EMPTY></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 596 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-596"""
    test
    shared void specTest_Raw_HTML_596() {
        value md = "foo <![CDATA[>&<]]>\n";
        value html = "<p>foo <![CDATA[>&<]]></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 597 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-597"""
    test
    shared void specTest_Raw_HTML_597() {
        value md = "foo <a href=\"&ouml;\">\n";
        value html = "<p>foo <a href=\"&ouml;\"></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 598 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-598"""
    test
    shared void specTest_Raw_HTML_598() {
        value md = "foo <a href=\"\\*\">\n";
        value html = "<p>foo <a href=\"\\*\"></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 599 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-599"""
    test
    shared void specTest_Raw_HTML_599() {
        value md = "<a href=\"\\\"\">\n";
        value html = "<p>&lt;a href=&quot;&quot;&quot;&gt;</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

}
