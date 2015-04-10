from HTMLParser import HTMLParser, HTMLParseError
from htmlentitydefs import name2codepoint
import re, json, sys, urllib2

def main():
    html = fetchGoogleDoc(sys.argv[1])
    text = html_to_text(html)
    latex = unicode_to_latex(text)
    sys.stdout.write(latex)

def fetchGoogleDoc(urlOrGdocFile):
    """
    Downloads a Google Doc identified either by a URL or by a local Google Drive .gdoc file
    and returns its contents as a text file.
    Requires the Google Doc to be readable by anyone with the link (Share, Anyone who has the link can view).
    """
    # find the doc url
    if urlOrGdocFile.startswith("https://"):
        url = urlOrGdocFile
    elif urlOrGdocFile.endswith(".gdoc"):
        filename = urlOrGdocFile
        f = open(filename, "r")
        content = json.load(f)
        f.close()
        url = content["url"]
    else:
        raise Exception(str(urlOrGdocFile) + " not a google doc URL or .gdoc filename")
    # pull out the document id
    try:
        docId = re.search("/document/d/([^/]+)/", url).group(1)
    except Exception:
        raise Exception("can't find a google document ID in " + str(urlOrGdocFile))
    # construct an export URL
    exportUrl = "https://docs.google.com/document/d/" + docId + "/export?format=html"
    # fetch its contents
    conn = urllib2.urlopen(exportUrl)
    raw = conn.read()
    encoding = conn.headers['content-type'].split('charset=')[-1]
    html = unicode(raw, encoding)
    conn.close()
    return html

def html_to_text(html):
    """
    Given a piece of HTML, return the plain text it contains, as a unicode string.
    Throws away:
       - text from the <head> element
       - text in <style> and <script> elements
       - text in Google Doc sidebar comments
    Also translates entities and char refs into unicode characters.
    """
    parser = _HTMLToText()
    try:
        parser.feed(html)
        parser.close()
    except HTMLParseError:
        pass
    return parser.get_text()


class _HTMLToText(HTMLParser):
    """
    HTMLParser subclass that finds all the text in an html doc.
    Used by html_to_text.
    """
    def __init__(self):
        HTMLParser.__init__(self)
        self._buf = []
        self.hide_output_nesting_level = 0

    def handle_starttag(self, tag, attrs):
        attrsDict = self.to_dict(attrs)
        if tag in ['script', 'style', 'head']:
            self.hide_output_nesting_level = 1
        elif tag == "a" and "name" in attrsDict and attrsDict["name"].startswith("cmnt_"):
            print >>sys.stderr, "found a comment", attrs
            self.hide_output_nesting_level = 1
        elif self.hide_output_nesting_level > 0:
            self.hide_output_nesting_level += 1
        if tag in ('p', 'br') and not self.at_start_of_line():
            self.append('\n')

    def handle_startendtag(self, tag, attrs):
        if tag == 'br':
            self.append('\n')

    def handle_endtag(self, tag):
        if tag == 'p':
            self.append('\n')
        if self.hide_output_nesting_level > 0:
            self.hide_output_nesting_level -= 1

    def handle_data(self, text):
        if text:
            self.append(re.sub(r'\s+', ' ', text))

    def handle_entityref(self, name):
        if name in name2codepoint:
            c = unichr(name2codepoint[name])
            self.append(c)

    def handle_charref(self, name):
        n = int(name[1:], 16) if name.startswith('x') else int(name)
        self.append(unichr(n))

    def append(self, str):
        if self.hide_output_nesting_level == 0:
            self._buf.append(str)

    def at_start_of_line(self):
        return len(self._buf) == 0 or self._buf[-1][-1] == '\n'

    def to_dict(self,attrs):
        dict = {}
        for (name,val) in attrs:
            dict[name] = val
        return dict

    def get_text(self):
        return re.sub(r' +', ' ', ''.join(self._buf))

def unicode_to_latex(text):
    """
    Converts unicode into Latex format.
    """ 
    tr = [
        (u'\u2013', "--"),
        (u'\u2014', "---"),
        (u'\u2018', "`"),
        (u'\u2019', "'"),
        (u'\u201c', "``"),
        (u'\u201d', "''"),
        (u'\u2026', "..."),
        (u'\xa0', ' '), # no-break space
    ]
    for a, b in tr:
        text = text.replace(a, b)
    return text.encode("latin1")


main()
