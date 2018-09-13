000100000000
000200000000      **********************************************************************************************
000300000000      *
000400000000      *  GEMKO INFORMATION GROUP
000500000000      *
000600030528      *  NAME:  REPTMODR
000700000000      *  TYPE:  RPG/4 PROGRAM
000800030528      *  DESC:  EXTERNALIZED REPORT MODS
000900000000      *
001000000000      *  NOTE:  THIS PROGRAM ASSUMES THAT THE ENVIRONMENT VARIABLE QIBM_NOTIFY_CRTSPLF HAS BEEN
001100000000      *         SET TO POINT TO THE SPECIFIED DATA QUEUE.  WHENEVER A SPOOLED FILE GETS CREATED ON
001200000000      *         THE SYSTEM, AN ENTRY GETS SENT TO THAT DATA QUEUE.  THIS PROGRAM ANALYZES THE DATA
001300000000      *         QUEUE ENTRIES TO SEE IF THE SPOOLED FILE HAS BEEN CREATED BY A MODIFIED PROGRAM.
001400000000      *         IF SO, THE APPROPRIATE MOD APPLICATION PROGRAM IS LAUNCHED.
001500000000      *
001600000000      **********************************************************************************************
001700000000
001800030528     freptmods  if   e           k disk                                         report mods index
001900000000
002000000000     d  rcvdta         pr                  extpgm('QRCVDTAQ')                   receive data queue
002100000000     d  rddqnm                             like(wkdqnm)                         data queue name
002200000000     d  rddqlb                             like(wkdqlb)                         library name
002300000000     d  rdleng                             like(wkleng)                         length of data
002400000000     d  rddata                             like(type02)                         queue entry data
002500000000     d  rdwait                             like(wkwait)                         wait time
002600000000
002700000000     d  aplus2modc     pr                  extpgm('APLUS2MODC')                 mods to aplus rpts
002800000000     d  a3fnam                       10                                         file name
002900000000     d  a3jnam                       10                                         job name
003000000000     d  a3user                       10                                         user profile
003100000000     d  a3jnum                        6                                         job number
003200000000     d  a3fnum                        4                                         file number
003300000000     d  a3prog                       10                                         program name
003400000000     d  a3libr                       10                                         program library
003500000000     d  a3qnam                       10                                         output queue name
003600000000     d  a3qlib                       10                                         output queue libr
003700000000     d  a3udta                       10                                         user data
003800000000
003900000000     d  type02         ds                                                       type 02 format
004000000000     d  t2func                       10                                         function
004100000000     d  t2type                        2                                         record type
004200000000     d  t2jnam                       10                                         job name
004300000000     d  t2user                       10                                         user profile
004400000000     d  t2jnum                        6                                         job number
004500000000     d  t2fnam                       10                                         file name
004600000000     d  t2fnum                       10I 0                                      file number
004700000000     d  t2qnam                       10                                         queue name
004800000000     d  t2qlib                       10                                         queue library
004900000000     d  t2cnam                       10                                         creating job name
005000000000     d  t2cser                       10                                         creating user name
005100000000     d  t2cnum                        6                                         creating job number
005200000000     d  t2udta                       10                                         user data
005300000000     d  t2thid                       10I 0                                      thread i/d
005400000000     d  t2snam                       10                                         system name
005500000000     d  t2cdat                        7                                         create date
005600000000     d  t2ctim                        6                                         create time
005700000000     d  t2rsv1                        9                                         reserved
005800000000
005900000000     d  k_aplus2mods   ds                  likerec(modsr:*key)                  key to aplus2mods
006000000000     d  wkdqnm         s             10    inz('APLUS2MODS')                    data queue name
006100000000     d  wkdqlb         s             10    inz('*LIBL')                         data queue library
006200000000     d  wkleng         s              5  0 inz(%len(type02))                    length of data
006300000000     d  wkwait         s              5  0 inz(-1)                              wait time
006400000000     d  wkfnum         s              4                                         file number alpha
006500030528     d  HecFreezesOvr  s               n                                        end of program flag
006600000000
006700000000      /free
006800000000
006900030528       dou HecFreezesOvr;                                                    // until 12th of never
007000000000
007100000000         rcvdta(wkdqnm:wkdqlb:wkleng:type02:wkwait);                         // rcv dtaq entry
007200000000
007300000000         if t2type = '02';                                                   // if type 2 dtaq entry
007400000000
007500000000           k_aplus2mods.amanam = t2udta;                                     // applic prog name
007600000000           k_aplus2mods.amprtf = t2fnam;                                     // print file name
007700000000
007800000000           chain %kds(k_aplus2mods:2) modsr;                                 // search aplus2mods
007900000000
008000000000           if %found(aplus2mods);                                            // if modified pgm
008100000000             wkfnum = %char(t2fnum);                                         // file number
008200000000             aplus2modc(t2fnam:t2jnam:t2user:t2jnum:wkfnum:                  // mods to aplus rpts
008300000000                        ammnam:ammlib:t2qnam:t2qlib:t2udta);
008400000000           endif;                                                            // if modified pgm
008500000000
008600000000         endif;                                                              // if type 2 dtaq entry
008700000000
008800030528       enddo;                                                                // until 12th of never
008900000000
009000000000       return;                                                               // end of program
009100000000
009200000000      /end-free
009300000000
