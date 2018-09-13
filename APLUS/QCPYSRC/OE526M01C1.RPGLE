000100000000     c*
000200000000     c*  Invoice Print (OE526) Mod 01
000300000000     c*  Insert immediately after EXCEPT of UPDCTL
000400000000     c*
000500000000     c                   if        ohwhid = '3'                                 if selected whse
000600000000     c                   eval      ohinno = 90000000 + %div(nxti#:10000000)     prefix with 9
000700000000     c                   endif                                                  if selected whse
000800000000     c*
