000100000000
000200000000     h  dftactgrp(*no) bnddir('BURNS')
000300000000
000400000000     d  trgbuf       e ds                  extname(trgbuf)                      trigger buffer
000500000000     d  trglen       e ds                  extname(trglen)                      trigger length
000600000000
000700030519     d  imgaft       e ds                  extname(myscreen) prefix(a)          image after
000800030519     d                                     based(aptr)
000900030519
001000030519     d  test01         pr                  extpgm('APLUS2MSC/TEST01C')
001100000000
001200000000     d  calledfrom     pr              n                                        called from
001300000000     d    pgmnam                     10    value                                program name
001400030519
001500030519     d  aptr           S               *
001600000000
001700030519     c     *entry        plist
001800030519     c                   parm                    trgbuf
001900030519     c                   parm                    trglen
002000030519
002100000000      /free
002200030519
002300030519       aptr = %addr(trgbuf) + newoff;
002400030519
002500030519       if asirow = '24';
002600030519
002700030519       // if calledfrom('OEORDR');
002800030519           test01();
002900030519       // endif;
003000030519
003100030519       endif;
003200030519
003300000000       return;
003400000000
003500000000      /end-free
003600000000
