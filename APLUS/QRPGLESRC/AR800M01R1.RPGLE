000100000000      *
000200000000      *   ADDPFTRG FILE(CUSMS)         ADDPFTRG FILE(CUSMS)         ADDPFTRG FILE(CUSMS)
000300000000      *            TRGTIME(*AFTER)              TRGTIME(*AFTER)              TRGTIME(*AFTER)
000400000000      *            TRGEVENT(*INSERT)            TRGEVENT(*DELETE)            TRGEVENT(*UPDATE)
000500000000      *            PGM(AR800M01R1)              PGM(AR800M01R1)              PGM(AR800M01R1)
000600000000      *            TRG(AR800M01I)               TRG(AR800M01D)               TRG(AR800M01U)
000700000000      *
000800000000
000900000000     h  dftactgrp(*no) bnddir('RPG21STUFF')
001000000000
001100000000     fcusmsext  uf a e           k disk    usropn                               cust mast extension
001200000000     far800m01fmcf   e             workstn usropn                               cust mast trig dspf
001300000000
001400000000     d  imgbef       e ds                  extname(cusms) qualified based(bptr) image before
001500000000     d  imgaft       e ds                  extname(cusms) qualified based(aptr) image after
001600000000
001700000000     d  trgbuf       e ds                  extname(trgbuf)                      trigger buffer
001800000000     d  trglen       e ds                  extname(trglen)                      trigger length
001900000000
002000000000     d  k_cusmsext     ds                  likerec(cusmsextr:*key)              key to cusmsext
002100000000
002200000000     d  calledfrom     pr              n                                        called from
002300000000     d    pgmnam                     10    value                                program name
002400000000
002500000000     c     *entry        plist                                                  entry parameters
002600000000     c                   parm                    trgbuf                         trigger buffer
002700000000     c                   parm                    trglen                         trigger length
002800000000
002900000000      /free
003000000000
003100000000       bptr = %addr(trgbuf) + orgoff;                                        // before image pointer
003200000000       aptr = %addr(trgbuf) + newoff;                                        // after image pointer
003300000000
003400000000       if imgaft.cminus = *blanks and imgbef.cminus > *blanks
003500000000                                  and calledfrom('AR800');                   // if called from maint
003600000000
003700000000         open cusmsext;                                                      // cust mast extension
003800000000
003900000000         if trgevn = '2' or trgevn = '3';                                    // if delete or update
004000000000           k_cusmsext.cxcono = imgbef.cmcono;                                // key company number
004100000000           k_cusmsext.cxcsno = imgbef.cmcsno;                                // key customer number
004200000000         else;                                                               // insert mode
004300000000           k_cusmsext.cxcono = imgaft.cmcono;                                // key company number
004400000000           k_cusmsext.cxcsno = imgaft.cmcsno;                                // key customer number
004500000000         endif;                                                              // if insert or delete
004600000000
004700000000         chain %kds(k_cusmsext) cusmsextr;                                   // search cusmsext
004800000000
004900000000         if trgevn = '2' and %found(cusmsext);                               // if delete w/match
005000000000           delete cusmsextr;                                                 // delete extn record
005100000000         endif;                                                              // if delete w/match
005200000000
005300000000         if trgevn = '1' or trgevn = '3' and imgaft.cminus = *blanks;        // if insert or update
005400000000
005500000000           open ar800m01fm;                                                  // cust mast trig dspf
005600000000
005700000000           if trgevn = '3';                                                  // if update mode
005800000000             w1emad = cxemad;                                                // e-mail address
005900000000             w1wsad = cxwsad;                                                // website address
006000000000           endif;                                                            // if update mode
006100000000
006200000000           exfmt ar800m01w1;                                                 // display window
006300000000
006400000000           if not *in12;                                                     // if enter pressed
006500000000
006600000000             if %found(cusmsext);                                            // ins/chg with match
006700000000               cxemad = w1emad;                                              // e-mail address
006800000000               cxwsad = w1wsad;                                              // website address
006900000000               update cusmsextr;                                             // update extn record
007000000000             else;                                                           // ins/chg no match
007100000000               cxcono = k_cusmsext.cxcono;                                   // company number
007200000000               cxcsno = k_cusmsext.cxcsno;                                   // customer number
007300000000               cxemad = w1emad;                                              // e-mail address
007400000000               cxwsad = w1wsad;                                              // website address
007500000000               write cusmsextr;                                              // insert extn record
007600000000             endif;                                                          // ins/chg with match
007700000000
007800000000           endif;                                                            // if enter pressed
007900000000         endif;                                                              // if insert or update
008000000000       endif;                                                                // if called from maint
008100000000
008200000000       *inlr = *on;                                                          // close all files
008300000000
008400000000      /end-free
008500000000
