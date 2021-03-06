! Copyright (C) 2005, 2009 Daniel Ehrenberg
! See http://factorcode.org/license.txt for BSD license.
USING: xml xml.traversal tools.test xml.data sequences arrays ;
IN: xml.traversal.tests

[ "bar" ] [ "<foo>bar</foo>" string>xml children>string ] unit-test

[ "" ] [ "<foo></foo>" string>xml children>string ] unit-test

[ "" ] [ "<foo/>" string>xml children>string ] unit-test

[ "blah" ] [ "<foo attr='blah'/>" string>xml-chunk "foo" deep-tag-named "attr" attr ] unit-test

[ { "blah" } ] [ "<foo attr='blah'/>" string>xml-chunk "foo" deep-tags-named [ "attr" attr ] map ] unit-test

[ "blah" ] [ "<foo attr='blah'/>" string>xml "foo" deep-tag-named "attr" attr ] unit-test

[ { "blah" } ] [ "<foo attr='blah'/>" string>xml "foo" deep-tags-named [ "attr" attr ] map ] unit-test

[ { "blah" } ] [ "<foo><bar attr='blah'/></foo>" string>xml "blah" "attr" tags-with-attr [ "attr" attr ] map ] unit-test
[ { "blah" } ] [ "bar" { { "attr" "blah" } } f <tag> 1array "blah" "attr" tags-with-attr [ "attr" attr ] map ] unit-test
