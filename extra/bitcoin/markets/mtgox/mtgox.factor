! Copyright (C) 2010 Chris Double.
! See http://factorcode.org/license.txt for BSD license.
!
! Obtains information from the mtgox.com bitcoin market
!
! Donations can be sent to the following bitcoin address:
! 1HVMkUcaPhCeCK3rrBm31EY2bf5r33VHsj
!
USING:
    accessors
    assocs
    hashtables
    http.client
    json.reader
    kernel
    sequences
;
IN: bitcoin.markets.mtgox

: mtgox-url ( -- url )
    "http://mtgox.com" ;

: mtgox-request ( path -- data )
    mtgox-url prepend http-get nip json> ;

: mtgox-ticker ( -- data )
    "/code/ticker.php" mtgox-request
    "ticker" swap at ;

: mtgox-depth ( -- data )
    "/code/getDepth.php" mtgox-request ;

: mtgox-recent ( -- data )
    "/code/getHistory.php" mtgox-request ;

: mtgox-history ( -- data )
    "/data/allHistory.json" mtgox-request ;

