000100000000      *
000200000000      *  TRIGHEADER:
000300000000      *     This should be used via /COPY as the final D spec in all trigger
000400000000      *     programs.  It assumes that data structures IMGBEF and IMGAFT have
000500000000      *     been declared using the EXTNAME and BASED keywords, with pointers
000600000000      *     BPTR and APTR, respectively.
000700000000      *
000800000000
000900080108     d* trgbuf       e ds                  extname(trgbuf)                      trigger buffer
001000080108     d  trgbuf         ds                                                       trigger buffer
001100080108     d    filnam                     10a
001200080108     d    fillib                     10a
001300080108     d    filmbr                     10a
001400080108     d    trgevn                      1a
001500080108     d    trgtim                      1a
001600080108     d    cmtlck                      1a
001700080108     d    fill01                      3a
001800080108     d    chrset                     10i 0
001900080108     d    fill02                      4a
002000080108     d    orgoff                     10i 0
002100080108     d    orglen                     10i 0
002200080108     d    orgbof                     10i 0
002300080108     d    orgbln                     10i 0
002400080108     d    newoff                     10i 0
002500080108     d    newlen                     10i 0
002600080108     d    newbof                     10i 0
002700080108     d    fill03                     16a
002800080108
002900000000     d  trglen         s             10i 0                                      trigger buffer leng
003000000000
003100000000     c     *entry        plist                                                  entry parameters
003200000000     c                   parm                    trgbuf                         trigger buffer
003300000000     c                   parm                    trglen                         trigger buffer leng
003400000000
003500000000     c                   eval      bptr = %addr(trgbuf) + orgoff                image before pointer
003600000000     c                   eval      aptr = %addr(trgbuf) + newoff                image after pointer
003700000000
003800000000     c                   if        trgevn = '1'                                 if insert
003900000000     c                   eval      bptr   = aptr                                theres no before img
004000000000     c                   elseif    trgevn = '2'                                 or delete
004100000000     c                   eval      aptr   = bptr                                theres no after img
004200000000     c                   endif                                                  if insert
004300000000
