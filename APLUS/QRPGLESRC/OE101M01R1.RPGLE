000100000000      *
000200000000      *   ADDPFTRG FILE(ORHED)
000300000000      *            TRGTIME(*BEFORE)
000400000000      *            TRGEVENT(*UPDATE)
000500000000      *            PGM(OE101M01R1)
000600000000      *            TRG(OE101M01U)
000700000000      *            ALWREPCHG(*YES)
000800000000
000900000000      /copy qcpysrc,hcontrol
001000000000
001100000000     foe101m01fmcf   e             workstn usropn
001200000000
001300000000     d  imgbef       e ds                  extname(orhed) qualified based(bptr) image before
001400000000     d  imgaft       e ds                  extname(orhed) qualified based(aptr) image after
001500000000
001600000000      /copy qcpysrc,orhed_us30
001700000000      /copy qcpysrc,firedby
001800000000      /copy qcpysrc,trigheader
001900000000
002000000000      /free
002100000000
002200000000       if imgaft.ohinup = *blanks and imgbef.ohinup > *blanks
002300000000                                  and firedby('OE101C');                     // if called from maint
002400000000
002500000000         ohus30 = imgaft.ohus30;
002600000000         open oe101m01fm;
002700000000
002800000000         w1wcat = ohwcat;
002900000000         w1lcdl = ohlcdl;
003000000000
003100000000         monitor;
003200000000           w1fudt = %dec(ohfudt:*mdy);
003300000000         on-error *all;
003400000000           w1fudt = *zeros;
003500000000         endmon;
003600000000
003700000000         exfmt oe101m01w1;                                                   // display window
003800000000
003900000000         if not *in12;                                                       // if enter pressed
004000000000
004100000000           monitor;
004200000000             ohfudt = %date(w1fudt:*mdy);
004300000000           on-error *all;
004400000000             ohfudt = %date + %days(7);
004500000000           endmon;
004600000000
004700000000           ohwcat = w1wcat;
004800000000           ohlcdl = w1lcdl;
004900000000           imgaft.ohus30 = ohus30;
005000000000
005100000000         endif;                                                              // if enter pressed
005200000000       endif;                                                                // if called from maint
005300000000
005400000000       *inlr = *on;                                                          // close all files
005500000000
005600000000      /end-free
005700000000
