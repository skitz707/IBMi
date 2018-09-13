000100000000     h**********************************************************************************************
000200000000     h*
000300000000     h*  GEMKO INFORMATION GROUP
000400000000     h*
000500000000     h*  NAME:  FIREDBY
000600000000     h*  TYPE:  RPG IV SERVICE PROGRAM PROCEDURE
000700000000     h*  DESC:  TRIGGER FIRED BY PROGRAM AT STATEMENT
000800000000     h*         A.K.A. DONALD TRUMP *SRVPGM
000900000000     h*
001000000000     h*  NOTE:  THIS PROCEDURE ACCEPTS A PROGRAM NAME AND RETURNS AN INDICATOR WHETHER OR NOT
001100000000     h*         THE PROGRAM IS FOUND IN THE CALL STACK.  USED FOR TRIGGER PROGRAMS AS A
001200000000     h*         MECHANISM TO EXTERNALIZE MODIFICATIONS.
001300000000     h*
001400000000     h**********************************************************************************************
001500000000
001600000000     h  nomain debug
001700000000
001800000000     d  firedby        pr              n                                        fired by
001900000000     d    pgmnam                     10    value                                program name
002000000000     d    iostm1                     10    value options(*nopass)               i/o statement
002100000000     d    iostm2                     10    value options(*nopass)               i/o statement
002200000000     d    iostm3                     10    value options(*nopass)               i/o statement
002300000000     d    iostm4                     10    value options(*nopass)               i/o statement
002400000000     d    iostm5                     10    value options(*nopass)               i/o statement
002500000000
002600000000     d  rtvstk         pr                  extpgm('QWVRCSTK')                   retrieve stack
002700000000     d  rsrecv                             like(wkrecv)                         receiver variable
002800000000     d  rsleng                             like(wkleng)                         receiver length
002900000000     d  rsform                             like(wkform)                         receiver format
003000000000     d  rsjiin                             like(jidf0100)                       job i/d info
003100000000     d  rsjifm                             like(wkjifm)                         job i/d format
003200000000     d  rsercd                             like(errcod)                         error code
003300000000
003400000000     d  errcod         ds                                                       error code
003500000000     d  ecbprv                       10i 0 inz                                  bytes provided
003600000000     d  ecbavl                       10i 0 inz                                  bytes available
003700000000     d  ecexid                        7                                         exception i/d
003800000000     d  ecrsrv                        1                                         reserved
003900000000     d  ecedta                       40                                         exception data
004000000000
004100000000     d  jidf0100       ds                                                       job i/d info 100
004200000000     d  j1name                       10    inz('*')                             job name
004300000000     d  j1user                       10                                         user profile
004400000000     d  j1numb                        6                                         job number
004500000000     d  j1ijid                       16                                         internal job i/d
004600000000     d  j1rsrv                        2    inz(x'0000')                         reserved
004700000000     d  j1thin                       10i 0 inz(1)                               thread indicator
004800000000     d  j1thid                        8    inz(x'0000000000000000')             thread identifier
004900000000
005000000000     d  rcvdta_h       ds                  based(hptr)                          receiver data hdr
005100000000     d  rhbrtn                       10i 0                                      bytes returned
005200000000     d  rhbavl                       10i 0                                      bytes available
005300000000     d  rhtcse                       10i 0                                      thread call stk entr
005400000000     d  rhocse                       10i 0                                      offset to cse info
005500000000     d  rhncse                       10i 0                                      num call stack entry
005600000000     d  rhthid                        8                                         thread i/d
005700000000     d  rhinst                        1                                         info status
005800000000
005900000000     d  rcvdta_d       ds                  based(dptr)                          receiver data dtl
006000000000     d  rdlcse                       10i 0                                      len of call stk ent
006100000000     d  rddtsi                       10i 0                                      displ to stmt i/d
006200000000     d  rdnmsi                       10i 0                                      num of stmt i/d
006300000000     d  rddtpi                       10i 0                                      displ to proc name
006400000000     d  rdlprn                       10i 0                                      len of proc name
006500000000     d  rdrqlv                       10i 0                                      request level
006600000000     d  rdpgnm                       10                                         program name
006700000000     d  rdplnm                       10                                         program lib name
006800000000
006900000000     d  wkrecv         s           4096                                         receiver variable
007000000000     d  wkleng         s             10i 0 inz(%len(wkrecv))                    receiver length
007100000000     d  wkform         s              8    inz('CSTK0100')                      receiver format
007200000000     d  wkjifm         s              8    inz('JIDF0100')                      job i/d format
007300000000     d  scnt           s                   like(rhncse)                         stack counter
007400000000     d  stmtid         s             10    based(sptr)
007500000000
007600000000     p**********************************************************************************************
007700000000
007800000000     p  firedby        b                   export                               fired by
007900000000
008000000000     d  firedby        pi              n                                        fired by
008100000000     d    pgmnam                     10    value                                program name
008200000000     d    iostm1                     10    value options(*nopass)               i/o statement
008300000000     d    iostm2                     10    value options(*nopass)               i/o statement
008400000000     d    iostm3                     10    value options(*nopass)               i/o statement
008500000000     d    iostm4                     10    value options(*nopass)               i/o statement
008600000000     d    iostm5                     10    value options(*nopass)               i/o statement
008700000000
008800000000      /free
008900000000
009000000000       rtvstk(wkrecv:wkleng:wkform:jidf0100:wkjifm:errcod);                  // retrieve pgm stack
009100000000
009200000000       hptr = %addr(wkrecv);                                                 // point to header
009300000000       dptr = %addr(wkrecv) + rhocse;                                        // point to 1st detail
009400000000       scnt = 1;                                                             // stack counter
009500000000
009600000000       dow rdpgnm <> pgmnam and scnt < rhncse;                               // while no pgm match
009700000000         dptr = dptr + rdlcse;                                               // point to next detail
009800000000         scnt = scnt + 1;                                                    // stack counter
009900000000       enddo;                                                                // while no pgm match
010000000000
010100000000       if rdpgnm = pgmnam;                                                   // if program match
010200000000         sptr = dptr + rddtsi;                                               // find statement i/d
010300000000       endif;                                                                // if program match
010400000000
010500000000       return ((%parms = 1 and rdpgnm = pgmnam) or
010600000000               (%parms > 1 and rdpgnm = pgmnam and stmtid = iostm1) or
010700000000               (%parms > 2 and rdpgnm = pgmnam and stmtid = iostm2) or
010800000000               (%parms > 3 and rdpgnm = pgmnam and stmtid = iostm3) or
010900000000               (%parms > 4 and rdpgnm = pgmnam and stmtid = iostm4) or
011000000000               (%parms > 5 and rdpgnm = pgmnam and stmtid = iostm5));        // return true or false
011100000000
011200000000      /end-free
011300000000
011400000000     p  firedby        e                                                        fired by
011500000000
