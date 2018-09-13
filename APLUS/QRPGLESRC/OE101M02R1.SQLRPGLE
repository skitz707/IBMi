000100000000      *
000200000000      *   ADDPFTRG FILE(ORDET)         ADDPFTRG FILE(ORDET)
000300000000      *            TRGTIME(*BEFORE)             TRGTIME(*BEFORE)
000400000000      *            TRGEVENT(*INSERT)            TRGEVENT(*UPDATE)
000500000000      *            PGM(OE101M02R1)              PGM(OE101M02R1)
000600000000      *            TRG(OE101M02I)               TRG(OE101M02U)
000700000000      *            ALWREPCHG(*YES)              ALWREPCHG(*YES)
000800000000
000900000000      /copy qcpysrc,hctlmain
001000000000
001100000000     d  imgbef       e ds                  extname(ordet) qualified based(bp)   image before
001200000000     d  imgaft       e ds                  extname(ordet) qualified based(ap)   image after
001300000000
001400000000     d  ItemGL         s                   like(imgaft.oditgl)                  item GL code
001500000000
001600000000      /copy qcpysrc,oegetctl
001700000000      /copy qcpysrc,trigheader
001800000000
001900000000      /free
002000000000
002100000000       if imgaft.odlitp = 'I' and
002200000000          imgaft.oditgl <> imgaft.odshwh and
002300000000         (imgaft.odorst = '1' or imgaft.odorst = '9');                       // if new line item
002400000000
002500000000         exec sql select imitgl into :ItemGL from itmst
002600000000           where imitno = :imgaft.oditno;                                    // get item G/L code
002700000000
002800000000         if sqlcod = 0 and ItemGL > *blanks and ItemGL <> imgaft.odshwh
002900000000           and oegetctl(0:'IA':('WHSNU' + imgaft.oditgl)) > *blanks;         // if item GL is whse
003000000000           imgaft.odshwh = imgaft.oditgl;                                    // use as ship whse
003100000000         endif;                                                              // if item GL is whse
003200000000
003300000000       endif;                                                                // if new line item
003400000000
003500000000       *inlr = *on;                                                          // close all files
003600000000
003700000000      /end-free
003800000000
