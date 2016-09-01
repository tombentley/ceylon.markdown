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
shared class Backslash_escapes() {
    String render(String md) {
        value sb = StringBuilder();
        value f = sb.append;
        for (node in renderPartialHtml(parse(md))) {
            assert(is Node node);
            renderTemplate(node, f);
        }
        return sb.string;
    }

    """Test for example 288 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-288"""
    test
    shared void specTest_Backslash_escapes_288() {
        value md = "\\!\\\"\\#\\$\\%\\&\\'\\(\\)\\*\\+\\,\\-\\.\\/\\:\\;\\<\\=\\>\\?\\@\\[\\\\\\]\\^\\_\\\`\\{\\|\\}\\~\n";
        value html = "<p>!&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\\]^_\`{|}~</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 289 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-289"""
    test
    shared void specTest_Backslash_escapes_289() {
        value md = "\\	\\A\\a\\ \\3\\φ\\«\n";
        value html = "<p>\\	\\A\\a\\ \\3\\φ\\«</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 290 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-290"""
    test
    shared void specTest_Backslash_escapes_290() {
        value md = "\\*not emphasized*\n\\<br/> not a tag\n\\[not a link](/foo)\n\\\`not code\`\n1\\. not a list\n\\* not a list\n\\# not a heading\n\\[foo]: /url \"not a reference\"\n";
        value html = "<p>*not emphasized*\n&lt;br/&gt; not a tag\n[not a link](/foo)\n\`not code\`\n1. not a list\n* not a list\n# not a heading\n[foo]: /url &quot;not a reference&quot;</p>\n";
        assertEquals{
            expected = html;
            actual = "Infinite loop";//TODOrender(md);
        };
    }

    """Test for example 291 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-291"""
    test
    shared void specTest_Backslash_escapes_291() {
        value md = "\\\\*emphasis*\n";
        value html = "<p>\\<em>emphasis</em></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 292 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-292"""
    test
    shared void specTest_Backslash_escapes_292() {
        value md = "foo\\\nbar\n";
        value html = "<p>foo<br />\nbar</p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 293 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-293"""
    test
    shared void specTest_Backslash_escapes_293() {
        value md = "\`\` \\[\\\` \`\`\n";
        value html = "<p><code>\\[\\\`</code></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 294 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-294"""
    test
    shared void specTest_Backslash_escapes_294() {
        value md = "    \\[\\]\n";
        value html = "<pre><code>\\[\\]\n</code></pre>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 295 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-295"""
    test
    shared void specTest_Backslash_escapes_295() {
        value md = "~~~\n\\[\\]\n~~~\n";
        value html = "<pre><code>\\[\\]\n</code></pre>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 296 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-296"""
    test
    shared void specTest_Backslash_escapes_296() {
        value md = "<http://example.com?find=\\*>\n";
        value html = "<p><a href=\"http://example.com?find=%5C*\">http://example.com?find=\\*</a></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 297 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-297"""
    test
    shared void specTest_Backslash_escapes_297() {
        value md = "<a href=\"/bar\\/)\">\n";
        value html = "<a href=\"/bar\\/)\">\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 298 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-298"""
    test
    shared void specTest_Backslash_escapes_298() {
        value md = "[foo](/bar\\* \"ti\\*tle\")\n";
        value html = "<p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 299 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-299"""
    test
    shared void specTest_Backslash_escapes_299() {
        value md = "[foo]\n\n[foo]: /bar\\* \"ti\\*tle\"\n";
        value html = "<p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

    """Test for example 300 from the common mark spec (v0.26).
       See http://spec.commonmark.org/0.26/#example-300"""
    test
    shared void specTest_Backslash_escapes_300() {
        value md = "\`\`\` foo\\+bar\nfoo\n\`\`\`\n";
        value html = "<pre><code class=\"language-foo+bar\">foo\n</code></pre>\n";
        assertEquals{
            expected = html;
            actual = render(md);
        };
    }

}
