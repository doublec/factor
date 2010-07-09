! Copyright (C) 2009 Doug Coleman.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math io ;
IN: io.streams.limited

HELP: <limited-stream>
{ $values
     { "stream" "an input stream" } { "limit" integer }
     { "stream'" "an input stream" }
}
{ $description "Constructs a new " { $link limited-stream } " from an existing stream. User code should use " { $link limit-stream } " or " { $link limited-input } "." } ;

HELP: limit-stream
{ $values
     { "stream" "an input stream" } { "limit" integer }
     { "stream'" "a stream" }
}
{ $description "Changes a decoder's stream to be a limited stream, or wraps " { $snippet "stream" } " in a " { $link limited-stream } "." }
{ $examples
    "Limiting a longer stream to length three:"
    { $example
        "USING: accessors continuations io io.streams.limited"
        "io.streams.string kernel prettyprint ;"
        "\"123456\" <string-reader> 3 limit-stream"
        "100 swap stream-read ."
        "\"123\""
    }
} ;

HELP: unlimit-stream
{ $values
     { "stream" "an input stream" }
     { "stream'" "a stream" }
}
{ $description "Returns the underlying stream of a limited stream." } ;

HELP: limited-stream
{ $values
    { "value" "a limited-stream class" }
}
{ $description "Limited streams wrap other streams, changing their behavior to throw an exception or return " { $link f } " upon exhaustion." } ;

HELP: limited-input
{ $values { "limit" integer } }
{ $description "Wraps the current " { $link input-stream } " in a " { $link limited-stream } "." } ;

HELP: unlimited-input
{ $description "Returns the underlying stream of the limited-stream stored in " { $link input-stream } "." } ;

ARTICLE: "io.streams.limited" "Limited input streams"
"The " { $vocab-link "io.streams.limited" } " vocabulary wraps a stream to behave as if it had only a limited number of bytes, either throwing an error or returning " { $link f } " upon reaching the end. Limiting a non-seekable stream keeps a byte count and triggers the end-of-stream behavior when this byte count has been reached. However, limiting a seekable stream creates a window of bytes that supports seeking and re-reading of bytes in that window." $nl
"Wrap a stream in a limited stream:"
{ $subsections limited-stream }
"Wrap the current " { $link input-stream } " in a limited stream:"
{ $subsections limited-input }
"Unlimits a limited stream:"
{ $subsections unlimit-stream }
"Unlimits the current " { $link input-stream } ":"
{ $subsections unlimited-input } ;

ABOUT: "io.streams.limited"
