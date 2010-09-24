! Copyright (C) 2010 Chris Double.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax ;
IN: bitcoin.markets.mtgox

HELP: mtgox-request
{ $values 
  { "path" "a string" } 
  { "data" "an assoc" } 

}
{ $description 
    "Make a request to the mtgox exchange for the data on the given 'path'. "
    "As assoc containing the result is returned."
} ;

HELP: mtgox-ticker
{ $values 
  { "data" "an assoc" } 
}
{ $description 
    "Returns the ticker data available from mtgox."
} ;

HELP: mtgox-depth
{ $values 
  { "data" "an assoc" } 
}
{ $description 
    "Returns the depth data available from mtgox."
} ;

HELP: mtgox-recent
{ $values 
  { "data" "an assoc" } 
}
{ $description 
    "Returns data on the last 48 hours of trades through mtgox."
} ;

HELP: mtgox-history
{ $values 
  { "data" "an assoc" } 
}
{ $description 
    "Returns data on all trades made through mtgox."
} ;

