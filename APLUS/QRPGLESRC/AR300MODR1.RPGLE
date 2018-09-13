000100000000
000200000000     h  dftactgrp(*no) bnddir('APLUS2MODS')
000300000000
000400000000     fspldta    up   f  199        disk                                         spool file as data
000500000000     fcusms     if   e           k disk    extfile('APLUS2FSC/CUSMS')           customer master
000600000000
000700000000     d  k_cusms        ds                  likerec(cusmsr:*key)                 key to cusms
000800000000     d  second_hdr     s                   like(*inlr)                          second header flag
000900000000     d  cus_totals     s                   like(*inlr)                          cust totals flag
001000000000     d  credit_use     s                   like(cmcrlm)                         credit used
001100000000     d  credit_avl     s                   like(cmcrlm)                         credit available
001200000000
001300000000     ispldta    ns  01                                                          spool file as data
001400000000     i                                  2  199  print_area                      printable area
001500000000
001600000000      /free
001700000000
001800000000       if %scan('Tran Amount':print_area) > *zeros;                          // if 1st col hdr line
001900000000         %subst(print_area:140:6) = 'Credit';                                // insert heading text
002000000000         %subst(print_area:151:6) = 'Credit';                                // insert heading text
002100000000         second_hdr = *on;                                                   // next line 2nd hdr
002200000000
002300000000       elseif second_hdr;                                                    // if 2nd col hdr line
002400000000         %subst(print_area:141:5) = 'Limit';                                 // insert heading text
002500000000         %subst(print_area:152:5) = 'Avail';                                 // insert heading text
002600000000         second_hdr = *off;                                                  // reset 2nd hdr flag
002700000000
002800000000       elseif %scan('-----------':print_area) > *zeros;                      // if dotted line
002900000000         %subst(print_area:137:9) = '---------';                             // insert heading text
003000000000         %subst(print_area:148:9) = '---------';                             // insert heading text
003100000000
003200000000       elseif %scan('Last Pay':print_area) > *zeros;                         // if 1st customer line
003300000000         k_cusms.cmcono = %int(%subst(print_area:01:02));                    // company number
003400000000         k_cusms.cmcsno = %int(%subst(print_area:04:10));                    // customer number
003500000000         cmcrlm         = *zeros;                                            // credit limit
003600000000         chain %kds(k_cusms:2) cusmsr;                                       // search cusms
003700000000         %subst(print_area:137:9) = %editc(cmcrlm:'1');                      // insert credit limit
003800000000
003900000000       elseif %scan('Customer Totals':print_area) > *zeros;                  // if cust totals line
004000000000         credit_use = %inth(%xlate(',':' ':%subst(print_area:40:14)));       // total credit used
004100000000         cus_totals = *on;                                                   // cust totals flag
004200000000
004300000000       elseif cus_totals;                                                    // if 2nd cus tot line
004400000000         credit_avl = cmcrlm - credit_use;                                   // calc credit avail
004500000000         %subst(print_area:147:10) = %editc(credit_avl:'N');                 // insert credit avail
004600000000         cus_totals = *off;                                                  // cust totals flag
004700000000
004800000000       endif;                                                                // if 1st col hdr line
004900000000
005000000000      /end-free
005100000000
005200000000     ospldta    d    01                                                         spool file as data
005300000000     o                       print_area         199                             update output line
005400000000
