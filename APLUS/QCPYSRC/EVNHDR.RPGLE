000100000000     d*
000200000000     d*  GEMKO INFORMATION GROUP
000300000000     d*
000400000000     d*  NAME:  EVNHDR
000500000000     d*  TYPE:  RPG/IV COPY MEMBER
000600000000     d*  DESC:  EVENT HANDLER PROGRAM HEADER
000700000000     d*
000800000000     d*  NOTE:  INSERT AFTER DATA SPECS IN ALL TRIGGER BASED EVENT HANDLERS.
000900000000     d*
001000000000     d*         ALWAYS USE "BP" AND "AP" AS BASING POINTERS FOR DATA STRUCTURES
001100000000     d*           TO BE USED AS BEFORE AND AFTER IMAGES OF DATABASE RECORDS.
001200000000     d*
001300000000
001400000000     d  trgbuf       e ds                  extname(trgbuf)                      trigger buffer
001500000000
001600000000     c     *entry        plist                                                  entry parameters
001700000000     c                   parm                    trgbuf                         trigger buffer
001800000000
001900000000     c                   eval      bp = %addr(trgbuf) + orgoff
002000000000     c                   eval      ap = %addr(trgbuf) + newoff
002100000000
002200000000     c                   if        trgevn = '2'                                 if delete
002300000000     c                   eval      ap = bp                                      use before image
002400000000     c                   elseif    trgevn = '1'                                 or insert
002500000000     c                   eval      bp = ap                                      use after image
002600000000     c                   endif                                                  if delete
002700000000
