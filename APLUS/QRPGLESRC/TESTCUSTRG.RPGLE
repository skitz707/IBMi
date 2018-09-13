000100000000
000200060222     d  imgbef       e ds                  extname(cusms) qualified based(bp)   image before
000300060222     d  imgaft       e ds                  extname(cusms) qualified based(ap)   image before
000400000000
000500000000     d  trgbuf       e ds                  extname(trgbuf)                      trigger buffer
000600000000
000700000000     c     *entry        plist                                                  entry parameters
000800000000     c                   parm                    trgbuf                         trigger buffer
000900000000
001000000000      /free
001100000000
001200000000       bp = %addr(trgbuf) + orgoff;                                          // before image pointer
001300000000       ap = %addr(trgbuf) + newoff;                                          // after image pointer
001400000000
001500000000       if trgevn = '2';                                                      // if delete
001600000000         ap = bp;                                                            // use before image
001700000000       endif;                                                                // if delete
001800000000
001900060222       if imgaft.cminus = *blanks and imgbef.cminus > *blanks;               // if leavning maint
002000060222         imgaft.cmcad4 = %trim(imgaft.cmcad4) + '*';                         // get balance record
002100060222         dsply 'fired';                                                      // echo check
002200060222       endif;                                                                // if leavning maint
002300000000
002400000000       *inlr = *on;                                                          // close all files
002500000000
002600000000      /end-free
002700000000
