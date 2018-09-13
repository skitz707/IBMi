000100000000      *
000200000000      *  TRIGHEADER:
000300000000      *     This should be used via /COPY as the final D spec in all trigger
000400000000      *     programs.  It assumes that data structures IMGBEF and IMGAFT have
000500000000      *     been declared using the EXTNAME and BASED keywords, with pointers
000600000000      *     BPTR and APTR, respectively.
000700000000      *
000800000000
000900000000     d  trgbuf       e ds                  extname(trgbuf)                      trigger buffer
001000000000     d  trglen         s             10i 0                                      trigger buffer leng
001100000000
001200000000     c     *entry        plist                                                  entry parameters
001300000000     c                   parm                    trgbuf                         trigger buffer
001400000000     c                   parm                    trglen                         trigger buffer leng
001500000000
001600000000     c                   eval      bptr = %addr(trgbuf) + orgoff                image before pointer
001700000000     c                   eval      aptr = %addr(trgbuf) + newoff                image after pointer
001800000000
001900000000     c                   if        trgevn = '1'                                 if insert
002000000000     c                   eval      bptr   = aptr                                theres no before img
002100000000     c                   elseif    trgevn = '2'                                 or delete
002200000000     c                   eval      aptr   = bptr                                theres no after img
002300000000     c                   endif                                                  if insert
002400000000
