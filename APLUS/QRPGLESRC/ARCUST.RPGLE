000100000000     h**********************************************************************************************
000200000000     h*
000300000000     h*  GEMKO Information Group
000400000000     h*
000500000000     h*  name:  arcust
000600000000     h*  type:  rpg program
000700000000     h*  name:  accounts receivable customer load
000800000000     h*
000900000000     h**********************************************************************************************
001000000000     h*
001100000000     h  dftactgrp(*no)
001200000000     f*
001300000000     fcusms     uf   e             disk                                         customer master
001400000000     fardhd     if   e           k disk                                         open a/r header
001500000000     d*
001600000000     d  prched         pr                                                       process header
001700000000     d*
001800000000     d  k_ardhd        ds                  likerec(ardhdr:*key)                 key to ardhd
001900000000     d  agedys         s              5  0                                      invoice age in days
002000000000     d*
002100000000     ***********************************************************************************************
002200000000
002300000000      /free
002400000000
002500000000       dou %eof(cusms);                                                      // until no more cust
002600000000         read cusmsr;                                                        // read next customer
002700000000
002800000000         if not %eof(cusms);                                                 // if customer read
002900000000
003000000000           clear cmfuam;                                                     // future period
003100000000           clear cmamdu;                                                     // customer amount due
003200000000           clear cmbpam;                                                     // billing period
003300000000           clear cmagp1;                                                     // aging period 1
003400000000           clear cmagp2;                                                     // aging period 2
003500000000           clear cmagp3;                                                     // aging period 3
003600000000           clear cmagp4;                                                     // aging period 4
003700000000
003800000000           prched();                                                         // process header
003900000000           update cusmsr;                                                    // update customer
004000000000
004100000000         endif;                                                              // if header read
004200000000
004300000000       enddo;                                                                // until no more header
004400000000
004500000000       *inlr = *on;                                                          // end of program
004600000000
004700000000      /end-free
004800000000
004900000000     ***********************************************************************************************
005000000000
005100000000     p  prched         b                                                        process header
005200000000
005300000000     d  prched         pi                                                       process header
005400000000
005500000000      /free
005600000000
005700000000       k_ardhd.rhcono = cmcono;                                              // company number
005800000000       k_ardhd.rhcsno = cmcsno;                                              // customer number
005900000000
006000000000       setll %kds(k_ardhd:2) ardhdr;                                         // find first open a/r
006100000000
006200000000       dou %eof(ardhd);                                                      // until no more a/r
006300000000         reade %kds(k_ardhd:2) ardhdr;                                       // read next open a/r
006400000000
006500000000         if not%eof(ardhd);                                                  // if open a/r read
006600000000
006700000000           agedys = %diff(%date:%date(rhagdt:*ymd):*d);                      // invoice age in days
006800000000           cmamdu = cmamdu + rhinbl;                                         // cusotmer amount due
006900000000
007000000000           if agedys > 120;                                                  // if over 120 days old
007100000000             cmagp4 = cmagp4 + rhinbl;                                       // aging period 4
007200000000           elseif agedys > 90;                                               // if over 90 days old
007300000000             cmagp3 = cmagp3 + rhinbl;                                       // aging period 3
007400000000           elseif agedys > 60;                                               // if over 60 days old
007500000000             cmagp2 = cmagp2 + rhinbl;                                       // aging period 2
007600000000           elseif agedys > 30;                                               // if over 30 days old
007700000000             cmagp1 = cmagp1 + rhinbl;                                       // aging period 1
007800000000           elseif agedys >= 0;                                               // if over 0 days old
007900000000             cmbpam = cmbpam + rhinbl;                                       // billing period
008000000000           else;                                                             // if age date future
008100000000             cmfuam = cmfuam + rhinbl;                                       // future period
008200000000           endif;                                                            // if over 120 days old
008300000000
008400000000         endif;                                                              // if open a/r read
008500000000       enddo;                                                                // until no more a/r
008600000000
008700000000      /end-free
008800000000
008900000000     p  prched         e                                                        process header
009000000000
009100000000     ***********************************************************************************************
