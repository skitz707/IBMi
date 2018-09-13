000300000000
000301000000     h  dftactgrp(*no)
000302000000
000500000000     fcusms     if   e           k disk    extfile('APLUS2FSC/CUSMS')           customer master
000501000000
000502000000     d  cusytdsale     pr                                                       customer ytd sales
000503000000     d  compnumber                    2  0                                      company number
000504000000     d  custnumber                   10  0                                      customer number
000505000000     d  ytdsaleamt                   11  2                                      ytd sales amount
000600000000
000700000000     d  cusytdsale     pi                                                       customer ytd sales
000701000000     d  compnumber                    2  0                                      company number
000702000000     d  custnumber                   10  0                                      customer number
000703000000     d  ytdsaleamt                   11  2                                      ytd sales amount
001800000000
001802000000     d  k_cusms        ds                  likerec(cusmsr:*key)                 key to cusms
001804000000
001900000000      /free
001901000000
001902000000       k_cusms.cmcono = compnumber;                                          // company number
001903000000       k_cusms.cmcsno = custnumber;                                          // customer number
002000000000
002001000000       chain %kds(k_cusms:2) cusmsr;                                         // search cusms
002002000000
002100000000       if %found(cusms);                                                     // if cusms match
002101000000         ytdsaleamt = cmslyd;                                                // return y-t-d sales
002102000000       else;                                                                 // no cusms match
002201000000         ytdsaleamt = *zeros;                                                // return *zeros
002202000000       endif;                                                                // if cusms match
003400000000
003401000000       return;                                                               // return to caller
006400000000
