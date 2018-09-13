000100000000     h**********************************************************************************************
000200000000     h*
000300000000     h*  GEMKO Information Group
000400000000     h*
000500000000     h*  name:  saload
000600000000     h*  type:  rpg program
000700000000     h*  name:  sales analysis load
000800000000     h*
000900000000     h**********************************************************************************************
001000000000     h*
001100000000     h  dftactgrp(*no)
001200000000     f*
001300000000     fhshed     if   e             disk                                         order history header
001400000000     fhsdet     if   e           k disk                                         order history detail
001500000000     fcusms     if   e           k disk                                         customer master
001600000000     fitmst     if   e           k disk                                         item master
001700000000     fitbal     if   e           k disk                                         item balance
001800000000     fcussa     uf a e           k disk                                         cust sales analysis
001900000000     fdetsa     uf a e           k disk                                         detl sales analysis
002000000000     fitmsa     uf a e           k disk                                         item sales analysis
002100000000     frepsa     uf a e           k disk                                         srep sales analysis
002200000000     d*
002300000000     d  prched         pr                                                       process header
002400000000     d  prcdet         pr                                                       process detail
002500000000     d*
002600000000     d  cusrec         ds                  likerec(cussar)                      cust sales analysis
002700000000     d  detrec         ds                  likerec(detsar)                      detl sales analysis
002800000000     d  itmrec         ds                  likerec(itmsar)                      item sales analysis
002900000000     d  reprec         ds                  likerec(repsar)                      srep sales analysis
003000000000     d*
003100000000     d  k_cusms        ds                  likerec(cusmsr:*key)                 key to cusms
003200000000     d  k_itmst        ds                  likerec(itmstr:*key)                 key to itmst
003300000000     d  k_itbal        ds                  likerec(itbalr:*key)                 key to itbal
003400000000     d  k_cussa        ds                  likerec(cussar:*key)                 key to cussa
003500000000     d  k_detsa        ds                  likerec(detsar:*key)                 key to detsa
003600000000     d  k_itmsa        ds                  likerec(itmsar:*key)                 key to itmsa
003700000000     d  k_repsa        ds                  likerec(repsar:*key)                 key to repsa
003800000000     d*
003900000000     d  cussal         s                   like(cssa01) dim(12) based(cspt)     cust sales
004000000000     d  cuscos         s                   like(cscs01) dim(12) based(ccpt)     cust cost
004100000000     d  cusord         s                   like(csor01) dim(12) based(copt)     cust orders
004200000000     d*
004300000000     d  repsal         s                   like(sssa01) dim(12) based(sspt)     srep sales
004400000000     d  repcos         s                   like(sscs01) dim(12) based(scpt)     srep cost
004500000000     d  repord         s                   like(ssor01) dim(12) based(sopt)     srep orders
004600000000     d*
004700000000     d  itmsal         s                   like(sisa01) dim(12) based(ispt)     item sales
004800000000     d  itmcos         s                   like(sics01) dim(12) based(icpt)     item cost
004900000000     d  itmqty         s                   like(siqt01) dim(12) based(iqpt)     item quantity
005000000000     d*
005100000000     d  detsal         s                   like(sdsa01) dim(12) based(dspt)     item sales
005200000000     d  detcos         s                   like(sdcs01) dim(12) based(dcpt)     item cost
005300000000     d  detqty         s                   like(sdqt01) dim(12) based(dqpt)     item quantity
005400000000     d*
005500000000     d  cspt           s               *   inz(%addr(cssa01))                   cust sales ptr
005600000000     d  ccpt           s               *   inz(%addr(cscs01))                   cust cost ptr
005700000000     d  copt           s               *   inz(%addr(csor01))                   cust orders ptr
005800000000     d*
005900000000     d  sspt           s               *   inz(%addr(sssa01))                   srep sales ptr
006000000000     d  scpt           s               *   inz(%addr(sscs01))                   srep cost ptr
006100000000     d  sopt           s               *   inz(%addr(ssor01))                   srep orders ptr
006200000000     d*
006300000000     d  ispt           s               *   inz(%addr(sisa01))                   item sales ptr
006400000000     d  icpt           s               *   inz(%addr(sics01))                   item cost ptr
006500000000     d  iqpt           s               *   inz(%addr(siqt01))                   item quantity ptr
006600000000     d*
006700000000     d  dspt           s               *   inz(%addr(sdsa01))                   item sales ptr
006800000000     d  dcpt           s               *   inz(%addr(sdcs01))                   item cost ptr
006900000000     d  dqpt           s               *   inz(%addr(sdqt01))                   item quantity ptr
007000000000     d*
007100000000     d  invmth         s              2s 0                                      invoice month
007200000000     d*
007300000000     ***********************************************************************************************
007400000000
007500000000      /free
007600000000
007700000000       dou %eof(hshed);                                                      // until no more header
007800000000         read hshedr;                                                        // read next header
007900000000
008000000000         if not %eof(hshed);                                                 // if header read
008100000000
008200000000           prched();                                                         // process header
008300000000           setll oahssq hsdetr;                                              // find first detail
008400000000
008500000000           dou %eof(hsdet);                                                  // until no more detail
008600000000             reade oahssq hsdetr;                                            // read next detail
008700000000
008800000000             if oblitp = 'I' and not %eof(hsdet);                            // if detail read
008900000000               prcdet();                                                     // process detail
009000000000             endif;
009100000000
009200000000           enddo;                                                            // until no more detail
009300000000         endif;                                                              // if header read
009400000000       enddo;                                                                // until no more header
009500000000
009600000000       *inlr = *on;                                                          // end of program
009700000000
009800000000      /end-free
009900000000
010000000000     ***********************************************************************************************
010100000000
010200000000     p  prched         b                                                        process header
010300000000
010400000000     d  prched         pi                                                       process header
010500000000
010600000000      /free
010700000000
010800000000       k_cusms.cmcono = oacono;                                              // company number
010900000000       k_cusms.cmcsno = oacsno;                                              // customer number
011000000000
011100000000       chain %kds(k_cusms) cusmsr;                                           // search cusms
011200000000
011300000000       if %found(cusms);                                                     // if cusms match
011400000000
011500000000         invmth = %subdt(%date(oaipdt:*iso):*m);                             // invoice month
011600000000
011700000000         k_cussa.cscono = oacono;                                            // company number
011800000000         k_cussa.cscsno = oacsno;                                            // customer number
011900000000         k_cussa.csyear = %subdt(%date(oaipdt:*iso):*y);                     // sales year
012000000000         k_repsa.sscono = oacono;                                            // company number
012100000000         k_repsa.ssrp#1 = oasls1;                                            // sales rep number
012200000000         k_repsa.ssyear = k_cussa.csyear;                                    // sales year
012300000000
012400000000         chain %kds(k_cussa) cussar;                                         // search cussa
012500000000         chain %kds(k_repsa) repsar;                                         // search repsa
012600000000
012700000000         if %found(cussa);                                                   // if cussa match
012800000000
012900000000           cussal(invmth) = cussal(invmth) + oaisam;                         // cust sales
013000000000           cuscos(invmth) = cuscos(invmth) + oaorcs;                         // cust cost
013100000000           cusord(invmth) = cusord(invmth) + 1;                              // cust orders
013200000000
013300000000           update cussar;                                                    // update cussa
013400000000
013500000000         else;                                                               // no cussa match
013600000000
013700000000           clear cussar;                                                     // clear all fields
013800000000
013900000000           cscono = k_cussa.cscono;                                          // company number
014000000000           cscsno = k_cussa.cscsno;                                          // customer number
014100000000           csyear = k_cussa.csyear;                                          // sales year
014200000000
014300000000           csrp#1 = cmrp#1;                                                  // sales rep #1
014400000000           cscscl = cmcscl;                                                  // customer class
014500000000           cscssc = cmcssc;                                                  // customer subclass
014600000000           cscsrt = cmcsrt;                                                  // customer sort word
014700000000           cszip5 = cmzip4;                                                  // zip code
014800000000
014900000000           cussal(invmth) = oaisam;                                          // cust sales
015000000000           cuscos(invmth) = oaorcs;                                          // cust cost
015100000000           cusord(invmth) = 1;                                               // cust orders
015200000000
015300000000           write cussar;                                                     // write to cussa
015400000000
015500000000         endif;                                                              // if cussa match
015600000000
015700000000         if %found(repsa);                                                   // if repsa match
015800000000
015900000000           repsal(invmth) = repsal(invmth) + oaisam;                         // srep sales
016000000000           repcos(invmth) = repcos(invmth) + oaorcs;                         // srep cost
016100000000           repord(invmth) = repord(invmth) + 1;                              // srep orders
016200000000
016300000000           update repsar;                                                    // update repsa
016400000000
016500000000         else;                                                               // no repsa match
016600000000
016700000000           clear repsar;                                                     // clear all fields
016800000000
016900000000           sscono = k_repsa.sscono;                                          // company number
017000000000           ssrp#1 = k_repsa.ssrp#1;                                          // sales rep number
017100000000           ssyear = k_repsa.ssyear;                                          // sales year
017200000000
017300000000           repsal(invmth) = oaisam;                                          // srep sales
017400000000           repcos(invmth) = oaorcs;                                          // srep cost
017500000000           repord(invmth) = 1;                                               // srep orders
017600000000
017700000000           write repsar;                                                     // write to repsa
017800000000
017900000000         endif;                                                              // if repsa match
018000000000       endif;                                                                // if cusms match
018100000000
018200000000      /end-free
018300000000
018400000000     p  prched         e                                                        process header
018500000000
018600000000     ***********************************************************************************************
018700000000
018800000000     p  prcdet         b                                                        process detail
018900000000
019000000000     d  prcdet         pi                                                       process detail
019100000000
019200000000      /free
019300000000
019400000000       k_itmst.imitno = obitno;                                              // item number
019500000000       k_itbal.ibitno = obitno;                                              // item number
019600000000       k_itbal.ibwhid = obwhid;                                              // item number
019700000000
019800000000       chain %kds(k_itmst) itmstr;                                           // search itmst
019900000000       chain %kds(k_itbal) itbalr;                                           // search itbal
020000000000
020100000000       if %found(itmst);                                                     // if itmst match
020200000000
020300000000         k_itmsa.sicono = oacono;                                            // company number
020400000000         k_itmsa.siitno = obitno;                                            // item number
020500000000         k_itmsa.siwhid = oawhid;                                            // warehouse i/d
020600000000         k_itmsa.siyear = %subdt(%date(oaipdt:*iso):*y);                     // sales year
020700000000         k_detsa.sdcono = oacono;                                            // company number
020800000000         k_detsa.sdcsno = oacsno;                                            // customer number
020900000000         k_detsa.sditno = obitno;                                            // item number
021000000000         k_detsa.sdyear = k_itmsa.siyear;                                    // sales year
021100000000
021200000000         chain %kds(k_itmsa) itmsar;                                         // search itmsa
021300000000         chain %kds(k_detsa) detsar;                                         // search detsa
021400000000
021500000000         if %found(itmsa);                                                   // if itmsa match
021600000000
021700000000           itmsal(invmth) = itmsal(invmth) + oblnam;                         // item sales
021800000000           itmcos(invmth) = itmcos(invmth) + obcstx;                         // item cost
021900000000           itmqty(invmth) = itmqty(invmth) + obqtsh;                         // item orders
022000000000
022100000000           update itmsar;                                                    // update imtsa
022200000000
022300000000         else;                                                               // no cussa match
022400000000
022500000000           clear itmsar;                                                     // clear all fields
022600000000
022700000000           sicono = k_itmsa.sicono;                                          // company number
022800000000           siitno = k_itmsa.siitno;                                          // customer number
022900000000           siwhid = k_itmsa.siwhid;                                          // warehouse i/d
023000000000           siyear = k_itmsa.siyear;                                          // sales year
023100000000
023200000000           siitcl = imitcl;                                                  // item class
023300000000           siitsc = imitsc;                                                  // item subclass
023400000000           siabcc = ibabcc;                                                  // abc code
023500000000           sivnno = imvnno;                                                  // customer sort word
023600000000
023700000000           itmsal(invmth) = oblnam;                                          // item sales
023800000000           itmcos(invmth) = obcstx;                                          // item cost
023900000000           itmqty(invmth) = obqtsh;                                          // item orders
024000000000
024100000000           write itmsar;                                                     // write to itmsa
024200000000
024300000000         endif;                                                              // if itmsa match
024400000000
024500000000         if %found(detsa);                                                   // if detsa match
024600000000
024700000000           detsal(invmth) = detsal(invmth) + oblnam;                         // detl sales
024800000000           detcos(invmth) = detcos(invmth) + obcstx;                         // detl cost
024900000000           detqty(invmth) = detqty(invmth) + obqtsh;                         // detl quantity
025000000000
025100000000           update detsar;                                                    // update detsa
025200000000
025300000000         else;                                                               // no detsa match
025400000000
025500000000           clear detsar;                                                     // clear all fields
025600000000
025700000000           sdcono = k_detsa.sdcono;                                          // company number
025800000000           sdcsno = k_detsa.sdcsno;                                          // customer number
025900000000           sditno = k_detsa.sditno;                                          // item number
026000000000           sdyear = k_detsa.sdyear;                                          // sales year
026100000000
026200000000           detsal(invmth) = oblnam;                                          // detl sales
026300000000           detcos(invmth) = obcstx;                                          // detl cost
026400000000           detqty(invmth) = obqtsh;                                          // detl quantity
026500000000
026600000000           write detsar;                                                     // write to detsa
026700000000
026800000000         endif;                                                              // if detsa match
026900000000       endif;                                                                // if itmst match
027000000000
027100000000      /end-free
027200000000
027300000000     p  prcdet         e                                                        process detail
027400000000
027500000000     ***********************************************************************************************
