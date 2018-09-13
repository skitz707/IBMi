000100030627      /COPY QCPYSRC,H_SPEC
000200040407      // #*1s - beginning of add                       #*1s
000300040407     H BNDDIR('AR201')
000400040407      // #*1s - end of add                             #*1s
000500030627      //***************************************************************
000600040713      //**                                                             ***
000700030627      //*                program modifications log                      **
000800030627      //*                =========================                      **
000900030627      //*                                                               **
001000030627      //*  #*1e:  rel6.00:  03/21/03:  0605:  dle001  v6.0c00           **
001100030627      //*  converted to rpgiv - all prior markings removed              **
001200030627      //*                                                               **
001300031208      //*  #*1f:  rel5.01:  06/27/03:  1217:  t31801    v5.0c20         **
001400031208      //*  moved function key calcs so they happen before enter calcs.  **
001500030724      //*
001600031208      //*  #*1g:  rel5.01:  07/24/03:  0520:  t31841    v5.0c20         *
001700030724      //*  Load of currency toggle for payment history was incorrect.  ***
001800030724      //*  Referenced field in open file.                              ***
001900030908      //*
002000031208      //*  #*1h:  rel5.01:  09/08/03:  0823:  t32172    v5.0c21         *
002100030908      //*  Bypass mic message 2163 if being called from oe and         ***
002200030908      //*  customer number is blank.                                   ***
002300030627      //*                                                               **
002400031020      //*  #*1J:  rel5.01:  10/10/03:  8802:  t1958     V5.0C21        *
002500031011      //*  added email address to header screen.                       ***
002600031012      //*                                                               **
002700031012      //*  #*1k:  rel5.01:  10/11/03:  9605:  t1936     V5.0C21        *
002800031012      //*  Added logic to indicate suspended customers.                ***
002900031016      //*                                                               **
003000031016      //*  #*1l:  rel5.01:  10/16/03:  0929:  ca1976    v5.0c21         **
003100031016      //*  changed to handle customer number passed from open order     **
003200031016      //*  inquiry if selection was entered. the new call type will     **
003300031016      //*  be 'O'.                                                      **
003400031011      //*                                                               **
003500031023      //*  #*1m:  rel5.01: 10/23/03:  8802:  dep004    v5.0C21          **
003600031023      //*  if no invices selected and pos store terminal drawer         **
003700031023      //*  not being passed to ar160.  corrected.                       **
003800031206      //*                                                               **
003900031206      //*  #*1n:  rel5.01: 12/06/03:  0520:  I320560   v5.0C22          **
004000031206      //*  When toggling between review date and comment date after     **
004100031206      //*  paging down, information would be disapear corrected.        **
004200031208      //*                                                               **
004300031208      //*  #*1o:  rel5.01: 12/08/03:  1110:  t32518    v6.0c03          **
004400031208      //*  Corrected logic when selecting a comment for a change,       **
004500031208      //*  and the comment has more than one line that is identical.    **
004600031216      //*                                                              ***
004700031216      //*  #*1p:  rel5.01: 12/16/03:  0520:  i320500   v5.0c22         ***
004800031216      //*  Removed logic from fix 0u.  high credit is updated in the   ***
004900031216      //*  aged receivables process.                                   ***
005000040108      //*                                                               **
005100040108      //*  #*1q:  rel5.01: 01/08/04:  0929:  dep007    v5.0c23          **
005200040108      //*  added call to oep220 ep transaction inquiry on paidiv        **
005300040108      //*  screen.                                                      **
005400040323      //*                                                               **
005500040323      //*  #*1r:  rel6.01: 03/23/04:  6613:  i325503   v6.0c05          **
005600040323      //*  When paging back through the comments screen, the first      **
005700040323      //*  page of comments is always displayed rather than the         **
005800040323      //*  appropriate information.  Corrected.                         **
005900040407      //*                                                               **
006000040407      //*  #*1s:  rel6.01:  12/23/03:  0605:  dxa058  v6.0c05           **
006100040407      //*  Replaced use of secty  with new security functions           **
006200040407      //*  and added company authority checking logic to all            **
006300040407      //*  screens with a company entry field                           **
006400040419      //*                                                               **
006500040419      //*  #*1t:  rel6.01:  04/19/04:  0929:  t33011  v6.0c05           **
006600040419      //*  2nd level help not appearing on header and other screens     **
006700040419      //*  for mic messages. checked formats and changed to check for   **
006800040419      //*  correct line number(s).                                      **
006900040419      //*  Pre-Existing found while testing dxa058. chged V6 only       **
007000031023      //*                                                               **
007100040617      //*  #*1u:  rel6.01:  06/19/04:  8802:  DAR012  v6.0c06           **
007200040617      //*  Call new comment inquiry program AR203 instead of COMNT1.    **
007300040617      //*  screen.                                                      **
007400040716      //*                                                               **
007500040924      //*  #*1v:  rel6.01:  07/15/04:  0114:  T2627  v6.0c08            **
007600040716      //*  Function keys not always going to correct screens.           **
007700041012      //*                                                               **
007800041012      //*  #*1w:  rel6.01:  08/17/04:  1110:  dxa067  v6.0c08           **
007900041012      //*  Added salesrep authority checking; added Action Security     **
008000041012      //*  for AR Quick pay authorized users.                           **
008100050225      //*                                                               **
008200050225      //*  #*1x:  rel6.01:  02/24/05:  0520:  i340425 v6.0c10           **
008300050225      //*  Changed the invoice number find to find the most recent      **
008400050225      //*  occurance of an invoice number if duplicates exist.  A       **
008500050225      //*  message was added to indicate that additional payment        **
008600050225      //*  history exists for the same invoice.                         **
008700050225      //*                                                               **
008800050713      //*  #*1y:  rel6.01:  07/01/05:  8802:  dxa084  v7.0c00           **
008900050711      //*  Changed to restore last job funcion id after sub program     **
009000050711      //*  call.                                                        **
009100050715      //*                                                               **
009200050715      //*  #*1z:  rel7.00:  07/15/05:  0823:  t34299  v7.0c00           **
009300050715      //*  When there was a value in the reference field and the user   **
009400050715      //*  press the F13 toggle for IC, the screen would go to the      **
009500050715      //*  next screen and not toggle on the current screen.            **
009600050715      //*                                                               **
009700030627      //**                                                             ***
009800030627      //******************************************************************
009900030627      //******************************************************************
010000030627      //*****                                                       ******
010100030627      //***                  application  plus                        ****
010200030627      //*                    =================                          **
010300030627      //*                                                               **
010400030627      //*           program name:   ar201                               **
010500030627      //*                                                               **
010600030627      //*           program date:   june  1988                          **
010700030627      //*                                                               **
010800030627      //*           description:    a/r customer inquiry                **
010900030627      //*                                                               **
011000030627      //*                                                               **
011100030627      //*           (c) 1992-2004 Infor Global Solutions                **
011200030627      //*                                                               **
011300030627      //*                                                               **
011400030627      //*    this program provides inquiry into customer a/r            **
011500030627      //*    information which includes general information,            **
011600030627      //*    open and paid invoices, comments, and invoice detail.      **
011700030627      //*    customer comments maintenance is also provided.            **
011800030627      //*    inquiry into return goods authorization is also            **
011900030627      //*    provided.                                                  **
012000030627      //*                                                               **
012100030627      //*                                                               **
012200030627      //*    indicator summary                                          **
012300030627      //*      05,06,07,08,09,10,11,12 - marked invoices ar qp          **
012400030627      //*      15 -  toglle for a/r split invoices                      **
012500040323      //*      16 -  resets after roll back process        #*1r         **
012600030627      //*      20 -  work indicator                                     **
012700030627      //*      21 -  work indicator                                     **
012800040108      //*      22 -  ep is live                            #*1q         **
012900030627      //*                                                               **
013000030627      //*      24 -  display closed comment                             **
013100030627      //*     n24 -  display open comment                               **
013200030627      //*      25 -  display review date                                **
013300030627      //*      26 -  display comment date                               **
013400030627      //*      27 -  display closed date                                **
013500030627      //*     n28 -  display assigned to                                **
013600030627      //*      28 -  display entry by                                   **
013700030627      //*      30 -  show trading currency values                       **
013800030627      //*     n30 -  show local currency values                         **
013900030627      //*      31 -  ic is live and installed                           **
014000030627      //*      32 -  show extended view indicator                       **
014100030627      //*      33 - non-display inv amount on  line 1 openiv  screen    **
014200030627      //*      34 - non-display inv amount on  line 2 openiv  screen    **
014300030627      //*      35 - non-display inv amount on  line 3 openiv  screen    **
014400030627      //*      36 - non-display inv amount on  line 4 openiv  screen    **
014500030627      //*      37 - non-display inv amount on  line 5 openiv  screen    **
014600030627      //*      38 - non-display inv amount on  line 6 openiv  screen    **
014700030627      //*      39 - non-display inv amount on  line 7 openiv  screen    **
014800030627      //*      40 - non-display inv amount on  line 8 openiv  screen    **
014900030627      //*                                                               **
015000030627      //*      41 - reverse image on update of line 1 comment screen    **
015100030627      //*      42 - reverse image on update of line 2 comment screen    **
015200030627      //*      43 - reverse image on update of line 3 comment screen    **
015300030627      //*      44 - reverse image on update of line 4 comment screen    **
015400030627      //*      45 - reverse image on update of line 5 comment screen    **
015500030627      //*      46 - reverse image on update of line 6 comment screen    **
015600030627      //*      47 - reverse image on update of line 7 comment screen    **
015700030627      //*      48 - reverse image on update of line 8 comment screen    **
015800030627      //*                                                               **
015900030627      //*      50 - customer has no a/r customer number                 **
016000030627      //*      51 - order entry installed.                              **
016100030627      //*      52 -  reverse image indicators                           **
016200030627      //*      53 -  reverse image indicators                           **
016300030627      //*      54 -  reverse image indicators                           **
016400030627      //*      55 -  reverse image indicators                           **
016500030627      //*      56 -  reverse image indicators                           **
016600030627      //*      57 -  reverse image indicators                           **
016700030627      //*      58 -  reverse image indicators                           **
016800030627      //*      59 -  reverse image indicators                           **
016900030627      //*      60 -  reverse image indicators                           **
017000030627      //*      61 -  reverse image indicators                           **
017100030627      //*      62 -  reverse image indicators                           **
017200030627      //*      63 -  reverse image indicators                           **
017300030627      //*      64 -  reverse image indicators                           **
017400030627      //*      65 -  reverse image indicators                           **
017500030627      //*      66 -  reverse image indicators                           **
017600030627      //*      67 -  reverse image indicators                           **
017700030627      //*      68 -  reverse image indicators                           **
017800030627      //*      69 -  reverse image indicators                           **
017900030627      //*      70 -  reverse image indicators                           **
018000030627      //*      71 -  reverse image indicators                           **
018100030627      //*      72 -  reverse image indicators                           **
018200030627      //*      73 -  reverse image indicators                           **
018300030627      //*      74 -  reverse image indicators                           **
018400030627      //*      75 -  reverse image indicators                           **
018500030627      //*                                                               **
018600030627      //*      85 - lock comnt1 and comnt2 before write                 **
018700030627      //*      87 - order history exists for this invoice               **
018800030627      //*      88 - nondisplay company # for single company             **
018900030627      //*      89 - screen underline                                    **
019000030627      //*                                                               **
019100030627      //*      90 - general purpose/reverse image error message         **
019200030627      //*      91 - search purposes                                     **
019300030627      //*      92 - ic file chaining indicator                          **
019400030627      //*      93 - nondisplay cost & profit information                **
019500030627      //*      94 - nondisplay drop ship sales information              **
019600030627      //*      95 - nondisplay drop ship profit information             **
019700030627      //*      96 - nondisplay inv & cash dsc dates on inv det scr      **
019800030627      //*      98 - work indicator                                      **
019900030627      //*      99 - work indicator                                      **
020000030627      //*                                                               **
020100030627      //***                                                           ****
020200030627      //*****                                                       ******
020300030627      //******************************************************************
020400030627      //******************************************************************
020500030627      // a/r customer inquiry
020600030627     Far201fm   cf   e             workstn
020700030627     F                                     infds(apinds)
020800030627      // a+ a/r open invoice header  pgm prefix: rh
020900030627     Fardhd     uf   e           k disk
021000030627      // a+ a/r open invoice detail  pgm prefix: rd
021100030627     Farddt     if   e           k disk
021200030627      // a+ customer comments  pgm prefix: cc
021300030627     Farco4     if   e           k disk
021400030627     F                                     rename(arcomr:arco4r)
021500030627      // a+ a/r history invoice header  pgm prefix: ra
021600030627     Farhhd     if   e           k disk
021700030627      // a+ sales rep master  pgm prefix: sm
021800030627     Frepms     if   e           k disk
021900030627     Forctl     if   f  256    11aidisk    keyloc(1)
022000030627      // a+ customer master  pgm prefix: cm
022100030627     Fcusms     uf   e           k disk
022200030627      // a+ order header file pgm prefix: oh
022300030627     Forhed     if   e           k disk
022400030627      // a+ order history header file pgm prefix: oa
022500030627     Fhshed     if   e           k disk
022600030627      // a+ ar invoice comments file  pgm prefix: aj
022700030627     Faricm     if   e           k disk
022800030627      // a+ payment comment file     pgm prefix: rp
022900030627     Faropc     if   e           k disk
023000030627      // a+ a/r history payment comment file       pgm prefix: rq
023100030627     Farhpc     if   e           k disk
023200030627      // a+ ic a/r open invoice header  pgm prefix: rh
023300030627     Ficrdhd    if   e           k disk    usropn
023400030627      // a+ ic a/r open invoice detail  pgm prefix: rd
023500030627     Ficrddt    if   e           k disk    usropn
023600030627      // a+ ic a/r history invoice header  pgm prefix: ra
023700030627     Ficrhhd    if   e           k disk    usropn
023800030627      // a+ ic customer master  pgm prefix: cm
023900030627     Ficcsms    if   e           k disk    usropn
024000030627      // a+ a/r history invoice header logical   pgm prefix: ra
024100030627     Farhh1     if   e           k disk
024200030627     F                                     rename(arhhdr:arhh1r)
024300030627      // user default file     pgm prefix: uz
024400030627     Fusrfc     if   e           k disk
024500030627      // ar marked invoices    pgm prefix: am
024600030627     Farmrk     uf a e           k disk
024700040407      // #*1s - del  // user group pgm prefix: yu
024800040407      // #*1s - del Fuserg     if   e           k disk
024900040407      // #*1s - del  // user security file     pgm prefix: ys
025000040407      // #*1s - del Fsecty     if   e           k disk
025100030627      // pos ar quick pay logical   pgm prefix: a1
025200030627     Farpa1     uf   e           k disk
025300030627     F                                     rename(arpayr:arpa1r)
025400030627     Farhc2     uf   e           k disk
025500030627     F                                     rename(arhccr:arhc2r)
025600031011     f* *> 1j beg of add
025700031011     f* customer ship/to email address pgm prefix: ce
025800031011     fcseml     if   e           k disk
025900040625     f* #*1u - begin of add
026000040625      // AR header comment file prefix: ch
026100040625     Farchd     if   e           k disk
026200040625     f* #*1u - end of add
026300030627      //---------------------------------------------------------------
026400030627      // arrays
026500030627      //
026600030627     D cdd             s              6  0 dim(8)                               cash disc. date
026700030627     D cdb             s              7  2 dim(8)                               cash disc. amount
026800030627     D ky1             s             21    dim(8)                               ardhd key
026900030627     D ky2             s             29    dim(8)                               arhhd key
027000030627     D ky3             s             15    dim(8)                               arcom key
027100030627     D sq1             s              3  0 dim(8)                               arddt seq #
027200030627     D trm             s              2    dim(8)                               terms codes
027300030627     D msc             s             25    dim(6) ctdata perrcd(1)              misc description
027400030627     D hst             s              7  0 dim(8)                               history id
027500030627      //* table values were 'mtp'
027600030627     D w@@             s              1    dim(5)
027700030627      //
027800030627      //* ic screen arrays
027900030627      //---------------------------------------------------------------
028000030627      // data structures
028100030627      //
028200030627      // system control file key
028300030627     D                 ds
028400030627     D ctlky                         11
028500030627     D  ctlk1                         4    overlay(ctlky)
028600030627     D   x9comp                       2  0 overlay(ctlk1)
028700030627     D   x9appl                       2    overlay(ctlk1:3)
028800030627     D  ctlk2                         7    overlay(ctlky:5)
028900030627     D   x9ckey                       7    overlay(ctlk2)
029000030627      // customer number & invoice
029100030627     D                 ds
029200030627     D cusblk                        29
029300030627     D  cocus                        12  0 overlay(cusblk)
029400030627     D   k5cono                       2  0 overlay(cocus)
029500030627     D   k5csno                      10  0 overlay(cocus:3)
029600030627     D  @wn015                       15  0 overlay(cusblk:14)
029700030627     D  @wn001                        1  0 overlay(cusblk:29)
029800030627      // arddt key/work fields
029900030627     D                 ds
030000030627     D arddtl                        31
030100030627     D  cusinv                       21    overlay(arddtl)
030200030627     D   typno                        9    overlay(cusinv:13)
030300030627     D  seqno                         3  0 overlay(arddtl:22)
030400030627     D  seq07                         7  0 overlay(arddtl:25)
030500030627      // arhdt key/work fields
030600030627     D                 ds
030700030627     D arhdtl                        32
030800030627     D  cusnvc                       29    overlay(arhdtl)
030900030627     D  seqnr                         3    overlay(arhdtl:30)
031000030627      // work fields for julian date routine
031100030627     D                 ds
031200030627     D date                           8  0
031300030627     D  ccyy                          4  0 overlay(date)
031400030627     D   yy                           2  0 overlay(ccyy:3)
031500030627     D  mm                            2  0 overlay(date:5)
031600030627     D  dd                            2  0 overlay(date:7)
031700030627      // phone number format
031800030627      // customer master file key
031900030627     D                 ds
032000030627     D cuskey                        12  0
032100030627     D  #co#                          2  0 overlay(cuskey)
032200030627     D  #cusnr                       10  0 overlay(cuskey:3)
032300030627     D                 ds
032400030627     D pdhedk                 43     71
032500030627     D pddetk                        31
032600030627     D ophedk                        21
032700030627     D opdetk                        24
032800030627     D inqtp                          1
032900030627     D rl                             1  0
033000030627     D inqury                         1
033100030627     D cocusl                257    268  0
033200030627     D yesyes                276    277
033300030627     D ordlda                382    400
033400030627     D hstlda                        19
033500030627     D pgmcd                 464    464
033600030627     D colda                          2  0
033700030627     D hstkey                474    480  0
033800030627      //save century field
033900030627     D                 ds
034000030627     D udatex                         8  0
034100030627     D  ucc                           2  0 overlay(udatex)
034200030627     D                 ds
034300030627     D @@wk2a                         2
034400030627     D  @@wk2n                        2  0 overlay(@@wk2a)
034500030627      //
034600030627     D @@w10a                 11     20
034700030627     D  @@w10n                       10  0 overlay(@@w10a)
034800030627     D                 ds
034900030627     D k2clsb                         5
035000030627     D  cmcscl                        2    overlay(k2clsb)
035100030627     D  slash                         1    overlay(k2clsb:3)
035200030627     D  cmcssc                        2    overlay(k2clsb:4)
035300030627      // lda
035400030627     D lda            uds
035500030627     D ws                      5      6
035600030627     D user                   13     20
035700030627     D llpsst                100    104
035800030627     D llpstm                         5
035900030627     D llpsdr                         3
036000030627     D llclrk                         6
036100030627     D crflag                200    200
036200040625      // #*1U - beg of add
036300040622     D p@calp                201    210
036400040624     D p@cmtp                211    211
036500040622     D p@intp                212    212
036600040622     D p@inno                213    220
036700040622     D p@dt2p                221    228
036800040622     D p@arrp                229    234
036900040625      // #*1U - end of add
037000030627     D                 ds                  inz
037100030627     D  com                    1      8
037200030627     D                                     dim(8)                               comment y/' '
037300030627     D  com001                 1      1
037400030627     D  com002                 2      2
037500030627     D  com003                 3      3
037600030627     D  com004                 4      4
037700030627     D  com005                 5      5
037800030627     D  com006                 6      6
037900030627     D  com007                 7      7
038000030627     D  com008                 8      8
038100030627     D                 ds                  inz
038200030627     D  adj                    1     72  2
038300030627     D                                     dim(8)                               adjustment amount
038400030627     D  adj001                 1      9  2
038500030627     D  adj002                10     18  2
038600030627     D  adj003                19     27  2
038700030627     D  adj004                28     36  2
038800030627     D  adj005                37     45  2
038900030627     D  adj006                46     54  2
039000030627     D  adj007                55     63  2
039100030627     D  adj008                64     72  2
039200030627     D                 ds                  inz
039300030627     D  age                    1     48  0
039400030627     D                                     dim(8)                               age date
039500030627     D  age001                 1      6  0
039600030627     D  age002                 7     12  0
039700030627     D  age003                13     18  0
039800030627     D  age004                19     24  0
039900030627     D  age005                25     30  0
040000030627     D  age006                31     36  0
040100030627     D  age007                37     42  0
040200030627     D  age008                43     48  0
040300030627     D                 ds                  inz
040400030627     D  cdt                    1     48  0
040500030627     D                                     dim(8)                               comment date
040600030627     D  cdt001                 1      6  0
040700030627     D  cdt002                 7     12  0
040800030627     D  cdt003                13     18  0
040900030627     D  cdt004                19     24  0
041000030627     D  cdt005                25     30  0
041100030627     D  cdt006                31     36  0
041200030627     D  cdt007                37     42  0
041300030627     D  cdt008                43     48  0
041400030627     D                 ds                  inz
041500030627     D  cmt                    1    400
041600030627     D                                     dim(8)                               comment
041700030627     D  cmt001                 1     50
041800030627     D  cmt002                51    100
041900030627     D  cmt003               101    150
042000030627     D  cmt004               151    200
042100030627     D  cmt005               201    250
042200030627     D  cmt006               251    300
042300030627     D  cmt007               301    350
042400030627     D  cmt008               351    400
042500030627     D                 ds                  inz
042600030627     D  day                    1     24  0
042700030627     D                                     dim(8)                               number of days
042800030627     D  day001                 1      3  0
042900030627     D  day002                 4      6  0
043000030627     D  day003                 7      9  0
043100030627     D  day004                10     12  0
043200030627     D  day005                13     15  0
043300030627     D  day006                16     18  0
043400030627     D  day007                19     21  0
043500030627     D  day008                22     24  0
043600030627     D                 ds                  inz
043700030627     D  dsp                    1      8
043800030627     D                                     dim(8)                               dispute code
043900030627     D  dsp001                 1      1
044000030627     D  dsp002                 2      2
044100030627     D  dsp003                 3      3
044200030627     D  dsp004                 4      4
044300030627     D  dsp005                 5      5
044400030627     D  dsp006                 6      6
044500030627     D  dsp007                 7      7
044600030627     D  dsp008                 8      8
044700030627     D                 ds                  inz
044800030627     D  ftp                    1      8
044900030627     D                                     dim(8)                               fin chg invoice
045000030627     D  ftp001                 1      1
045100030627     D  ftp002                 2      2
045200030627     D  ftp003                 3      3
045300030627     D  ftp004                 4      4
045400030627     D  ftp005                 5      5
045500030627     D  ftp006                 6      6
045600030627     D  ftp007                 7      7
045700030627     D  ftp008                 8      8
045800030627     D                 ds                  inz
045900030627     D  iam                    1     72  2
046000030627     D                                     dim(8)                               invoice amount
046100030627     D  iam001                 1      9  2
046200030627     D  iam002                10     18  2
046300030627     D  iam003                19     27  2
046400030627     D  iam004                28     36  2
046500030627     D  iam005                37     45  2
046600030627     D  iam006                46     54  2
046700030627     D  iam007                55     63  2
046800030627     D  iam008                64     72  2
046900030627     D                 ds                  inz
047000030627     D  ind                    1     48  0
047100030627     D                                     dim(8)                               invoice date
047200030627     D  ind001                 1      6  0
047300030627     D  ind002                 7     12  0
047400030627     D  ind003                13     18  0
047500030627     D  ind004                19     24  0
047600030627     D  ind005                25     30  0
047700030627     D  ind006                31     36  0
047800030627     D  ind007                37     42  0
047900030627     D  ind008                43     48  0
048000030627     D                 ds                  inz
048100030627     D  inv                    1     64  0
048200030627     D                                     dim(8)                               invoice number
048300030627     D  inv001                 1      8  0
048400030627     D  inv002                 9     16  0
048500030627     D  inv003                17     24  0
048600030627     D  inv004                25     32  0
048700030627     D  inv005                33     40  0
048800030627     D  inv006                41     48  0
048900030627     D  inv007                49     56  0
049000030627     D  inv008                57     64  0
049100030627     D                 ds                  inz
049200030627     D  oiv                    1     64  0
049300030627     D                                     dim(8)                               orig inv number
049400030627     D  oiv001                 1      8  0
049500030627     D  oiv002                 9     16  0
049600030627     D  oiv003                17     24  0
049700030627     D  oiv004                25     32  0
049800030627     D  oiv005                33     40  0
049900030627     D  oiv006                41     48  0
050000030627     D  oiv007                49     56  0
050100030627     D  oiv008                57     64  0
050200030627     D                 ds                  inz
050300030627     D  lpy                    1     48  0
050400030627     D                                     dim(8)                               last payment date
050500030627     D  lpy001                 1      6  0
050600030627     D  lpy002                 7     12  0
050700030627     D  lpy003                13     18  0
050800030627     D  lpy004                19     24  0
050900030627     D  lpy005                25     30  0
051000030627     D  lpy006                31     36  0
051100030627     D  lpy007                37     42  0
051200030627     D  lpy008                43     48  0
051300030627     D                 ds                  inz
051400030627     D  oam                    1     72  2
051500030627     D                                     dim(8)                               open amount
051600030627     D  oam001                 1      9  2
051700030627     D  oam002                10     18  2
051800030627     D  oam003                19     27  2
051900030627     D  oam004                28     36  2
052000030627     D  oam005                37     45  2
052100030627     D  oam006                46     54  2
052200030627     D  oam007                55     63  2
052300030627     D  oam008                64     72  2
052400030627     D                 ds                  inz
052500030627     D  pmt                    1     72  2
052600030627     D                                     dim(8)                               payment amount
052700030627     D  pmt001                 1      9  2
052800030627     D  pmt002                10     18  2
052900030627     D  pmt003                19     27  2
053000030627     D  pmt004                28     36  2
053100030627     D  pmt005                37     45  2
053200030627     D  pmt006                46     54  2
053300030627     D  pmt007                55     63  2
053400030627     D  pmt008                64     72  2
053500030627     D                 ds                  inz
053600030627     D  rev                    1     48  0
053700030627     D                                     dim(8)                               review date
053800030627     D  rev001                 1      6  0
053900030627     D  rev002                 7     12  0
054000030627     D  rev003                13     18  0
054100030627     D  rev004                19     24  0
054200030627     D  rev005                25     30  0
054300030627     D  rev006                31     36  0
054400030627     D  rev007                37     42  0
054500030627     D  rev008                43     48  0
054600030627     D                 ds                  inz
054700030627     D  rf                     1      8  0
054800030627     D                                     dim(8)                               ref number
054900030627     D  rf0001                 1      1  0
055000030627     D  rf0002                 2      2  0
055100030627     D  rf0003                 3      3  0
055200030627     D  rf0004                 4      4  0
055300030627     D  rf0005                 5      5  0
055400030627     D  rf0006                 6      6  0
055500030627     D  rf0007                 7      7  0
055600030627     D  rf0008                 8      8  0
055700030627     D                 ds                  inz
055800030627     D  trn                    1     48  0
055900030627     D                                     dim(8)                               last trans date
056000030627     D  trn001                 1      6  0
056100030627     D  trn002                 7     12  0
056200030627     D  trn003                13     18  0
056300030627     D  trn004                19     24  0
056400030627     D  trn005                25     30  0
056500030627     D  trn006                31     36  0
056600030627     D  trn007                37     42  0
056700030627     D  trn008                43     48  0
056800030627     D                 ds                  inz
056900030627     D  typ                    1      8
057000030627     D                                     dim(8)                               comment type
057100030627     D  typ001                 1      1
057200030627     D  typ002                 2      2
057300030627     D  typ003                 3      3
057400030627     D  typ004                 4      4
057500030627     D  typ005                 5      5
057600030627     D  typ006                 6      6
057700030627     D  typ007                 7      7
057800030627     D  typ008                 8      8
057900030627     D                 ds                  inz
058000030627     D  imt                    1    104  2
058100030627     D                                     dim(8)                               invoice amount
058200030627     D  imt001                 1     13  2
058300030627     D  imt002                14     26  2
058400030627     D  imt003                27     39  2
058500030627     D  imt004                40     52  2
058600030627     D  imt005                53     65  2
058700030627     D  imt006                66     78  2
058800030627     D  imt007                79     91  2
058900030627     D  imt008                92    104  2
059000030627     D                 ds                  inz
059100030627     D  omt                    1    104  2
059200030627     D                                     dim(8)                               open amount
059300030627     D  omt001                 1     13  2
059400030627     D  omt002                14     26  2
059500030627     D  omt003                27     39  2
059600030627     D  omt004                40     52  2
059700030627     D  omt005                53     65  2
059800030627     D  omt006                66     78  2
059900030627     D  omt007                79     91  2
060000030627     D  omt008                92    104  2
060100030627     D                 ds                  inz
060200030627     D  ajt                    1    104  2
060300030627     D                                     dim(8)                               adjst amount
060400030627     D  ajt001                 1     13  2
060500030627     D  ajt002                14     26  2
060600030627     D  ajt003                27     39  2
060700030627     D  ajt004                40     52  2
060800030627     D  ajt005                53     65  2
060900030627     D  ajt006                66     78  2
061000030627     D  ajt007                79     91  2
061100030627     D  ajt008                92    104  2
061200030627     D                 ds                  inz
061300030627     D  ptt                    1    104  2
061400030627     D                                     dim(8)                               payment amount
061500030627     D  ptt001                 1     13  2
061600030627     D  ptt002                14     26  2
061700030627     D  ptt003                27     39  2
061800030627     D  ptt004                40     52  2
061900030627     D  ptt005                53     65  2
062000030627     D  ptt006                66     78  2
062100030627     D  ptt007                79     91  2
062200030627     D  ptt008                92    104  2
062300030627     D                 ds                  inz
062400030627     D  cur                    1     24
062500030627     D                                     dim(8)                               curr symbol
062600030627     D  cur001                 1      3
062700030627     D  cur002                 4      6
062800030627     D  cur003                 7      9
062900030627     D  cur004                10     12
063000030627     D  cur005                13     15
063100030627     D  cur006                16     18
063200030627     D  cur007                19     21
063300030627     D  cur008                22     24
063400030627     D                 ds                  inz
063500030627     D  ent                    1     70
063600030627     D                                     dim(7)                               entered by
063700030627     D  ent001                 1     10
063800030627     D  ent002                11     20
063900030627     D  ent003                21     30
064000030627     D  ent004                31     40
064100030627     D  ent005                41     50
064200030627     D  ent006                51     60
064300030627     D  ent007                61     70
064400030627     D                 ds                  inz
064500030627     D  asg                    1     42
064600030627     D                                     dim(7)                               assgin to
064700030627     D  asg001                 1      6
064800030627     D  asg002                 7     12
064900030627     D  asg003                13     18
065000030627     D  asg004                19     24
065100030627     D  asg005                25     30
065200030627     D  asg006                31     36
065300030627     D  asg007                37     42
065400030627     D                 ds                  inz
065500030627     D  cld                    1     42  0
065600030627     D                                     dim(7)                               close date
065700030627     D  cld001                 1      6  0
065800030627     D  cld002                 7     12  0
065900030627     D  cld003                13     18  0
066000030627     D  cld004                19     24  0
066100030627     D  cld005                25     30  0
066200030627     D  cld006                31     36  0
066300030627     D  cld007                37     42  0
066400031208     d* #*1o Begin of Add
066500031208     d*  Comment Number array
066600031208     D                 ds                  inz
066700031208     D  cno                    1     48  0
066800031208     D                                     dim(8)                               number of days
066900031208     D  cno001                 1      6  0
067000031208     D  cno002                 7     12  0
067100031208     D  cno003                13     18  0
067200031208     D  cno004                19     24  0
067300031208     D  cno005                25     30  0
067400031208     D  cno006                31     36  0
067500031208     D  cno007                37     42  0
067600031208     D  cno008                43     48  0
067700031208     d* #*1o End of Add
067800030627      //
067900030627      //* data structure for composite/partial fields
068000030627      //
068100030627     D                 ds                  inz
068200030627     D $3c006                         8  0
068300030627     D  rhagcc                        2  0 overlay($3c006)
068400030627     D  rhagdt                        6  0 overlay($3c006:3)
068500030627      //
068600030627      //
068700030627     D $1c001                 41     55
068800030627     D  $1c002                       12  0 overlay($1c001)
068900030627     D   cccono                       2  0 overlay($1c002)
069000030627     D   cccsno                      10  0 overlay($1c002:3)
069100030627      //
069200030627     D $3c001                 80    100
069300030627     D  $3c002                       12  0 overlay($3c001)
069400030627     D   rhcono                       2  0 overlay($3c002)
069500030627     D   rhcsno                      10  0 overlay($3c002:3)
069600030627     D  $3c003                        9    overlay($3c001:13)
069700030627     D   rhintp                       1    overlay($3c003)
069800030627     D   rhinno                       8  0 overlay($3c003:2)
069900030627      //
070000030627     D $4c001                        32
070100030627     D  $4c002                       29    overlay($4c001)
070200030627     D   rbcono                       2  0 overlay($4c002)
070300030627     D   rbcsno                      10  0 overlay($4c002:3)
070400030627     D   rbagcc                       2  0 overlay($4c002:13)
070500030627     D   rbagdt                       6  0 overlay($4c002:15)
070600030627     D   rbintp                       1    overlay($4c002:21)
070700030627     D   rbinno                       8  0 overlay($4c002:22)
070800030627     D  rbsq02                        3  0 overlay($4c001:30)
070900030627      //
071000030627      // the from and to positions of the rest of the data structure
071100030627     D                 ds                  inz
071200030627     D $5c001                132    160
071300030627     D  $5c002                       12  0 overlay($5c001)
071400030627     D   racono                       2  0 overlay($5c002)
071500030627     D   racsno                      10  0 overlay($5c002:3)
071600030627     D  $5c003                        8  0 overlay($5c001:13)
071700030627     D   raagcc                       2  0 overlay($5c003)
071800030627     D   raagdt                       6  0 overlay($5c003:3)
071900030627     D  raintp                        1    overlay($5c001:21)
072000030627     D  rainno                        8  0 overlay($5c001:22)
072100030627      //
072200030627     D $3c005                166    173  0
072300030627     D  rhcdcc                        2  0 overlay($3c005)
072400030627     D  rhcddt                        6  0 overlay($3c005:3)
072500030627      //
072600030627     D #7c001                210    224
072700030627     D  #7cono                        2  0 overlay(#7c001)
072800030627     D  #7csno                       10  0 overlay(#7c001:3)
072900030627     D  #7sq03                        3  0 overlay(#7c001:13)
073000030627      //
073100030627     D $3c004                280    287  0
073200030627     D  rhivcc                        2  0 overlay($3c004)
073300030627     D  rhivdt                        6  0 overlay($3c004:3)
073400030627      //
073500030627     D #6c001                         8  0
073600030627     D  #6lccc                        2  0 overlay(#6c001)
073700030627     D  #6lcnd                        6  0 overlay(#6c001:3)
073800030627      //
073900030627     D $5c004                         8  0
074000030627     D  ralpcc                        2  0 overlay($5c004)
074100030627     D  ralpdt                        6  0 overlay($5c004:3)
074200030627      //
074300030627      //
074400030627     D #7c002                336    343  0
074500030627     D  #7rvcc                        2  0 overlay(#7c002)
074600030627     D  #7rvdt                        6  0 overlay(#7c002:3)
074700030627      //
074800030627     D $2c003                         8  0
074900030627     D  rdtrcc                        2  0 overlay($2c003)
075000030627     D  rdtrdt                        6  0 overlay($2c003:3)
075100030627      //
075200030627     D $4c003                         8  0
075300030627     D  rbtrcc                        2  0 overlay($4c003)
075400030627     D  rbtrdt                        6  0 overlay($4c003:3)
075500030627      //
075600030627     D #7c003                369    376  0
075700030627     D  #7cmcc                        2  0 overlay(#7c003)
075800030627     D  #7cmdt                        6  0 overlay(#7c003:3)
075900030627      //
076000030627     D $6c001                        10
076100030627     D  cmzip4                       10    overlay($6c001)
076200030627     D $2c001                        31
076300030627     D  $2c002                       21    overlay($2c001)
076400030627     D   rdcono                       2  0 overlay($2c002)
076500030627     D   rdcsno                      10  0 overlay($2c002:3)
076600030627     D   rdintp                       1    overlay($2c002:13)
076700030627     D   rdinno                       8  0 overlay($2c002:14)
076800030627     D  rdsq03                        3  0 overlay($2c001:22)
076900030627     D  rdcisq                        7  0 overlay($2c001:25)
077000030627      //
077100030627      //----------------------------------------------------*
077200030627      // key list mapping data structure for file: arcom
077300030627     D a$cc0           ds                  inz
077400030627     D a$cc0h                        18  0
077500030627     D  a$cono                        2  0 overlay(a$cc0h)
077600030627     D  a$csno                       10  0 overlay(a$cc0h:3)
077700030627     D  a$sq03                        6  0 overlay(a$cc0h:13)
077800030627      // key list mapping data structure for file: arddt
077900030627     D d$rd0           ds                  inz
078000030627     D d$rd0h                        31
078100030627     D  d$cono                        2  0 overlay(d$rd0h)
078200030627     D  d$csno                       10  0 overlay(d$rd0h:3)
078300030627     D  d$intp                        1    overlay(d$rd0h:13)
078400030627     D  d$inno                        8  0 overlay(d$rd0h:14)
078500030627     D  d$sq03                        3  0 overlay(d$rd0h:22)
078600030627     D   d#sq03                       3    overlay(d$sq03)
078700030627     D  d$sq07                        7  0 overlay(d$rd0h:25)
078800030627     D   d#sq07                       7    overlay(d$sq07)
078900030627      // key list mapping data structure for file: ardhd
079000030627     D c$rh0           ds                  inz
079100030627     D c$rh0h                        21
079200030627     D  c$cono                        2  0 overlay(c$rh0h)
079300030627     D  c$csno                       10  0 overlay(c$rh0h:3)
079400030627     D  c$intp                        1    overlay(c$rh0h:13)
079500030627     D  c$inno                        8  0 overlay(c$rh0h:14)
079600030627     D   c#inno                       8    overlay(c$inno)
079700030627      // key list mapping data structure for file: arhdt
079800030627     D f$rb0           ds                  inz
079900030627     D f$rb0h                        32
080000030627     D  f$cono                        2  0 overlay(f$rb0h)
080100030627     D  f$csno                       10  0 overlay(f$rb0h:3)
080200030627     D  f$agcc                        2  0 overlay(f$rb0h:13)
080300030627     D  f$agdt                        6  0 overlay(f$rb0h:15)
080400030627     D  f$intp                        1    overlay(f$rb0h:21)
080500030627     D  f$inno                        8  0 overlay(f$rb0h:22)
080600030627     D  f$sq02                        3  0 overlay(f$rb0h:30)
080700030627      // key list mapping data structure for file: arhhd
080800030627     D e$ra0           ds                  inz
080900030627     D e$ra0h                        29
081000030627     D  e$cono                        2  0 overlay(e$ra0h)
081100030627     D  e$csno                       10  0 overlay(e$ra0h:3)
081200030627     D  e$agcc                        2  0 overlay(e$ra0h:13)
081300030627     D  e$agdt                        6  0 overlay(e$ra0h:15)
081400030627     D  e$intp                        1    overlay(e$ra0h:21)
081500030627     D  e$inno                        8  0 overlay(e$ra0h:22)
081600030627      // key list mapping data structure for file: cusms
081700030627     D b$cm0           ds                  inz
081800030627     D b$cm0h                        12  0
081900030627     D  b$cono                        2  0 overlay(b$cm0h)
082000030627     D  b$csno                       10  0 overlay(b$cm0h:3)
082100030627      // key list mapping data structure for file: hshe2
082200030627      // key list mapping data structure for file: repms
082300030627     D g$sm0           ds                  inz
082400030627     D g$sm0h                         7  0
082500030627     D  g$cono                        2  0 overlay(g$sm0h)
082600030627     D  g$rp#1                        5  0 overlay(g$sm0h:3)
082700030627     D                 ds
082800030627     D ky1#                          21
082900030627     D  co1#                          2    overlay(ky1#)
083000030627     D  cu1#                         10    overlay(ky1#:3)
083100030627     D  tp1#                          1    overlay(ky1#:13)
083200030627     D  in1#                          8    overlay(ky1#:14)
083300030627     D                 ds
083400030627     D ky2#                          29
083500030627     D  co2#                          2    overlay(ky2#)
083600030627     D  cu2#                         10    overlay(ky2#:3)
083700030627     D  dt2#                          8    overlay(ky2#:13)
083800030627     D  tp2#                          1    overlay(ky2#:21)
083900030627     D  in2#                          8    overlay(ky2#:22)
084000030627      //----------------------------------------------------*
084100030627      // file information data structure
084200030627     D apinds          ds
084300030627     D apcusr                370    371b 0
084400030627      //----------------------------------------------------*
084500030627      //
084600030627      // work fields for "?" routines
084700030627     D                 ds
084800030627     D w$cono                         2
084900030627     D  w#cono                        2  0 overlay(w$cono)
085000030627     D w$rpno                 11     15
085100030627     D  w#rpno                        5  0 overlay(w$rpno)
085200030627      //----------------------------------------------------*
085300030627      // indicator seton/setof named constant(s)
085400030627     D #off20          c                   const('00000000000000000000')
085500030627      //
085600030627      // date fields
085700030627     D                 ds
085800030627     D d@t1                           6  0
085900030627     D  m@n                           2    overlay(d@t1)
086000030627     D  d@y                           2    overlay(d@t1:3)
086100030627     D  y@r                           2    overlay(d@t1:5)
086200030627     D                 ds
086300030627     D d@t2                           6  0
086400030627     D  fl@1                          2    overlay(d@t2)
086500030627     D  fl@2                          2    overlay(d@t2:3)
086600030627     D  fl@3                          2    overlay(d@t2:5)
086700030627     D                sds
086800030627     D @suser                254    263
086900030627      // prototype for ar201 "Customer A/R Inquiry"
087000030627      /COPY QCPYSRC,P_AR201
087100030627      // prototype for 'xagdft' "Determine Default Company/Warehouse for User    XA"
087200030627      /COPY QCPYSRC,P_XAGDFT
087300030627      // prototype for 'ar160p' "AR Quick Pay Apply Cash"
087400030627      /COPY QCPYSRC,P_AR160P
087500030627      // prototype for 'xasctyp' "XA A+ Security Checking Program"
087600030627      /COPY QCPYSRC,P_XASCTYP
087700030627      // prototype for 'ar202' "A/R Inquiry Detail Sub Pgm"
087800030627      /COPY QCPYSRC,P_AR202
087900040625      // #*1u - begin of add
088000040617      // prototype for 'ar203' "Customer Comments Inquiry"
088100040617      /COPY QCPYSRC,P_AR203
088200040625      // #*1u - end of add
088300030627      // prototype for 'ar210p' "Customer Check Number Inquiry"
088400030627      /COPY QCPYSRC,P_AR210P
088500030627      // prototype for 'ar204' "Customer Comments"
088600030627      /COPY QCPYSRC,P_AR204
088700030627      // prototype for 'oe221a' "Customer Order/Shipment Selection Program"
088800030627      /COPY QCPYSRC,P_OE221A
088900030627      // prototype for 'csrch' "Customer Search sub program (V2.0)              XA"
089000030627      /COPY QCPYSRC,P_CSRCH
089100030627      // prototype for 'oe272' "Return Reason List Program"
089200030627      /COPY QCPYSRC,P_OE272
089300030627      // prototype for 'xaschk' "User Security Check Program"
089400030627      /COPY QCPYSRC,P_XASCHK
089500030627      // prototype for 'ar245' "Update Next Review Date on CUSMS"
089600030627      /COPY QCPYSRC,P_AR245
089700030627      // prototype for 'sa220' "Customer Sales Analysis Comparison Inquiry"
089800030627      /COPY QCPYSRC,P_SA220
089900030627      // prototype for 'oe290' "Item Price Inquiry"
090000030627      /COPY QCPYSRC,P_OE290
090100030627      // prototype for 'hlp200' "A+ Help Text Window Driver Program (Field selectXA"
090200030627      /COPY QCPYSRC,P_HLP200
090300030627      // prototype for 'xa200' "APLUS code window program"
090400030627      /COPY QCPYSRC,P_XA200
090500030627      // prototype for 'tpckobjp' "Check for existance of an object                XA"
090600030627      /COPY QCPYSRC,P_TPCKOBJP
090700040108       //* #*1q - beg of add
090800040108      // prototype for 'oep220cp' "EP Transaction Log Inquiry"
090900040108      /COPY QCPYSRC,P_OEP220CP
091000040108       //* #*1q - end of add
091100040407      // #*1s - beginning of add                       #*1s
091200040407      // prototype for SECURITY "Security Functions"                          XA"
091300040407      /COPY QCPYSRC,P_XA950S
091400040407      // #*1s - end of add                             #*1s
091500030627     D ar201           pi
091600030627     D caltp$                         1
091700030627     D cono$                          2
091800030627     D cusn$                         10
091900030627      //---------------------------------------------------------------------
092000030627      // Stand Alone Fields - TOP
092100030627      //---------------------------------------------------------------------
092200030627     D $$inam          s                   like(rainam)
092300030627     D $$inat          s                   like(rainat)
092400030627     D $#              s              5  0
092500030627     D #$              s              3  0
092600030627     D #@whid          s              2
092700030627     D @@agcc          s                   like(raagcc)
092800030627     D @@agdt          s                   like(raagdt)
092900030627     D @@byp@          s              1
093000030627     D @@curr          s              3
093100030627     D @@dpft          s             13  2
093200030627     D @@dplt          s             15  2
093300030627     D @@dpyt          s             15  2
093400030627     D @@futr          s              1
093500030627     D @@hsid          s                   like(rahsid)
093600030627     D @@inno          s                   like(rainno)
093700030627     D @@intp          s                   like(raintp)
093800030627     D @@mark          s              1
093900030627     D @@page          s              3  0
094000030627     D @@pfat          s             13  2
094100030627     D @@pflt          s             15  2
094200030627     D @@pfyt          s             15  2
094300030627     D @@size          s              3  0
094400030627     D @@wk10          s             10  0
094500030627     D @@wk7           s              7  0
094600030627     D @@wk9           s              9  0
094700030627     D @@ws02          s              2
094800030627     D @altsh          s              1
094900030627     D @bcmno          s              6  0
095000030627     D @bcono          s              2  0
095100030627     D @bcsno          s             10  0
095200030627     D @calp           s              1
095300030627     D @caltp          s              1
095400030627     D @comno          s              2
095500030627     D @conp           s              2
095600030627     D @crid           s             10
095700030627     D @csnp           s             10
095800030627     D @dftcr          s              3
095900030627     D @ldesc          s             25
096000030627     D @lsymo          s              3
096100030627     D @oe290          s              1
096200030627     D @pcalp          s              1
096300030627     D @pcono          s              2
096400030627     D @pcsno          s             10
096500030627     D @pitem          s             27
096600030627     D @pwhid          s              2
096700030627     D @qpcur          s              3
096800030627     D @r202r          s              1
096900030627     D @seecs          s              1
097000030627     D @shpn           s              7
097100030627     D @shtdn          s              1
097200030627     D @tcmno          s              6  0
097300030627     D @tcono          s              2  0
097400030627     D @tcsno          s             10  0
097500030627     D @tdesc          s             25
097600030627     D @tsymo          s              3
097700030627     D @user           s             10
097800030627     D @usrfc          s              1
097900030627     D @zdfdt          s              1
098000030627     D agday           s              9  0
098100030627     D agedt           s              8  0
098200030627     D agedta          s                   like($3c006)
098300030627     D agedtc          s                   like($5c003)
098400030627     D apccol          s              2  0
098500030627     D apcmic          s              4
098600030627     D apcrow          s              2  0
098700030627     D appgnm          s              8
098800030627     D apscnm          s              6
098900030627     D arckey          s             12  0
099000030627     D arcome          s                   like($1c001)
099100030627     D arddtb          s                   like($2c001)
099200030627     D ardhda          s                   like($3c001)
099300030627     D ardhdf          s             21
099400030627     D ardhdl          s             21
099500030627     D arhdtd          s                   like($4c001)
099600030627     D arhhdc          s                   like($5c001)
099700030627     D arhhdf          s             29
099800030627     D arhhdl          s             29
099900030627     D balfwd          s                   like(cmbfoi)
100000030627     D caltp#          s              1
100100030627     D ccyyx           s              4  0
100200030627     D cdsdta          s                   like($3c005)
100300030627     D chgcus          s              1
100400030627     D chnr#           s             10
100500030627     D cityp           s              8
100600030627     D cmdky           s              1
100700030627     D cmdkyp          s              1
100800030627     D cnc             s              1
100900030627     D cocusa          s                   like($3c002)
101000030627     D cocusc          s                   like($5c002)
101100030627     D cocuse          s                   like($1c002)
101200030627     D comky           s                   like(#7c001)
101300030627     D comnop          s              2
101400030627     D count1          s              1  0
101500030627     D cstpc           s              1
101600030627     D cusivb          s                   like($2c002)
101700030627     D cusnmp          s             30
101800030627     D cusnrp          s             10
101900030627     D cusnvd          s                   like($4c002)
102000030627     D date8           s              8  0
102100030627     D day1            s              4  0
102200030627     D deleteflag      s              1
102300030627     D detpgm          s              1
102400030627     D detyp           s              1
102500030627     D eplive          s              1
102600030627     D flag@           s              1
102700030627     D frcldp          s              6
102800030627     D fredtp          s              6
102900030627     D fridtp          s              6
103000030627     D frinrp          s              8
103100030627     D frmoep          s              1
103200030627     D frmpop          s             22
103300030627     D frordp          s              5
103400030627     D frrdtp          s              6
103500030627     D hcocus          s             12  0
103600030627     D hcusnr          s             10  0
103700030627     D histry          s              1
103800030627     D hstpgm          s              1
103900030627     D hstynp          s              1
104000030627     D iclive          s              1
104100030627     D icopen          s              1
104200030627     D indcon          s              1
104300030627     D invdta          s                   like($3c004)
104400030627     D jday            s              9  0
104500030627     D last            s                   like(k3morl)
104600030627     D lcdato          s                   like(#6c001)
104700030627     D lday            s              9  0
104800030627     D leapyr          s              1  0
104900030627     D lib@            s             10
105000030627     D loop            s              1
105100030627     D lpytdc          s                   like($5c004)
105200030627     D m$cono          s                   like(amcono)
105300030627     D m$csno          s                   like(amcsno)
105400030627     D m$inno          s                   like(aminno)
105500030627     D m$intp          s                   like(amintp)
105600030627     D mdays           s              5  0
105700030627     D mk              s              2  0
105800030627     D mode            s              1
105900030627     D more            s                   like(k3morl)
106000030627     D n               s              1
106100030627     D nines           s             17
106200030627     D ninet@          s              1
106300030627     D nomore          s              1
106400030627     D nxtinv          s             17
106500030627     D nxtit           s              9
106600030627     D obj@            s             10
106700030627     D oep101          s              1
106800030627     D openflag        s              1
106900030627     D openor          s              1
107000030627     D opnflg          s              1
107100030627     D opnynp          s              1
107200030627     D ordidp          s              9
107300030627     D ordpgm          s              1
107400030627     D orsrc@          s              2
107500030627     D otypep          s              1
107600030627     D p@clrk          s              6
107700030627     D p@cmno          s              6
107800030627     D p@cono          s              2
107900030627     D p@csno          s             10
108000030627     D p@func          s              1
108100030627     D p@pgmn          s              6
108200030627     D p@post          s              1
108300030627     D p@psdr          s              3
108400030627     D p@psst          s              5
108500030627     D p@pstm          s              5
108600030627     D p@rest          s              1
108700030627     D p@seq#          s              6
108800030627     D p@shdn          s              1
108900030627     D paid            s              1
109000030627     D pasynp          s              1
109100030627     D pdflg           s              1
109200030627     D pos             s              4
109300030627     D p1cono          s              2
109400030627     D p1csno          s             10
109500030627     D q#cono          s              2  0
109600030627     D q#flag          s              1
109700030627     D q#hit           s              1  0
109800030627     D q#line          s              2  0
109900030627     D q#name          s             10
110000030627     D q#rtvl          s              6
110100030627     D q#sbky          s              5
110200030627     D q#shdn          s              1
110300030627     D q#xflg          s              1
110400030627     D r               s              1  0
110500030627     D repkey          s              7
110600030627     D revdtx          s                   like(#7c002)
110700030627     D rgapgm          s              1
110800030627     D roll            s              1
110900030627     D s@lcnd          s                   like(k5lcnd)
111000030627     D s@rvdy          s                   like(k5rvdy)
111100030627     D sa220@          s              1
111200030627     D schpgm          s              1
111300030627     D shptop          s              7
111400030627     D shtdn           s              1
111500030627     D shtdn@          s              1
111600030627     D statep          s             10
111700030627     D tocldp          s              6
111800030627     D toedtp          s              6
111900030627     D toidtp          s              6
112000030627     D toinrp          s              8
112100030627     D toordp          s              5
112200030627     D topop           s             22
112300030627     D tordtp          s              6
112400030627     D totdy           s              8  0
112500030627     D totin           s              6  0
112600030627     D trndtb          s                   like($2c003)
112700030627     D trndtd          s                   like($4c003)
112800030627     D typ@            s              7
112900030627     D typnra          s                   like($3c003)
113000030627     D updateflag      s              1
113100030627     D usdftp          s              1
113200030627     D usrflg          s              1
113300030627     D uz0key          s             10
113400030627     D warnf@          s              1
113500030627     D wrkpc           s              5  4
113600030627     D ws4             s              4
113700030627     D x               s              2  0
113800030627     D xagdft@         s              1
113900030627     D xa200@          s              1
114000030627     D xxcmno          s                   like(cccmno)
114100030627     D xxcmnt          s                   like(cccmnt)
114200030627     D xxcono          s                   like(cccono)
114300030627     D xxcsno          s                   like(cccsno)
114400030627     D xxsq03          s                   like(ccsq03)
114500030627     D x1csno          s             10
114600030627     D x1frco          s              2
114700030627     D x1frdt          s              8
114800030627     D x1frrp          s              5
114900030627     D x1frwh          s              2
115000030627     D x1itno          s             27
115100030627     D x1rtrc          s              2
115200030627     D x1toco          s              2
115300030627     D x1todt          s              8
115400030627     D x1torp          s              5
115500030627     D x1towh          s              2
115600030627     D x1vndr          s              6
115700030627     D y               s              3  0
115800030627     D yes             s                   like(mltco)
115900030627     D z               s              3  0
116000031011     D* #*1j - BEGIN OF ADD
116100031011     D @@EMGP          s                   like(CEEMGP)
116200031011     D @@SHP#          s                   like(CESHP#)
116300031011     D index           s              1  0
116400031011     D* #*1j - END OF ADD
116500030627     D zsrchp          s              1
116600031208     d* #*1o Added next line
116700031208     D x@cmno          s                   like(cccmno)
116800040407      // #*1s - beginning of add                       #*1s
116900041012      // #*1w deleted next line
117000041012      //D @@group10       s             10
117100040407      // #*1s - end of add                             #*1s
117200040625      // #*1u - begin of add
117300040617     D arcr            s              6
117400040617     D calltp          s              6
117500040625     d* #*1u - begin of add
117600040621     d ar203@          s              6
117700040621     d callpgm         s             10
117800040621     d intp$           s              2
117900040621     d inno$           s              8
118000040621     d commnt          s              1
118100040624     d cmtyp$          s              1
118200040621     D endofcomment    s               n   inz(*off)
118300040625     D xxrect          s                   like(chrect)
118400040625     D xxagcc          s                   like(chagcc)
118500040625     D xxagdt          s                   like(chagdt)
118600040625     D xxintp          s                   like(chintp)
118700040625     D xxinno          s                   like(chinno)
118800040625      // #*1u - end of add
118900050711      // #*1y - beginning of add                       #1yg
119000050711     D holdFunc        s              4
119100050711      // #*1y - end of add                             #*1y
119200030627      //---------------------------------------------------------------------
119300030627      // Stand Alone Fields - BOTTOM
119400030627      //---------------------------------------------------------------------
119500030627      //
119600030627      //---------------------------------------------------------------
119700030627      // workstation file
119800030627      // format-header
119900030627     Iopeniv
120000030627     I              k3slno                      rn
120100030627      // format-paidiv
120200030627     Ipaidiv
120300030627     I              k3slno                      rn
120400030627      //
120500030627      //---------------------------------------------------------------
120600030627      // system control file
120700030627      //---------------------------------------------------------------
120800030627      // systems option record
120900030627     Iorctl     ns       12 cS   13 cO
121000030627     I                                 14   14  mltco
121100030627     I                                 15   16 0dftco
121200030627     I                                 28   28  zsrch
121300030627     I                                 30   30  drshp
121400030627      // aging code record
121500030627     I          ns       12 cA   13 cA
121600030627     I                                 14   16 0k5ady1
121700030627     I                                 17   19 0k5ady2
121800030627     I                                 20   22 0k5ady3
121900030627     I                                 23   25 0k5ady4
122000030627      // century record
122100030627     I          ns       12 cA   13 cC
122200030627     I                                 14   15 0curcc
122300030627     I                                 16   17 0nxtcc
122400030627      // terms record
122500030627     I          ns       12 cA   13 cT
122600030627     I                                 14   33  k5term
122700030627      // dispute code record
122800030627     I          ns       12 cD   13 cP
122900030627     I                                 14   43  k7dcdc
123000030627      //--------------------------------
123100030627      // ic options
123200030627      //--------------------------------
123300030627     Iorctl     ns       12 cM   13 cO
123400030627     I                                 14   14  icmlto
123500030627     I                                 15   17  curdfo
123600030627     I                                 42   42  iclivo
123700030627      //--------------------------------
123800030627      // ic company options
123900030627      //--------------------------------
124000030627     Iorctl     ns       12 cM   13 cC
124100030627     I                                 14   16  curcoo
124200030627      //--------------------------------
124300030627      // currency
124400030627      //--------------------------------
124500030627     Iorctl     ns       12 cC   13 cU
124600030627     I                                 14   38  ccnamo
124700030627     I                                 39   41  ccsymo
124800030627     I                                 44   44  ccmexo
124900030627      //--------------------------------
125000030627      // user codes
125100030627      //--------------------------------
125200030627     Iorctl     ns       12 cA   13 cU
125300030627     I                                 14   43  usrdso
125400030627      //--------------------------------
125500030627      // user fields
125600030627      //--------------------------------
125700030627     Iorctl     ns       12 cA   13 cF
125800030627     I                                 14   43  usrdsc
125900030627      //
126000030627     Iorctl     ns       12 cC   13 cR
126100030627     I                                 54   54  suspnd
126200030627     Iorctl     ns       12 cO   13 cX
126300030627     I                                117  117  futinv
126400030627      //-------------------------------------------
126500030627      // electronic payment company options record
126600030627      //-------------------------------------------
126700030627     Iorctl     ns       12 cP   13 c1
126800030627     I                                 45   45  eplivo
126900030627      //-------------------------------------------
127000030627      // ar options
127100030627      //-------------------------------------------
127200030627     I          ns       12 cA   13 cO
127300041012     I* #*1w                          212  212  alaqpo
127400041012     I* #*1w                          213  217  ausero
127500030627      //--------------------------------
127600030627      // new customer number o/e options
127700030627      //--------------------------------
127800030627     Iorctl     ns       12 cO   13 c#
127900030627     I                                 27   36 0ncsnoo
128000030627      //--------------------------------
128100030627      // gl system options record
128200030627      //--------------------------------
128300030627     Iorctl     ns       12 cG   13 cO
128400030627      //--------------------------------
128500030627      // gl/oe transfer options
128600030627      //--------------------------------
128700030627     Iorctl     ns       12 cG   13 c1
128800030627     I          ns
128900030627      /free
129000030627       //----------------------------------------------------*
129100030627       // f i e l d    d e f i n i t i o n
129200030627       //----------------------------------------------------*
129300030627       @wn015 = *zeros;
129400030627       @wn001 = *zeros;
129500030627       //----------------------------------------------------*
129600030627       // k e y    l i s t s
129700030627       //----------------------------------------------------*
129800030627       // key for file arcom
129900030627       // key for file arco4
130000030627      /end-free
130100030627     C     cc0key        klist
130200030627     C                   kfld                    xxcono
130300030627     C                   kfld                    xxcsno
130400030627     C                   kfld                    xxcmno
130500030627      // key for file arco4
130600030627     C     cc1pky        klist
130700030627     C                   kfld                    xxcono
130800030627     C                   kfld                    xxcsno
130900030627      // key for file cusms
131000030627     C     cm0key        klist
131100030627     C                   kfld                    b$cono
131200030627     C                   kfld                    b$csno
131300030627      // key for file ardhd
131400030627     C     rh0key        klist
131500030627     C                   kfld                    c$cono
131600030627     C                   kfld                    c$csno
131700030627     C                   kfld                    c$intp
131800030627     C                   kfld                    c$inno
131900030627      // key for file ardhd
132000030627     C     aj0key        klist
132100030627     C                   kfld                    rhcono
132200030627     C                   kfld                    rhcsno
132300030627     C                   kfld                    rhintp
132400030627     C                   kfld                    rhinno
132500030627      //
132600030627     C     aj0ky1        klist
132700030627     C                   kfld                    racono
132800030627     C                   kfld                    racsno
132900030627     C                   kfld                    raintp
133000030627     C                   kfld                    rainno
133100030627      // key for file arhpc
133200030627     C     rq0key        klist
133300030627     C                   kfld                    rhcono
133400030627     C                   kfld                    rhcsno
133500030627     C                   kfld                    rhagcc
133600030627     C                   kfld                    rhagdt
133700030627     C                   kfld                    rhintp
133800030627     C                   kfld                    rhinno
133900030627     C     rq0ky1        klist
134000030627     C                   kfld                    racono
134100030627     C                   kfld                    racsno
134200030627     C                   kfld                    raagcc
134300030627     C                   kfld                    raagdt
134400030627     C                   kfld                    raintp
134500030627     C                   kfld                    rainno
134600030627      // key for file arddt
134700030627     C     rd0key        klist
134800030627     C                   kfld                    d$cono
134900030627     C                   kfld                    d$csno
135000030627     C                   kfld                    d$intp
135100030627     C                   kfld                    d$inno
135200030627     C                   kfld                    d$sq03
135300030627     C                   kfld                    d$sq07
135400030627      // key for file arhhd
135500030627     C     ra0key        klist
135600030627     C                   kfld                    e$cono
135700030627     C                   kfld                    e$csno
135800030627     C                   kfld                    e$agcc
135900030627     C                   kfld                    e$agdt
136000030627     C                   kfld                    e$intp
136100030627     C                   kfld                    e$inno
136200030627      // key for file arhdt
136300030627     C     rb0key        klist
136400030627     C                   kfld                    f$cono
136500030627     C                   kfld                    f$csno
136600030627     C                   kfld                    f$agcc
136700030627     C                   kfld                    f$agdt
136800030627     C                   kfld                    f$intp
136900030627     C                   kfld                    f$inno
137000030627     C                   kfld                    f$sq02
137100030627      // key for file repms
137200030627     C     sm0key        klist
137300030627     C                   kfld                    g$cono
137400030627     C                   kfld                    g$rp#1
137500030627      // key for file hshe2
137600030627      // key for file icrdhd
137700030627     C     rhckey        klist
137800030627     C                   kfld                    rhcono
137900030627     C                   kfld                    rhcsno
138000030627     C                   kfld                    rhintp
138100030627     C                   kfld                    rhinno
138200030627      // key for file icrddt
138300030627     C     rdckey        klist
138400030627     C                   kfld                    rdcono
138500030627     C                   kfld                    rdcsno
138600030627     C                   kfld                    rdintp
138700030627     C                   kfld                    rdinno
138800030627     C                   kfld                    rdsq03
138900030627     C                   kfld                    rdcisq
139000030627      // key for file icrhhd
139100030627     C     rackey        klist
139200030627     C                   kfld                    racono
139300030627     C                   kfld                    racsno
139400030627     C                   kfld                    raagcc
139500030627     C                   kfld                    raagdt
139600030627     C                   kfld                    raintp
139700030627     C                   kfld                    rainno
139800030627      // partial key for file arhh1
139900030627     C     ra1pky        klist
140000030627     C                   kfld                    e$cono
140100030627     C                   kfld                    e$csno
140200030627     C                   kfld                    @@intp
140300030627     C                   kfld                    @@inno
140400050225      //#*1x - Begin of Add
140500050225      // key for file arhh1
140600050225     C     ra1key        klist
140700050225     C                   kfld                    e$cono
140800050225     C                   kfld                    e$csno
140900050225     C                   kfld                    @@intp
141000050225     C                   kfld                    @@inno
141100050225     C                   kfld                    @@agcc
141200050225     C                   kfld                    @@agdt
141300050225      //#*1x - End of Add
141400030627      // additional key for file arhhd
141500030627     C     ra0ky1        klist
141600030627     C                   kfld                    e$cono
141700030627     C                   kfld                    e$csno
141800030627     C                   kfld                    @@agcc
141900030627     C                   kfld                    @@agdt
142000030627     C                   kfld                    @@intp
142100030627     C                   kfld                    @@inno
142200030627      // key for file hshed
142300030627     C     oa0key        klist
142400030627     C                   kfld                    @@hsid
142500030627      //
142600030627      // key for file armrk
142700030627     C     am0key        klist
142800030627     C                   kfld                    ws
142900030627     C                   kfld                    m$cono
143000030627     C                   kfld                    m$csno
143100030627     C                   kfld                    m$intp
143200030627     C                   kfld                    m$inno
143300030627      //
143400030627      // key for file armrk
143500030627     C     am0pky        klist
143600030627     C                   kfld                    ws
143700030627     C                   kfld                    m$cono
143800030627     C                   kfld                    m$csno
143900030627      //
144000030627      // key for file userg
144100040407      // #*1s - del C     yu0key        klist
144200040407      // #*1s - del C                   kfld                    ausero
144300040407      // #*1s - del C                   kfld                    @user
144400031011       // #*1j begin of add
144500031011      // key to customer email address file
144600031011     C     ce0key        klist
144700031011     C                   kfld                    k5cono
144800031011     C                   kfld                    k5csno
144900031011     C                   kfld                    @@shp#
145000031011     C                   kfld                    @@emgp
145100031011       // #*1j begin of add
145200040625       // #*1u begin of add
145300040625      // key for archd
145400040625     C     ch0key        klist
145500040625     C                   kfld                    xxcono
145600040625     C                   kfld                    xxcsno
145700040625     C                   kfld                    xxrect
145800040625     C                   kfld                    xxagcc
145900040625     C                   kfld                    xxagdt
146000040625     C                   kfld                    xxintp
146100040625     C                   kfld                    xxinno
146200040625       // #*1u end   of add
146300030627      //---------------------------------------------------------------
146400030627      //   m a i n l i n e
146500030627      //---------------------------------------------------------------
146600030627      //
146700030627      // get the lda
146800030627     C     *dtaara       define    *lda          lda
146900030627      /free
147000030627       in lda;
147100030627       cocusl = 0;
147200030627       rl = 0;
147300030627       colda = 0;
147400030627       hstkey = 0;
147500030627       // first cycle processing
147600030627       //
147700030627       k5udat = udate;
147800030627       slash = '/';
147900030627       ordlda = *blanks;
148000030627       hstlda = *blanks;
148100030627       yes = 'Y';
148200030627       yesyes = 'YY';
148300030627       more = 'More...';
148400030627       last = 'Last   ';
148500030627       openflag = 'O';
148600030627       paid = 'P';
148700030627       balfwd = 'B';
148800030627       updateflag = 'U';
148900030627       deleteflag = 'D';
149000030627       %subst(nines:8:10) = %editc(9999999999:
149100030627       'X');
149200030627       %subst(nines:1:7) = %editc(9999999:'X');
149300030627       histry = 'H';
149400030627       openor = 'O';
149500030627       n = 'N';
149600030627       k5cono = 0;
149700030627       k5csno = 0;
149800030627       schpgm = *blanks;
149900030627       ordpgm = *blanks;
150000030627       hstpgm = *blanks;
150100030627       detpgm = *blanks;
150200030627       usrflg = 'N';
150300030627       pdflg = 'N';
150400030627       opnflg = 'N';
150500030627       //
150600030627       // get the system options record.  determine if multi-company
150700030627       ctlk1 = '00XA';
150800030627       %subst(ctlky:5:7) = 'OPTIONS';
150900030627       chain ctlky orctl;
151000030627       *in90 = not %found;
151100030627       *in94 = (drshp <> yes);
151200030627       if *in94 = *on;
151300030627         *in95 = *on;
151400030627       endif;
151500030627       //
151600030627       //* retrieve the systems option record
151700030627      /end-free
151800030627     C                   movea     '000'         *in(30)
151900030627      /free
152000030627       iclive = 'N';
152100030627       x9comp = *zeros;
152200030627       x9appl = 'IC';
152300030627       x9ckey = 'OPTIONS';
152400030627       chain ctlky orctl;
152500030627       *in90 = not %found;
152600030627       if *in90 = *off;
152700030627         if iclivo = 'Y';
152800030627      /end-free
152900030627     C                   movea     '11'          *in(30)
153000030627      /free
153100030627           iclive = 'Y';
153200030627           @dftcr = curdfo;
153300030627           //
153400030627           if icopen <> 'Y';
153500030627             open icrdhd;
153600030627             open icrddt;
153700030627             open icrhhd;
153800030627             open iccsms;
153900030627             icopen = 'Y';
154000030627           endif;
154100030627         endif;
154200030627       endif;
154300030627       // o/e installed ?
154400030627       read orhed;
154500030627       *in90 = %eof;
154600030627       if *in90 = *on;
154700030627         read hshed;
154800030627         *in90 = %eof;
154900030627       endif;
155000030627       if *in90 = *off;
155100030627         *in51 = *on;
155200030627       else;
155300030627         *in51 = *off;
155400030627       endif;
155500030627       //
155600030627       *in15 = *off;
155700030627       //
155800030627       //* call subprogram to get default co and warehouse for this user
155900030627       if xagdft@ <> 'Y';
156000030627         xagdft@ = 'Y';
156100030627         XAGDFT ( dftco : #@whid );
156200030627       endif;
156300030627       //
156400030627       // if single company, determine if cost$profit info should display
156500030627       if mltco = 'N';
156600030627         *in88 = *on;
156700030627         k5cono = 1;
156800030627         exsr $ckdsp;
156900030627       else;
157000030627         k5cono = dftco;
157100030627       endif;
157200030627       //
157300030627       if zsrch <> 'Y';
157400030627         if zsrch <> 'N';
157500030627           zsrch = 'N';
157600030627         endif;
157700030627       endif;
157800030627       //
157900030627       //* see if restart
158000030627       chain(n) ws armrk;
158100030627       *in90 = not %found;
158200030627       if *in90 = *off;
158300030627         co2# = %editc(amcono:'X');
158400030627         cu2# = %editc(amcsno:'X');
158500030627         p@rest = 'Y';
158600030627         if caltp$ = 'P';
158700030627           p@psst = llpsst;
158800030627           p@pstm = llpstm;
158900030627           p@psdr = llpsdr;
159000030627           p@clrk = llclrk;
159100030627         endif;
159200030627         AR160P ( p@rest : p@post : co2# : cu2# :
159300030627         p@psst : p@pstm : p@psdr : p@clrk );
159400030627         //* clear any stranded quick pay records
159500030627         exsr $clrmk;
159600030627       endif;
159700030627       p@rest = 'N';
159800030627       //
159900030627       // determine current century
160000030627       ctlk1 = '00XA';
160100030627       %subst(ctlky:5:7) = '@CENTRY';
160200030627       chain ctlky orctl;
160300030627       *in90 = not %found;
160400030627      /end-free
160500030627     C     k5udat        mult      10000.01      udatex
160600030627      /free
160700030627       date = udatex;
160800030627       if yy > 50;
160900030627      /end-free
161000030627     C                   movel     curcc         udatex
161100030627      /free
161200030627       else;
161300030627      /end-free
161400030627     C                   movel     nxtcc         udatex
161500030627      /free
161600030627       endif;
161700030627       //
161800030627       //* if called as sub-program from ar250 skip to srn 'opinv '
161900030627       if caltp$ = 'Z';
162000030627         *inke = *on;
162100030627       endif;
162200030627       //
162300030627       //* if called as sub-program, then load screen values
162400030627       //
162500030627       @@byp@ = *blanks;
162600031016       if caltp$ = 'O';                                    // #*1l
162700031016         if cono$ <> *blanks;                              // #*1l
162800031016           @@wk2a = cono$;                                 // #*1l
162900031016           k5cono = @@wk2n;                                // #*1l
163000031016         endif;                                            // #*1l
163100031016         if cusn$ <> *blanks;                              // #*1l
163200031016           @@w10a = cusn$;                                 // #*1l
163300031016           k5csno = @@w10n;                                // #*1l
163400031016         endif;                                            // #*1l
163500031016         endif;                                            // #*1l
163600030627       if caltp$ = 'Y'
163700030627         or caltp$ = 'Z'
163800030627         or caltp$ = 'P';
163900030627         @@byp@ = 'Y';
164000030627         if cono$ <> *blanks;
164100030627           @@wk2a = cono$;
164200030627           k5cono = @@wk2n;
164300030627         endif;
164400030627         if cusn$ <> *blanks;
164500030627           @@w10a = cusn$;
164600030627           k5csno = @@w10n;
164700030627         endif;
164800030627       endif;
164900030908         if caltp$ = 'Y'                                   //#*1h
165000030908           and cusn$ = *blanks;                            //#*1h
165100030908           @@byp@ = 'N';                                   //#*1h
165200030908         endif;                                            //#*1h
165300040625         cmtyp$ = *blanks;                                 //#*1u
165400040625         if caltp$ = 'C';                                  //#*1u
165500040625           callpgm = p@calp;                               //#*1u
165600040625           cmtyp$ = p@cmtp;                                //#*1u
165700040625           intp$ = p@intp;                                 //#*1u
165800040625           inno$ = p@inno;                                 //#*1u
165900040625           dt2#  = p@dt2p;                                 //#*1u
166000040625           arcr  = p@arrp;                                 //#*1u
166100040625         // #*1u - begin of add                              #*1u
166200040622      /end-free
166300040622     C                   move      cono$         k5cono
166400040622     C                   move      cusn$         k5csno
166500040622     C                   goto      comtag
166600040622      /free
166700040625         // #*1u - end uf add                                #*1u
166800040625         endif;                                            //#*1u
166900030627       //--------------------------------------------------------------- strtag
167000030627       // display the start screen and edit responses
167100030627       //
167200030627      /end-free
167300030627     C     strtag        tag
167400030627      /free
167500030627       //
167600030627       // prepare the screen for output
167700030627       if *inkl = *on;
167800030627         exsr $clrs1;
167900030627       endif;
168000030627       *in90 = (mic > *blanks);
168100030627       *in89 = (mic = *blanks);
168200030627       k2stat = cmstat;
168300030627       //
168400030627       // write and read the screen
168500030627       if @@byp@ <> 'Y';
168600030627         //
168700030627         //------------------------*
168800030627      /end-free
168900030627     C     hlp#08        tag
169000030627      /free
169100030627       //------------------------*
169200030627       //
169300030627         exsr $qwe01;
169400030627         exfmt startc;
169500030627         //
169600030627         // "?" entered (redisplay if window program called)
169700030627         if *inka <> *on;
169800030627           exsr $qwf01;
169900030627      /end-free
170000030627     C     q#xflg        cabeq     'Y'           hlp#08
170100030627      /free
170200030627         endif;
170300030627         //
170400030627         // program help requested (f1)
170500030627         if *inka = *on;
170600030627           apscnm = 'STARTC';
170700030627           exsr $hlptx;
170800030627      /end-free
170900030627     C                   goto      hlp#08
171000030627      /free
171100030627         endif;
171200030627         //
171300030627         exsr $setws;
171400030627       endif;
171500030627       //
171600030627       @@byp@ = *blanks;
171700030627       //
171800030627       // f3-exit
171900030627       if *inkc = *on;
172000030627      /end-free
172100030627     C                   goto      quit
172200030627      /free
172300030627       endif;
172400030627       //
172500030627       // process start screen input   (kl = return request from search)
172600030627       exsr $edstr;
172700030627       if k5csno <> 0;
172800030627         if mic = ' ';
172900030627      /end-free
173000030627     C                   goto      hdrtag
173100030627      /free
173200030627         endif;
173300030627       endif;
173400030627       //
173500030627      /end-free
173600030627     C                   goto      strtag
173700030627      //
173800030627      //--------------------------------------------------------------- hdrtag
173900030627      // display customer header screen
174000030627      //
174100030627     C     hdrtag        tag
174200030627      /free
174300030627       //
174400030627       if usrflg = 'Y';
174500030627      /end-free
174600030627     C                   goto      usrtag
174700030627      /free
174800030627       endif;
174900030627       //
175000030627       // prepare the screen for output
175100030627       *in90 = (mic > *blanks);
175200030627       *in89 = (mic = *blanks);
175300030627       //
175400030627       // write and read the screen
175500030627       //
175600030627       //------------------------*
175700030627      /end-free
175800030627     C     hlp#04        tag
175900030627      /free
176000030627       //------------------------*
176100030627       //
176200030627       exsr $qwe02;
176300030627       if caltp$ <> 'Z';
176400030627         // convert mmddyy dates to correct format
176500030627         d@t1 = k5udat;
176600030627         exsr $d@t1;
176700030627         k5udat = d@t2;
176800030627         //
176900030627         k2stat = cmstat;
177000030627         exfmt header;
177100061101
177200061101MOD01 /copy qcpysrc,ar201m01c1
177300061101
177400030627         //
177500030627         // convert formatted dates back to mmddyy
177600030627         d@t2 = k5udat;
177700030627         exsr $d@t2;
177800030627         k5udat = d@t1;
177900030627         //
178000030627       endif;
178100030627       //
178200030627       // "?" entered (redisplay if window program called)
178300030627       if *inka <> *on;
178400030627         exsr $qwf02;
178500030627      /end-free
178600030627     C     q#xflg        cabeq     'Y'           hlp#04
178700030627      /free
178800030627       endif;
178900030627       //
179000030627       // program help requested (f1)
179100030627       if *inka = *on;
179200030627         apscnm = 'HEADER';
179300030627         exsr $hlptx;
179400030627      /end-free
179500030627     C                   goto      hlp#04
179600030627      /free
179700030627       endif;
179800030627       //
179900030627       exsr $setws;
180000030627       //
180100030627       // f3-exit, f12-return
180200030627       if *inkc = *on;
180300030627      /end-free
180400030627     C                   goto      quit
180500030627      /free
180600030627       endif;
180700030627       if *inkl = *on
180800030627         and caltp$ = 'P';
180900030627      /end-free
181000030627     C                   goto      quit
181100030627      /free
181200030627       endif;
181300030627       if *inkl = *on;
181400030627      /end-free
181500030627     C                   goto      strtag
181600030627      /free
181700030627       endif;
181800030627       //
181900030627       // verify customer and pass control based on user selection
182000030627       // kj-open order inquiry, ke-open invoices, kf-paid invoices
182100030627       // ki-comments, kd-search, kk-return goods authorization inquiry
182200030627       // ks-customer sales inq
182300030627       exsr $edcus;
182400030627       if mic = *blanks;
182500030627         //
182600030627         if *inkk = *on;
182700030627           exsr $rga;
182800030627      /end-free
182900030627     C                   goto      hdrtag
183000030627      /free
183100030627           if cmdky = 'C';
183200030627      /end-free
183300030627     C                   goto      quit
183400030627      /free
183500030627           endif;
183600030627         endif;
183700030627         //
183800030627         // f15-user codes
183900030627         if *inkp = *on;
184000030627           usrflg = 'Y';
184100030627      /end-free
184200030627     C     usrtag        tag
184300030627      /free
184400030627           exsr $usrcd;
184500030627           //
184600030627           // f3-exit
184700030627           if *inkc = *on;
184800030627      /end-free
184900030627     C                   goto      quit
185000030627      /free
185100030627           endif;
185200030627           //
185300030627           //* program return requested (f12)
185400030627           if *inkl = *on;
185500030627             if usrflg = 'Y';
185600030627               usrflg = 'N';
185700030627      /end-free
185800030627     C                   goto      hdrtag
185900030627      /free
186000030627             endif;
186100030627             if pdflg = 'Y';
186200030627               pdflg = 'N';
186300030627      /end-free
186400030627     C                   goto      padtag
186500030627      /free
186600030627             endif;
186700030627             if opnflg = 'Y';
186800030627               opnflg = 'N';
186900030627      /end-free
187000030627     C                   goto      opntag
187100030627      /free
187200030627             endif;
187300030627           endif;
187400030627           //
187500030627           //* toggle between local currency and trading currency
187600030627           if *inkm = *on;
187700030627             if *in30 = *off;
187800030627               *in30 = *on;
187900030627               k2cur1 = @tsymo;
188000030627               k2cur2 = @tsymo;
188100030627               k2cur3 = @tsymo;
188200030627               k2cur4 = @tsymo;
188300030627               k2curr = cmcurr;
188400030627               k2crds = @tdesc;
188500030627               crflag = 'T';
188600030627             else;
188700030627               *in30 = *off;
188800030627               k2cur1 = @lsymo;
188900030627               k2cur2 = @lsymo;
189000030627               k2cur3 = @lsymo;
189100030627               k2cur4 = @lsymo;
189200030627               k2curr = @dftcr;
189300030627               k2crds = @ldesc;
189400030627               crflag = 'L';
189500030627             endif;
189600030627             if usrflg = 'Y';
189700030627      /end-free
189800030627     C                   goto      hdrtag
189900030627      /free
190000030627             endif;
190100030627             if pdflg = 'Y';
190200030627      /end-free
190300030627     C                   goto      padtag
190400030627      /free
190500030627             endif;
190600030627             if opnflg = 'Y';
190700030627      /end-free
190800030627     C                   goto      opntag
190900030627      /free
191000030627             endif;
191100030627           endif;
191200030627           //
191300030627           exsr $edcus;
191400030627           if mic = *blanks;
191500030627             if usrflg = 'Y';
191600030627      /end-free
191700030627     C                   goto      hdrtag
191800030627      /free
191900030627             endif;
192000030627             if pdflg = 'Y';
192100030627      /end-free
192200030627     C                   goto      padtag
192300030627      /free
192400030627             endif;
192500030627             if opnflg = 'Y';
192600030627      /end-free
192700030627     C                   goto      opntag
192800030627      /free
192900030627             endif;
193000030627           else;
193100030627      /end-free
193200030627     C                   goto      usrtag
193300030627      /free
193400030627           endif;
193500030627           //
193600030627         endif;
193700030627         //
193800030627         if *inks = *on;
193900030627           exsr $sa220;
194000030627      /end-free
194100030627     C                   goto      hdrtag
194200030627      /free
194300030627         endif;
194400030627         //
194500030627         //* toggle between local currency and trading currency
194600030627         if *inkm = *on;
194700030627           if *in30 = *off;
194800030627             *in30 = *on;
194900030627             k2cur1 = @tsymo;
195000030627             k2cur2 = @tsymo;
195100030627             k2cur3 = @tsymo;
195200030627             k2cur4 = @tsymo;
195300030627             k2curr = cmcurr;
195400030627             k2crds = @tdesc;
195500030627             crflag = 'T';
195600030627           else;
195700030627             *in30 = *off;
195800030627             k2cur1 = @lsymo;
195900030627             k2cur2 = @lsymo;
196000030627             k2cur3 = @lsymo;
196100030627             k2cur4 = @lsymo;
196200030627             k2curr = @dftcr;
196300030627             k2crds = @ldesc;
196400030627             crflag = 'L';
196500030627           endif;
196600030627      /end-free
196700030627     C                   goto      hdrtag
196800030627      /free
196900030627         endif;
197000030627         //
197100030627         //* extended view requested
197200030627         if *inkn = *on;
197300030627           exsr $extvw;
197400030627      /end-free
197500030627     C                   goto      hdrtag
197600030627      /free
197700030627         endif;
197800030627         //
197900030627         //* price inquiry (f23)
198000030627         if *inkx = *on;
198100030627           // first check if user is authorized to this inquiry
198200030627           pos = '0157';
198300050711           holdFunc = GetFncId();              // #*1y - add
198400050711           XASCTYP ( pos : cnc );
198500050711           if cnc <> 'X'
198600050711             and cnc <> '@';
198700030627             exsr $oe290;
198800050713             UpdFncId( holdFunc );             // #*1y - add
198900030627      /end-free
199000030627     C                   goto      hdrtag
199100030627      /free
199200030627           endif;
199300050713           UpdFncId( holdFunc );               // #*1y - add
199400030627         endif;
199500030627         //
199600030627         if *inkj = *on;
199700030627           inqury = openor;
199800030627      /end-free
199900030627     C                   goto      inqtag
200000030627      /free
200100030627         endif;
200200030627         if *inke = *on;
200300030627      /end-free
200400030627     C                   goto      opntag
200500030627      /free
200600030627         endif;
200700030627         if *inkf = *on;
200800030627      /end-free
200900030627     C                   goto      padtag
201000030627      /free
201100030627         endif;
201200030627         if *inki = *on;
201300030627      /end-free
201400030627     C                   goto      comtag
201500030627      /free
201600030627         endif;
201700030627         if *inkd = *on;
201800030627           exsr $serch;
201900030627         endif;
202000030627       endif;
202100030627       //
202200030627      /end-free
202300030627     C                   goto      hdrtag
202400030627      //
202500030627      //--------------------------------------------------------------- opntag
202600030627      // display open invoices
202700030627      //
202800030627     C     opntag        tag
202900030627      /free
203000030627       //
203100030627       if opnflg = 'Y';
203200030627      /end-free
203300030627     C                   goto      usrtag
203400030627      /free
203500030627       endif;
203600030627       //
203700030627       // handle initial load
203800030627       // prepare the screen for output
203900030627       if *inke = *on;
204000030627         exsr $opint;
204100030627       endif;
204200030627       *in90 = (mic > *blanks);
204300030627       *in89 = (mic = *blanks);
204400030627       //
204500030627       // write and read the screen
204600030627       k3nxin = 0;
204700030627       //
204800030627       //------------------------*
204900030627      /end-free
205000030627     C     hlp#06        tag
205100030627      /free
205200030627       //------------------------*
205300030627       //
205400030627       exsr $qwe03;
205500030627       // convert mmddyy dates to correct format
205600030627       d@t1 = age001;
205700030627       exsr $d@t1;
205800030627       age001 = d@t2;
205900030627       //
206000030627       d@t1 = age002;
206100030627       exsr $d@t1;
206200030627       age002 = d@t2;
206300030627       //
206400030627       d@t1 = age003;
206500030627       exsr $d@t1;
206600030627       age003 = d@t2;
206700030627       //
206800030627       d@t1 = age004;
206900030627       exsr $d@t1;
207000030627       age004 = d@t2;
207100030627       //
207200030627       d@t1 = age005;
207300030627       exsr $d@t1;
207400030627       age005 = d@t2;
207500030627       //
207600030627       d@t1 = age006;
207700030627       exsr $d@t1;
207800030627       age006 = d@t2;
207900030627       //
208000030627       d@t1 = age007;
208100030627       exsr $d@t1;
208200030627       age007 = d@t2;
208300030627       //
208400030627       d@t1 = age008;
208500030627       exsr $d@t1;
208600030627       age008 = d@t2;
208700030627       //
208800030627       d@t1 = ind001;
208900030627       exsr $d@t1;
209000030627       ind001 = d@t2;
209100030627       //
209200030627       d@t1 = ind002;
209300030627       exsr $d@t1;
209400030627       ind002 = d@t2;
209500030627       //
209600030627       d@t1 = ind003;
209700030627       exsr $d@t1;
209800030627       ind003 = d@t2;
209900030627       //
210000030627       d@t1 = ind004;
210100030627       exsr $d@t1;
210200030627       ind004 = d@t2;
210300030627       //
210400030627       d@t1 = ind005;
210500030627       exsr $d@t1;
210600030627       ind005 = d@t2;
210700030627       //
210800030627       d@t1 = ind006;
210900030627       exsr $d@t1;
211000030627       ind006 = d@t2;
211100030627       //
211200030627       d@t1 = ind007;
211300030627       exsr $d@t1;
211400030627       ind007 = d@t2;
211500030627       //
211600030627       d@t1 = ind008;
211700030627       exsr $d@t1;
211800030627       ind008 = d@t2;
211900030627       //
212000030627       d@t1 = k5lcnd;
212100030627       exsr $d@t1;
212200030627       k5lcnd = d@t2;
212300030627       //
212400030627       d@t1 = k5lpdt;
212500030627       exsr $d@t1;
212600030627       k5lpdt = d@t2;
212700030627       //
212800030627       d@t1 = k5lsdt;
212900030627       exsr $d@t1;
213000030627       k5lsdt = d@t2;
213100030627       //
213200030627       d@t1 = k5udat;
213300030627       exsr $d@t1;
213400030627       k5udat = d@t2;
213500030627       //
213600030627       d@t1 = trn001;
213700030627       exsr $d@t1;
213800030627       trn001 = d@t2;
213900030627       //
214000030627       d@t1 = trn002;
214100030627       exsr $d@t1;
214200030627       trn002 = d@t2;
214300030627       //
214400030627       d@t1 = trn003;
214500030627       exsr $d@t1;
214600030627       trn003 = d@t2;
214700030627       //
214800030627       d@t1 = trn004;
214900030627       exsr $d@t1;
215000030627       trn004 = d@t2;
215100030627       //
215200030627       d@t1 = trn005;
215300030627       exsr $d@t1;
215400030627       trn005 = d@t2;
215500030627       //
215600030627       d@t1 = trn006;
215700030627       exsr $d@t1;
215800030627       trn006 = d@t2;
215900030627       //
216000030627       d@t1 = trn007;
216100030627       exsr $d@t1;
216200030627       trn007 = d@t2;
216300030627       //
216400030627       d@t1 = trn008;
216500030627       exsr $d@t1;
216600030627       trn008 = d@t2;
216700030627       //
216800030627       k2stat = cmstat;
216900030627       exfmt openiv;
217000030627       //
217100030627       // convert formatted dates back to mmddyy
217200030627       d@t2 = age001;
217300030627       exsr $d@t2;
217400030627       age001 = d@t1;
217500030627       //
217600030627       d@t2 = age002;
217700030627       exsr $d@t2;
217800030627       age002 = d@t1;
217900030627       //
218000030627       d@t2 = age003;
218100030627       exsr $d@t2;
218200030627       age003 = d@t1;
218300030627       //
218400030627       d@t2 = age004;
218500030627       exsr $d@t2;
218600030627       age004 = d@t1;
218700030627       //
218800030627       d@t2 = age005;
218900030627       exsr $d@t2;
219000030627       age005 = d@t1;
219100030627       //
219200030627       d@t2 = age006;
219300030627       exsr $d@t2;
219400030627       age006 = d@t1;
219500030627       //
219600030627       d@t2 = age007;
219700030627       exsr $d@t2;
219800030627       age007 = d@t1;
219900030627       //
220000030627       d@t2 = age008;
220100030627       exsr $d@t2;
220200030627       age008 = d@t1;
220300030627       //
220400030627       d@t2 = ind001;
220500030627       exsr $d@t2;
220600030627       ind001 = d@t1;
220700030627       //
220800030627       d@t2 = ind002;
220900030627       exsr $d@t2;
221000030627       ind002 = d@t1;
221100030627       //
221200030627       d@t2 = ind003;
221300030627       exsr $d@t2;
221400030627       ind003 = d@t1;
221500030627       //
221600030627       d@t2 = ind004;
221700030627       exsr $d@t2;
221800030627       ind004 = d@t1;
221900030627       //
222000030627       d@t2 = ind005;
222100030627       exsr $d@t2;
222200030627       ind005 = d@t1;
222300030627       //
222400030627       d@t2 = ind006;
222500030627       exsr $d@t2;
222600030627       ind006 = d@t1;
222700030627       //
222800030627       d@t2 = ind007;
222900030627       exsr $d@t2;
223000030627       ind007 = d@t1;
223100030627       //
223200030627       d@t2 = ind008;
223300030627       exsr $d@t2;
223400030627       ind008 = d@t1;
223500030627       //
223600030627       d@t2 = k5lcnd;
223700030627       exsr $d@t2;
223800030627       k5lcnd = d@t1;
223900030627       //
224000030627       d@t2 = k5lpdt;
224100030627       exsr $d@t2;
224200030627       k5lpdt = d@t1;
224300030627       //
224400030627       d@t2 = k5lsdt;
224500030627       exsr $d@t2;
224600030627       k5lsdt = d@t1;
224700030627       //
224800030627       d@t2 = k5udat;
224900030627       exsr $d@t2;
225000030627       k5udat = d@t1;
225100030627       //
225200030627       d@t2 = trn001;
225300030627       exsr $d@t2;
225400030627       trn001 = d@t1;
225500030627       //
225600030627       d@t2 = trn002;
225700030627       exsr $d@t2;
225800030627       trn002 = d@t1;
225900030627       //
226000030627       d@t2 = trn003;
226100030627       exsr $d@t2;
226200030627       trn003 = d@t1;
226300030627       //
226400030627       d@t2 = trn004;
226500030627       exsr $d@t2;
226600030627       trn004 = d@t1;
226700030627       //
226800030627       d@t2 = trn005;
226900030627       exsr $d@t2;
227000030627       trn005 = d@t1;
227100030627       //
227200030627       d@t2 = trn006;
227300030627       exsr $d@t2;
227400030627       trn006 = d@t1;
227500030627       //
227600030627       d@t2 = trn007;
227700030627       exsr $d@t2;
227800030627       trn007 = d@t1;
227900030627       //
228000030627       d@t2 = trn008;
228100030627       exsr $d@t2;
228200030627       trn008 = d@t1;
228300030627       //
228400030627       //
228500030627       // "?" entered (redisplay if window program called)
228600030627       if *inka <> *on;
228700030627         exsr $qwf03;
228800030627      /end-free
228900030627     C     q#xflg        cabeq     'Y'           hlp#06
229000030627      /free
229100030627       endif;
229200030627       //
229300030627       // program help requested (f1)
229400030627       if *inka = *on;
229500030627         apscnm = 'OPENIV';
229600030627         exsr $hlptx;
229700030627      /end-free
229800030627     C                   goto      hlp#06
229900030627      /free
230000030627       endif;
230100030627       //
230200030627       exsr $setws;
230300030627       //
230400030627       // check to see if next invoice number field entered
230500030627       if k3nxin <> 0;
230600030627         nxtit = *blanks;
230700030627         %subst(nxtit:2:8) = %editc(k3nxin:'X');
230800030627         %subst(ardhdl:13:9) = nxtit;
230900030627         exsr $ldopn;
231000030627       endif;
231100030627       //
231200030627       // if roll key pressed load next screen
231300030627       if roll = yes;
231400030627         exsr $oprol;
231500030627       endif;
231600030627       //
231700030627       // else edit customer #
231800030627       // if function key, pass control to new screen
231900030627       // kl-header, ki-comments, kf-paid invoices, kd-search
232000030627       if roll <> yes;
232100030627         exsr $edcus;
232200030627         if *in90 = *on;
232300030627           exsr $clrar;
232400030627         endif;
232500030627         if mic = *blanks
232600030627           or *inkl = *on
232700030627           or *inkd = *on
232800030627           or *inkq = *on;                                 // #*1f
232900030627           //
233000030627           if *inkm = *on;
233100030627             if *in30 = *on;
233200030627               *in30 = *off;
233300030627               k2cur1 = @lsymo;
233400030627               k2cur2 = @lsymo;
233500030627               k2cur3 = @lsymo;
233600030627               k2cur4 = @lsymo;
233700030627               k2curr = @dftcr;
233800030627               k2crds = @ldesc;
233900030627               crflag = 'L';
234000030627             else;
234100030627               *in30 = *on;
234200030627               k2cur1 = @tsymo;
234300030627               k2cur2 = @tsymo;
234400030627               k2cur3 = @tsymo;
234500030627               k2cur4 = @tsymo;
234600030627               k2curr = cmcurr;
234700030627               k2crds = @tdesc;
234800030627               crflag = 'T';
234900030627             endif;
235000050715       // #*1z Beg of Add
235100050715      /end-free
235200050715     C                   goto      opntag
235300050715      /free
235400050715       // #*1z End of Add
235500030627           endif;
235600030627           //
235700030627           //* if cancel return back to calling pgm ar250
235800030627           if *inkl = *on
235900030627             and caltp$ = 'Z';
236000030627      /end-free
236100030627     C                   goto      quit
236200030627      /free
236300030627           endif;
236400030627           if *inkl = *on;
236500030627      /end-free
236600030627     C                   goto      hdrtag
236700030627      /free
236800030627           endif;
236900030627           if *inki = *on;
237000030627      /end-free
237100030627     C                   goto      comtag
237200030627      /free
237300030627           endif;
237400030627           if *inkf = *on;
237500030627      /end-free
237600030627     C                   goto      padtag
237700030627      /free
237800030627           endif;
237900030627           if *inkd = *on;
238000030627             mic = *blanks;
238100030627             exsr $serch;
238200030627           endif;
238300030627           //
238400030627           //* extended view requested
238500030627           if *inkn = *on;
238600030627             exsr $extvw;
238700030627      /end-free
238800030627     C                   goto      opntag
238900030627      /free
239000030627           endif;
239100030627           //
239200030627           //* mark invoices selected
239300030627           if *inkk = *on
239400030627             and chgcus <> yes
239500030627             and rn > 0
239600030627             and rn <= 8
239700030627             and ky1(rn) <> *blanks;
239800030627             ky1# = ky1(rn);
239900030627             exsr $mark;
240000030627      /end-free
240100030627     C                   goto      opntag
240200030627      /free
240300030627           endif;
240400030627           //
240500030627           //* access ar quick pay
240600030627           if *inkb = *on;
240700030627             co2# = %editc(k5cono:'X');
240800031023             cu2# = %editc(k5csno:'X');
240900031023                                                           //#*1m
241000031023             if caltp$ = 'P';                              //#*1m
241100031023               p@psst = llpsst;                            //#*1m
241200031023               p@pstm = llpstm;                            //#*1m
241300031023               p@psdr = llpsdr;                            //#*1m
241400031023               p@clrk = llclrk;                            //#*1m
241500031023             else;                                         //#*1m
241600031023               p@psst = *blanks;                           //#*1m
241700031023               p@pstm = '00000';                           //#*1m
241800031023               p@psdr = '000';                             //#*1m
241900031023               p@clrk = *blanks;                           //#*1m
242000031023             endif;                                        //#*1m
242100031023                                                           //#*1m
242200030627             AR160P ( p@rest : p@post : co2# :
242300030627             cu2# : p@psst : p@pstm : p@psdr : p@clrk
242400030627             );
242500030627             oep101 = 'Y';
242600030627             exsr $clrmk;
242700030627      /end-free
242800030627     C                   goto      opntag
242900030627      /free
243000030627           endif;
243100030627           // #*1f - beg add
243200030627           // customer check number inquiry called?
243300030627           if *inkj = *on;
243400030627             co2# = %editc(k5cono:'X');
243500030627             cu2# = %editc(k5csno:'X');
243600030627             caltp# = 'Y';
243700030627             AR210P ( caltp# : co2# : cu2# : chnr# );
243800030627           endif;
243900030627           //
244000030627           // f15-user codes
244100030627           if *inkp = *on;
244200030627             opnflg = 'Y';
244300030627      /end-free
244400030627     C                   goto      usrtag
244500030627      /free
244600030627           endif;
244700030627           //
244800030627           // f16-orig invoice toggle
244900030627           if *inkq = *on;
245000030627             *in15 = not *in15;
245100030627      /end-free
245200030627     C                   goto      opntag
245300030627      /free
245400030627           endif;
245500030627           // #*1f - end add
245600030627           //
245700030627           // if cust# changed, display new customer
245800030627           // else, display detail for open invoice selected
245900030627           if chgcus = yes;
246000030627             exsr $opint;
246100030627           else;
246200030627             if rn <> *zeros;
246300030627               *in90 = (rn > 8);
246400030627               if *in90 = *off;
246500030627                 *in90 = (ky1(rn) = *blanks);
246600040621               endif;
246700030627               if *in90 = *off;
246800030627                 detyp = openflag;
246900030627                 ky1# = ky1(rn);
247000030627                 co2# = co1#;
247100030627                 cu2# = cu1#;
247200030627                 tp2# = tp1#;
247300030627                 in2# = in1#;
247400030627                 dt2# = '00000000';
247500030627                 detpgm = 'Y';
247600040924                 commnt = ' ';                             // #*1U
247700030627                 out lda;
247800040625                   cmdkyp = *blanks;                       // #*1u
247900040621                   AR202 ( co2# : cu2# : detyp : tp2# :
248000040621                   in2# : dt2# : cmdkyp : shtdn );
248100040716                   //
248200040716                   // call comment display program            #*1v
248300040716                   if cmdkyp = 'T';                        // #*1u
248400040716                     inno$ = in2#;                         // #*1u
248500040716                     intp$ = tp2#;                         // #*1u
248600040716        // #*1v - beg of add
248700040715      /end-free
248800040715     C     ar203o        tag
248900040715      /free
249000040716        // #*1v - end of add
249100040716                     exsr $ar203;                          // #*1u
249200040716                     // #*1v - beg of add
249300040715                     //
249400040715                     // return to ar250 if F12=Return used
249500040715                     if detyp  = *blanks;
249600040715                       if caltp$ = 'Z'
249700040715                         or caltp$ = 'C'
249800040715                         and callpgm = 'AR201     '
249900040715                         and p@calp = 'AR250      ';
250000040715                           return;
250100040715                       endif;
250200040715                     endif;
250300040715                     //
250400040715                     // edit customer numberin case it was changed
250500040715                     exsr $edcus;
250600040715                     //
250700040715                     // display paid invoices
250800040716                     if detyp = 'C';
250900040716                       *inkf = *on;
251000040713      /end-free
251100040713     C                   goto      padtag
251200040713      /free
251300040716                     endif;
251400040715                     //
251500040715                     // display open invoices
251600040716                     if detyp = 'O';
251700040716                       *inke = *on;
251800040713      /end-free
251900040713     C                   goto      opntag
252000040713      /free
252100040716                     endif;
252200040715                     //
252300040715                     // display sales summary screen
252400040716                     if detyp = 'S';
252500040716                       *inkn = *on;
252600040716                       exsr $extvw;
252700040713      /end-free
252800040715     C                   goto      ar203o
252900040713      /free
253000040716                     endif;
253100040716                     // #*1v - end of add
253200040716                   endif;                                  // #*1u
253300040715
253400040621                 //* clear reference field when f12 is pressed in
253500040621                 //* invoice detail screen.
253600040621                 rn = *zeros;
253700040621                 //
253800040621                 @r202r = 'Y';
253900040621                 exsr $opint;
254000040621                 @r202r = ' ';
254100040621                 //
254200030627                 if cmdkyp = 'C';
254300030627      /end-free
254400030627     C                   goto      quit
254500030627      /free
254600030627                 endif;
254700030627                 //
254800030627                 //* check if local or trdg was the last thing displayed
254900030627                 if iclive = 'Y';
255000030627                   in lda;
255100030627                   if crflag = 'T';
255200030627                     *in30 = *on;
255300030627                     k2cur1 = @tsymo;
255400030627                     k2cur2 = @tsymo;
255500030627                     k2cur3 = @tsymo;
255600030627                     k2cur4 = @tsymo;
255700030627                     k2curr = cmcurr;
255800030627                     k2crds = @tdesc;
255900030627                   else;
256000030627                     k2cur1 = @lsymo;
256100030627                     k2cur2 = @lsymo;
256200030627                     k2cur3 = @lsymo;
256300030627                     k2cur4 = @lsymo;
256400030627                     k2curr = @dftcr;
256500030627                     k2crds = @ldesc;
256600030627                     *in30 = *off;
256700030627                   endif;
256800030627                 endif;
256900030627                 //
257000030627      /end-free
257100030627     C                   goto      opntag
257200030627      /free
257300030627               endif;
257400030627               mic = '2165';
257500030627             endif;
257600030627           endif;
257700030627         endif;
257800030627       endif;
257900030627       // #*1f - beg del
258000030627       // customer check number inquiry called?         #*1f
258100030627       //if *inkj = *on;                                #*1f
258200030627       //  co2# = %editc(k5cono:'X');                   #*1f
258300030627       //  cu2# = %editc(k5csno:'X');                   #*1f
258400030627       //  caltp# = 'Y';                                #*1f
258500030627       //  AR210P ( caltp# : co2# : cu2# : chnr# );     #*1f
258600030627       //endif;                                         #*1f
258700030627       //                                               #*1f
258800030627       // f15-user codes                                #*1f
258900030627       //if *inkp = *on;                                #*1f
259000030627         //opnflg = 'Y';                                #*1f
259100030627       // /end-free                                     #*1f
259200030627       // C                   goto      usrtag          #*1f
259300030627       // /free                                         #*1f
259400030627       //endif;                                         #*1f
259500030627       //                                               #*1f
259600030627       // f16-orig invoice toggle                       #*1f
259700030627       //if *inkq = *on;                                #*1f
259800030627        // if *in15 = *off;                             #*1f
259900030627         //  *in15 = *on;                               #*1f
260000030627         //else;                                        #*1f
260100030627         //  *in15 = *off;                              #*1f
260200030627        // endif;                                       #*1f
260300030627       // /end-free                                     #*1f
260400030627       //C**                 goto      opntag           #*1f
260500030627       // /free                                         #*1f
260600030627       //endif;                                         #*1f
260700030627       // #*1f - end del
260800030627       //
260900030627      /end-free
261000030627     C                   goto      opntag
261100030627      //
261200030627      //--------------------------------------------------------------- padtag
261300030627      // display paid invoices
261400030627      //
261500030627     C     padtag        tag
261600030627      /free
261700030627       //
261800030627       if pdflg = 'Y';
261900030627      /end-free
262000030627     C                   goto      usrtag
262100030627      /free
262200030627       endif;
262300030627       //
262400030627       // handle initial load
262500030627       // prepare the screen for output
262600030627       if *inkf = *on;
262700030627         exsr $pdint;
262800030627       endif;
262900030627       *in90 = (mic > *blanks);
263000030627       *in89 = (mic = *blanks);
263100030627       //
263200030627       // write and read the screen
263300030627       k4nxin = 0;
263400030627       //
263500030627       //------------------------*
263600030627      /end-free
263700030627     C     hlp#07        tag
263800030627      /free
263900030627       //------------------------*
264000030627       //
264100030627       exsr $qwe04;
264200030627       // convert mmddyy dates to correct format
264300030627       d@t1 = age001;
264400030627       exsr $d@t1;
264500030627       age001 = d@t2;
264600030627       //
264700030627       d@t1 = age002;
264800030627       exsr $d@t1;
264900030627       age002 = d@t2;
265000030627       //
265100030627       d@t1 = age003;
265200030627       exsr $d@t1;
265300030627       age003 = d@t2;
265400030627       //
265500030627       d@t1 = age004;
265600030627       exsr $d@t1;
265700030627       age004 = d@t2;
265800030627       //
265900030627       d@t1 = age005;
266000030627       exsr $d@t1;
266100030627       age005 = d@t2;
266200030627       //
266300030627       d@t1 = age006;
266400030627       exsr $d@t1;
266500030627       age006 = d@t2;
266600030627       //
266700030627       d@t1 = age007;
266800030627       exsr $d@t1;
266900030627       age007 = d@t2;
267000030627       //
267100030627       d@t1 = age008;
267200030627       exsr $d@t1;
267300030627       age008 = d@t2;
267400030627       //
267500030627       d@t1 = k4fsdt;
267600030627       exsr $d@t1;
267700030627       k4fsdt = d@t2;
267800030627       //
267900030627       d@t1 = k4hcdt;
268000030627       exsr $d@t1;
268100030627       k4hcdt = d@t2;
268200030627       //
268300030627       d@t1 = k5lpdt;
268400030627       exsr $d@t1;
268500030627       k5lpdt = d@t2;
268600030627       //
268700030627       d@t1 = k5udat;
268800030627       exsr $d@t1;
268900030627       k5udat = d@t2;
269000030627       //
269100030627       d@t1 = lpy001;
269200030627       exsr $d@t1;
269300030627       lpy001 = d@t2;
269400030627       //
269500030627       d@t1 = lpy002;
269600030627       exsr $d@t1;
269700030627       lpy002 = d@t2;
269800030627       //
269900030627       d@t1 = lpy003;
270000030627       exsr $d@t1;
270100030627       lpy003 = d@t2;
270200030627       //
270300030627       d@t1 = lpy004;
270400030627       exsr $d@t1;
270500030627       lpy004 = d@t2;
270600030627       //
270700030627       d@t1 = lpy005;
270800030627       exsr $d@t1;
270900030627       lpy005 = d@t2;
271000030627       //
271100030627       d@t1 = lpy006;
271200030627       exsr $d@t1;
271300030627       lpy006 = d@t2;
271400030627       //
271500030627       d@t1 = lpy007;
271600030627       exsr $d@t1;
271700030627       lpy007 = d@t2;
271800030627       //
271900030627       d@t1 = lpy008;
272000030627       exsr $d@t1;
272100030627       lpy008 = d@t2;
272200030627       //
272300030627       exfmt paidiv;
272400030627       //
272500030627       // convert formatted dates back to mmddyy
272600030627       d@t2 = age001;
272700030627       exsr $d@t2;
272800030627       age001 = d@t1;
272900030627       //
273000030627       d@t2 = age002;
273100030627       exsr $d@t2;
273200030627       age002 = d@t1;
273300030627       //
273400030627       d@t2 = age003;
273500030627       exsr $d@t2;
273600030627       age003 = d@t1;
273700030627       //
273800030627       d@t2 = age004;
273900030627       exsr $d@t2;
274000030627       age004 = d@t1;
274100030627       //
274200030627       d@t2 = age005;
274300030627       exsr $d@t2;
274400030627       age005 = d@t1;
274500030627       //
274600030627       d@t2 = age006;
274700030627       exsr $d@t2;
274800030627       age006 = d@t1;
274900030627       //
275000030627       d@t2 = age007;
275100030627       exsr $d@t2;
275200030627       age007 = d@t1;
275300030627       //
275400030627       d@t2 = age008;
275500030627       exsr $d@t2;
275600030627       age008 = d@t1;
275700030627       //
275800030627       d@t2 = k4fsdt;
275900030627       exsr $d@t2;
276000030627       k4fsdt = d@t1;
276100030627       //
276200030627       d@t2 = k4hcdt;
276300030627       exsr $d@t2;
276400030627       k4hcdt = d@t1;
276500030627       //
276600030627       d@t2 = k5lpdt;
276700030627       exsr $d@t2;
276800030627       k5lpdt = d@t1;
276900030627       //
277000030627       d@t2 = k5udat;
277100030627       exsr $d@t2;
277200030627       k5udat = d@t1;
277300030627       //
277400030627       d@t2 = lpy001;
277500030627       exsr $d@t2;
277600030627       lpy001 = d@t1;
277700030627       //
277800030627       d@t2 = lpy002;
277900030627       exsr $d@t2;
278000030627       lpy002 = d@t1;
278100030627       //
278200030627       d@t2 = lpy003;
278300030627       exsr $d@t2;
278400030627       lpy003 = d@t1;
278500030627       //
278600030627       d@t2 = lpy004;
278700030627       exsr $d@t2;
278800030627       lpy004 = d@t1;
278900030627       //
279000030627       d@t2 = lpy005;
279100030627       exsr $d@t2;
279200030627       lpy005 = d@t1;
279300030627       //
279400030627       d@t2 = lpy006;
279500030627       exsr $d@t2;
279600030627       lpy006 = d@t1;
279700030627       //
279800030627       d@t2 = lpy007;
279900030627       exsr $d@t2;
280000030627       lpy007 = d@t1;
280100030627       //
280200030627       d@t2 = lpy008;
280300030627       exsr $d@t2;
280400030627       lpy008 = d@t1;
280500030627       //
280600030627       //
280700030627       // "?" entered (redisplay if window program called)
280800030627       if *inka <> *on;
280900030627         exsr $qwf04;
281000030627      /end-free
281100030627     C     q#xflg        cabeq     'Y'           hlp#07
281200030627      /free
281300030627       endif;
281400030627       //
281500030627       // program help requested (f1)
281600030627       if *inka = *on;
281700030627         apscnm = 'PAIDIV';
281800030627         exsr $hlptx;
281900030627      /end-free
282000030627     C                   goto      hlp#07
282100030627      /free
282200030627       endif;
282300030627       //
282400030627       exsr $setws;
282500030627       //
282600030627       // check to see if next invoice number field entered
282700030627       if k4nxin <> 0;
282800030627         exsr $nxinv;
282900030627         if nomore <> 'Y';
283000030627           exsr $ldpad;
283100030627         endif;
283200030627       endif;
283300030627       //
283400030627       // if roll key pressed, load next screen
283500040415
283600040415       if roll = yes;
283700030627         exsr $pdrol;
283800030627       endif;
283900030627       //
284000030627       // else, edit customer #
284100030627       // if function key, pass control to new screen
284200030627       // kl-header, ki-comments, ke-open invoices, kd-search
284300030627       if roll <> yes;
284400030627         exsr $edcus;
284500030627         if *in90 = *on;
284600030627           exsr $clrar;
284700030627         endif;
284800030627         if mic = *blanks
284900030627           or *inkl = *on
285000030627           or *inkd = *on;
285100030627           //
285200030627           if *inkm = *on;
285300030627             if *in30 = *on;
285400030627               *in30 = *off;
285500030627               k2cur1 = @lsymo;
285600030627               k2cur2 = @lsymo;
285700030627               k2cur3 = @lsymo;
285800030627               k2cur4 = @lsymo;
285900030627               k2curr = @dftcr;
286000030627               k2crds = @ldesc;
286100030627               crflag = 'L';
286200030627             else;
286300030627               *in30 = *on;
286400030627               k2cur1 = @tsymo;
286500030627               k2cur2 = @tsymo;
286600030627               k2cur3 = @tsymo;
286700030627               k2cur4 = @tsymo;
286800030627               k2curr = cmcurr;
286900030627               k2crds = @tdesc;
287000030627               crflag = 'T';
287100030627             endif;
287200030627           endif;
287300030627           //
287400030627           if *inkl = *on
287500030627             and caltp$ = 'Z';
287600030627      /end-free
287700030627     C                   goto      quit
287800030627      /free
287900030627           endif;
288000030627           if *inkl = *on;
288100030627      /end-free
288200030627     C                   goto      hdrtag
288300030627      /free
288400030627           endif;
288500030627           if *inki = *on;
288600030627      /end-free
288700030627     C                   goto      comtag
288800030627      /free
288900030627           endif;
289000030627           if *inke = *on;
289100030627      /end-free
289200030627     C                   goto      opntag
289300030627      /free
289400030627           endif;
289500030627           if *inkd = *on;
289600030627             mic = *blanks;
289700030627             exsr $serch;
289800030627             k2stat = cmstat;
289900030627           endif;
290000030627           //
290100030627           //* extended view requested
290200030627           if *inkn = *on;
290300030627             exsr $extvw;
290400030627      /end-free
290500030627     C                   goto      padtag
290600030627      /free
290700030627           endif;
290800030627           // if cust# changed, display new customer
290900030627           // else, display detail for paid invoice selected
291000030627           if chgcus = yes;
291100030627             exsr $pdint;
291200030627           else;
291300030627             if rn <> *zeros;
291400030627               *in90 = (rn > 8);
291500030627               if *in90 = *off;
291600030627                 *in90 = (ky2(rn) = *blanks);
291700030627               endif;
291800030627               if *in90 = *off;
291900030627                 detyp = paid;
292000030627                 ky2# = ky2(rn);
292100030627                 detpgm = 'Y';
292200030627                 AR202 ( co2# : cu2# : detyp : tp2# :
292300030627                 in2# : dt2# : cmdkyp : shtdn );
292400040715
292500040716                   // call comment display program            #*1v
292600040716                   if cmdkyp = 'T';                        // #*1u
292700040716                     inno$ = in2#;                         // #*1u
292800040716                     intp$ = tp2#;                         // #*1u
292900040716        // #*1v - beg of add
293000040715      /end-free
293100040715     C     ar203p        tag
293200040715      /free
293300040716        // #*1v - end of add
293400040716                     exsr $ar203;                          // #*1u
293500040715                     //
293600040716                     // #*1v - beg of add
293700040715                     // return to ar250 if F12=Return used
293800040715                     if detyp  = *blanks;
293900040715                       if caltp$ = 'Z'
294000040715                         or caltp$ = 'C'
294100040715                         and callpgm = 'AR201     '
294200040715                         and p@calp = 'AR250      ';
294300040715                           return;
294400040715                       endif;
294500040715                     endif;
294600040715                     //
294700040715                     // edit customer numberin case it was changed
294800040715                     exsr $edcus;
294900040715                     //
295000040715                     // display paid invoices
295100040716                     if detyp = 'C';
295200040716                       *inkf = *on;
295300040715      /end-free
295400040715     C                   goto      padtag
295500040715      /free
295600040716                     endif;
295700040715                     //
295800040715                     // display open invoices
295900040716                     if detyp = 'O';
296000040716                       *inke = *on;
296100040715      /end-free
296200040715     C                   goto      opntag
296300040715      /free
296400040716                     endif;
296500040715                     //
296600040715                     // display sales summary screen
296700040716                     if detyp = 'S';
296800040716                       *inkn = *on;
296900040716                       exsr $extvw;
297000040715      /end-free
297100040715     C                   goto      ar203p
297200040715      /free
297300040716                     endif;
297400040716                    // #*1v - end of add
297500040716                   endif;                                  // #*1u
297600040715
297700030627                 //
297800030627                 if cmdkyp = 'C';
297900030627      /end-free
298000030627     C                   goto      quit
298100030627      /free
298200030627                 endif;
298300030627      /end-free
298400030627     C                   goto      padtag
298500030627      /free
298600030627               endif;
298700030627               mic = '2165';
298800030627             endif;
298900030627           endif;
299000040415
299100040416       //  endif;                    #*1s - del
299200040416       //endif;                      #*1s - del
299300040415
299400030627       // customer check number inquiry called?
299500030627       if *inkj = *on;
299600030627         co2# = %editc(k5cono:'X');
299700030627         cu2# = %editc(k5csno:'X');
299800030627         caltp# = 'Y';
299900030627         AR210P ( caltp# : co2# : cu2# :
300000030627         chnr# );
300100030627       endif;
300200030627       //
300300030627       // f15-user codes
300400030627       if *inkp = *on;
300500030627         pdflg = 'Y';
300600030627      /end-free
300700030627     C                   goto      usrtag
300800030627      /free
300900030627       endif;
301000030627       //
301100030627       // f16-orig invoice toggle
301200030627       if *inkq = *on;
301300030627         if *in15 = *off;
301400030627           *in15 = *on;
301500030627         else;
301600030627           *in15 = *off;
301700030627         endif;
301800030627      /end-free
301900030627     C                   goto      padtag
302000030627      /free
302100030627       endif;
302200030627       //
302300040108       // ep transaction inquiry log called?                 #*1q
302400040108       if *inkr = *on;                                     //#*1q
302500040108         co2# = %editc(k5cono:'X');                        //#*1q
302600040108         cu2# = %editc(k5csno:'X');                        //#*1q
302700040108         caltp# = 'A';                                     //#*1q
302800040108         OEP220CP ( caltp# : co2# : cu2# );                //#*1q
302900040108       endif;                                              //#*1q
303000040415
303100040416         endif;                       //#*1s - add
303200040416       endif;                         //#*1s - add
303300040415
303400030627      /end-free
303500030627     C                   goto      padtag
303600030627      /free
303700030627       //
303800030627       //--------------------------------------------------------------- comtag
303900030627       // set off display indictors
304000030627       //
304100030627       *in24 = *off;
304200030627       *in26 = *off;
304300030627       *in27 = *off;
304400030627       *in28 = *off;
304500030627       count1 = 0;
304600030627       //
304700030627       // display comments
304800030627       //
304900030627       //-----------------------*
305000030627      /end-free
305100030627     C     comtag        tag
305200030627      /free
305300030627       //-----------------------*
305400040625       // ------------ COMMT1 MOVED TO AR203 --------------- #*1u
305500040625                                               // #*1u
305600040625       dow not endofcomment;                   // #*1u
305700040625         callpgm = 'AR201';                    // #*1u
305800040625         exsr $ar203;                          // #*1u
305900040625                                               // #*1u
306000040625         // call ar202                            #*1u
306100040625         if callpgm = 'AR202';                 // #*1u
306200040625           AR202 ( co2# : cu2# : detyp : intp$ : // #*1u
306300040625           inno$ : dt2# : cmdkyp : shtdn );      // #*1u
306400040625           iter;                                 // #*1u
306500040625         endif;                                  // #*1u
306600040625         clear inno$;                            // #*1u
306700040625         clear intp$;                            // #*1u
306800040625                                                 // #*1u
306900040625       // #*o - begin of add                        #*1u
307000040625       // #*1u - end of add                       #*1u
307100040716         // #*1v - beg of chg
307200040716         //if caltp$ = 'Z';                      // #*1u
307300040716         if detyp  = *blanks;                    // #*1v
307400040716           if caltp$ = 'Z'                       // #*1v
307500040716             or caltp$ = 'C'                     // #*1v
307600040716             and callpgm = 'AR201     '          // #*1v
307700040716             and p@calp = 'AR250      ';         // #*1v
307800040716         // #*1v - end of chg
307900040713               return;                           // #*1u
308000040716           endif;                                // #*1v
308100040713         endif;                                // #*1u
308200040625         exsr $edcus;                          // #*1u
308300040625         if detyp = 'C';                       // #*1u
308400040625           *inkf = *on;                        // #*1u
308500040625       // #*1u - begin of add                     #*1u
308600040617      /end-free
308700040617     C                   goto      padtag
308800040617      /free
308900040625       // #*1u - end of add                       #*1u
309000040625         endif;                                // #*1u
309100040625         if detyp = 'O';                       // #*1u
309200040625           *inke = *on;                        // #*1u
309300040625       // #*1u - begin of add                     #*1u
309400040617      /end-free
309500040617     C                   goto      opntag
309600040617      /free
309700040625       // #*1u - end of add                       #*1u
309800040625         endif;                                // #*1u
309900040625         if detyp = 'S';                       // #*1u
310000040625           *inkn = *on;                        // #*1u
310100040625           exsr $extvw;                        // #*1u
310200040625           iter;                               // #*1u
310300040625         endif;                                // #*1u
310400040625       // #*1u - begin of add                     #*1u
310500040617      /end-free
310600040617     C                   goto      hdrtag
310700040617      /free
310800040625       // #*1u- end of add                        #*1u
310900040625       enddo;                                  // #*1u
311000030627       //
311100030627       @@page = 7;
311200030627       @@size = 8;
311300030627       xxcono = k5cono;
311400030627       xxcsno = k5csno;
311500030627       //
311600030627       // seton screen indictors
311700030627       if count1 = 0;
311800030627         *in25 = *on;
311900030627       endif;
312000030627       //
312100030627       // handle initial load
312200030627       if *inki = *on;
312300030627         exsr $cmint;
312400030627       endif;
312500030627       //
312600030627       // if update requested, process update
312700030627       if mode <> *blanks;
312800030627      /end-free
312900030627     C                   goto      cmutag
313000030627      /free
313100030627       endif;
313200030627       //
313300030627       // prepare the screen for output
313400030627       *in90 = (mic > *blanks);
313500030627       *in89 = (mic = *blanks);
313600030627       //
313700030627       // write and read the screen
313800030627       //
313900030627       //------------------------*
314000030627      /end-free
314100030627     C     hlp#01        tag
314200030627      /free
314300030627       //------------------------*
314400030627       //
314500030627       exsr $qwe05;
314600030627       // convert mmddyy dates to correct format
314700030627       d@t1 = cdt001;
314800030627       exsr $d@t1;
314900030627       cdt001 = d@t2;
315000030627       //
315100030627       d@t1 = cdt002;
315200030627       exsr $d@t1;
315300030627       cdt002 = d@t2;
315400030627       //
315500030627       d@t1 = cdt003;
315600030627       exsr $d@t1;
315700030627       cdt003 = d@t2;
315800030627       //
315900030627       d@t1 = cdt004;
316000030627       exsr $d@t1;
316100030627       cdt004 = d@t2;
316200030627       //
316300030627       d@t1 = cdt005;
316400030627       exsr $d@t1;
316500030627       cdt005 = d@t2;
316600030627       //
316700030627       d@t1 = cdt006;
316800030627       exsr $d@t1;
316900030627       cdt006 = d@t2;
317000030627       //
317100030627       d@t1 = cdt007;
317200030627       exsr $d@t1;
317300030627       cdt007 = d@t2;
317400030627       //
317500030627       d@t1 = cld001;
317600030627       exsr $d@t1;
317700030627       cld001 = d@t2;
317800030627       //
317900030627       d@t1 = cld002;
318000030627       exsr $d@t1;
318100030627       cld002 = d@t2;
318200030627       //
318300030627       d@t1 = cld003;
318400030627       exsr $d@t1;
318500030627       cld003 = d@t2;
318600030627       //
318700030627       d@t1 = cld004;
318800030627       exsr $d@t1;
318900030627       cld004 = d@t2;
319000030627       //
319100030627       d@t1 = cld005;
319200030627       exsr $d@t1;
319300030627       cld005 = d@t2;
319400030627       //
319500030627       d@t1 = cld006;
319600030627       exsr $d@t1;
319700030627       cld006 = d@t2;
319800030627       //
319900030627       d@t1 = cld007;
320000030627       exsr $d@t1;
320100030627       cld007 = d@t2;
320200030627       //
320300030627       d@t1 = k5crrp;
320400030627       exsr $d@t1;
320500030627       k5crrp = d@t2;
320600030627       //
320700030627       d@t1 = k5lcdt;
320800030627       exsr $d@t1;
320900030627       k5lcdt = d@t2;
321000030627       //
321100030627       d@t1 = k5lcnd;
321200030627       exsr $d@t1;
321300030627       k5lcnd = d@t2;
321400030627       //
321500030627       d@t1 = k5lpdt;
321600030627       exsr $d@t1;
321700030627       k5lpdt = d@t2;
321800030627       //
321900030627       d@t1 = k5lsdt;
322000030627       exsr $d@t1;
322100030627       k5lsdt = d@t2;
322200030627       //
322300030627       d@t1 = k5udat;
322400030627       exsr $d@t1;
322500030627       k5udat = d@t2;
322600030627       //
322700030627       d@t1 = rev001;
322800030627       exsr $d@t1;
322900030627       rev001 = d@t2;
323000030627       //
323100030627       d@t1 = rev002;
323200030627       exsr $d@t1;
323300030627       rev002 = d@t2;
323400030627       //
323500030627       d@t1 = rev003;
323600030627       exsr $d@t1;
323700030627       rev003 = d@t2;
323800030627       //
323900030627       d@t1 = rev004;
324000030627       exsr $d@t1;
324100030627       rev004 = d@t2;
324200030627       //
324300030627       d@t1 = rev005;
324400030627       exsr $d@t1;
324500030627       rev005 = d@t2;
324600030627       //
324700030627       d@t1 = rev006;
324800030627       exsr $d@t1;
324900030627       rev006 = d@t2;
325000030627       //
325100030627       d@t1 = rev007;
325200030627       exsr $d@t1;
325300030627       rev007 = d@t2;
325400030627       //
325500030627       exfmt comnt1;
325600030627       //
325700030627       // convert formatted dates back to mmddyy
325800030627       d@t2 = cdt001;
325900030627       exsr $d@t2;
326000030627       cdt001 = d@t1;
326100030627       //
326200030627       d@t2 = cdt002;
326300030627       exsr $d@t2;
326400030627       cdt002 = d@t1;
326500030627       //
326600030627       d@t2 = cdt003;
326700030627       exsr $d@t2;
326800030627       cdt003 = d@t1;
326900030627       //
327000030627       d@t2 = cdt004;
327100030627       exsr $d@t2;
327200030627       cdt004 = d@t1;
327300030627       //
327400030627       d@t2 = cdt005;
327500030627       exsr $d@t2;
327600030627       cdt005 = d@t1;
327700030627       //
327800030627       d@t2 = cdt006;
327900030627       exsr $d@t2;
328000030627       cdt006 = d@t1;
328100030627       //
328200030627       d@t2 = cdt007;
328300030627       exsr $d@t2;
328400030627       cdt007 = d@t1;
328500030627       //
328600030627       d@t2 = cld001;
328700030627       exsr $d@t2;
328800030627       cld001 = d@t1;
328900030627       //
329000030627       d@t2 = cld002;
329100030627       exsr $d@t2;
329200030627       cld002 = d@t1;
329300030627       //
329400030627       d@t2 = cld003;
329500030627       exsr $d@t2;
329600030627       cld003 = d@t1;
329700030627       //
329800030627       d@t2 = cld004;
329900030627       exsr $d@t2;
330000030627       cld004 = d@t1;
330100030627       //
330200030627       d@t2 = cld005;
330300030627       exsr $d@t2;
330400030627       cld005 = d@t1;
330500030627       //
330600030627       d@t2 = cld006;
330700030627       exsr $d@t2;
330800030627       cld006 = d@t1;
330900030627       //
331000030627       d@t2 = cld007;
331100030627       exsr $d@t2;
331200030627       cld007 = d@t1;
331300030627       //
331400030627       d@t2 = k5crrp;
331500030627       exsr $d@t2;
331600030627       k5crrp = d@t1;
331700030627       //
331800030627       d@t2 = k5lcdt;
331900030627       exsr $d@t2;
332000030627       k5lcdt = d@t1;
332100030627       //
332200030627       d@t2 = k5lcnd;
332300030627       exsr $d@t2;
332400030627       k5lcnd = d@t1;
332500030627       //
332600030627       d@t2 = k5lpdt;
332700030627       exsr $d@t2;
332800030627       k5lpdt = d@t1;
332900030627       //
333000030627       d@t2 = k5lsdt;
333100030627       exsr $d@t2;
333200030627       k5lsdt = d@t1;
333300030627       //
333400030627       d@t2 = k5udat;
333500030627       exsr $d@t2;
333600030627       k5udat = d@t1;
333700030627       //
333800030627       d@t2 = rev001;
333900030627       exsr $d@t2;
334000030627       rev001 = d@t1;
334100030627       //
334200030627       d@t2 = rev002;
334300030627       exsr $d@t2;
334400030627       rev002 = d@t1;
334500030627       //
334600030627       d@t2 = rev003;
334700030627       exsr $d@t2;
334800030627       rev003 = d@t1;
334900030627       //
335000030627       d@t2 = rev004;
335100030627       exsr $d@t2;
335200030627       rev004 = d@t1;
335300030627       //
335400030627       d@t2 = rev005;
335500030627       exsr $d@t2;
335600030627       rev005 = d@t1;
335700030627       //
335800030627       d@t2 = rev006;
335900030627       exsr $d@t2;
336000030627       rev006 = d@t1;
336100030627       //
336200030627       d@t2 = rev007;
336300030627       exsr $d@t2;
336400030627       rev007 = d@t1;
336500030627       //
336600030627       // "?" entered (redisplay if window program called)
336700030627       if *inka <> *on;
336800030627         exsr $qwf05;
336900030627      /end-free
337000030627     C     q#xflg        cabeq     'Y'           hlp#01
337100030627      /free
337200030627       endif;
337300030627       //
337400030627       // program help requested (f1)
337500030627       if *inka = *on;
337600030627         apscnm = 'COMNT1';
337700030627         exsr $hlptx;
337800030627      /end-free
337900030627     C                   goto      hlp#01
338000030627      /free
338100030627       endif;
338200030627       //
338300030627       exsr $setws;
338400030627       //
338500030627       // if roll key pressed, load next screen
338600030627       if roll = yes;
338700030627         exsr $cmrol;
338800030627       endif;
338900030627       //
339000030627       // else, edit customer #
339100030627       // if function key, pass control to new screen
339200030627       // kl-header, ke-open invoices, kf-paid invoices, kd-search
339300030627       if roll <> yes;
339400030627         exsr $edcus;
339500030627         exsr $edlcd;
339600030627         if *in90 = *on;
339700030627           exsr $clrcm;
339800030627         endif;
339900030627         if mic = *blanks
340000030627           or *inkl = *on
340100030627           or *inkd = *on;
340200030627           //
340300030627           if *inkk = *on;
340400030627             if *in30 = *on;
340500030627               *in30 = *off;
340600030627               k2cur1 = @lsymo;
340700030627               k2cur2 = @lsymo;
340800030627               k2cur3 = @lsymo;
340900030627               k2cur4 = @lsymo;
341000030627               k2curr = @dftcr;
341100030627               k2crds = @ldesc;
341200030627               crflag = 'L';
341300030627             else;
341400030627               *in30 = *on;
341500030627               k2cur1 = @tsymo;
341600030627               k2cur2 = @tsymo;
341700030627               k2cur3 = @tsymo;
341800030627               k2cur4 = @tsymo;
341900030627               k2curr = cmcurr;
342000030627               k2crds = @tdesc;
342100030627               crflag = 'T';
342200030627             endif;
342300030627           endif;
342400030627           //
342500030627           if *inkl = *on
342600030627             and caltp$ = 'Z';
342700030627      /end-free
342800030627     C                   goto      opntag
342900030627      /free
343000030627           endif;
343100030627           if *inkl = *on;
343200030627      /end-free
343300030627     C                   goto      hdrtag
343400030627      /free
343500030627           endif;
343600030627           if *inke = *on;
343700030627      /end-free
343800030627     C                   goto      opntag
343900030627      /free
344000030627           endif;
344100030627           if *inkf = *on;
344200030627      /end-free
344300030627     C                   goto      padtag
344400030627      /free
344500030627           endif;
344600030627           if *inkd = *on;
344700030627             mic = *blanks;
344800030627             exsr $serch;
344900030627           endif;
345000030627           //
345100030627           // f9 toggle key (assigned to/entry by)
345200030627           if *inki = *on;
345300030627             *inki = *off;
345400030627             if *in28 = *off;
345500030627               *in28 = *on;
345600030627             else;
345700030627               *in28 = *off;
345800030627             endif;
345900030627           endif;
346000030627           //
346100030627           // f2  toggle key (rev date/com date/close date)
346200030627           if *inkb = *on;
346300030627             if count1 = 0;
346400030627               *in26 = *on;
346500030627               *in25 = *off;
346600030627             endif;
346700030627             if count1 = 1;
346800030627               *in27 = *on;
346900030627               *in26 = *off;
347000030627             endif;
347100030627             if count1 = 2;
347200030627               count1 = 0;
347300030627               *in25 = *on;
347400030627               *in27 = *off;
347500030627             else;
347600030627      /end-free
347700030627     C                   add       1             count1
347800030627      /free
347900030627             endif;
348000031206      /end-free
348100031206     C                   goto      hlp#01                                       #*1n
348200031206      /free
348300030627           endif;
348400030627           //
348500030627           // f10 toggle key (open comment/closed comment)
348600030627           if *inkj = *on;
348700030627             if *in24 = *off;
348800030627               *in24 = *on;
348900030627             else;
349000030627               *in24 = *off;
349100030627             endif;
349200030627             exsr $cmint;
349300030627           endif;
349400030627           //
349500030627           //* extended view requested
349600030627           if *inkv = *on;
349700030627             exsr $extvw;
349800030627      /end-free
349900030627     C                   goto      comtag
350000030627      /free
350100030627           endif;
350200030627           //
350300030627           // f20 = customer comments selected
350400030627           if *inku = *on;
350500030627             p@shdn = 'N';
350600030627             p@cono = %editc(k5cono:'X');
350700030627             p@csno = %editc(k5csno:'X');
350800030627             p@cmno = '000000';
350900030627             p@seq# = '000000';
351000030627             %subst(p@pgmn:2:5) = 'AR201';
351100030627             p@func = 'A';
351200040625             // AR204 ( p@shdn : p@cono : p@csno :            #*1u
351300040625             //@cmno : p@seq# : p@pgmn : p@func );            #*1u
351400040617             xxcmno = 0;                                   // #*1o
351500040617             *in14 = *off;                                 // #*1o
351600030627             exsr $ldcmt;
351700030627      /end-free
351800030627     C                   goto      comtag
351900030627      /free
352000030627           endif;
352100030627           //
352200030627           // if cust# changed, display new customer
352300030627           // else, process comment selection (add or update)
352400030627           if chgcus = yes;
352500030627             xxcsno = k5csno;
352600030627             exsr $cmint;
352700030627             k2stat = cmstat;
352800030627             *in25 = *on;
352900030627             *in26 = *off;
353000030627             *in27 = *off;
353100030627             *in28 = *off;
353200030627             count1 = 0;
353300030627           else;
353400030627             exsr $prsel;
353500031208        // xxcmno = -1;                                       #*1o del
353600031208           xxcmno = @tcmno + 1;                            // #*1o
353700031208           exsr $ldcmt;
353800030627           endif;
353900030627         endif;
354000030627       endif;
354100030627       //
354200030627      /end-free
354300030627     C                   goto      comtag
354400030627      //
354500030627      //--------------------------------------------------------------- cmutag
354600030627      // process comment change or delete
354700030627     C     cmutag        tag
354800030627      /free
354900030627       //
355000030627       // prepare the screen for output
355100030627       *in90 = (mic > *blanks);
355200030627       *in89 = (mic = *blanks);
355300030627       //
355400030627       // write and read the screen
355500030627       //
355600030627       //------------------------*
355700030627      /end-free
355800030627     C     hlp#02        tag
355900030627      /free
356000030627       //------------------------*
356100030627       //
356200030627       if r <> *zeros;
356300030627         *in85 = *on;
356400030627         // convert mmddyy dates to correct format
356500030627         d@t1 = cdt001;
356600030627         exsr $d@t1;
356700030627         cdt001 = d@t2;
356800030627         //
356900030627         d@t1 = cdt002;
357000030627         exsr $d@t1;
357100030627         cdt002 = d@t2;
357200030627         //
357300030627         d@t1 = cdt003;
357400030627         exsr $d@t1;
357500030627         cdt003 = d@t2;
357600030627         //
357700030627         d@t1 = cdt004;
357800030627         exsr $d@t1;
357900030627         cdt004 = d@t2;
358000030627         //
358100030627         d@t1 = cdt005;
358200030627         exsr $d@t1;
358300030627         cdt005 = d@t2;
358400030627         //
358500030627         d@t1 = cdt006;
358600030627         exsr $d@t1;
358700030627         cdt006 = d@t2;
358800030627         //
358900030627         d@t1 = cdt007;
359000030627         exsr $d@t1;
359100030627         cdt007 = d@t2;
359200030627         //
359300030627         d@t1 = cld001;
359400030627         exsr $d@t1;
359500030627         cld001 = d@t2;
359600030627         //
359700030627         d@t1 = cld002;
359800030627         exsr $d@t1;
359900030627         cld002 = d@t2;
360000030627         //
360100030627         d@t1 = cld003;
360200030627         exsr $d@t1;
360300030627         cld003 = d@t2;
360400030627         //
360500030627         d@t1 = cld004;
360600030627         exsr $d@t1;
360700030627         cld004 = d@t2;
360800030627         //
360900030627         d@t1 = cld005;
361000030627         exsr $d@t1;
361100030627         cld005 = d@t2;
361200030627         //
361300030627         //
361400030627         d@t1 = cld006;
361500030627         exsr $d@t1;
361600030627         cld006 = d@t2;
361700030627         //
361800030627         d@t1 = cld007;
361900030627         exsr $d@t1;
362000030627         cld007 = d@t2;
362100030627         //
362200030627         d@t1 = k5crrp;
362300030627         exsr $d@t1;
362400030627         k5crrp = d@t2;
362500030627         //
362600030627         d@t1 = k5lcdt;
362700030627         exsr $d@t1;
362800030627         k5lcdt = d@t2;
362900030627         //
363000030627         d@t1 = k5lcnd;
363100030627         exsr $d@t1;
363200030627         k5lcnd = d@t2;
363300030627         //
363400030627         d@t1 = k5lpdt;
363500030627         exsr $d@t1;
363600030627         k5lpdt = d@t2;
363700030627         //
363800030627         d@t1 = k5lsdt;
363900030627         exsr $d@t1;
364000030627         k5lsdt = d@t2;
364100030627         //
364200030627         d@t1 = k5udat;
364300030627         exsr $d@t1;
364400030627         k5udat = d@t2;
364500030627         //
364600030627         d@t1 = rev001;
364700030627         exsr $d@t1;
364800030627         rev001 = d@t2;
364900030627         //
365000030627         d@t1 = rev002;
365100030627         exsr $d@t1;
365200030627         rev002 = d@t2;
365300030627         //
365400030627         d@t1 = rev003;
365500030627         exsr $d@t1;
365600030627         rev003 = d@t2;
365700030627         //
365800030627         d@t1 = rev004;
365900030627         exsr $d@t1;
366000030627         rev004 = d@t2;
366100030627         //
366200030627         d@t1 = rev005;
366300030627         exsr $d@t1;
366400030627         rev005 = d@t2;
366500030627         //
366600030627         d@t1 = rev006;
366700030627         exsr $d@t1;
366800030627         rev006 = d@t2;
366900030627         //
367000030627         d@t1 = rev007;
367100030627         exsr $d@t1;
367200030627         rev007 = d@t2;
367300030627         //
367400030627         write comnt1;
367500030627         //
367600030627         // convert formatted dates back to mmddyy
367700030627         d@t2 = cdt001;
367800030627         exsr $d@t2;
367900030627         cdt001 = d@t1;
368000030627         //
368100030627         d@t2 = cdt002;
368200030627         exsr $d@t2;
368300030627         cdt002 = d@t1;
368400030627         //
368500030627         d@t2 = cdt003;
368600030627         exsr $d@t2;
368700030627         cdt003 = d@t1;
368800030627         //
368900030627         d@t2 = cdt004;
369000030627         exsr $d@t2;
369100030627         cdt004 = d@t1;
369200030627         //
369300030627         d@t2 = cdt005;
369400030627         exsr $d@t2;
369500030627         cdt005 = d@t1;
369600030627         //
369700030627         d@t2 = cdt006;
369800030627         exsr $d@t2;
369900030627         cdt006 = d@t1;
370000030627         //
370100030627         d@t2 = cdt007;
370200030627         exsr $d@t2;
370300030627         cdt007 = d@t1;
370400030627         //
370500030627         d@t2 = cld001;
370600030627         exsr $d@t2;
370700030627         cld001 = d@t1;
370800030627         //
370900030627         d@t2 = cld002;
371000030627         exsr $d@t2;
371100030627         cld002 = d@t1;
371200030627         //
371300030627         d@t2 = cld003;
371400030627         exsr $d@t2;
371500030627         cld003 = d@t1;
371600030627         //
371700030627         d@t2 = cld004;
371800030627         exsr $d@t2;
371900030627         cld004 = d@t1;
372000030627         //
372100030627         d@t2 = cld005;
372200030627         exsr $d@t2;
372300030627         cld005 = d@t1;
372400030627         //
372500030627         d@t2 = cld006;
372600030627         exsr $d@t2;
372700030627         cld006 = d@t1;
372800030627         //
372900030627         d@t2 = cld007;
373000030627         exsr $d@t2;
373100030627         cld007 = d@t1;
373200030627         //
373300030627         d@t2 = k5crrp;
373400030627         exsr $d@t2;
373500030627         k5crrp = d@t1;
373600030627         //
373700030627         d@t2 = k5lcdt;
373800030627         exsr $d@t2;
373900030627         k5lcdt = d@t1;
374000030627         //
374100030627         d@t2 = k5lcnd;
374200030627         exsr $d@t2;
374300030627         k5lcnd = d@t1;
374400030627         //
374500030627         d@t2 = k5lpdt;
374600030627         exsr $d@t2;
374700030627         k5lpdt = d@t1;
374800030627         //
374900030627         d@t2 = k5lsdt;
375000030627         exsr $d@t2;
375100030627         k5lsdt = d@t1;
375200030627         //
375300030627         d@t2 = k5udat;
375400030627         exsr $d@t2;
375500030627         k5udat = d@t1;
375600030627         //
375700030627         d@t2 = rev001;
375800030627         exsr $d@t2;
375900030627         rev001 = d@t1;
376000030627         //
376100030627         d@t2 = rev002;
376200030627         exsr $d@t2;
376300030627         rev002 = d@t1;
376400030627         //
376500030627         d@t2 = rev003;
376600030627         exsr $d@t2;
376700030627         rev003 = d@t1;
376800030627         //
376900030627         d@t2 = rev004;
377000030627         exsr $d@t2;
377100030627         rev004 = d@t1;
377200030627         //
377300030627         d@t2 = rev005;
377400030627         exsr $d@t2;
377500030627         rev005 = d@t1;
377600030627         //
377700030627         d@t2 = rev006;
377800030627         exsr $d@t2;
377900030627         rev006 = d@t1;
378000030627         //
378100030627         d@t2 = rev007;
378200030627         exsr $d@t2;
378300030627         rev007 = d@t1;
378400030627         //
378500030627         *in85 = *off;
378600030627       else;
378700030627         exsr $qwe05;
378800030627         // convert mmddyy dates to correct format
378900030627         d@t1 = cdt001;
379000030627         exsr $d@t1;
379100030627         cdt001 = d@t2;
379200030627         //
379300030627         d@t1 = cdt002;
379400030627         exsr $d@t1;
379500030627         cdt002 = d@t2;
379600030627         //
379700030627         d@t1 = cdt003;
379800030627         exsr $d@t1;
379900030627         cdt003 = d@t2;
380000030627         //
380100030627         d@t1 = cdt004;
380200030627         exsr $d@t1;
380300030627         cdt004 = d@t2;
380400030627         //
380500030627         d@t1 = cdt005;
380600030627         exsr $d@t1;
380700030627         cdt005 = d@t2;
380800030627         //
380900030627         d@t1 = cdt006;
381000030627         exsr $d@t1;
381100030627         cdt006 = d@t2;
381200030627         //
381300030627         d@t1 = cdt007;
381400030627         exsr $d@t1;
381500030627         cdt007 = d@t2;
381600030627         //
381700030627         d@t1 = cld001;
381800030627         exsr $d@t1;
381900030627         cld001 = d@t2;
382000030627         //
382100030627         d@t1 = cld002;
382200030627         exsr $d@t1;
382300030627         cld002 = d@t2;
382400030627         //
382500030627         d@t1 = cld003;
382600030627         exsr $d@t1;
382700030627         cld003 = d@t2;
382800030627         //
382900030627         d@t1 = cld004;
383000030627         exsr $d@t1;
383100030627         cld004 = d@t2;
383200030627         //
383300030627         d@t1 = cld005;
383400030627         exsr $d@t1;
383500030627         cld005 = d@t2;
383600030627         //
383700030627         d@t1 = cld006;
383800030627         exsr $d@t1;
383900030627         cld006 = d@t2;
384000030627         //
384100030627         d@t1 = cld007;
384200030627         exsr $d@t1;
384300030627         cld007 = d@t2;
384400030627         //
384500030627         d@t1 = k5crrp;
384600030627         exsr $d@t1;
384700030627         k5crrp = d@t2;
384800030627         //
384900030627         d@t1 = k5lcdt;
385000030627         exsr $d@t1;
385100030627         k5lcdt = d@t2;
385200030627         //
385300030627         d@t1 = k5lcnd;
385400030627         exsr $d@t1;
385500030627         k5lcnd = d@t2;
385600030627         //
385700030627         d@t1 = k5lpdt;
385800030627         exsr $d@t1;
385900030627         k5lpdt = d@t2;
386000030627         //
386100030627         d@t1 = k5lsdt;
386200030627         exsr $d@t1;
386300030627         k5lsdt = d@t2;
386400030627         //
386500030627         d@t1 = k5udat;
386600030627         exsr $d@t1;
386700030627         k5udat = d@t2;
386800030627         //
386900030627         d@t1 = rev001;
387000030627         exsr $d@t1;
387100030627         rev001 = d@t2;
387200030627         //
387300030627         d@t1 = rev002;
387400030627         exsr $d@t1;
387500030627         rev002 = d@t2;
387600030627         //
387700030627         d@t1 = rev003;
387800030627         exsr $d@t1;
387900030627         rev003 = d@t2;
388000030627         //
388100030627         d@t1 = rev004;
388200030627         exsr $d@t1;
388300030627         rev004 = d@t2;
388400030627         //
388500030627         d@t1 = rev005;
388600030627         exsr $d@t1;
388700030627         rev005 = d@t2;
388800030627         //
388900030627         d@t1 = rev006;
389000030627         exsr $d@t1;
389100030627         rev006 = d@t2;
389200030627         //
389300030627         d@t1 = rev007;
389400030627         exsr $d@t1;
389500030627         rev007 = d@t2;
389600030627         //
389700030627         exfmt comnt1;
389800030627         //
389900030627         // convert formatted dates back to mmddyy
390000030627         d@t2 = cdt001;
390100030627         exsr $d@t2;
390200030627         cdt001 = d@t1;
390300030627         //
390400030627         d@t2 = cdt002;
390500030627         exsr $d@t2;
390600030627         cdt002 = d@t1;
390700030627         //
390800030627         d@t2 = cdt003;
390900030627         exsr $d@t2;
391000030627         cdt003 = d@t1;
391100030627         //
391200030627         d@t2 = cdt004;
391300030627         exsr $d@t2;
391400030627         cdt004 = d@t1;
391500030627         //
391600030627         d@t2 = cdt005;
391700030627         exsr $d@t2;
391800030627         cdt005 = d@t1;
391900030627         //
392000030627         d@t2 = cdt006;
392100030627         exsr $d@t2;
392200030627         cdt006 = d@t1;
392300030627         //
392400030627         d@t2 = cdt007;
392500030627         exsr $d@t2;
392600030627         cdt007 = d@t1;
392700030627         //
392800030627         d@t2 = cld001;
392900030627         exsr $d@t2;
393000030627         cld001 = d@t1;
393100030627         //
393200030627         d@t2 = cld002;
393300030627         exsr $d@t2;
393400030627         cld002 = d@t1;
393500030627         //
393600030627         d@t2 = cld003;
393700030627         exsr $d@t2;
393800030627         cld003 = d@t1;
393900030627         //
394000030627         d@t2 = cld004;
394100030627         exsr $d@t2;
394200030627         cld004 = d@t1;
394300030627         //
394400030627         d@t2 = cld005;
394500030627         exsr $d@t2;
394600030627         cld005 = d@t1;
394700030627         //
394800030627         d@t2 = cld006;
394900030627         exsr $d@t2;
395000030627         cld006 = d@t1;
395100030627         //
395200030627         d@t2 = cld007;
395300030627         exsr $d@t2;
395400030627         cld007 = d@t1;
395500030627         //
395600030627         d@t2 = k5crrp;
395700030627         exsr $d@t2;
395800030627         k5crrp = d@t1;
395900030627         //
396000030627         d@t2 = k5lcdt;
396100030627         exsr $d@t2;
396200030627         k5lcdt = d@t1;
396300030627         //
396400030627         d@t2 = k5lcnd;
396500030627         exsr $d@t2;
396600030627         k5lcnd = d@t1;
396700030627         //
396800030627         d@t2 = k5lpdt;
396900030627         exsr $d@t2;
397000030627         k5lpdt = d@t1;
397100030627         //
397200030627         d@t2 = k5lsdt;
397300030627         exsr $d@t2;
397400030627         k5lsdt = d@t1;
397500030627         //
397600030627         d@t2 = k5udat;
397700030627         exsr $d@t2;
397800030627         k5udat = d@t1;
397900030627         //
398000030627         d@t2 = rev001;
398100030627         exsr $d@t2;
398200030627         rev001 = d@t1;
398300030627         //
398400030627         d@t2 = rev002;
398500030627         exsr $d@t2;
398600030627         rev002 = d@t1;
398700030627         //
398800030627         d@t2 = rev003;
398900030627         exsr $d@t2;
399000030627         rev003 = d@t1;
399100030627         //
399200030627         d@t2 = rev004;
399300030627         exsr $d@t2;
399400030627         rev004 = d@t1;
399500030627         //
399600030627         d@t2 = rev005;
399700030627         exsr $d@t2;
399800030627         rev005 = d@t1;
399900030627         //
400000030627         d@t2 = rev006;
400100030627         exsr $d@t2;
400200030627         rev006 = d@t1;
400300030627         //
400400030627         d@t2 = rev007;
400500030627         exsr $d@t2;
400600030627         rev007 = d@t1;
400700030627         //
400800030627         //
400900030627         // "?" entered (redisplay if window program called)
401000030627         if *inka <> *on;
401100030627           exsr $qwf05;
401200030627      /end-free
401300030627     C     q#xflg        cabeq     'Y'           hlp#02
401400030627      /free
401500030627         endif;
401600030627       endif;
401700030627       //
401800030627       // program help requested (f1)
401900030627       if *inka = *on;
402000030627         apscnm = 'COMNT1';
402100030627         exsr $hlptx;
402200030627      /end-free
402300030627     C                   goto      hlp#02
402400030627      /free
402500030627       endif;
402600030627       //
402700030627       //
402800030627       //------------------------*
402900030627      /end-free
403000030627     C     hlp#03        tag
403100030627      /free
403200030627       //------------------------*
403300030627       //
403400030627       //*
403500030627       // "?" entered (redisplay if window program called)
403600030627       if *inka <> *on
403700030627         and *inky <> *on;
403800030627         // convert mmddyy dates to correct format
403900030627         d@t1 = cdt001;
404000030627         exsr $d@t1;
404100030627         cdt001 = d@t2;
404200030627         //
404300030627         d@t1 = cdt002;
404400030627         exsr $d@t1;
404500030627         cdt002 = d@t2;
404600030627         //
404700030627         d@t1 = cdt003;
404800030627         exsr $d@t1;
404900030627         cdt003 = d@t2;
405000030627         //
405100030627         d@t1 = cdt004;
405200030627         exsr $d@t1;
405300030627         cdt004 = d@t2;
405400030627         //
405500030627         d@t1 = cdt005;
405600030627         exsr $d@t1;
405700030627         cdt005 = d@t2;
405800030627         //
405900030627         d@t1 = cdt006;
406000030627         exsr $d@t1;
406100030627         cdt006 = d@t2;
406200030627         //
406300030627         d@t1 = cdt007;
406400030627         exsr $d@t1;
406500030627         cdt007 = d@t2;
406600030627         //
406700030627         d@t1 = cld001;
406800030627         exsr $d@t1;
406900030627         cld001 = d@t2;
407000030627         //
407100030627         d@t1 = cld002;
407200030627         exsr $d@t1;
407300030627         cld002 = d@t2;
407400030627         //
407500030627         d@t1 = cld003;
407600030627         exsr $d@t1;
407700030627         cld003 = d@t2;
407800030627         //
407900030627         d@t1 = cld004;
408000030627         exsr $d@t1;
408100030627         cld004 = d@t2;
408200030627         //
408300030627         d@t1 = cld005;
408400030627         exsr $d@t1;
408500030627         cld005 = d@t2;
408600030627         //
408700030627         d@t1 = cld006;
408800030627         exsr $d@t1;
408900030627         cld006 = d@t2;
409000030627         //
409100030627         d@t1 = cld007;
409200030627         exsr $d@t1;
409300030627         cld007 = d@t2;
409400030627         //
409500030627         d@t1 = k5crrp;
409600030627         exsr $d@t1;
409700030627         k5crrp = d@t2;
409800030627         //
409900030627         d@t1 = k5lcdt;
410000030627         exsr $d@t1;
410100030627         k5lcdt = d@t2;
410200030627         //
410300030627         d@t1 = k5lcnd;
410400030627         exsr $d@t1;
410500030627         k5lcnd = d@t2;
410600030627         //
410700030627         d@t1 = k5lpdt;
410800030627         exsr $d@t1;
410900030627         k5lpdt = d@t2;
411000030627         //
411100030627         d@t1 = k5lsdt;
411200030627         exsr $d@t1;
411300030627         k5lsdt = d@t2;
411400030627         //
411500030627         d@t1 = k5udat;
411600030627         exsr $d@t1;
411700030627         k5udat = d@t2;
411800030627         //
411900030627         d@t1 = rev001;
412000030627         exsr $d@t1;
412100030627         rev001 = d@t2;
412200030627         //
412300030627         d@t1 = rev002;
412400030627         exsr $d@t1;
412500030627         rev002 = d@t2;
412600030627         //
412700030627         d@t1 = rev003;
412800030627         exsr $d@t1;
412900030627         rev003 = d@t2;
413000030627         //
413100030627         d@t1 = rev004;
413200030627         exsr $d@t1;
413300030627         rev004 = d@t2;
413400030627         //
413500030627         d@t1 = rev005;
413600030627         exsr $d@t1;
413700030627         rev005 = d@t2;
413800030627         //
413900030627         d@t1 = rev006;
414000030627         exsr $d@t1;
414100030627         rev006 = d@t2;
414200030627         //
414300030627         d@t1 = rev007;
414400030627         exsr $d@t1;
414500030627         rev007 = d@t2;
414600030627         //
414700030627         write comnt1;
414800030627         //
414900030627         // convert formatted dates back to mmddyy
415000030627         d@t2 = cdt001;
415100030627         exsr $d@t2;
415200030627         cdt001 = d@t1;
415300030627         //
415400030627         d@t2 = cdt002;
415500030627         exsr $d@t2;
415600030627         cdt002 = d@t1;
415700030627         //
415800030627         d@t2 = cdt003;
415900030627         exsr $d@t2;
416000030627         cdt003 = d@t1;
416100030627         //
416200030627         d@t2 = cdt004;
416300030627         exsr $d@t2;
416400030627         cdt004 = d@t1;
416500030627         //
416600030627         d@t2 = cdt005;
416700030627         exsr $d@t2;
416800030627         cdt005 = d@t1;
416900030627         //
417000030627         d@t2 = cdt006;
417100030627         exsr $d@t2;
417200030627         cdt006 = d@t1;
417300030627         //
417400030627         d@t2 = cdt007;
417500030627         exsr $d@t2;
417600030627         cdt007 = d@t1;
417700030627         //
417800030627         d@t2 = cld001;
417900030627         exsr $d@t2;
418000030627         cld001 = d@t1;
418100030627         //
418200030627         d@t2 = cld002;
418300030627         exsr $d@t2;
418400030627         cld002 = d@t1;
418500030627         //
418600030627         d@t2 = cld003;
418700030627         exsr $d@t2;
418800030627         cld003 = d@t1;
418900030627         //
419000030627         d@t2 = cld004;
419100030627         exsr $d@t2;
419200030627         cld004 = d@t1;
419300030627         //
419400030627         d@t2 = cld005;
419500030627         exsr $d@t2;
419600030627         cld005 = d@t1;
419700030627         //
419800030627         d@t2 = cld006;
419900030627         exsr $d@t2;
420000030627         cld006 = d@t1;
420100030627         //
420200030627         d@t2 = cld007;
420300030627         exsr $d@t2;
420400030627         cld007 = d@t1;
420500030627         //
420600030627         d@t2 = k5crrp;
420700030627         exsr $d@t2;
420800030627         k5crrp = d@t1;
420900030627         //
421000030627         d@t2 = k5lcdt;
421100030627         exsr $d@t2;
421200030627         k5lcdt = d@t1;
421300030627         //
421400030627         d@t2 = k5lcnd;
421500030627         exsr $d@t2;
421600030627         k5lcnd = d@t1;
421700030627         //
421800030627         d@t2 = k5lpdt;
421900030627         exsr $d@t2;
422000030627         k5lpdt = d@t1;
422100030627         //
422200030627         d@t2 = k5lsdt;
422300030627         exsr $d@t2;
422400030627         k5lsdt = d@t1;
422500030627         //
422600030627         d@t2 = k5udat;
422700030627         exsr $d@t2;
422800030627         k5udat = d@t1;
422900030627         //
423000030627         d@t2 = rev001;
423100030627         exsr $d@t2;
423200030627         rev001 = d@t1;
423300030627         //
423400030627         d@t2 = rev002;
423500030627         exsr $d@t2;
423600030627         rev002 = d@t1;
423700030627         //
423800030627         d@t2 = rev003;
423900030627         exsr $d@t2;
424000030627         rev003 = d@t1;
424100030627         //
424200030627         d@t2 = rev004;
424300030627         exsr $d@t2;
424400030627         rev004 = d@t1;
424500030627         //
424600030627         d@t2 = rev005;
424700030627         exsr $d@t2;
424800030627         rev005 = d@t1;
424900030627         //
425000030627         d@t2 = rev006;
425100030627         exsr $d@t2;
425200030627         rev006 = d@t1;
425300030627         //
425400030627         d@t2 = rev007;
425500030627         exsr $d@t2;
425600030627         rev007 = d@t1;
425700030627         //
425800030627         *in85 = *off;
425900030627      /end-free
426000030627     C     q#xflg        cabeq     'Y'           hlp#03
426100030627      /free
426200030627       endif;
426300030627       //
426400030627       exsr $setws;
426500030627       //
426600030627       // if f12- return pressed during an update, reset screen
426700030627       if *inkl = *on;
426800030627         exsr $ldcmt;
426900030627      /end-free
427000030627     C                   goto      comtag
427100030627      /free
427200030627       endif;
427300030627      /end-free
427400030627     C                   goto      cmutag
427500030627      //
427600030627      //--------------------------------------------------------------- dettag
427700030627      //**
427800030627      //--------------------------------------------------------------- inqtag
427900030627      // handle open order or shipment history inquiry request
428000030627      // (set lda for return purposes and exit the program)
428100030627     C     inqtag        tag
428200030627      /free
428300030627       //
428400030627       // save customer number
428500030627       colda = k5cono;
428600030627       cocusl = cocus;
428700030627       pgmcd = n;
428800030627       //
428900030627       //*if shipment history requested, save current status for return
429000030627       inqtp = openflag;
429100030627       ordpgm = 'Y';
429200030627       pasynp = 'N';
429300030627       frmoep = 'N';
429400030627       cmdkyp = ' ';
429500030627       ordidp = *blanks;
429600030627       comnop = %editc(k5cono:'X');
429700030627       cusnrp = %editc(k5csno:'X');
429800030627       cusnmp = cmcsnm;
429900030627       shptop = *blanks;
430000030627       opnynp = 'Y';
430100030627       hstynp = 'Y';
430200030627       otypep = ' ';
430300030627       frmpop = *blanks;
430400030627       topop = *blanks;
430500030627       frordp = *blanks;
430600030627       toordp = *blanks;
430700030627       fredtp = '000000';
430800030627       toedtp = '000000';
430900030627       frrdtp = '000000';
431000030627       tordtp = '000000';
431100030627       frinrp = '00000000';
431200030627       toinrp = '00000000';
431300030627       fridtp = '000000';
431400030627       toidtp = '000000';
431500030627       frcldp = '000000';
431600030627       tocldp = '000000';
431700030627       OE221A ( shtdn : pasynp : frmoep :
431800030627       cmdkyp : ordidp : comnop : cusnrp :
431900030627       cusnmp : shptop : opnynp : hstynp :
432000030627       otypep : frmpop : topop : frordp :
432100030627       toordp : fredtp : toedtp : frrdtp :
432200030627       tordtp : frinrp : toinrp : fridtp :
432300030627       toidtp : frcldp : tocldp : orsrc@ :
432400030627       warnf@ );
432500030627       //
432600030627       //  returned from history or open order inquiry
432700030627       //
432800030627       //
432900030627       //**if f3 to exit was pressed in inquiry end program
433000030627       if cmdkyp = 'C';
433100030627      /end-free
433200030627     C                   goto      quit
433300030627      /free
433400030627       endif;
433500030627       inqury = *blanks;
433600030627      /end-free
433700030627     C                   goto      hdrtag
433800030627      //
433900030627      //--------------------------------------------------------------- quit
434000030627      // end the program
434100030627      //
434200030627     C     quit          tag
434300030627      /free
434400030627       shtdn = 'Y';
434500030627       if schpgm = 'Y';
434600030627         CSRCH ( shtdn : comnop : cusnrp : shptop
434700030627         : kcfind : cityp : statep : zsrchp :
434800030627         usdftp );
434900030627       endif;
435000030627       //**
435100030627       if ordpgm = 'Y';
435200030627         OE221A ( shtdn : pasynp : frmoep :
435300030627         cmdkyp : ordidp : comnop : cusnrp :
435400030627         cusnmp : shptop : opnynp : hstynp :
435500030627         otypep : frmpop : topop : frordp :
435600030627         toordp : fredtp : toedtp : frrdtp :
435700030627         tordtp : frinrp : toinrp : fridtp :
435800030627         toidtp : frcldp : tocldp : orsrc@ :
435900030627         warnf@ );
436000030627       endif;
436100030627       if rgapgm = 'Y';
436200030627         shtdn@ = 'Y';
436300030627         OE272 ( cmdky : shtdn@ : x1rtrc : x1frwh
436400030627         : x1towh : x1frdt : x1todt : x1frco :
436500030627         x1toco : x1csno : x1itno : x1vndr :
436600030627         x1frrp : x1torp );
436700030627       endif;
436800030627       //
436900030627       // cancel ar202, if called
437000030627       if detpgm = 'Y';
437100030627         AR202 ( co2# : cu2# : detyp : tp2# :
437200030627         in2# : dt2# : cmdkyp : shtdn );
437300030627       endif;
437400040625       // cancel ar202, if called                                  #*1u
437500040625       if AR203@ = 'Y';                                         // #*1u
437600040625         shtdn = 'Y';                                           // #*1u
437700040625         AR203 ( shtdn : callpgm : co2# : cu2# : detyp : tp2# : // #*1u
437800040625               in2# : dt2# : arcr : cmtyp$ );                   // #*1u
437900040625       endif;                                                   // #*1u
438000030627       // shut down price inquiry
438100030627       select;
438200030627       when @oe290 = 'Y';
438300030627         exsr $oe290;
438400030627       endsl;
438500030627       //
438600030627       //* cancel security check sub-program
438700030627       //
438800030627       @shtdn = 'Y';
438900030627       XASCHK ( @shtdn : @caltp : @user :
439000030627       @comno : @seecs );
439100030627       //
439200030627       *inlr = *on;
439300030627       //
439400030627       // clear out marked invoices
439500030627       if @@mark = 'Y';
439600030627         exsr $clrmk;
439700030627       endif;
439800030627       //
439900030627       // shutdown "?" window sub-program
440000030627       if xa200@ = 'Y';
440100030627         q#shdn = 'Y';
440200030627         exsr $wndow;
440300030627       endif;
440400030627       //
440500030627       //* close the open ic files
440600030627       if icopen = 'Y';
440700030627         close icrdhd;
440800030627         close icrddt;
440900030627         close icrhhd;
441000030627         close iccsms;
441100030627       endif;
441200030627       //
441300030627       //
441400030627       //*************************************************************** $setws
441500030627       // process the display file
441600030627       begsr $setws;
441700030627       mic = *blanks;
441800030627       roll = *blanks;
441900030627       //
442000030627       if *in81 = *on;
442100030627         roll = yes;
442200030627       endif;
442300030627       if *in82 = *on;
442400030627         roll = yes;
442500030627       endif;
442600040415
442700040416       if roll = yes and                   // #*1s - add
442800040415          NOT ChkCoAut( @suser : k5cono ); // #*1s - add
442900040416         roll = *blanks;                   // #*1s - add
443000040416       endif;                              // #*1s - add
443100040415
443200030627       if *inkg = *on;
443300030627         cocus = hcocus;
443400030627       endif;
443500030627       if *inkh = *on;
443600030627         cocus = hcocus;
443700030627       endif;
443800030627       //
443900030627       //* see if ep live
444000030627       x9comp = k5cono;
444100030627       x9appl = 'OE';
444200030627       x9ckey = 'EPAYOPT';
444300030627       eplive = 'N';
444400040108       *in22 = *off;                                       //#*1q
444500030627       chain ctlky orctl;
444600030627       *in90 = not %found;
444700030627       if *in90 = *off
444800030627         and eplivo = 'Y';
444900040108       *in22 = *on;                                        //#*1q
445000030627         eplive = 'Y';
445100030627       endif;
445200030627       *in49 = *off;
445300030627       //
445400030627       //* see if authorized to ar quick pay
445500030627       *in49 = *off;
445600030627       x9comp = k5cono;
445700030627       x9appl = 'AR';
445800030627       x9ckey = 'OPTIONS';
445900030627       chain ctlky orctl;
446000030627       *in90 = not %found;
446100030627       if eplive = 'Y';
446200041012                                                           // #*1w
446300041019         //* Check if user is authorized to Quick Pay         #*1w
446400041012         if ChkActionAut( @suser : k5cono : *blanks :      // #*1w
446500041019                         'WORK' : 'QUICKPAY' : *blanks );  // #*1w
446600041012           *in49 = *on;                                    // #*1w
446700041012         endif;                                            // #*1w
446800041012       endif;                                              // #*1w
446900030627         //
447000041012       //if alaqpo = 'Y'                                            #*1w del
447100041012       //  and ausero = '*ALL';                                     #*1w del
447200041012       //  *in49 = *on;                                             #*1w del
447300041012       //endif;                                                     #*1w del
447400041012       //if alaqpo = 'Y'                                            #*1w del
447500041012       //  and ausero <> '*ALL';                                    #*1w del
447600041012       //  @@group10 = ausero;                       // #*1s - add  #*1w del
447700041012       //  *in49 = UsrInGrp( @@group10 : @suser );   // #*1s - add  #*1w del
447800040407           //chain yu0key usergr;                    // #*1s - del
447900040407           //*in90 = not %found;                     // #*1s - del
448000040407           //if *in90 = *off;                        // #*1s - del
448100040407           //  *in49 = *on;                          // #*1s - del
448200040407           //endif;                                  // #*1s - del
448300041012       //endif;                                                     #*1w del
448400041012         //                                                         #*1w del
448500041012         // master user?                                            #*1w del
448600041012       //if *in49 = *off                                            #*1w del
448700041012       //  and alaqpo = 'Y';                                        #*1w del
448800041012       //   *in49 = ChkMstUsr( @suser );             // #*1s - add  #*1w del
448900041012       //endif;                                      // #*1s - add  #*1w del
449000040407           //chain @user secty;                      // #*1s - del
449100040407           //*in90 = not %found;                     // #*1s - del
449200040407           //if *in90 = *off                         // #*1s - del
449300040407           //  and ysmsus = 'Y';                     // #*1s - del
449400040407           //  *in49 = *on;                          // #*1s - del
449500040407           //endif;                                  // #*1s - del
449600040407         //endif;                                    // #*1s - del
449700030627         //
449800041012       //endif;                                                     #*1w del
449900030627       //
450000030627       // new customer not allowed for ar quick pay
450100030627       x9comp = k5cono;
450200030627       x9appl = 'OE';
450300030627       x9ckey = 'ORDERNO';
450400030627       chain ctlky orctl;
450500030627       *in90 = not %found;
450600030627       if *in90 = *off
450700030627         and k5csno = ncsnoo;
450800030627         *in49 = *off;
450900030627       endif;
451000030627       //
451100030627       //
451200030627       //
451300030627       endsr;
451400030627       //***************************************************************
451500030627       begsr $edlcd;
451600030627       // edit last contact date if not blank
451700030627       if k5lcdt <> *zeros;
451800030627      /end-free
451900030627     C     k5lcdt        mult      10000.01      date
452000030627      /free
452100030627         *in90 = (dd < 1);
452200030627         if *in90 = *off;
452300030627           *in90 = (dd > 31);
452400030627         endif;
452500030627         if *in90 = *off;
452600030627           *in90 = (mm < 1);
452700030627         endif;
452800030627         if *in90 = *off;
452900030627           *in90 = (mm > 12);
453000030627         endif;
453100030627         if *in90 = *on;
453200030627           mic = '2076';
453300030627           leavesr;
453400030627         endif;
453500030627         lcdato = date;
453600030627      /end-free
453700030627     C                   movel     ucc           lcdato
453800030627      /free
453900030627         b$cm0h = cocus;
454000030627         chain cm0key cusmsr;
454100030627         *in90 = not %found;
454200030627         if iclive = 'Y';
454300030627           chain cm0key iccsmsr;
454400030627           *in92 = not %found;
454500030627           if *in92 = *on;
454600030627             cmcurr = @dftcr;
454700030627           endif;
454800030627         endif;
454900030627         if *in90 = *off;
455000030627           k4zip5 = $6c001;
455100030627         endif;
455200030627         if *in90 = *off;
455300030627           #6c001 = lcdato;
455400030627           cmlccc = #6lccc;
455500030627           cmlcnd = #6lcnd;
455600030627           update cusmsr;
455700030627         endif;
455800030627         k5lcnd = k5lcdt;
455900030627         k5lcdt = 0;
456000030627       endif;
456100030627       //
456200030627       // update review every -- days field
456300030627       chain cm0key cusmsr;
456400030627       *in90 = not %found;
456500030627       if *in90 = *off;
456600030627         cmrvdy = k5rvdy;
456700030627         update cusmsr;
456800030627       endif;
456900030627       //
457000030627       // call ar245 to update next review date
457100030627       if k5lcnd <> s@lcnd
457200030627         or k5rvdy <> s@rvdy;
457300030627         p1cono = %editc(k5cono:'X');
457400030627         p1csno = %editc(k5csno:'X');
457500030627         AR245 ( p1cono : p1csno );
457600030627         s@lcnd = k5lcnd;
457700030627         s@rvdy = k5rvdy;
457800030627       endif;
457900030627       //
458000030627       endsr;
458100030627       //*************************************************************** $edstr
458200030627       // edit start screen
458300030627       begsr $edstr;
458400030627       if k5cono = 0;
458500030627         mic = '2000';
458600030627         leavesr;
458700030627       endif;
458800030627       //*
458900030627       //
459000030627       // verify customer number if not blank
459100030627       if k5csno <> *zeros;
459200030627         b$cm0h = cocus;
459300030627         chain cm0key cusmsr;
459400030627         *in90 = not %found;
459500030627         if iclive = 'Y';
459600030627           chain cm0key iccsmsr;
459700030627           *in92 = not %found;
459800030627           if *in92 = *on;
459900030627             cmcurr = @dftcr;
460000030627           endif;
460100030627         endif;
460200030627         if *in90 = *off;
460300030627           k4zip5 = $6c001;
460400030627           update cusmsr;
460500030627         endif;
460600030627         if *in90 = *on;
460700030627           mic = '2001';
460800030627           leavesr;
460900030627         endif;
461000030627       endif;
461100030627       //
461200030627       // check for search words if no customer
461300030627       if k5csno = 0;
461400030627         if kcfind <> ' '
461500030627           or k1city <> ' ';
461600030627           exsr $serch;
461700030627           b$cm0h = cocus;
461800030627           chain cm0key cusmsr;
461900030627           *in90 = not %found;
462000030627           if iclive = 'Y';
462100030627             chain cm0key iccsmsr;
462200030627             *in92 = not %found;
462300030627             if *in92 = *on;
462400030627               cmcurr = @dftcr;
462500030627             endif;
462600030627           endif;
462700030627           if *in90 = *off;
462800030627             k4zip5 = $6c001;
462900030627             update cusmsr;
463000030627           endif;
463100030627         endif;
463200030627       endif;
463300030627       //
463400030627       // if cust#=0 & keywd=blank, error message
463500030627       if k5csno = *zeros;
463600030627         if kcfind = ' ';
463700030627           if k1city = ' ';
463800030627             k1city = *blanks;
463900030627             k1stat = *blanks;
464000030627             mic = '2163';
464100030627             leavesr;
464200030627           endif;
464300030627         endif;
464400030627       endif;
464500040407
464600040407       //* User must be authorized to the company     // #*1s - add
464700040407       if NOT ChkCoAut( @suser : k5cono );            // #*1s - add
464800040407         mic = '7169';                                // #*1s - add
464900040407         leavesr;                                     // #*1s - add
465000040407       endif;                                         // #*1s - add
465100041012                                                           // #*1w
465200041012       //* User must be authorized to at least 1 rep          #*1w
465300041012       if NOT ChkRepAut( @suser : k5cono : cmrp#1 :        // #*1w
465400041012                         cmrp#2 : cmrp#3 );                // #*1w
465500041012         mic = '7608';                                     // #*1w
465600041012         leavesr;                                          // #*1w
465700041012       endif;                                              // #*1w
465800030627       //
465900030627       //* retrieve ic company options record
466000030627       if iclive = 'Y';
466100030627         if icmlto = 'Y';
466200030627           x9comp = k5cono;
466300030627           x9appl = 'IC';
466400030627           x9ckey = 'OPTIONS';
466500030627           chain ctlky orctl;
466600030627           *in90 = not %found;
466700030627           if *in90 = *off;
466800030627             @dftcr = curcoo;
466900030627           else;
467000030627             @dftcr = curdfo;
467100030627           endif;
467200030627         endif;
467300030627         //
467400030627         //* retrieve the local currency symbol and description
467500030627         x9comp = *zeros;
467600030627         x9appl = 'IC';
467700030627         %subst(x9ckey:1:4) = 'CURR';
467800030627         %subst(x9ckey:5:3) = @dftcr;
467900030627         chain ctlky orctl;
468000030627         *in90 = not %found;
468100030627         if *in90 = *off;
468200030627           @lsymo = ccsymo;
468300030627           @ldesc = ccnamo;
468400030627         endif;
468500030627       endif;
468600030627       //
468700030627       // load customer summary information
468800030627       exsr $ldcus;
468900030627       //
469000030627       endsr;
469100030627       //*************************************************************** $ldcus
469200030627       // load customer summary information
469300030627       begsr $ldcus;
469400030627       //
469500030627       hcocus = cocus;
469600030627       k5lcdt = 0;
469700030627       k5crrp = 0;
469800030627       k5rvdy = 0;
469900030627       k5arrp = *blanks;
470000030627       s@rvdy = 0;
470100030627       s@lcnd = 0;
470200031012       k5spnd = 'SUSPEND';                                    // #*1k
470300030627       //
470400030627       // if multi company, determine if cost$profit should display
470500030627       if mltco = yes;
470600030627         exsr $ckdsp;
470700030627       endif;
470800030627       //
470900030627       // get a/r customer name if a/r customer exists
471000031011       *in50 = *on;
471100031011
471200031011       // get email address                                  #*1j
471300031011       clear k2peml;                                       //#*1j
471400031011       clear k2aeml;                                       //#*1j
471500031020       clear @@emgp;                                       //#*1j
471600031011       for index = 1 to 3;                                 //#*1j
471700031011         chain(n) ce0key cseml;                            //#*1j
471800031011         *in90 = not %found;                               //#*1j
471900031022         if index = 1;                                     //#*1j
472000031022           if *in90 = *off;                                //#*1j
472100031011             k2peml = %subst(ceemad:1:41);                 //#*1j
472200031011             k2aeml = %subst(ceemad:1:41);                 //#*1j
472300031022           endif;                                          //#*1j
472400031011             @@emgp = 'AP ';                               //#*1j
472500031011             iter;                                         //#*1j
472600031022         endif;                                            //#*1j
472700031022         if index = 2;                                     //#*1j
472800031022           if *in90 = *off;                                //#*1j
472900031011             k2aeml = %subst(ceemad:1:41);                 //#*1j
473000031022           endif;                                          //#*1j
473100031011             @@emgp = 'PO ';                               //#*1j
473200031011             iter;                                         //#*1j
473300031022         endif;                                            //#*1j
473400031022         if index = 3;                                     //#*1j
473500031022           if *in90 = *off;                                //#*1j
473600031011             k2peml = %subst(ceemad:1:41);                 //#*1j
473700031011           endif;                                          //#*1j
473800031011         endif;                                            //#*1j
473900031011       endfor;                                             //#*1j
474000031011                                                           //#*1J
474100031011       //k2arnm = *blanks;                                   #*1j
474200030627       if cmarcs <> 0;
474300030627      /end-free
474400030627     C                   movel     k5cono        arckey
474500030627     C                   move      cmarcs        arckey
474600030627      /free
474700030627         b$cm0h = arckey;
474800030627         chain cm0key cusmsr;
474900030627         *in90 = not %found;
475000030627         if iclive = 'Y';
475100030627           chain cm0key iccsmsr;
475200030627           *in92 = not %found;
475300030627           if *in92 = *on;
475400030627             cmcurr = @dftcr;
475500030627           endif;
475600030627         endif;
475700030627         if *in90 = *off;
475800030627           k4zip5 = $6c001;
475900030627         endif;
476000030627         if *in90 = *off;
476100030627           update cusmsr;
476200030627           k2arnm = cmcsnm;
476300030627           *in50 = *off;
476400030627           b$cm0h = cocus;
476500030627           chain cm0key cusmsr;
476600030627           *in90 = not %found;
476700030627           if iclive = 'Y';
476800030627             chain cm0key iccsmsr;
476900030627             *in92 = not %found;
477000030627             if *in92 = *on;
477100030627               cmcurr = @dftcr;
477200030627             endif;
477300030627           endif;
477400030627           if *in90 = *off;
477500030627             k4zip5 = $6c001;
477600030627             update cusmsr;
477700030627           endif;
477800030627         endif;
477900030627       endif;
478000030627       //
478100030627       // setup phone numbers
478200030627       k2sphn = cmpupn;
478300030627       k2sccd = cmpccd;
478400030627       k2shex = cmpoex;
478500030627       //
478600030627       k5accd = cmaccd;
478700030627       k5phon = cmappn;
478800030627       k5phex = cmapex;
478900030627       //
479000030627       k2fphn = cmfxpn;
479100030627       k2fccd = cmfxcd;
479200030627       k2fxex = cmfxex;
479300030627       //
479400030627       // convert dates
479500030627      /end-free
479600030627     C     cmlsdt        mult      100.0001      k5lsdt
479700030627     C     cmlpdt        mult      100.0001      k5lpdt
479800030627     C     cmlcnd        mult      100.0001      k5lcnd
479900030627     C     cmfsdt        mult      100.0001      k4fsdt
480000030627     C     cmhcdt        mult      100.0001      k4hcdt
480100030627     C     cmcrrp        mult      100.0001      k5crrp
480200030627      /free
480300030627       //
480400030627       k5rvdy = cmrvdy;
480500030627       k5arrp = cmarrp;
480600030627       s@lcnd = k5lcnd;
480700030627       s@rvdy = k5rvdy;
480800031012       //                                               // #*1k
480900031012       if cmsusp = 'S';                                 // #*1k
481000031012         *in29 = *on;                                   // #*1k
481100031012       else;                                            // #*1k
481200031012         *in29 = *off;                                  // #*1k
481300031012       endif;                                           // #*1k
481400030627       //
481500030627       // balance forward or open item
481600030627       if cmbfoi = balfwd;
481700030627         k2actp = msc(2);
481800030627       else;
481900030627         k2actp = msc(1);
482000030627       endif;
482100030627       //
482200030627       // calculate days to pay last 90
482300030627       totin = *zeros;
482400030627       totdy = *zeros;
482500030627       totin = cmiptm + cmiplm;
482600030627      /end-free
482700030627     C                   add       cmippm        totin
482800030627      /free
482900030627       if totin <> *zeros;
483000030627         totdy = cmpdtm + cmpdlm;
483100030627      /end-free
483200030627     C                   add       cmpdpm        totdy
483300030627     C     totdy         div(h)    totin         k4pd90
483400030627      /free
483500030627       else;
483600030627         k4pd90 = *zeros;
483700030627       endif;
483800030627       //
483900030627       // calculate days to pay to date
484000030627       if cminpd <> *zeros;
484100030627      /end-free
484200030627     C     cmtpyd        div(h)    cminpd        k4dytd
484300030627      /free
484400030627       else;
484500030627         k4dytd = *zeros;
484600030627       endif;
484700030627       //
484800030627       // setup aging periods
484900030627       k5ady1 = *zeros;
485000030627       k5ady2 = *zeros;
485100030627       k5ady3 = *zeros;
485200030627       k5ady4 = *zeros;
485300030627       %subst(ctlk1:1:2) = %editc(k5cono:'X');
485400030627       %subst(ctlk1:3:2) = 'AR';
485500030627       %subst(ctlk2:1:5) = '@AGEC';
485600030627       %subst(ctlk2:6:2) = cmagcd;
485700030627       chain ctlky orctl;
485800030627       *in99 = not %found;
485900030627       //
486000030627       // get sales rep
486100030627       smrpnm = *blanks;
486200030627       %subst(repkey:3:5) = %editc(cmrp#1:'X');
486300030627       %subst(repkey:1:2) = %editc(k5cono:'X');
486400030627      /end-free
486500030627     C                   move      repkey        g$sm0h
486600030627      /free
486700030627       chain sm0key repmsr;
486800030627       *in99 = not %found;
486900030627       if *in99 = *on;
487000030627         %subst(smrpnm:1:8) = '*INVALID';
487100030627       endif;
487200030627       //
487300030627       // get terms description
487400030627       k5term = *blanks;
487500030627       k2term = *blanks;
487600030627       %subst(ctlk2:1:5) = '@TRMS';
487700030627       %subst(ctlk2:6:2) = cmtmcd;
487800030627       chain ctlky orctl;
487900030627       *in99 = not %found;
488000030627       if *in99 = *on;
488100030627         %subst(k5term:1:8) = '*INVALID';
488200030627       endif;
488300030627       k2term = k5term;
488400030627       //
488500030627       // calculate cost $ profit (if valid)
488600030627       if cstpc = yes;
488700030627         exsr $cspft;
488800030627       endif;
488900030627       //
489000030627       //* load ic fields for customer
489100030627       if iclive = 'Y';
489200030627         exsr $ldic;
489300030627       endif;
489400030627       //
489500030627       endsr;
489600030627       //*************************************************************** $cspft
489700030627       // calculate cost & profit
489800030627       begsr $cspft;
489900030627       //
490000030627       // calculate profit mtd, ytd, and last year
490100030627      /end-free
490200030627     C     cmslmd        sub       cmcsmd        k2pfam
490300030627     C     cmslyd        sub       cmcsyd        k2pfyr
490400030627     C     cmslly        sub       cmcsly        k2pfly
490500030627      /free
490600030627       k2pfpc = *zeros;
490700030627       k2ppyr = *zeros;
490800030627       k2pply = *zeros;
490900030627       if cmslmd <> *zeros;
491000030627      /end-free
491100030627     C     k2pfam        div       cmslmd        wrkpc
491200030627     C     wrkpc         mult(h)   100           k2pfpc
491300030627      /free
491400030627       endif;
491500030627       if cmslyd <> *zeros;
491600030627      /end-free
491700030627     C     k2pfyr        div       cmslyd        wrkpc
491800030627     C     wrkpc         mult(h)   100           k2ppyr
491900030627      /free
492000030627       endif;
492100030627       if cmslly <> *zeros;
492200030627      /end-free
492300030627     C     k2pfly        div       cmslly        wrkpc
492400030627     C     wrkpc         mult(h)   100           k2pply
492500030627      /free
492600030627       endif;
492700030627       //
492800030627       // if drop ship supported, calculate profit mtd, ytd, last year
492900030627       if drshp = yes;
493000030627      /end-free
493100030627     C     cmdsmd        sub       cmdcmd        k2dspf
493200030627     C     cmdsyd        sub       cmdcyr        k2dspy
493300030627     C     cmdsly        sub       cmdcly        k2dspl
493400030627      /free
493500030627         k2dppc = *zeros;
493600030627         k2dppy = *zeros;
493700030627         k2dppl = *zeros;
493800030627         if cmdsmd <> *zeros;
493900030627      /end-free
494000030627     C     k2dspf        div       cmdsmd        wrkpc
494100030627     C     wrkpc         mult(h)   100           k2dppc
494200030627      /free
494300030627         endif;
494400030627         if cmdsyd <> *zeros;
494500030627      /end-free
494600030627     C     k2dspy        div       cmdsyd        wrkpc
494700030627     C     wrkpc         mult(h)   100           k2dppy
494800030627      /free
494900030627         endif;
495000030627         if cmdsly <> *zeros;
495100030627      /end-free
495200030627     C     k2dspl        div       cmdsly        wrkpc
495300030627     C     wrkpc         mult(h)   100           k2dppl
495400030627      /free
495500030627         endif;
495600030627       endif;
495700030627       //
495800030627       //* calculate cost and profit for ic information
495900030627       if iclive = 'Y';
496000030627      /end-free
496100030627     C     cmslmt        sub       cmcsmt        @@pfat
496200030627     C     cmslyt        sub       cmcsyt        @@pfyt
496300030627     C     cmsllt        sub       cmcslt        @@pflt
496400030627      /free
496500030627       //
496600030627       // if drop ship supported, calculate profit mtd, ytd, last year
496700030627         if drshp = yes;
496800030627      /end-free
496900030627     C     cmdsmt        sub       cmdcmt        @@dpft
497000030627     C     cmdsyt        sub       cmdcyt        @@dpyt
497100030627     C     cmdslt        sub       cmdclt        @@dplt
497200030627      /free
497300030627         endif;
497400030627         //
497500030627       endif;
497600030627       //
497700030627       endsr;
497800030627       //*************************************************************** $ckdsp
497900030627       // determine if cost & profit should display
498000030627       begsr $ckdsp;
498100030627       //
498200030627       // get company name record
498300030627       if *in94 = *off;
498400030627         *in95 = *off;
498500030627       endif;
498600030627       cstpc = *blanks;
498700030627       //
498800030627       //* check to see if user can see cost & profit
498900030627       //
499000030627       //
499100030627       @shtdn = 'N';
499200030627       @caltp = '1';
499300030627       %subst(@user:1:8) = user;
499400030627       @comno = %editc(k5cono:'X');
499500030627       @seecs = *blanks;
499600030627       //
499700030627       XASCHK ( @shtdn : @caltp : @user :
499800030627       @comno : @seecs );
499900030627       //
500000030627       *in93 = (@seecs <> 'Y');
500100030627       //----------------------------------------------------------------
500200030627       //
500300030627       if *in93 = *off;
500400030627         cstpc = yes;
500500030627       endif;
500600030627       if *in93 = *on;
500700030627         *in95 = *on;
500800030627       endif;
500900030627       //
501000030627       endsr;
501100040407       //*************************************************************** Zedcus
501200030627       // edit customer number entered
501300030627       begsr $edcus;
501400030627       //
501500030627       // reset customer number if cleared
501600030627       chgcus = *blanks;
501700030819       xxcmno = 0;
501800030627       if k5cono = *zeros;
501900030627      /end-free
502000030627     C                   movel     hcocus        k5cono
502100030627      /free
502200030627       endif;
502300030627       if k5csno = *zeros;
502400030627      /end-free
502500030627     C                   move      hcocus        k5csno
502600030627      /free
502700030627       endif;
502800040407
502900040407       //* User must be authorized to the company     // #*1s - add
503000040407       if NOT ChkCoAut( @suser : k5cono );            // #*1s - add
503100040407         mic = '7169';                                // #*1s - add
503200040407         leavesr;                                     // #*1s - add
503300040407       endif;                                         // #*1s - add
503400030627       //
503500030627       //* retrieve ic company options record
503600030627       if iclive = 'Y';
503700030627         if icmlto = 'Y';
503800030627           x9comp = k5cono;
503900030627           x9appl = 'IC';
504000030627           x9ckey = 'OPTIONS';
504100030627           chain ctlky orctl;
504200030627           *in90 = not %found;
504300030627           if *in90 = *off;
504400030627             @dftcr = curcoo;
504500030627           else;
504600030627             @dftcr = curdfo;
504700030627           endif;
504800030627         endif;
504900030627         //
505000030627         //* retrieve the local currency symbol and description
505100030627         x9comp = *zeros;
505200030627         x9appl = 'IC';
505300030627         %subst(x9ckey:1:4) = 'CURR';
505400030627         %subst(x9ckey:5:3) = @dftcr;
505500030627         chain ctlky orctl;
505600030627         *in90 = not %found;
505700030627         if *in90 = *off;
505800030627           @lsymo = ccsymo;
505900030627           @ldesc = ccnamo;
506000030627         endif;
506100030627       endif;
506200030627       //
506300030627       // get customer.  if invalid, clear screen and display error
506400030627       if k5csno <> 0;
506500030627         b$cm0h = cocus;
506600041022         //chain cm0key cusmsr;                               #*1w
506700041022         chain(n) cm0key cusmsr;                           // #*1w
506800030627         *in90 = not %found;
506900030627         if *in90 = *off;
507000041022                                                           // #*1w
507100041022           //* User must be authorized to at least 1 rep      #*1w
507200041022           if NOT ChkRepAut( @suser : k5cono : cmrp#1 :    // #*1w
507300041022                             cmrp#2 : cmrp#3 );            // #*1w
507400041022             mic = '7608';                                 // #*1w
507500041022             exsr $clear;                                  // #*1w
507600041022             leavesr;                                      // #*1w
507700041022           endif;                                          // #*1w
507800041022                                                           // #*1w
507900030627           if iclive = 'Y';
508000030627             chain cm0key iccsmsr;
508100030627             *in92 = not %found;
508200030627             if *in92 = *on;
508300030627               cmcurr = @dftcr;
508400030627             endif;
508500030627             exsr $ldic;
508600030627           endif;
508700030627         endif;
508800030627         if *in90 = *off;
508900030627           k4zip5 = $6c001;
509000041022           //update cusmsr;                                   #*1w
509100030627         endif;
509200030627         if *in90 = *on;
509300030627           hcocus = cocus;
509400030627           exsr $clear;
509500030627           mic = '2001';
509600030627         endif;
509700030627       endif;
509800030627       //
509900030627       // if valid and cust # changed, load new customer summary info
510000030627      /end-free
510100030627     C  n90              if        cocus <> hcocus
510200030627      /free
510300030627         rn = *zeros;
510400030627         exsr $ldcus;
510500030627         chgcus = yes;
510600030627       endif;
510700030627       //
510800030627       endsr;
510900030627       //*************************************************************** $prsel
511000030627       // process comment screen selection - add/update
511100030627       begsr $prsel;
511200030627       //
511300030627       // determine if comment selected for update
511400030627       r = *zeros;
511500030627       if *inkm = *on;
511600030627         r = 1;
511700030627       endif;
511800030627       if *inkn = *on;
511900030627         r = 2;
512000030627       endif;
512100030627       if *inkp = *on;
512200030627         r = 3;
512300030627       endif;
512400030627       if *inkq = *on;
512500030627         r = 4;
512600030627       endif;
512700030627       if *inkr = *on;
512800030627         r = 5;
512900030627       endif;
513000030627       if *inks = *on;
513100030627         r = 6;
513200030627       endif;
513300030627       if *inkt = *on;
513400030627         r = 7;
513500030627       endif;
513600030627       //
513700030627       // if valid comment selected prepare for update, else error
513800030627       if r <> *zeros;
513900030627         if rf(r) = *zeros;
514000030627           mic = '2165';
514100030627         else;
514200030627           exsr $prupd;
514300030627         endif;
514400030627         leavesr;
514500030627       endif;
514600030627       //
514700030627       endsr;
514800030627       //*************************************************************** $oprol
514900030627       // process open invoice roll
515000030627       begsr $oprol;
515100030627       //
515200030627       // roll up
515300030627      /end-free
515400030627     C   81              if        k3morl = last
515500030627      /free
515600030627         ardhdl = cusblk;
515700030627       endif;
515800030627       //
515900030627       // roll down
516000030627       if *in82 = *on;
516100030627         *in99 = *off;
516200030627         ardhdl = ardhdf;
516300030627         c$rh0h = ardhdf;
516400030627         setll rh0key ardhdr;
516500030627         x = 0;
516600030627         dow x < 8;
516700030627      /end-free
516800030627     C                   add       1             x
516900030627      /free
517000030627           readp(n) ardhdr;
517100030627           *in99 = %eof;
517200030627           if *in99 = *off;
517300030627             agedta = $3c006;
517400030627             ardhda = $3c001;
517500030627             cdsdta = $3c005;
517600030627             cocusa = $3c002;
517700030627             invdta = $3c004;
517800030627             typnra = $3c003;
517900030627             *in99 = (cocus <> cocusa);
518000030627           endif;
518100030627           if rharhp = ' ';
518200030627             if *in99 = *off;
518300030627               ardhdl = ardhda;
518400030627             endif;
518500030627           else;
518600030627      /end-free
518700030627     C                   sub       1             x
518800030627      /free
518900030627           endif;
519000030627      /end-free
519100030627     C  n99              enddo
519200030627      /free
519300030627       endif;
519400030627       //
519500030627       // load open invoices
519600030627       exsr $ldopn;
519700030627       //
519800030627       endsr;
519900030627       //*************************************************************** $pdrol
520000030627       // process paid invoice roll
520100030627       begsr $pdrol;
520200030627       //
520300030627       // roll up
520400030627      /end-free
520500030627     C   81              if        k4morl = last
520600030627      /free
520700030627         %subst(arhhdl:13:17) = nines;
520800030627       endif;
520900030627       //
521000030627       // roll down
521100030627       if *in82 = *on;
521200030627         *in99 = *off;
521300030627         e$ra0h = arhhdf;
521400030627         setll ra0key arhhdr;
521500030627         for x = 1 to 9;
521600030627           read arhhdr;
521700030627           *in99 = %eof;
521800030627           if *in99 = *off;
521900030627             agedtc = $5c003;
522000030627             arhhdc = $5c001;
522100030627             cocusc = $5c002;
522200030627             lpytdc = $5c004;
522300030627             *in99 = (cocus <> cocusc);
522400030627           endif;
522500030627      /end-free
522600030627     C  n99              endfor
522700030627      /free
522800030627         if *in99 = *off;
522900030627           arhhdl = arhhdc;
523000030627         endif;
523100030627         if *in99 = *on;
523200030627           %subst(arhhdl:13:17) = nines;
523300030627         endif;
523400030627       endif;
523500030627       //
523600030627       // load paid invoices
523700030627       exsr $ldpad;
523800030627       //
523900030627       endsr;
524000030627       //*************************************************************** $cmrol
524100030627       // process comment roll
524200030627       begsr $cmrol;
524300030627       // roll keyes/(f7/f8)
524400030627       //      roll up
524500030627       if *in81 = *on;
524600030627         if k5morl = '   Last';
524700030627           xxcono = k5cono;
524800030627           xxcsno = k5csno;
524900030819           xxcmno = 0;
525000030627           *in14 = *off;
525100030627         else;
525200030627           xxcono = @bcono;
525300030627           xxcsno = @bcsno;
525400030819           xxcmno = @bcmno + 1;
525500030627           *in14 = *on;
525600030627         endif;
525700030627       endif;
525800030627       //
525900030627       //      roll down
526000030627       if *in82 = *on;
526100030627         xxcono = @tcono;
526200030627         xxcsno = @tcsno;
526300040323       //xxcmno = 0;                                              #*1r
526400040323       //*in14 = *off;                                            #*1r
526500040323         xxcmno = @tcmno;                                      // #*1r
526600040323         *in14 = *on;                                          // #*1r
526700030627       endif;
526800030627       //
526900030627       // load comments
527000030627       exsr $ldcmt;
527100030627       //
527200030627       endsr;
527300030627       //*************************************************************** $opint
527400030627       // handle initial open invoice load
527500030627       begsr $opint;
527600030627       //
527700030627       // set first/last keys.
527800030627       if @r202r <> 'Y';
527900030627         ardhdl = cusblk;
528000030627         ardhdf = ardhdl;
528100030627       endif;
528200030627       //
528300030627       // load open invoices
528400030627       exsr $ldopn;
528500030627       //
528600030627       endsr;
528700030627       //*************************************************************** $ldopn
528800030627       // load the open invoice screen
528900030627       begsr $ldopn;
529000030627       //
529100030627       // clear first
529200030627       exsr $clrar;
529300030627       %subst(arddtl:1:29) = cusblk;
529400030627       seq07 = *zeros;
529500030627       *in99 = *off;
529600030627       //
529700030627       // load open invoices
529800030627       if @r202r = 'Y';
529900030627         c$rh0h = ardhdf;
530000030627       else;
530100030627         c$rh0h = ardhdl;
530200030627       endif;
530300030627       if c#inno = *blanks;
530400030627         c$inno = *zeros;
530500030627       endif;
530600030627       setll rh0key ardhdr;
530700030627       x = 0;
530800030627       dow x < 8;
530900030627         read(n) ardhdr;
531000030627         *in99 = %eof;
531100030627         if *in99 = *off;
531200030627           if iclive = 'Y';
531300030627             chain rhckey icrdhdr;
531400030627             *in92 = not %found;
531500030627             if *in92 = *on;
531600030627               rhinbt = rhinbl;
531700030627               rhcurr = @dftcr;
531800030627             endif;
531900030627           endif;
532000030627           agedta = $3c006;
532100030627           ardhda = $3c001;
532200030627           cdsdta = $3c005;
532300030627           cocusa = $3c002;
532400030627           invdta = $3c004;
532500030627           typnra = $3c003;
532600030627           *in99 = (cocus <> cocusa);
532700030627         endif;
532800030627         if *in99 = *off;
532900030627           if rharhp = ' ';
533000030627      /end-free
533100030627     C                   add       1             x
533200030627      /free
533300030627             ky1(x) = ardhda;
533400030627             ardhdl = ardhda;
533500030627      /end-free
533600030627     C                   z-add     x             rf(x)
533700030627      /free
533800030627             dsp(x) = rhinds;
533900030627             inv(x) = rhinno;
534000030627             ftp(x) = rhintp;
534100030627      /end-free
534200030627     C                   z-add     invdta        ind(x)
534300030627     C     ind(x)        mult      100.0001      ind(x)
534400030627     C                   z-add     agedta        age(x)
534500030627     C     age(x)        mult      100.0001      age(x)
534600030627      /free
534700030627             oam(x) = rhinbl;
534800030627             hst(x) = rhhsid;
534900030627             oiv(x) = rhinno;
535000030627             if rhhsid <> 0;
535100030627               @@hsid = rhhsid;
535200030627               chain oa0key hshed;
535300030627               *in90 = not %found;
535400030627               if *in90 = *off;
535500030627                 oiv(x) = oainno;
535600030627               endif;
535700030627             endif;
535800030627      /end-free
535900030627     C                   z-add     cdsdta        cdd(x)
536000030627      /free
536100030627             cdb(x) = rhcdbl;
536200030627             trm(x) = rhtmcd;
536300030627             //
536400030627             //* see if invoice marked
536500030627             //
536600030627      /end-free
536700030627     C     4             add       x             mk
536800030627      /free
536900030627             m$cono = rhcono;
537000030627             m$csno = rhcsno;
537100030627             m$intp = rhintp;
537200030627             m$inno = rhinno;
537300030627             chain(n) am0key armrk;
537400030627             *in90 = not %found;
537500030627             if *in90 = *off;
537600030627               *in(mk) = *on;
537700030627             else;
537800030627               *in(mk) = *off;
537900030627             endif;
538000030627             if iclive = 'Y';
538100030627               omt(x) = rhinbt;
538200030627               //
538300030627               //* retrieve currency symbol
538400030627               x9comp = *zeros;
538500030627               x9appl = 'IC';
538600030627               %subst(x9ckey:1:4) = 'CURR';
538700030627               %subst(x9ckey:5:3) = rhcurr;
538800030627               chain ctlky orctl;
538900030627               *in90 = not %found;
539000030627               if *in90 = *off;
539100030627                 cur(x) = ccsymo;
539200030627               else;
539300030627                 cur(x) = @lsymo;
539400030627               endif;
539500030627             endif;
539600030627             //
539700030627             chain aj0key aricmr;
539800030627             *in90 = not %found;
539900030627             if *in90 = *off;
540000030627               com(x) = 'C';
540100030627             endif;
540200030627             chain aj0key aropcr;
540300030627             *in90 = not %found;
540400030627             if *in90 = *off;
540500030627               if com(x) = 'C';
540600030627                 com(x) = 'B';
540700030627               else;
540800030627                 com(x) = 'P';
540900030627               endif;
541000030627             endif;
541100030627             chain rq0key arhpcr;
541200030627             *in90 = not %found;
541300030627             if *in90 = *off;
541400030627               if com(x) = 'C';
541500030627                 com(x) = 'B';
541600030627               else;
541700030627                 com(x) = 'P';
541800030627               endif;
541900030627             endif;
542000040625                                                           // #*1u
542100040625             // see if AR Coments exist                       #*1u
542200040625             xxcono = rhcono;                              // #*1u
542300040625             xxcsno = rhcsno;                              // #*1u
542400040625             xxrect = 'I';                                 // #*1u
542500040625             xxagcc = rhagcc;                              // #*1u
542600040625             xxagdt = rhagdt;                              // #*1u
542700040625             xxintp = rhintp;                              // #*1u
542800040625             xxinno = rhinno;                              // #*1u
542900040625             chain(n) ch0key archdr;                       // #*1u
543000040625             if %found;                                    // #*1u
543100040625               if com(x) = *blanks;                        // #*1u
543200040625                 com(x) = 'A';                             // #*1u
543300040625               else;                                       // #*1u
543400040625                 com(x) = 'Z';                             // #*1u
543500040625               endif;                                      // #*1u
543600040625             endif;                                        // #*1u
543700030627             //
543800030627             loop = yes;
543900030627             date8 = *zeros;
544000030627             *in98 = *off;
544100030627             typno = typnra;
544200030627             d$rd0h = arddtl;
544300030627             if d#sq03 = *blanks;
544400030627               d$sq03 = *zeros;
544500030627             endif;
544600030627             if d#sq07 = *blanks;
544700030627               d$sq07 = *zeros;
544800030627             endif;
544900030627             setll rd0key arddtr;
545000030627             // calculate invoice amount for ea inv.  save trans date
545100030627             dow loop = yes;
545200030627               read arddtr;
545300030627               *in98 = %eof;
545400030627               if *in98 = *off;
545500030627                 if iclive = 'Y';
545600030627                   chain rdckey icrddtr;
545700030627                   *in92 = not %found;
545800030627                   if *in92 = *on;
545900030627                     rdtam2 = rdtam9;
546000030627                     rdcur2 = @dftcr;
546100030627                   endif;
546200030627                 endif;
546300030627                 arddtb = $2c001;
546400030627                 cusivb = $2c002;
546500030627                 trndtb = $2c003;
546600030627                 *in98 = (ardhda <> cusivb);
546700030627               endif;
546800030627      /end-free
546900030627     C  n98              if        rdtrtp = 'I'
547000030627     C                   add       rdtam9        iam(x)
547100030627      /free
547200030627                 if iclive = 'Y';
547300030627      /end-free
547400030627     C                   add       rdtam2        imt(x)
547500030627      /free
547600030627                 endif;
547700030627               else;
547800030627                 date8 = trndtb;
547900030627               endif;
548000030627      /end-free
548100030627     C  n98              enddo
548200030627      // calculate no of days invoice open
548300030627     C                   z-add     date8         trn(x)
548400030627     C     trn(x)        mult      100.0001      trn(x)
548500030627      /free
548600030627             date = agedta;
548700030627             exsr $date;
548800030627             agday = jday;
548900030627             if oam(x) = *zeros;
549000030627               date = date8;
549100030627               exsr $date;
549200030627               lday = jday;
549300030627             else;
549400030627      /end-free
549500030627     C     k5udat        mult      10000.01      date
549600030627      /free
549700030627               if yy > 50;
549800030627      /end-free
549900030627     C                   movel     curcc         date
550000030627      /free
550100030627               else;
550200030627      /end-free
550300030627     C                   movel     nxtcc         date
550400030627      /free
550500030627               endif;
550600030627               exsr $date;
550700030627               lday = jday;
550800030627             endif;
550900030627      /end-free
551000030627     C     lday          sub       agday         day1
551100030627      /free
551200030627             if day1 >= 999;
551300030627      /end-free
551400030627     C                   z-add     999           day(x)                 20
551500030627      /free
551600030627             else;
551700030627      /end-free
551800030627     C     lday          sub       agday         day(x)                 20
551900030627      /free
552000030627             endif;
552100030627             if *in20 = *on;
552200030627               day(x) = *zeros;
552300030627             endif;
552400030627           endif;
552500030627         endif;
552600030627      /end-free
552700030627     C  n99              enddo
552800030627      /free
552900030627       //
553000030627       // save first and last keys
553100030627       if rf(1) = 1;
553200030627         ardhdf = ky1(1);
553300030627       endif;
553400030627       if rf(8) = 8;
553500030627         read(n) ardhdr;
553600030627         *in99 = %eof;
553700030627         if *in99 = *off;
553800030627           if iclive = 'Y';
553900030627             chain rhckey icrdhdr;
554000030627             *in92 = not %found;
554100030627             if *in92 = *on;
554200030627               rhinbt = rhinbl;
554300030627               rhcurr = @dftcr;
554400030627             endif;
554500030627           endif;
554600030627           agedta = $3c006;
554700030627           ardhda = $3c001;
554800030627           cdsdta = $3c005;
554900030627           cocusa = $3c002;
555000030627           invdta = $3c004;
555100030627           typnra = $3c003;
555200030627           *in99 = (cocus <> cocusa);
555300030627         endif;
555400030627         if *in99 = *off;
555500030627           ardhdl = ardhda;
555600030627         endif;
555700030627       endif;
555800030627       if *in99 = *on;
555900030627         k3morl = last;
556000030627       endif;
556100030627       *in33 = (rf(1) = 0);
556200030627       *in34 = (rf(2) = 0);
556300030627       *in35 = (rf(3) = 0);
556400030627       *in36 = (rf(4) = 0);
556500030627       *in37 = (rf(5) = 0);
556600030627       *in38 = (rf(6) = 0);
556700030627       *in39 = (rf(7) = 0);
556800030627       *in40 = (rf(8) = 0);
556900030627       //
557000030627       endsr;
557100030627       //*************************************************************** $pdint
557200030627       // handle initial paid invoice load
557300030627       begsr $pdint;
557400030627       //
557500030627       //* retrieve oe options extension
557600031216       //DEL x9comp = k5cono;                                  #*1p
557700031216       //DEL x9appl = 'OE';                                    #*1p
557800031216       //DEL x9ckey = 'OPTIONX';                               #*1p
557900031216       //DEL chain ctlky orctl;                                #*1p
558000031216       //DEL *in90 = not %found;                               #*1p
558100031216       //DEL if *in90 = *off;                                  #*1p
558200031216       //DEL   @@futr = futinv;                                #*1p
558300031216       //DEL endif;                                            #*1p
558400031216       //DEL if @@futr = 'Y';                                  #*1p
558500030627      /end-free
558600031216     C*DEL     cmhcam        add       cmfuam        k5hcam    #*1p
558700030627      /free
558800031216       //DEL else;                                             #*1p
558900031216        k5hcam = cmhcam;
559000031216       //DEL endif;                                            #*1p
559100030627       //
559200030627       arhhdl = cusblk;
559300030627       %subst(arhhdl:13:17) = nines;
559400030627       exsr $ldpad;
559500030627       //
559600030627       endsr;
559700030627       //*************************************************************** $ldpad
559800030627       // load paid invoices
559900030627       begsr $ldpad;
560000030627       //
560100030627       // clear first.  last key becomes first for next cycle.
560200030627       exsr $clrar;
560300030627       *in99 = *off;
560400030627       arhhdf = arhhdl;
560500030627       //
560600030627       // load paid invoices
560700030627       e$ra0h = arhhdl;
560800030627       setll ra0key arhhdr;
560900030627       for x = 1 to 8;
561000030627         readp arhhdr;
561100030627         *in99 = %eof;
561200030627         if iclive = 'Y';
561300030627           chain rackey icrhhdr;
561400030627           *in92 = not %found;
561500030627           if *in92 = *on;
561600030627             rainat = rainam;
561700030627             raadat = raadam;
561800030627             rap9at = rap9am;
561900030627             racmat = racmam;
562000030627             racurr = @dftcr;
562100030627           endif;
562200030627         endif;
562300030627         if *in99 = *off;
562400030627           agedtc = $5c003;
562500030627           arhhdc = $5c001;
562600030627           cocusc = $5c002;
562700030627           lpytdc = $5c004;
562800030627           *in99 = (cocus <> cocusc);
562900030627         endif;
563000030627         if *in99 = *off;
563100030627           arhhdl = arhhdc;
563200030627           ky2(x) = arhhdc;
563300030627      /end-free
563400030627     C                   z-add     x             rf(x)
563500030627      /free
563600030627           inv(x) = rainno;
563700030627           ftp(x) = raintp;
563800030627           if racmam < *zeros;
563900030627             $$inam = *zeros;
564000030627      /end-free
564100030627     C     racmam        add       rainam        $$inam
564200030627      /free
564300030627             iam(x) = $$inam;
564400030627           else;
564500030627             iam(x) = rainam;
564600030627           endif;
564700030627           adj(x) = raadam;
564800030627           hst(x) = rahsid;
564900030627           oiv(x) = rainno;
565000030627           if rahsid <> 0;
565100030627             @@hsid = rahsid;
565200030627             chain oa0key hshed;
565300030627             *in90 = not %found;
565400030627             if *in90 = *off;
565500030627               oiv(x) = oainno;
565600030627             endif;
565700030627           endif;
565800030627           pmt(x) = rap9am;
565900030627           cdb(x) = radstk;
566000030627      /end-free
566100030627     C                   z-add     lpytdc        lpy(x)
566200030627     C     lpy(x)        mult      100.0001      lpy(x)
566300030627     C                   z-add     agedtc        age(x)
566400030627     C     age(x)        mult      100.0001      age(x)
566500030627      /free
566600030627           if radypy > 0;
566700030627             day(x) = radypy;
566800030627           endif;
566900030627           trm(x) = ratmcd;
567000030627           if iclive = 'Y';
567100030627             if racmat < *zeros;
567200030627               $$inat = *zeros;
567300030627      /end-free
567400030627     C     racmat        add       rainat        $$inat
567500030627      /free
567600030627               imt(x) = $$inat;
567700030627             else;
567800030627               imt(x) = rainat;
567900030627             endif;
568000030627             ajt(x) = raadat;
568100030627             ptt(x) = rap9at;
568200030627             //
568300030627             //* retrieve currency symbol
568400030627             x9comp = *zeros;
568500030627             x9appl = 'IC';
568600030627             %subst(x9ckey:1:4) = 'CURR';
568700030724       //      %subst(x9ckey:5:3) = rhcurr;                  #*1g
568800030724             %subst(x9ckey:5:3) = racurr;                  //#*1g
568900030627             chain ctlky orctl;
569000030627             *in90 = not %found;
569100030627             if *in90 = *off;
569200030627               cur(x) = ccsymo;
569300030627             else;
569400030627               cur(x) = @lsymo;
569500030627             endif;
569600030627           endif;
569700030627           //
569800030627           chain aj0ky1 aricmr;
569900030627           *in90 = not %found;
570000030627           if *in90 = *off;
570100030627             com(x) = 'C';
570200030627           endif;
570300030627           chain aj0ky1 aropcr;
570400030627           *in90 = not %found;
570500030627           if *in90 = *off;
570600030627             if com(x) = 'C';
570700030627               com(x) = 'B';
570800030627             else;
570900030627               com(x) = 'P';
571000030627             endif;
571100030627           endif;
571200030627           chain rq0ky1 arhpcr;
571300030627           *in90 = not %found;
571400030627           if *in90 = *off;
571500030627             if com(x) = 'C';
571600030627               com(x) = 'B';
571700030627             else;
571800030627               com(x) = 'P';
571900030627             endif;
572000030627           endif;
572100040625                                                           // #*1u
572200040625           // see if AR Coments exist                         #*1u
572300040625           xxcono = rhcono;                                // #*1u
572400040625           xxcsno = rhcsno;                                // #*1u
572500040625           xxrect = 'I';                                   // #*1u
572600040625           xxagcc = rhagcc;                                // #*1u
572700040625           xxagdt = rhagdt;                                // #*1u
572800040625           xxintp = rhintp;                                // #*1u
572900040625           xxinno = rhinno;                                // #*1u
573000040625           chain(n) ch0key archdr;                         // #*1u
573100040625           if %found;                                      // #*1u
573200040625             if com(x) = *blanks;                          // #*1u
573300040625               com(x) = 'A';                               // #*1u
573400040625             else;                                         // #*1u
573500040625               com(x) = 'Z';                               // #*1u
573600040625             endif;                                        // #*1u
573700040625           endif;                                          // #*1u
573800030627           //
573900030627         endif;
574000030627      /end-free
574100030627     C  n99              endfor
574200030627      /free
574300030627       //
574400030627       // determine if more or last invoice
574500030627       if rf(8) = 8;
574600030627         readp arhhdr;
574700030627         *in99 = %eof;
574800030627         if iclive = 'Y';
574900030627           chain rackey icrhhdr;
575000030627           *in92 = not %found;
575100030627           if *in92 = *on;
575200030627             rainat = rainam;
575300030627             raadat = raadam;
575400030627             rap9at = rap9am;
575500030627             racmat = racmam;
575600030627             racurr = @dftcr;
575700030627           endif;
575800030627         endif;
575900030627         if *in99 = *off;
576000030627           agedtc = $5c003;
576100030627           arhhdc = $5c001;
576200030627           cocusc = $5c002;
576300030627           lpytdc = $5c004;
576400030627           *in99 = (cocus <> cocusc);
576500030627         endif;
576600030627       endif;
576700030627       if *in99 = *on;
576800030627         k4morl = last;
576900030627       endif;
577000030627       //
577100030627       endsr;
577200030627       //*************************************************************** $cmint
577300030627       // handle initail comment load
577400030627       begsr $cmint;
577500030627       //
577600030627       *in14 = *off;
577700040323       *in16 = *off;                                           // #*1r
577800030627       exsr $ldcmt;
577900030627       //
578000030627       endsr;
578100030627       //*************************************************************** $ldcmt
578200030627       // load customer comments
578300030627       begsr $ldcmt;
578400030627       //
578500030627       // clear first
578600030627       exsr $clrcm;
578700030627       //
578800030627       //-----------------------------*
578900030627      /end-free
579000030627     C     rlwtag        tag
579100030627      /free
579200030627       //-----------------------------*
579300030627       // setll to file
579400030627       if *in14 = *off;
579500040322         setll cc1pky arco4r;
579600030627       else;
579700030627         setll cc0key arco4r;
579800030627       endif;
579900030627       x = 1;
580000040323       if *in16 = *on;                                         // #*1r
580100040323         xxcmno = 0;                                           // #*1r
580200040323         *in16 = *off;                                         // #*1r
580300040323       endif;                                                  // #*1r
580400030627       //
580500030627       //-----------------------------*
580600030627      /end-free
580700030627     C     rfwtag        tag
580800030627      //-----------------------------*
580900030627      //
581000030627      // end roll back
581100030627     C   82              if        x = @@size
581200030627      /free
581300030627         *in82 = *off;
581400030627         xxcono = cccono;
581500030627         xxcsno = cccsno;
581600040323         xxcmno = cccmno;                                      // #*1r
581700040323         *in16 = *on;                                          // #*1r
581800030627      /end-free
581900030627     C                   goto      rlwtag
582000030627      /free
582100030627       endif;
582200030627       //
582300030627       // read a record
582400030627       if *in82 = *off;
582500030627         reade(n) cc1pky arco4r;
582600030627         *in90 = %eof;
582700030627       else;
582800030627         readpe(n) cc1pky arco4r;
582900030627         *in90 = %eof;
583000030627       endif;
583100030627       //
583200030627       // end of format
583300030627       if *in90 = *on
583400030627         and *in82 = *off;
583500030627         k5morl = '   Last';
583600030627      /end-free
583700030627     C                   goto      efwtag
583800030627      /free
583900030627       endif;
584000030627       //
584100030627       // beginning of format
584200030627       if *in90 = *on
584300030627         and *in82 = *on;
584400030627         *in82 = *off;
584500030627         xxcono = k5cono;
584600030627         xxcsno = k5csno;
584700040323         *in16 = *on;                                          // #*1r
584800030627      /end-free
584900030627     C                   goto      rlwtag
585000030627      /free
585100030627       endif;
585200030627       //
585300030627       //* show the only the first line for each comment num
585400030627       if xxcmno = cccmno;
585500030627      /end-free
585600030627     C                   goto      rfwtag
585700030627      /free
585800030627       endif;
585900030627       // open/closed comments
586000030627       if *in24 = *on;
586100030627         if cccldt = 0;
586200030627      /end-free
586300030627     C                   goto      rfwtag
586400030627      /free
586500030627         endif;
586600030627       else;
586700030627         if cccldt <> 0;
586800030627      /end-free
586900030627     C                   goto      rfwtag
587000030627      /free
587100030627         endif;
587200030627       endif;
587300030627       //
587400030627       // move data to display arrays
587500030627       if *in82 = *off
587600030627         and x <= @@page;
587700030627         xxcmno = cccmno;
587800030627      /end-free
587900030627     C                   z-add     x             rf(x)
588000030627      /free
588100030627         typ(x) = cccmtp;
588200030627         cmt(x) = cccmnt;
588300031208         cno(x) = cccmno;                                  // #*1o
588400030627      /end-free
588500030627     C     ccrvdt        mult      100.0001      rev(x)
588600030627     C     cccmdt        mult      100.0001      cdt(x)
588700030627      /free
588800030627         ent(x) = ccenus;
588900030627         asg(x) = ccasus;
589000030627      /end-free
589100030627     C     cccldt        mult      100.0001      cld(x)
589200030627      /free
589300030627       endif;
589400030627       //
589500030627       // save the sequence number of the
589600030627       // top and bottom record
589700030627       if *in82 = *off;
589800030627         if x = 1;
589900030627           @tcono = cccono;
590000030627           @tcsno = cccsno;
590100030627           @tcmno = cccmno;
590200030627         else;
590300030627           if x = @@size;
590400030627             @bcono = cccono;
590500030627             @bcsno = cccsno;
590600030627             @bcmno = cccmno;
590700030627           endif;
590800030627         endif;
590900040323       else;                                                   // #*1r
591000040323         xxcmno = cccmno;                                      // #*1r
591100030627       endif;
591200030627       //
591300030627       // increment index
591400030627      /end-free
591500030627     C                   add       1             x
591600030627      /free
591700030627       if x <= @@size;
591800030627      /end-free
591900030627     C                   goto      rfwtag
592000030627      /free
592100030627       endif;
592200030627       k5morl = 'More...';
592300030627       //
592400030627       //-----------------------------*
592500030627      /end-free
592600030627     C     efwtag        tag
592700030627      //-----------------------------*
592800030627      //
592900030627      /free
593000030627       endsr;
593100030627       //
593200030627       //*************************************************************** $cspft
593300030627       // load customer information for ic fields
593400030627       begsr $ldic;
593500030627       //
593600030627       if cmcurr <> @dftcr;
593700030627      /end-free
593800030627     C                   z-add     cmprbt        k2prbt
593900030627     C                   z-add     cmchtt        k2chtt
594000030627     C                   z-add     cmcrtt        k2crtt
594100030627     C                   z-add     cmajtt        k2ajtt
594200030627     C                   z-add     cmamdt        k2amdt
594300030627     C                   z-add     cmbpat        k2bpat
594400030627     C                   z-add     cmagt1        k2agt1
594500030627     C                   z-add     cmagt2        k2agt2
594600030627     C                   z-add     cmagt3        k2agt3
594700030627     C                   z-add     cmagt4        k2agt4
594800030627     C                   z-add     cmfuat        k2fuat
594900030627     C                   z-add     cmopot        k2opot
595000030627     C                   z-add     cmunpt        k2unpt
595100030627     C                   z-add     cmdsyt        k2dsyt
595200030627     C                   z-add     cmopot        k3opot
595300030627     C                   z-add     cmunpt        k3unpt
595400030627      /free
595500030627         @@curr = cmcurr;
595600030627      /end-free
595700030627     C                   move      cmcrlt        k3crlt
595800030627     C                   z-add     cmhcat        k2hcat
595900030627      /free
596000030627       //* retrieve oe options extension
596100031216       //DEL  x9comp = k5cono;                                 #*1p
596200031216       //DEL  x9appl = 'OE';                                   #*1p
596300031216       //DEL  x9ckey = 'OPTIONX';                              #*1p
596400031216       //DEL  chain ctlky orctl;                               #*1p
596500031216       //DEL  *in90 = not %found;                              #*1p
596600031216       //DEL  if *in90 = *off;                                 #*1p
596700031216       //DEL    @@futr = futinv;                               #*1p
596800031216       //DEL  endif;                                           #*1p
596900031216       //DEL  if @@futr = 'Y';                                 #*1p
597000030627      /end-free
597100031216     C*DEL               add       cmfuat        k2hcat        #*1p
597200030627      /free
597300031216       //DEL  endif;                                           #*1p
597400031216       else;
597500030627      /end-free
597600030627     C                   z-add     cmprbl        k2prbt
597700030627     C                   z-add     cmchtd        k2chtt
597800030627     C                   z-add     cmcrtd        k2crtt
597900030627     C                   z-add     cmajtd        k2ajtt
598000030627     C                   z-add     cmamdu        k2amdt
598100030627     C                   z-add     cmbpam        k2bpat
598200030627     C                   z-add     cmagp1        k2agt1
598300030627     C                   z-add     cmagp2        k2agt2
598400030627     C                   z-add     cmagp3        k2agt3
598500030627     C                   z-add     cmagp4        k2agt4
598600030627     C                   z-add     cmfuam        k2fuat
598700030627     C                   z-add     cmopor        k2opot
598800030627     C                   z-add     cmunpc        k2unpt
598900030627     C                   z-add     cmdsyd        k2dsyt
599000030627     C                   z-add     cmopor        k3opot
599100030627     C                   z-add     cmunpc        k3unpt
599200030627      /free
599300030627         k3crlt = cmcrlm;
599400030627      /end-free
599500030627     C                   move      cmcrlm        cmcrlt
599600030627     C                   z-add     cmhcam        k2hcat
599700030627      /free
599800030627       //* retrieve oe options extension
599900031216        //DEL  x9comp = k5cono;                                #*1p
600000031216        //DEL  x9appl = 'OE';                                  #*1p
600100031216        //DEL  x9ckey = 'OPTIONX';                             #*1p
600200031216        //DEL  chain ctlky orctl;                              #*1p
600300031216        //DEL  *in90 = not %found;                             #*1p
600400031216        //DEL  if *in90 = *off;                                #*1p
600500031216        //DEL   @@futr = futinv;                               #*1p
600600031216        //DEL  endif;                                          #*1p
600700031216        //DEL  if @@futr = 'Y';                                #*1p
600800030627      /end-free
600900031216     C*DEL               add       cmfuam        k2hcat        #*1p
601000030627      /free
601100031216       //DEL   endif;                                          #*1p
601200030627         @@curr = @dftcr;
601300030627       endif;
601400030627       //
601500030627       //* check for indicators for ic fields
601600030627       exsr $icind;
601700030627       //
601800030627       //* retrieve the local currency symbol and description
601900030627       x9comp = *zeros;
602000030627       x9appl = 'IC';
602100030627       %subst(x9ckey:1:4) = 'CURR';
602200030627       %subst(x9ckey:5:3) = @@curr;
602300030627       chain ctlky orctl;
602400030627       *in90 = not %found;
602500030627       if *in90 = *off;
602600030627         @tdesc = ccnamo;
602700030627         @tsymo = ccsymo;
602800030627         if *in30 = *on;
602900030627           k2cur1 = ccsymo;
603000030627           k2cur2 = ccsymo;
603100030627           k2cur3 = ccsymo;
603200030627           k2cur4 = ccsymo;
603300030627           k2curr = cmcurr;
603400030627           k2crds = @tdesc;
603500030627           crflag = 'T';
603600030627         else;
603700030627           k2cur1 = @lsymo;
603800030627           k2cur2 = @lsymo;
603900030627           k2cur3 = @lsymo;
604000030627           k2cur4 = @lsymo;
604100030627           k2curr = @dftcr;
604200030627           k2crds = @ldesc;
604300030627           crflag = 'L';
604400030627         endif;
604500030627       endif;
604600030627       //
604700030627       endsr;
604800030627       //*************************************************************** $cspft
604900030627       // checl reverse image indicators for ic fields
605000030627       begsr $icind;
605100030627       //
605200030627       *in32 = *off;
605300030627      /end-free
605400030627     C                   movea     #off20        *in(52)
605500030627     C                   movea     '0000000'     *in(72)
605600030627     C                   move      *all'9'       @@wk10
605700030627     C                   move      *all'9'       @@wk7
605800030627     C                   move      *all'9'       @@wk9
605900030627      /free
606000030627       //
606100030627       //* check if file fields are greater than screen field sizes
606200030627       if *in92 = *off;
606300030627         if cmprbt > @@wk10;
606400030627           *in52 = *on;
606500030627      /end-free
606600030627     C                   move      *all'9'       k2prbt
606700030627      /free
606800030627         endif;
606900030627         if cmchtt > @@wk10;
607000030627           *in53 = *on;
607100030627      /end-free
607200030627     C                   move      *all'9'       k2chtt
607300030627      /free
607400030627         endif;
607500030627         if cmcrtt > @@wk10;
607600030627           *in54 = *on;
607700030627      /end-free
607800030627     C                   move      *all'9'       k2crtt
607900030627      /free
608000030627         endif;
608100030627         if cmajtt > @@wk10;
608200030627           *in55 = *on;
608300030627      /end-free
608400030627     C                   move      *all'9'       k2ajtt
608500030627      /free
608600030627         endif;
608700030627         if cmamdt > @@wk10;
608800030627           *in56 = *on;
608900030627      /end-free
609000030627     C                   move      *all'9'       k2amdt
609100030627      /free
609200030627         endif;
609300030627         if cmbpat > @@wk10;
609400030627           *in57 = *on;
609500030627      /end-free
609600030627     C                   move      *all'9'       k2bpat
609700030627      /free
609800030627         endif;
609900030627         if cmagt1 > @@wk10;
610000030627           *in58 = *on;
610100030627      /end-free
610200030627     C                   move      *all'9'       k2agt1
610300030627      /free
610400030627         endif;
610500030627         if cmagt2 > @@wk10;
610600030627           *in59 = *on;
610700030627      /end-free
610800030627     C                   move      *all'9'       k2agt2
610900030627      /free
611000030627         endif;
611100030627         //
611200030627         if cmagt3 > @@wk10;
611300030627           *in60 = *on;
611400030627      /end-free
611500030627     C                   move      *all'9'       k2agt3
611600030627      /free
611700030627         endif;
611800030627         if cmagt4 > @@wk10;
611900030627           *in61 = *on;
612000030627      /end-free
612100030627     C                   move      *all'9'       k2agt4
612200030627      /free
612300030627         endif;
612400030627         if cmfuat > @@wk10;
612500030627           *in62 = *on;
612600030627      /end-free
612700030627     C                   move      *all'9'       k2fuat
612800030627      /free
612900030627         endif;
613000030627         if @@pfyt > @@wk10;
613100030627           *in68 = *on;
613200030627      /end-free
613300030627     C                   move      *all'9'       k2pfyt
613400030627      /free
613500030627         endif;
613600030627         if cmdsyt > @@wk10;
613700030627           *in71 = *on;
613800030627      /end-free
613900030627     C                   move      *all'9'       k2dsyt
614000030627      /free
614100030627         endif;
614200030627         if @@dpyt > @@wk10;
614300030627           *in72 = *on;
614400030627      /end-free
614500030627     C                   move      *all'9'       k2dpyt
614600030627      /free
614700030627         endif;
614800030627         if cmopot > @@wk10;
614900030627           *in75 = *on;
615000030627      /end-free
615100030627     C                   move      *all'9'       k2opot
615200030627      /free
615300030627         endif;
615400030627         if cmunpt > @@wk10;
615500030627           *in76 = *on;
615600030627      /end-free
615700030627     C                   move      *all'9'       k2unpt
615800030627      /free
615900030627         endif;
616000030627         if cmcrlt > @@wk7;
616100030627           *in77 = *on;
616200030627      /end-free
616300030627     C                   move      *all'9'       k3crlt
616400030627      /free
616500030627         endif;
616600030627         if cmhcat > @@wk9;
616700030627           *in78 = *on;
616800030627      /end-free
616900030627     C                   move      *all'9'       k2hcat
617000030627      /free
617100030627         endif;
617200030627       endif;
617300030627       //
617400030627       indcon = 'N';
617500030627       for y = 1 to 27;
617600030627      /end-free
617700030627     C     y             add       51            z
617800030627      /free
617900030627         if *in(z) = *on;
618000030627           indcon = 'Y';
618100030627         endif;
618200030627       endfor;
618300030627       //
618400030627       //* if any are reversed image then display function key
618500030627       if indcon = 'Y';
618600030627         *in32 = *on;
618700030627       endif;
618800030627       //
618900030627       endsr;
619000030627       //*************************************************************** $cspft
619100030627       // show extended view of truncated fields
619200030627       begsr $extvw;
619300030627       //
619400030627       //* retrieve oe options extension
619500031216       //DEL x9comp = k5cono;                                  #*1p
619600031216       //DEL x9appl = 'OE';                                    #*1p
619700031216       //DEL x9ckey = 'OPTIONX';                               #*1p
619800031216       //DEL chain ctlky orctl;                                #*1p
619900031216       //DEL *in90 = not %found;                               #*1p
620000031216       //DEL if *in90 = *off;                                  #*1p
620100031216       //DEL   @@futr = futinv;                                #*1p
620200031216       //DEL endif;                                            #*1p
620300031216       //DEL if @@futr = 'Y';                                  #*1p
620400030627      /end-free
620500031216     C*DEL     cmhcam        add       cmfuam        k7hcam    #*1p
620600030627      /free
620700031216       //DEL else;                                             #*1p
620800030627         k7hcam = cmhcam;
620900031216       //DEL endif;                                            #*1p
621000030627       if cmcurr = @dftcr;
621100030627         k7prbt = cmprbl;
621200030627         k7chtt = cmchtd;
621300030627         k7crtt = cmcrtd;
621400030627         k7ajtt = cmajtd;
621500030627         k7amdt = cmamdu;
621600030627         k7bpat = cmbpam;
621700030627         k7agt1 = cmagp1;
621800030627         k7agt2 = cmagp2;
621900030627         k7agt3 = cmagp3;
622000030627         k7agt4 = cmagp4;
622100030627         k7fuat = cmfuam;
622200030627         k7opot = cmopor;
622300030627         k7unpt = cmunpc;
622400030627         k7slmt = cmslmd;
622500030627         k7slyt = cmslyd;
622600030627         k7sllt = cmslly;
622700030627         k7dsmt = cmdsmd;
622800030627         k7dsyt = cmdsyd;
622900030627         k7dslt = cmdsly;
623000030627         k7crlt = cmcrlm;
623100030627         //* retrieve oe options extension
623200031216         //DEL x9comp = k5cono;                                #*1p
623300031216         //DEL x9appl = 'OE';                                  #*1p
623400031216         //DEL x9ckey = 'OPTIONX';                             #*1p
623500031216         //DEL chain ctlky orctl;                              #*1p
623600031216         //DEL *in90 = not %found;                             #*1p
623700031216         //DEL if *in90 = *off;                                #*1p
623800031216         //DEL   @@futr = futinv;                              #*1p
623900031216         //DEL endif;                                          #*1p
624000031216         //DEL if @@futr = 'Y';                                #*1p
624100031216         //DEL  k7hcat = cmhcam + cmfuam;                      #*1p
624200031216         //DEL else;                                           #*1p
624300030627           k7hcat = cmhcam;
624400031216         //DEL endif;                                          #*1p
624500030627         k7pfat = k2pfam;
624600030627         k7pfyt = k2pfyr;
624700030627         k7pflt = k2pfly;
624800030627         k7dpft = k2dspf;
624900030627         k7dpyt = k2dspy;
625000030627         k7dplt = k2dspl;
625100030627       else;
625200030627         k7prbt = cmprbt;
625300030627         k7chtt = cmchtt;
625400030627         k7crtt = cmcrtt;
625500030627         k7ajtt = cmajtt;
625600030627         k7amdt = cmamdt;
625700030627         k7bpat = cmbpat;
625800030627         k7agt1 = cmagt1;
625900030627         k7agt2 = cmagt2;
626000030627         k7agt3 = cmagt3;
626100030627         k7agt4 = cmagt4;
626200030627         k7fuat = cmfuat;
626300030627         k7opot = cmopot;
626400030627         k7unpt = cmunpt;
626500030627         k7slmt = cmslmt;
626600030627         k7slyt = cmslyt;
626700030627         k7sllt = cmsllt;
626800030627         k7dsmt = cmdsmt;
626900030627         k7dsyt = cmdsyt;
627000030627         k7dslt = cmdslt;
627100030627         k7crlt = cmcrlt;
627200030627         //* retrieve oe options extension
627300031216         //DEL x9comp = k5cono;                                #*1p
627400031216         //DEL x9appl = 'OE';                                  #*1p
627500031216         //DEL x9ckey = 'OPTIONX';                             #*1p
627600031216         //DEL chain ctlky orctl;                              #*1p
627700031216         //DEL *in90 = not %found;                             #*1p
627800031216         //DEL if *in90 = *off;                                #*1p
627900031216         //DEL   @@futr = futinv;                              #*1p
628000031216         //DEL endif;                                          #*1p
628100031216         //DEL if @@futr = 'Y';                                #*1p
628200030627      /end-free
628300031216     C*DEL     cmhcat        add       cmfuat        k7hcat    #*1p
628400030627      /free
628500031216         //DEL else;                                           #*1p
628600030627           k7hcat = cmhcat;
628700031216         //DEL endif;                                          #*1p
628800030627         k7pfat = @@pfat;
628900030627         k7pfyt = @@pfyt;
629000030627         k7pflt = @@pflt;
629100030627         k7dpft = @@dpft;
629200030627         k7dpyt = @@dpyt;
629300030627         k7dplt = @@dplt;
629400030627       endif;
629500030627       //------------------------*
629600030627      /end-free
629700030627     C     dspl09        tag
629800030627      //------------------------*
629900030627      //
630000030627      //------------------------*
630100030627     C     hlp#09        tag
630200030627      /free
630300030627       //------------------------*
630400030627       exfmt extdvw;
630500030627       //
630600030627       //* program help requested (f1)
630700030627       if *inka = *on;
630800030627         apscnm = 'EXTDVW';
630900030627         exsr $hlptx;
631000030627      /end-free
631100030627     C                   goto      hlp#09
631200030627      /free
631300030627       endif;
631400030627       //
631500030627       //* return to previous screen requested (f12)
631600030627       if *inkl = *on;
631700030627         leavesr;
631800030627       endif;
631900030627       //
632000030627       //* currency toggle requested
632100030627       if *inkm = *on;
632200030627         if *in30 = *off;
632300030627           *in30 = *on;
632400030627           k2cur1 = @tsymo;
632500030627           k2cur2 = @tsymo;
632600030627           k2cur3 = @tsymo;
632700030627           k2cur4 = @tsymo;
632800030627           k2curr = cmcurr;
632900030627           k2crds = @tdesc;
633000030627         else;
633100030627           *in30 = *off;
633200030627           k2cur1 = @lsymo;
633300030627           k2cur2 = @lsymo;
633400030627           k2cur3 = @lsymo;
633500030627           k2cur4 = @lsymo;
633600030627           k2curr = @dftcr;
633700030627           k2crds = @ldesc;
633800030627         endif;
633900030627      /end-free
634000030627     C                   goto      dspl09
634100030627      /free
634200030627       endif;
634300030627       //
634400030627      /end-free
634500030627     C                   goto      dspl09
634600030627      //
634700030627      /free
634800030627       endsr;
634900030627       //*************************************************************** $date
635000030627       // date routine to calculate julian days from date
635100030627       begsr $date;
635200030627       //
635300030627       // check to see if date is after february
635400030627       //
635500030627       *in20 = (mm > 2);                                                        //  gt
635600030627       //
635700030627       // check to see if this is a leap year
635800030627      /end-free
635900030627     C     ccyy          div       4             leapyr
636000030627     C                   mvr                     leapyr               21         gt
636100030627      //
636200030627      // calculate no of days for up to prior yr.
636300030627     C     ccyy          sub       1             ccyyx
636400030627      /free
636500030627       jday = ccyyx * 365.25;
636600030627      /end-free
636700030627     C                   sub       30            jday
636800030627      /free
636900030627       //
637000030627       // calculate no of days for this yr up through this month
637100030627       mdays = mm * 30.57;
637200030627      /end-free
637300030627     C                   add       mdays         jday
637400030627      //
637500030627      // add in days this month
637600030627     C                   add       dd            jday
637700030627      /free
637800030627       //
637900030627       // if past february subtract a day
638000030627       if *in20 = *on;
638100030627      /end-free
638200030627     C                   sub       1             jday
638300030627      /free
638400030627       endif;
638500030627       //
638600030627       // if past february not a leap year subtract one more day
638700030627       if *in20 = *on
638800030627         and *in21 = *on;
638900030627      /end-free
639000030627     C                   sub       1             jday
639100030627      /free
639200030627       endif;
639300030627       //
639400030627       endsr;
639500030627       //*************************************************************** $prupd
639600030627       // check to see which reference number to highlight as entry
639700030627       // being changed.  clear input fields.
639800030627       begsr $prupd;
639900030627       //
640000030627       xxcmnt = cmt(r);
640100031208       x@cmno = cno(r);                                    // #*1o
640200031208       // setll cc1pky arco4r;                                #*1o del
640300031208       // reade cc1pky arco4r;                                #*1o del
640400031208       // *in90 = %eof;                                       #*1o del
640500031208       // dow *in90 = *off;                                   #*1o del
640600031208       //   if xxcmnt = cccmnt;                               #*1o del
640700030627           p@shdn = 'N';
640800031208       //  p@cono = %editc(cccono:'X');                       #*1o del
640900031208       //  p@csno = %editc(cccsno:'X');                       #*1o del
641000031208       //  p@cmno = %editc(cccmno:'X');                       #*1o del
641100031208       //  p@seq# = %editc(ccsq03:'X');                       #*1o del
641200031208           p@cono = %editc(xxcono:'X');                    // #*1o
641300031208           p@csno = %editc(xxcsno:'X');                    // #*1o
641400031208           p@cmno = %editc(x@cmno:'X');                    // #*1o
641500031208           p@seq# = *blanks;                               // #*1o
641600030627           %subst(p@pgmn:2:5) = 'AR201';
641700030627           p@func = 'C';
641800040625       //    AR204 ( p@shdn : p@cono : p@csno :               #*1u drl
641900040625        //   p@cmno : p@seq# : p@pgmn : p@func );             #*1u del
642000031208       //  endif;                                             #*1o del
642100031208       //  reade cc1pky arco4r;                               #*1o del
642200031208       //  *in90 = %eof;                                      #*1o del
642300031208       // enddo;                                              #*1o del
642400030627       //
642500031208       // *in41 = (r = 1);                                    #*1o del          //  eq
642600031208       // if *in41 = *off;                                    #*1o del
642700031208       //   *in42 = (r = 2);                                  #*1o del          //  eq
642800031208       // endif;                                              #*1o del
642900031208       // if *in42 = *off;                                    #*1o del
643000031208       //   *in43 = (r = 3);                                  #*1o del          //  eq
643100031208       // endif;                                              #*1o del
643200031208       // if *in43 = *off;                                    #*1o del
643300031208       //   *in44 = (r = 4);                                  #*1o del          //  eq
643400031208       // endif;                                              #*1o del
643500031208       // if *in44 = *off;                                    #*1o del
643600031208       //   *in45 = (r = 5);                                  #*1o del          //  eq
643700031208       // endif;                                              #*1o del
643800031208       // if *in45 = *off;                                    #*1o del
643900031208       //   *in46 = (r = 6);                                  #*1o del          //  eq
644000031208       // endif;                                              #*1o del
644100031208       // if *in46 = *off;                                    #*1o del
644200031208       //   *in47 = (r = 7);                                  #*1o del          //  eq
644300031208       // endif;                                              #*1o del
644400030627       //
644500030627      /end-free
644600030627     C     #inch2        endsr
644700030627      /free
644800030627       //*************************************************************** $clrs1
644900030627       // clear start screen
645000030627       begsr $clrs1;
645100030627       //
645200030627       k5csno = *zeros;
645300030627       hcocus = *zeros;
645400030627       //
645500030627       endsr;
645600030627       //*************************************************************** $clear
645700030627       // clear customer summary information
645800030627       begsr $clear;
645900030627       //
646000030627       cmcscl = *blanks;
646100030627       cmcssc = *blanks;
646200030627       cmtrno = *blanks;
646300030627       cmcsnm = *blanks;
646400030627       cmcad1 = *blanks;
646500030627       cmpcnt = *blanks;
646600030627       cmcad2 = *blanks;
646700030627       cmcont = *blanks;
646800030627       cmcity = *blanks;
646900030627       cmstat = *blanks;
647000030627       k2stat = cmstat;
647100030627       smrpnm = *blanks;
647200030627       cmfetc = *blanks;
647300030627       k2actp = *blanks;
647400030627       cmtxcd = *blanks;
647500030627       cmagcd = *blanks;
647600030627       cmtxbd = *blanks;
647700030627       k5term = *blanks;
647800030627       cmexno = *blanks;
647900030627       cmzip4 = *blanks;
648000030627       k2sphn = *blanks;
648100030627       k2sccd = *blanks;
648200030627       k2shex = 0;
648300030627       k2fphn = *blanks;
648400030627       k2fccd = *blanks;
648500030627       k2fxex = 0;
648600030627       k5phon = *blanks;
648700030627       k5phex = 0;
648800030627       k4zip5 = *blanks;
648900030627       k5ady1 = *zeros;
649000030627       k5ady2 = *zeros;
649100030627       k5ady3 = *zeros;
649200030627       k5ady4 = *zeros;
649300030627       cmrp#1 = *zeros;
649400030627       cmcrlm = *zeros;
649500030627       cmprbl = *zeros;
649600030627       cmchtd = *zeros;
649700030627       cmslmd = *zeros;
649800030627       cmslyd = *zeros;
649900030627       cmslly = *zeros;
650000030627       cmcrtd = *zeros;
650100030627       k2pfam = *zeros;
650200030627       k2pfyr = *zeros;
650300030627       k2pfly = *zeros;
650400030627       cmprbl = *zeros;
650500030627       cmchtd = *zeros;
650600030627       cmcrtd = *zeros;
650700030627       cmajtd = *zeros;
650800030627       k2pfpc = *zeros;
650900030627       k2ppyr = *zeros;
651000030627       k2pply = *zeros;
651100030627       cmamdu = *zeros;
651200030627       cmormd = *zeros;
651300030627       cmoryd = *zeros;
651400030627       cmorly = *zeros;
651500030627       cmbpam = *zeros;
651600030627       cmdsmd = *zeros;
651700030627       cmdsyd = *zeros;
651800030627       cmdsly = *zeros;
651900030627       cmagp1 = *zeros;
652000030627       k2dspf = *zeros;
652100030627       k2dspy = *zeros;
652200030627       k2dspl = *zeros;
652300030627       cmagp2 = *zeros;
652400030627       k2dppc = *zeros;
652500030627       k2dppy = *zeros;
652600030627       k2dppl = *zeros;
652700030627       cmagp3 = *zeros;
652800030627       cmagp4 = *zeros;
652900030627       cmopor = *zeros;
653000030627       cmfuam = *zeros;
653100030627       cmunpc = *zeros;
653200030627       k5lsdt = *zeros;
653300030627       k5lpdt = *zeros;
653400030627       k5lcnd = *zeros;
653500030627       cmapex = *zeros;
653600030627       k4fsdt = *zeros;
653700030627       k4hcdt = *zeros;
653800030627       cmhcam = *zeros;
653900030627       cmtgpd = *zeros;
654000030627       k4pd90 = *zeros;
654100030627       k4dytd = *zeros;
654200030627       k5lcdt = *zeros;
654300030627       cmcad3 = *blanks;
654400030627       k2pfyt = *zeros;
654500030627       k2dpyt = *zeros;
654600030627       cmcrlt = *zeros;
654700030627       cmprbt = *zeros;
654800030627       cmchtt = *zeros;
654900030627       cmslmt = *zeros;
655000030627       cmslyt = *zeros;
655100030627       cmsllt = *zeros;
655200030627       cmcrtt = *zeros;
655300030627       cmajtt = *zeros;
655400030627       cmamdt = *zeros;
655500030627       cmbpat = *zeros;
655600030627       cmdsmt = *zeros;
655700030627       cmdsyt = *zeros;
655800030627       cmdslt = *zeros;
655900030627       cmagt1 = *zeros;
656000030627       cmagt2 = *zeros;
656100030627       cmagt3 = *zeros;
656200030627       cmagt4 = *zeros;
656300030627       cmopot = *zeros;
656400030627       cmfuat = *zeros;
656500030627       cmunpt = *zeros;
656600030627       cmhcat = *zeros;
656700030627       cmcad4 = *blanks;
656800030627       //
656900030627       endsr;
657000030627       //*************************************************************** $clrar
657100030627       // clear open and paid invoice screens
657200030627       begsr $clrar;
657300030627       //
657400030627       k3morl = more;
657500030627       k4morl = more;
657600030627       rn = *zeros;
657700030627       dsp = *blanks;
657800030627       ftp = *blanks;
657900030627       ky1 = *blanks;
658000030627       ky2 = *blanks;
658100030627       dsp = *blanks;
658200030627       inv = *zeros;
658300030627       oiv = *zeros;
658400030627       ind = *zeros;
658500030627       age = *zeros;
658600030627       iam = *zeros;
658700030627       oam = *zeros;
658800030627       trn = *zeros;
658900030627       day = *zeros;
659000030627       rf = *zeros;
659100030627       adj = *zeros;
659200030627       hst = *zeros;
659300030627       pmt = *zeros;
659400030627       lpy = *zeros;
659500030627       trn = *zeros;
659600030627       cdd = *zeros;
659700030627       cdb = *zeros;
659800030627       trm = *blanks;
659900030627       com = *blanks;
660000030627       imt = *zeros;
660100030627       omt = *zeros;
660200030627       ajt = *zeros;
660300030627       ptt = *zeros;
660400030627       cur = *blanks;
660500030627       *in05 = *off;
660600030627       *in06 = *off;
660700030627       *in07 = *off;
660800030627       *in08 = *off;
660900030627       *in09 = *off;
661000030627       *in10 = *off;
661100030627       *in11 = *off;
661200030627       *in12 = *off;
661300030627       //
661400030627       endsr;
661500030627       //*************************************************************** $clrcm
661600030627       // clear and reset comment screen
661700030627       begsr $clrcm;
661800030627       //
661900030627       *in41 = *off;
662000030627       *in42 = *off;
662100030627       *in43 = *off;
662200030627       *in44 = *off;
662300030627       *in45 = *off;
662400030627       *in46 = *off;
662500030627       *in47 = *off;
662600030627       *in48 = *off;
662700030627       k5morl = more;
662800030627       mode = *blanks;
662900030627       typ = *blanks;
663000030627       cmt = *blanks;
663100031208       cno = *zeros;                                       // #*1o
663200030627       ky3 = *blanks;
663300030627       rf = *zeros;
663400030627       rev = *zeros;
663500030627       cdt = *zeros;
663600030627       revdtx = *zeros;
663700030627       ent = *blanks;
663800030627       cld = *zeros;
663900030627       asg = *blanks;
664000030627       //
664100030627       endsr;
664200030627       //*************************************************************** $rga
664300030627       // call the return goods authorization inquiry
664400030627       begsr $rga;
664500030627       //
664600030627       //* pass the company and customer number
664700030627       //
664800030627       x1rtrc = *blanks;
664900030627       x1frwh = *blanks;
665000030627      /end-free
665100030627     C                   move      *all'9'       x1towh
665200030627      /free
665300030627       x1frdt = '00000000';
665400030627      /end-free
665500030627     C                   move      *all'9'       x1todt
665600030627      /free
665700030627       x1frco = %editc(k5cono:'X');
665800030627       x1toco = %editc(k5cono:'X');
665900030627       x1csno = %editc(k5csno:'X');
666000030627       x1itno = *blanks;
666100030627       x1vndr = *blanks;
666200030627       x1frrp = '00000';
666300030627      /end-free
666400030627     C                   move      *all'9'       x1torp
666500030627      /free
666600030627       rgapgm = 'Y';
666700030627       //
666800030627       OE272 ( cmdky : shtdn@ : x1rtrc :
666900030627       x1frwh : x1towh : x1frdt : x1todt :
667000030627       x1frco : x1toco : x1csno : x1itno :
667100030627       x1vndr : x1frrp : x1torp );
667200030627       //
667300030627       endsr;
667400030627       //*************************************************************** $serch
667500030627       // prepare for search
667600030627       begsr $serch;
667700030627       //
667800030627       // save customer number for return
667900030627       hcusnr = k5csno;
668000030627       //
668100030627       // search
668200030627       cusnrp = *blanks;
668300030627       comnop = %editc(k5cono:'X');
668400030627       cityp = k1city;
668500030627       statep = k1stat;
668600030627       shptop = *blanks;
668700030627       zsrchp = zsrch;
668800030627       usdftp = ' ';
668900030627       schpgm = 'Y';
669000030627       //
669100030627       CSRCH ( shtdn : comnop : cusnrp :
669200030627       shptop : kcfind : cityp : statep :
669300030627       zsrchp : usdftp );
669400030627       //
669500030627       k1city = cityp;
669600030627       k1stat = statep;
669700030627       if cusnrp = ' ';
669800030627         k5csno = hcusnr;
669900030627       else;
670000030627      /end-free
670100030627     C                   movel     cusnrp        k5csno
670200030627      /free
670300030627       endif;
670400030627       exsr $edcus;
670500030627       //
670600030627       endsr;
670700030627       //
670800030627       //************************************************** $sa220
670900030627       // call customer sales analysis display
671000030627       begsr $sa220;
671100030627       //
671200030627       sa220@ = 'Y';
671300030627       //
671400030627       @calp = 'Y';
671500030627       @csnp = %editc(k5csno:'X');
671600030627       @conp = %editc(k5cono:'X');
671700030627       @crid = *blanks;
671800030627       @shpn = *blanks;
671900030627       @altsh = *blanks;
672000030627       //
672100030627       SA220 ( @calp : @conp : @csnp :
672200030627       @crid : @shpn : @altsh );
672300030627       //
672400030627       endsr;
672500030627       //************************************************** $oe290
672600030627       // price inquiry
672700030627       begsr $oe290;
672800030627       //
672900030627       @pcalp = 'I';
673000030627       if *inkc = *on;
673100030627         @pcalp = 'X';
673200030627       endif;
673300030627       @pitem = *blanks;
673400030627       @pwhid = cmdfwh;
673500030627       @pcono = %editc(k5cono:'X');
673600030627       @pcsno = %editc(k5csno:'X');
673700030627       @oe290 = 'Y';
673800030627       //
673900030627       OE290 ( @pcalp : @pcono : @pitem :
674000030627       @pwhid : @pcsno );
674100030627       //
674200030627       endsr;
674300030627       //*************************************************************** $pdint
674400030627       // display customer user codes
674500030627       begsr $usrcd;
674600040416
674700040416       if mic = *blanks;                    //#1s - add
674800040416
674900040416         //* initialize fields
675000040416         k1usr1 = *blanks;
675100040416         k1usr2 = *blanks;
675200040416         k1usr3 = *blanks;
675300040416         k1us5a = *blanks;
675400040416         k1us5b = *blanks;
675500040416         k1us5c = *blanks;
675600040416         k1us5d = *blanks;
675700040416         k1us5e = *blanks;
675800040416         k1us5f = *blanks;
675900040416         k1dsc1 = *blanks;
676000040416         k1dsc2 = *blanks;
676100040416         k1dsc3 = *blanks;
676200040416         k1dsca = *blanks;
676300040416         k1dscb = *blanks;
676400040416         k1dscc = *blanks;
676500040416         k1dscd = *blanks;
676600040416         k1dsce = *blanks;
676700040416         k1dscf = *blanks;
676800040416         k1us1h = *blanks;
676900040416         k1us2h = *blanks;
677000040416         k1us3h = *blanks;
677100040416         k1usah = *blanks;
677200040416         k1usbh = *blanks;
677300040416         k1usch = *blanks;
677400040416         k1usdh = *blanks;
677500040416         k1useh = *blanks;
677600040416         k1usfh = *blanks;
677700030627       //
677800040416         //* move file values to screen "usrcde"
677900040416         chain cm0key cusmsr;
678000040416         *in90 = not %found;
678100040416         if *in90 = *off;
678200040416           k1usr1 = cmusr1;
678300040416           k1usr2 = cmusr2;
678400040416           k1usr3 = cmusr3;
678500040416           k1us5a = cmus5a;
678600040416           k1us5b = cmus5b;
678700040416           k1us5c = cmus5c;
678800040416           k1us5d = cmus5d;
678900040416           k1us5e = cmus5e;
679000040416           k1us5f = cmus5f;
679100040416           update cusmsr;
679200040416         endif;
679300040416
679400040416         //* retrieve user code descriptions and headings
679500040416         //*  user code 1
679600040416         x9comp = k5cono;
679700040416         x9appl = 'AR';
679800040416         if k1usr1 <> *blanks;
679900040416           %subst(x9ckey:1:4) = 'USR1';
680000040416           %subst(x9ckey:5:3) = k1usr1;
680100040416           chain ctlky orctl;
680200040416           *in90 = not %found;
680300040416           if *in90 = *off;
680400040416             k1dsc1 = usrdso;
680500040416           else;
680600040416             k1dsc1 = *blanks;
680700040416           endif;
680800040416         endif;
680900040416         x9ckey = *blanks;
681000040416         %subst(x9ckey:1:4) = 'USR1';
681100040416         chain ctlky orctl;
681200040416         *in90 = not %found;
681300040416         if *in90 = *off;
681400040416           k1us1h = usrdso;
681500040416         else;
681600040416           k1us1h = *blanks;
681700040416         endif;
681800040416         //*  user code 2
681900040416         if k1usr2 <> *blanks;
682000040416           %subst(x9ckey:1:4) = 'USR2';
682100040416           %subst(x9ckey:5:3) = k1usr2;
682200040416           chain ctlky orctl;
682300040416           *in90 = not %found;
682400040416           if *in90 = *off;
682500040416             k1dsc2 = usrdso;
682600040416           else;
682700040416             k1dsc2 = *blanks;
682800040416           endif;
682900040416         endif;
683000040416         x9ckey = *blanks;
683100040416         %subst(x9ckey:1:4) = 'USR2';
683200040416         chain ctlky orctl;
683300040416         *in90 = not %found;
683400040416         if *in90 = *off;
683500040416           k1us2h = usrdso;
683600040416         else;
683700040416           k1us2h = *blanks;
683800040416         endif;
683900040416         //*  user code 3
684000040416         if k1usr3 <> *blanks;
684100040416           %subst(x9ckey:1:4) = 'USR3';
684200040416           %subst(x9ckey:5:3) = k1usr3;
684300040416           chain ctlky orctl;
684400040416           *in90 = not %found;
684500040416           if *in90 = *off;
684600040416             k1dsc3 = usrdso;
684700040416           else;
684800040416             k1dsc3 = *blanks;
684900040416           endif;
685000040416         endif;
685100040416         x9ckey = *blanks;
685200040416         %subst(x9ckey:1:4) = 'USR3';
685300040416         chain ctlky orctl;
685400040416         *in90 = not %found;
685500040416         if *in90 = *off;
685600040416           k1us3h = usrdso;
685700040416         else;
685800040416           k1us3h = *blanks;
685900040416         endif;
686000040416         //*  user field 1
686100040416         if k1us5a <> *blanks;
686200040416           %subst(x9ckey:1:2) = 'U1';
686300040416           %subst(x9ckey:3:5) = k1us5a;
686400040416           chain ctlky orctl;
686500040416           *in90 = not %found;
686600040416           if *in90 = *off;
686700040416             k1dsca = usrdsc;
686800040416           else;
686900040416             k1dsca = *blanks;
687000040416           endif;
687100040416         endif;
687200040416         x9ckey = *blanks;
687300040416         %subst(x9ckey:1:2) = 'U1';
687400040416         chain ctlky orctl;
687500040416         *in90 = not %found;
687600040416         if *in90 = *off;
687700040416           k1usah = usrdsc;
687800040416         else;
687900040416           k1usah = *blanks;
688000040416         endif;
688100040416         //*  user field 2
688200040416         if k1us5b <> *blanks;
688300040416           %subst(x9ckey:1:2) = 'U2';
688400040416           %subst(x9ckey:3:5) = k1us5b;
688500040416           chain ctlky orctl;
688600040416           *in90 = not %found;
688700040416           if *in90 = *off;
688800040416             k1dscb = usrdsc;
688900040416           else;
689000040416             k1dscb = *blanks;
689100040416           endif;
689200040416         endif;
689300040416         x9ckey = *blanks;
689400040416         %subst(x9ckey:1:2) = 'U2';
689500040416         chain ctlky orctl;
689600040416         *in90 = not %found;
689700040416         if *in90 = *off;
689800040416           k1usbh = usrdsc;
689900040416         else;
690000040416           k1usbh = *blanks;
690100040416         endif;
690200040416         //*  user field 3
690300040416         if k1us5c <> *blanks;
690400040416           %subst(x9ckey:1:2) = 'U3';
690500040416           %subst(x9ckey:3:5) = k1us5c;
690600040416           chain ctlky orctl;
690700040416           *in90 = not %found;
690800040416           if *in90 = *off;
690900040416             k1dscc = usrdsc;
691000040416           else;
691100040416             k1dscc = *blanks;
691200040416           endif;
691300040416         endif;
691400040416         x9ckey = *blanks;
691500040416         %subst(x9ckey:1:2) = 'U3';
691600040416         chain ctlky orctl;
691700040416         *in90 = not %found;
691800040416         if *in90 = *off;
691900040416           k1usch = usrdsc;
692000040416         else;
692100040416           k1usch = *blanks;
692200040416         endif;
692300040416         //*  user field 4
692400040416         if k1us5d <> *blanks;
692500040416           %subst(x9ckey:1:2) = 'U4';
692600040416           %subst(x9ckey:3:5) = k1us5d;
692700040416           chain ctlky orctl;
692800040416           *in90 = not %found;
692900040416           if *in90 = *off;
693000040416             k1dscd = usrdsc;
693100040416           else;
693200040416             k1dscd = *blanks;
693300040416           endif;
693400040416         endif;
693500040416         x9ckey = *blanks;
693600040416         %subst(x9ckey:1:2) = 'U4';
693700040416         chain ctlky orctl;
693800040416         *in90 = not %found;
693900040416         if *in90 = *off;
694000040416           k1usdh = usrdsc;
694100040416         else;
694200040416           k1usdh = *blanks;
694300040416         endif;
694400040416         //*  user field 5
694500040416         if k1us5e <> *blanks;
694600040416           %subst(x9ckey:1:2) = 'U5';
694700040416           %subst(x9ckey:3:5) = k1us5e;
694800040416           chain ctlky orctl;
694900040416           *in90 = not %found;
695000040416           if *in90 = *off;
695100040416             k1dsce = usrdsc;
695200040416           else;
695300040416             k1dsce = *blanks;
695400040416           endif;
695500040416         endif;
695600040416         x9ckey = *blanks;
695700040416         %subst(x9ckey:1:2) = 'U5';
695800040416         chain ctlky orctl;
695900040416         *in90 = not %found;
696000040416         if *in90 = *off;
696100040416           k1useh = usrdsc;
696200040416         else;
696300040416           k1useh = *blanks;
696400040416         endif;
696500040416         //*  user field 6
696600040416         if k1us5f <> *blanks;
696700040416           %subst(x9ckey:1:2) = 'U6';
696800040416           %subst(x9ckey:3:5) = k1us5f;
696900040416           chain ctlky orctl;
697000040416           *in90 = not %found;
697100040416           if *in90 = *off;
697200040416             k1dscf = usrdsc;
697300040416           else;
697400040416             k1dscf = *blanks;
697500040416           endif;
697600040416         endif;
697700040416         x9ckey = *blanks;
697800040416         %subst(x9ckey:1:2) = 'U6';
697900040416         chain ctlky orctl;
698000040416         *in90 = not %found;
698100040416         if *in90 = *off;
698200040416           k1usfh = usrdsc;
698300040416         else;
698400040416           k1usfh = *blanks;
698500040416         endif;
698600040416
698700040416       endif;                             //#1s - add
698800040416
698900030627       //
699000030627       //------------------------*
699100030627      /end-free
699200030627     C     hlp#10        tag
699300030627      /free
699400030627       //------------------------*
699500030627       *in90 = (mic > *blanks);
699600030627       *in89 = (mic = *blanks);
699700030627       //
699800030627       exsr $qwe05;
699900030627       // convert mmddyy dates to correct format
700000030627       d@t1 = k5udat;
700100030627       exsr $d@t1;
700200030627       k5udat = d@t2;
700300030627       //
700400030627       k2stat = cmstat;
700500030627       exfmt usrcde;
700600030627       //
700700030627       // convert formatted dates back to mmddyy
700800030627       d@t2 = k5udat;
700900030627       exsr $d@t2;
701000030627       k5udat = d@t1;
701100030627       //
701200030627       //
701300030627       // "?" entered (redisplay if window program called)
701400030627       if *inka <> *on;
701500030627         exsr $qwf06;
701600030627      /end-free
701700030627     C     q#xflg        cabeq     'Y'           hlp#10
701800030627      /free
701900030627       endif;
702000030627       //
702100030627       mic = *blanks;
702200030627       //
702300030627       //* program help requested (f1)
702400030627       if *inka = *on;
702500030627         apscnm = 'USRCDE';
702600030627         exsr $hlptx;
702700030627      /end-free
702800030627     C                   goto      hlp#10
702900030627      /free
703000030627       endif;
703100030627       //
703200030627       endsr;
703300030627       //********************************************* $hlptx
703400030627       // call help text window sub-program
703500030627       begsr $hlptx;
703600030627       //
703700030627       // move screen name to program parm
703800030627       appgnm = 'AR201FM ';
703900030627       //
704000030627       // calculate row and column
704100030627       apcrow = *zeros;
704200030627       apccol = *zeros;
704300030627      /end-free
704400030627     C     apcusr        div       256           apcrow
704500030627     C                   mvr                     apccol
704600030627      /free
704700030627       //
704800030627       apcmic = *blanks;
704900030627       //
705000030627       // load mic message for format 'startc'
705100030627       if apscnm = 'STARTC';
705200030627         if apcrow = 23
705300030627           and mic <> *blanks;
705400030627           apcmic = mic;
705500030627         endif;
705600030627       endif;
705700030627       //
705800030627       // load mic message for format 'header'
705900030627       if apscnm = 'HEADER';
706000040419         //if apcrow = 11                                    #*1t
706100040419         if apcrow = 14                                    //#*1t
706200030627           and mic <> *blanks;
706300030627           apcmic = mic;
706400030627         endif;
706500030627       endif;
706600030627       //
706700030627       // load mic message for format 'openiv'
706800030627       if apscnm = 'OPENIV';
706900040419         //if apcrow = 10                                    #*1t
707000040419         if apcrow = 11                                    //#*1t
707100030627           and mic <> *blanks;
707200030627           apcmic = mic;
707300030627         endif;
707400030627       endif;
707500030627       //
707600030627       // load mic message for format 'paidiv'
707700030627       if apscnm = 'PAIDIV';
707800040419         //if apcrow = 10                                    #*1t
707900040419         if apcrow = 11                                    //#*1t
708000030627           and mic <> *blanks;
708100030627           apcmic = mic;
708200030627         endif;
708300030627       endif;
708400030627       //
708500030627       // load mic message for format 'comnt1'
708600030627       if apscnm = 'COMNT1';
708700040419         //if apcrow = 11                                    #*1t
708800040512         if apcrow = 13                                    //#*1t
708900030627           and mic <> *blanks;
709000030627           apcmic = mic;
709100030627         endif;
709200030627       endif;
709300030627       //
709400030627       // load mic message for format 'invdet'
709500030627       if apscnm = 'INVDET';
709600030627         if apcrow = 10
709700030627           and mic <> *blanks;
709800030627           apcmic = mic;
709900030627         endif;
710000030627       endif;
710100030627       //
710200030627       // call sub-program
710300030627       HLP200 ( appgnm : apscnm : apcrow :
710400030627       apccol : apcmic );
710500030627       //
710600030627       endsr;
710700030627       //
710800030627       //************************************************** $qwf01
710900030627       // process "?" windows for format startc
711000030627       begsr $qwf01;
711100030627       //
711200030627       //  set common values
711300030627       q#shdn = 'N';
711400030627       q#flag = 'N';
711500030627       q#xflg = 'N';
711600030627       q#hit = *zeros;
711700030627       //
711800030627       // processing for field kqcono
711900030627       q#hit = %scan( '?' : kqcono );
712000030627       if q#hit <> *zeros;
712100030627         //
712200030627         //   re-write screen if not first "?" selected
712300030627         if q#flag = 'Y';
712400030627           write startc;
712500030627         endif;
712600030627         //
712700030627         //   setup parms for window program
712800030627         q#line = 06;
712900030627         %subst(q#name:1:5) = 'CONO ';
713000030627         q#cono = *zero;
713100030627         q#sbky = *blanks;
713200030627         exsr $wndow;
713300030627         kqcono = q#rtvl;
713400030627         q#flag = 'Y';
713500030627         q#xflg = 'Y';
713600030627         q#hit = *zeros;
713700030627       endif;
713800030627       //
713900030627       w$cono = kqcono;
714000030627       exsr $razco;
714100030627       kqcono = w$cono;
714200030627       k5cono = w#cono;
714300030627       //
714400030627       //
714500030627       endsr;
714600030627       //
714700030627       //
714800030627       //************************************************** $qwe01
714900030627       // edit "?" window fields for format startc
715000030627       begsr $qwe01;
715100030627       //
715200030627       if k5cono > *zero;
715300030627         kqcono = %editc(k5cono:'X');
715400030627       else;
715500030627         kqcono = *blanks;
715600030627       endif;
715700030627       //
715800030627       endsr;
715900030627       //
716000030627       //************************************************** $qwf02
716100030627       // process "?" windows for format header
716200030627       begsr $qwf02;
716300030627       //
716400030627       //  set common values
716500030627       q#shdn = 'N';
716600030627       q#flag = 'N';
716700030627       q#xflg = 'N';
716800030627       q#hit = *zeros;
716900030627       //
717000030627       // processing for field kqcono
717100030627       q#hit = %scan( '?' : kqcono );
717200030627       if q#hit <> *zeros;
717300030627         //
717400030627         //   re-write screen if not first "?" selected
717500030627         if q#flag = 'Y';
717600030627           // convert mmddyy dates to correct format
717700030627           d@t1 = k5udat;
717800030627           exsr $d@t1;
717900030627           k5udat = d@t2;
718000030627           //
718100030627           write header;
718200030627           //
718300030627           // convert formatted dates back to mmddyy
718400030627           d@t2 = k5udat;
718500030627           exsr $d@t2;
718600030627           k5udat = d@t1;
718700030627           //
718800030627         endif;
718900030627         //
719000030627         //   setup parms for window program
719100030627         q#line = 01;
719200030627         %subst(q#name:1:5) = 'CONO ';
719300030627         q#cono = *zero;
719400030627         q#sbky = *blanks;
719500030627         exsr $wndow;
719600030627         kqcono = q#rtvl;
719700030627         q#flag = 'Y';
719800030627         q#xflg = 'Y';
719900030627         q#hit = *zeros;
720000030627       endif;
720100030627       //
720200030627       w$cono = kqcono;
720300030627       exsr $razco;
720400030627       kqcono = w$cono;
720500030627       k5cono = w#cono;
720600030627       //
720700030627       //
720800030627       endsr;
720900030627       //
721000030627       //
721100030627       //************************************************** $qwe02
721200030627       // edit "?" window fields for format header
721300030627       begsr $qwe02;
721400030627       //
721500030627       if k5cono > *zero;
721600030627         kqcono = %editc(k5cono:'X');
721700030627       else;
721800030627         kqcono = *blanks;
721900030627       endif;
722000030627       //
722100030627       endsr;
722200030627       //
722300030627       //************************************************** $qwf03
722400030627       // process "?" windows for format openiv
722500030627       begsr $qwf03;
722600030627       //
722700030627       //  set common values
722800030627       q#shdn = 'N';
722900030627       q#flag = 'N';
723000030627       q#xflg = 'N';
723100030627       q#hit = *zeros;
723200030627       //
723300030627       // processing for field kqcono
723400030627       q#hit = %scan( '?' : kqcono );
723500030627       if q#hit <> *zeros;
723600030627         //
723700030627         //   re-write screen if not first "?" selected
723800030627         if q#flag = 'Y';
723900030627           // convert mmddyy dates to correct format
724000030627           d@t1 = age001;
724100030627           exsr $d@t1;
724200030627           age001 = d@t2;
724300030627           //
724400030627           d@t1 = age002;
724500030627           exsr $d@t1;
724600030627           age002 = d@t2;
724700030627           //
724800030627           d@t1 = age003;
724900030627           exsr $d@t1;
725000030627           age003 = d@t2;
725100030627           //
725200030627           d@t1 = age004;
725300030627           exsr $d@t1;
725400030627           age004 = d@t2;
725500030627           //
725600030627           d@t1 = age005;
725700030627           exsr $d@t1;
725800030627           age005 = d@t2;
725900030627           //
726000030627           d@t1 = age006;
726100030627           exsr $d@t1;
726200030627           age006 = d@t2;
726300030627           //
726400030627           d@t1 = age007;
726500030627           exsr $d@t1;
726600030627           age007 = d@t2;
726700030627           //
726800030627           d@t1 = age008;
726900030627           exsr $d@t1;
727000030627           age008 = d@t2;
727100030627           //
727200030627           d@t1 = ind001;
727300030627           exsr $d@t1;
727400030627           ind001 = d@t2;
727500030627           //
727600030627           d@t1 = ind002;
727700030627           exsr $d@t1;
727800030627           ind002 = d@t2;
727900030627           //
728000030627           d@t1 = ind003;
728100030627           exsr $d@t1;
728200030627           ind003 = d@t2;
728300030627           //
728400030627           d@t1 = ind004;
728500030627           exsr $d@t1;
728600030627           ind004 = d@t2;
728700030627           //
728800030627           d@t1 = ind005;
728900030627           exsr $d@t1;
729000030627           ind005 = d@t2;
729100030627           //
729200030627           d@t1 = ind006;
729300030627           exsr $d@t1;
729400030627           ind006 = d@t2;
729500030627           //
729600030627           d@t1 = ind007;
729700030627           exsr $d@t1;
729800030627           ind007 = d@t2;
729900030627           //
730000030627           d@t1 = ind008;
730100030627           exsr $d@t1;
730200030627           ind008 = d@t2;
730300030627           //
730400030627           d@t1 = k5lcnd;
730500030627           exsr $d@t1;
730600030627           k5lcnd = d@t2;
730700030627           //
730800030627           d@t1 = k5lpdt;
730900030627           exsr $d@t1;
731000030627           k5lpdt = d@t2;
731100030627           //
731200030627           d@t1 = k5lsdt;
731300030627           exsr $d@t1;
731400030627           k5lsdt = d@t2;
731500030627           //
731600030627           d@t1 = k5udat;
731700030627           exsr $d@t1;
731800030627           k5udat = d@t2;
731900030627           //
732000030627           d@t1 = trn001;
732100030627           exsr $d@t1;
732200030627           trn001 = d@t2;
732300030627           //
732400030627           d@t1 = trn002;
732500030627           exsr $d@t1;
732600030627           trn002 = d@t2;
732700030627           //
732800030627           d@t1 = trn003;
732900030627           exsr $d@t1;
733000030627           trn003 = d@t2;
733100030627           //
733200030627           d@t1 = trn004;
733300030627           exsr $d@t1;
733400030627           trn004 = d@t2;
733500030627           //
733600030627           d@t1 = trn005;
733700030627           exsr $d@t1;
733800030627           trn005 = d@t2;
733900030627           //
734000030627           d@t1 = trn006;
734100030627           exsr $d@t1;
734200030627           trn006 = d@t2;
734300030627           //
734400030627           d@t1 = trn007;
734500030627           exsr $d@t1;
734600030627           trn007 = d@t2;
734700030627           //
734800030627           d@t1 = trn008;
734900030627           exsr $d@t1;
735000030627           trn008 = d@t2;
735100030627           //
735200030627           write openiv;
735300030627           //
735400030627           // convert formatted dates back to mmddyy
735500030627           d@t2 = age001;
735600030627           exsr $d@t2;
735700030627           age001 = d@t1;
735800030627           //
735900030627           d@t2 = age002;
736000030627           exsr $d@t2;
736100030627           age002 = d@t1;
736200030627           //
736300030627           d@t2 = age003;
736400030627           exsr $d@t2;
736500030627           age003 = d@t1;
736600030627           //
736700030627           d@t2 = age004;
736800030627           exsr $d@t2;
736900030627           age004 = d@t1;
737000030627           //
737100030627           d@t2 = age005;
737200030627           exsr $d@t2;
737300030627           age005 = d@t1;
737400030627           //
737500030627           d@t2 = age006;
737600030627           exsr $d@t2;
737700030627           age006 = d@t1;
737800030627           //
737900030627           d@t2 = age007;
738000030627           exsr $d@t2;
738100030627           age007 = d@t1;
738200030627           //
738300030627           d@t2 = age008;
738400030627           exsr $d@t2;
738500030627           age008 = d@t1;
738600030627           //
738700030627           d@t2 = ind001;
738800030627           exsr $d@t2;
738900030627           ind001 = d@t1;
739000030627           //
739100030627           d@t2 = ind002;
739200030627           exsr $d@t2;
739300030627           ind002 = d@t1;
739400030627           //
739500030627           d@t2 = ind003;
739600030627           exsr $d@t2;
739700030627           ind003 = d@t1;
739800030627           //
739900030627           d@t2 = ind004;
740000030627           exsr $d@t2;
740100030627           ind004 = d@t1;
740200030627           //
740300030627           d@t2 = ind005;
740400030627           exsr $d@t2;
740500030627           ind005 = d@t1;
740600030627           //
740700030627           d@t2 = ind006;
740800030627           exsr $d@t2;
740900030627           ind006 = d@t1;
741000030627           //
741100030627           d@t2 = ind007;
741200030627           exsr $d@t2;
741300030627           ind007 = d@t1;
741400030627           //
741500030627           d@t2 = ind008;
741600030627           exsr $d@t2;
741700030627           ind008 = d@t1;
741800030627           //
741900030627           d@t2 = k5lcnd;
742000030627           exsr $d@t2;
742100030627           k5lcnd = d@t1;
742200030627           //
742300030627           d@t2 = k5lpdt;
742400030627           exsr $d@t2;
742500030627           k5lpdt = d@t1;
742600030627           //
742700030627           d@t2 = k5lsdt;
742800030627           exsr $d@t2;
742900030627           k5lsdt = d@t1;
743000030627           //
743100030627           d@t2 = k5udat;
743200030627           exsr $d@t2;
743300030627           k5udat = d@t1;
743400030627           //
743500030627           d@t2 = trn001;
743600030627           exsr $d@t2;
743700030627           trn001 = d@t1;
743800030627           //
743900030627           d@t2 = trn002;
744000030627           exsr $d@t2;
744100030627           trn002 = d@t1;
744200030627           //
744300030627           d@t2 = trn003;
744400030627           exsr $d@t2;
744500030627           trn003 = d@t1;
744600030627           //
744700030627           d@t2 = trn004;
744800030627           exsr $d@t2;
744900030627           trn004 = d@t1;
745000030627           //
745100030627           d@t2 = trn005;
745200030627           exsr $d@t2;
745300030627           trn005 = d@t1;
745400030627           //
745500030627           d@t2 = trn006;
745600030627           exsr $d@t2;
745700030627           trn006 = d@t1;
745800030627           //
745900030627           d@t2 = trn007;
746000030627           exsr $d@t2;
746100030627           trn007 = d@t1;
746200030627           //
746300030627           d@t2 = trn008;
746400030627           exsr $d@t2;
746500030627           trn008 = d@t1;
746600030627           //
746700030627         endif;
746800030627         //
746900030627         //   setup parms for window program
747000030627         q#line = 02;
747100030627         %subst(q#name:1:5) = 'CONO ';
747200030627         q#cono = *zero;
747300030627         q#sbky = *blanks;
747400030627         exsr $wndow;
747500030627         kqcono = q#rtvl;
747600030627         q#flag = 'Y';
747700030627         q#xflg = 'Y';
747800030627         q#hit = *zeros;
747900030627       endif;
748000030627       //
748100030627       w$cono = kqcono;
748200030627       exsr $razco;
748300030627       kqcono = w$cono;
748400030627       k5cono = w#cono;
748500030627       //
748600030627       //
748700030627       endsr;
748800030627       //
748900030627       //
749000030627       //************************************************** $qwe03
749100030627       // edit "?" window fields for format openiv
749200030627       begsr $qwe03;
749300030627       //
749400030627       if k5cono > *zero;
749500030627         kqcono = %editc(k5cono:'X');
749600030627       else;
749700030627         kqcono = *blanks;
749800030627       endif;
749900030627       //
750000030627       endsr;
750100030627       //
750200030627       //************************************************** $qwf04
750300030627       // process "?" windows for format paidiv
750400030627       begsr $qwf04;
750500030627       //
750600030627       //  set common values
750700030627       q#shdn = 'N';
750800030627       q#flag = 'N';
750900030627       q#xflg = 'N';
751000030627       q#hit = *zeros;
751100030627       //
751200030627       // processing for field kqcono
751300030627       q#hit = %scan( '?' : kqcono );
751400030627       if q#hit <> *zeros;
751500030627         //
751600030627         //   re-write screen if not first "?" selected
751700030627         if q#flag = 'Y';
751800030627           // convert mmddyy dates to correct format
751900030627           d@t1 = age001;
752000030627           exsr $d@t1;
752100030627           age001 = d@t2;
752200030627           //
752300030627           d@t1 = age002;
752400030627           exsr $d@t1;
752500030627           age002 = d@t2;
752600030627           //
752700030627           d@t1 = age003;
752800030627           exsr $d@t1;
752900030627           age003 = d@t2;
753000030627           //
753100030627           d@t1 = age004;
753200030627           exsr $d@t1;
753300030627           age004 = d@t2;
753400030627           //
753500030627           d@t1 = age005;
753600030627           exsr $d@t1;
753700030627           age005 = d@t2;
753800030627           //
753900030627           d@t1 = age006;
754000030627           exsr $d@t1;
754100030627           age006 = d@t2;
754200030627           //
754300030627           d@t1 = age007;
754400030627           exsr $d@t1;
754500030627           age007 = d@t2;
754600030627           //
754700030627           d@t1 = age008;
754800030627           exsr $d@t1;
754900030627           age008 = d@t2;
755000030627           //
755100030627           d@t1 = k4fsdt;
755200030627           exsr $d@t1;
755300030627           k4fsdt = d@t2;
755400030627           //
755500030627           d@t1 = k4hcdt;
755600030627           exsr $d@t1;
755700030627           k4hcdt = d@t2;
755800030627           //
755900030627           d@t1 = k5lpdt;
756000030627           exsr $d@t1;
756100030627           k5lpdt = d@t2;
756200030627           //
756300030627           d@t1 = k5udat;
756400030627           exsr $d@t1;
756500030627           k5udat = d@t2;
756600030627           //
756700030627           d@t1 = lpy001;
756800030627           exsr $d@t1;
756900030627           lpy001 = d@t2;
757000030627           //
757100030627           d@t1 = lpy002;
757200030627           exsr $d@t1;
757300030627           lpy002 = d@t2;
757400030627           //
757500030627           d@t1 = lpy003;
757600030627           exsr $d@t1;
757700030627           lpy003 = d@t2;
757800030627           //
757900030627           d@t1 = lpy004;
758000030627           exsr $d@t1;
758100030627           lpy004 = d@t2;
758200030627           //
758300030627           d@t1 = lpy005;
758400030627           exsr $d@t1;
758500030627           lpy005 = d@t2;
758600030627           //
758700030627           d@t1 = lpy006;
758800030627           exsr $d@t1;
758900030627           lpy006 = d@t2;
759000030627           //
759100030627           d@t1 = lpy007;
759200030627           exsr $d@t1;
759300030627           lpy007 = d@t2;
759400030627           //
759500030627           d@t1 = lpy008;
759600030627           exsr $d@t1;
759700030627           lpy008 = d@t2;
759800030627           //
759900030627           write paidiv;
760000030627           //
760100030627           // convert formatted dates back to mmddyy
760200030627           d@t2 = age001;
760300030627           exsr $d@t2;
760400030627           age001 = d@t1;
760500030627           //
760600030627           d@t2 = age002;
760700030627           exsr $d@t2;
760800030627           age002 = d@t1;
760900030627           //
761000030627           d@t2 = age003;
761100030627           exsr $d@t2;
761200030627           age003 = d@t1;
761300030627           //
761400030627           d@t2 = age004;
761500030627           exsr $d@t2;
761600030627           age004 = d@t1;
761700030627           //
761800030627           d@t2 = age005;
761900030627           exsr $d@t2;
762000030627           age005 = d@t1;
762100030627           //
762200030627           d@t2 = age006;
762300030627           exsr $d@t2;
762400030627           age006 = d@t1;
762500030627           //
762600030627           d@t2 = age007;
762700030627           exsr $d@t2;
762800030627           age007 = d@t1;
762900030627           //
763000030627           d@t2 = age008;
763100030627           exsr $d@t2;
763200030627           age008 = d@t1;
763300030627           //
763400030627           d@t2 = k4fsdt;
763500030627           exsr $d@t2;
763600030627           k4fsdt = d@t1;
763700030627           //
763800030627           d@t2 = k4hcdt;
763900030627           exsr $d@t2;
764000030627           k4hcdt = d@t1;
764100030627           //
764200030627           d@t2 = k5lpdt;
764300030627           exsr $d@t2;
764400030627           k5lpdt = d@t1;
764500030627           //
764600030627           d@t2 = k5udat;
764700030627           exsr $d@t2;
764800030627           k5udat = d@t1;
764900030627           //
765000030627           d@t2 = lpy001;
765100030627           exsr $d@t2;
765200030627           lpy001 = d@t1;
765300030627           //
765400030627           d@t2 = lpy002;
765500030627           exsr $d@t2;
765600030627           lpy002 = d@t1;
765700030627           //
765800030627           d@t2 = lpy003;
765900030627           exsr $d@t2;
766000030627           lpy003 = d@t1;
766100030627           //
766200030627           d@t2 = lpy004;
766300030627           exsr $d@t2;
766400030627           lpy004 = d@t1;
766500030627           //
766600030627           d@t2 = lpy005;
766700030627           exsr $d@t2;
766800030627           lpy005 = d@t1;
766900030627           //
767000030627           d@t2 = lpy006;
767100030627           exsr $d@t2;
767200030627           lpy006 = d@t1;
767300030627           //
767400030627           d@t2 = lpy007;
767500030627           exsr $d@t2;
767600030627           lpy007 = d@t1;
767700030627           //
767800030627           d@t2 = lpy008;
767900030627           exsr $d@t2;
768000030627           lpy008 = d@t1;
768100030627           //
768200030627         endif;
768300030627         //
768400030627         //   setup parms for window program
768500030627         q#line = 02;
768600030627         %subst(q#name:1:5) = 'CONO ';
768700030627         q#cono = *zero;
768800030627         q#sbky = *blanks;
768900030627         exsr $wndow;
769000030627         kqcono = q#rtvl;
769100030627         q#flag = 'Y';
769200030627         q#xflg = 'Y';
769300030627         q#hit = *zeros;
769400030627       endif;
769500030627       //
769600030627       w$cono = kqcono;
769700030627       exsr $razco;
769800030627       kqcono = w$cono;
769900030627       k5cono = w#cono;
770000030627       //
770100030627       //
770200030627       endsr;
770300030627       //
770400030627       //
770500030627       //************************************************** $qwe04
770600030627       // edit "?" window fields for format paidiv
770700030627       begsr $qwe04;
770800030627       //
770900030627       if k5cono > *zero;
771000030627         kqcono = %editc(k5cono:'X');
771100030627       else;
771200030627         kqcono = *blanks;
771300030627       endif;
771400030627       //
771500030627       endsr;
771600030627       //
771700030627       //************************************************** $qwf05
771800030627       // process "?" windows for format comnt1
771900030627       begsr $qwf05;
772000030627       //
772100030627       //  set common values
772200030627       q#shdn = 'N';
772300030627       q#flag = 'N';
772400030627       q#xflg = 'N';
772500030627       q#hit = *zeros;
772600030627       //
772700030627       // processing for field kqcono
772800030627       q#hit = %scan( '?' : kqcono );
772900030627       if q#hit <> *zeros;
773000030627         //
773100030627         //   re-write screen if not first "?" selected
773200030627         if q#flag = 'Y';
773300030627           // convert mmddyy dates to correct format
773400030627           d@t1 = cdt001;
773500030627           exsr $d@t1;
773600030627           cdt001 = d@t2;
773700030627           //
773800030627           d@t1 = cdt002;
773900030627           exsr $d@t1;
774000030627           cdt002 = d@t2;
774100030627           //
774200030627           d@t1 = cdt003;
774300030627           exsr $d@t1;
774400030627           cdt003 = d@t2;
774500030627           //
774600030627           d@t1 = cdt004;
774700030627           exsr $d@t1;
774800030627           cdt004 = d@t2;
774900030627           //
775000030627           d@t1 = cdt005;
775100030627           exsr $d@t1;
775200030627           cdt005 = d@t2;
775300030627           //
775400030627           d@t1 = cdt006;
775500030627           exsr $d@t1;
775600030627           cdt006 = d@t2;
775700030627           //
775800030627           d@t1 = cdt007;
775900030627           exsr $d@t1;
776000030627           cdt007 = d@t2;
776100030627           //
776200030627           d@t1 = cld001;
776300030627           exsr $d@t1;
776400030627           cld001 = d@t2;
776500030627           //
776600030627           d@t1 = cld002;
776700030627           exsr $d@t1;
776800030627           cld002 = d@t2;
776900030627           //
777000030627           d@t1 = cld003;
777100030627           exsr $d@t1;
777200030627           cld003 = d@t2;
777300030627           //
777400030627           d@t1 = cld004;
777500030627           exsr $d@t1;
777600030627           cld004 = d@t2;
777700030627           //
777800030627           d@t1 = cld005;
777900030627           exsr $d@t1;
778000030627           cld005 = d@t2;
778100030627           //
778200030627           d@t1 = cld006;
778300030627           exsr $d@t1;
778400030627           cld006 = d@t2;
778500030627           //
778600030627           d@t1 = cld007;
778700030627           exsr $d@t1;
778800030627           cld007 = d@t2;
778900030627           //
779000030627           d@t1 = k5crrp;
779100030627           exsr $d@t1;
779200030627           k5crrp = d@t2;
779300030627           //
779400030627           d@t1 = k5lcdt;
779500030627           exsr $d@t1;
779600030627           k5lcdt = d@t2;
779700030627           //
779800030627           d@t1 = k5lcnd;
779900030627           exsr $d@t1;
780000030627           k5lcnd = d@t2;
780100030627           //
780200030627           d@t1 = k5lpdt;
780300030627           exsr $d@t1;
780400030627           k5lpdt = d@t2;
780500030627           //
780600030627           d@t1 = k5lsdt;
780700030627           exsr $d@t1;
780800030627           k5lsdt = d@t2;
780900030627           //
781000030627           d@t1 = k5udat;
781100030627           exsr $d@t1;
781200030627           k5udat = d@t2;
781300030627           //
781400030627           d@t1 = rev001;
781500030627           exsr $d@t1;
781600030627           rev001 = d@t2;
781700030627           //
781800030627           d@t1 = rev002;
781900030627           exsr $d@t1;
782000030627           rev002 = d@t2;
782100030627           //
782200030627           d@t1 = rev003;
782300030627           exsr $d@t1;
782400030627           rev003 = d@t2;
782500030627           //
782600030627           d@t1 = rev004;
782700030627           exsr $d@t1;
782800030627           rev004 = d@t2;
782900030627           //
783000030627           d@t1 = rev005;
783100030627           exsr $d@t1;
783200030627           rev005 = d@t2;
783300030627           //
783400030627           d@t1 = rev006;
783500030627           exsr $d@t1;
783600030627           rev006 = d@t2;
783700030627           //
783800030627           d@t1 = rev007;
783900030627           exsr $d@t1;
784000030627           rev007 = d@t2;
784100030627           //
784200030627           write comnt1;
784300030627           //
784400030627           // convert formatted dates back to mmddyy
784500030627           d@t2 = cdt001;
784600030627           exsr $d@t2;
784700030627           cdt001 = d@t1;
784800030627           //
784900030627           d@t2 = cdt002;
785000030627           exsr $d@t2;
785100030627           cdt002 = d@t1;
785200030627           //
785300030627           d@t2 = cdt003;
785400030627           exsr $d@t2;
785500030627           cdt003 = d@t1;
785600030627           //
785700030627           d@t2 = cdt004;
785800030627           exsr $d@t2;
785900030627           cdt004 = d@t1;
786000030627           //
786100030627           d@t2 = cdt005;
786200030627           exsr $d@t2;
786300030627           cdt005 = d@t1;
786400030627           //
786500030627           d@t2 = cdt006;
786600030627           exsr $d@t2;
786700030627           cdt006 = d@t1;
786800030627           //
786900030627           d@t2 = cdt007;
787000030627           exsr $d@t2;
787100030627           cdt007 = d@t1;
787200030627           //
787300030627           d@t2 = cld001;
787400030627           exsr $d@t2;
787500030627           cld001 = d@t1;
787600030627           //
787700030627           d@t2 = cld002;
787800030627           exsr $d@t2;
787900030627           cld002 = d@t1;
788000030627           //
788100030627           d@t2 = cld003;
788200030627           exsr $d@t2;
788300030627           cld003 = d@t1;
788400030627           //
788500030627           d@t2 = cld004;
788600030627           exsr $d@t2;
788700030627           cld004 = d@t1;
788800030627           //
788900030627           d@t2 = cld005;
789000030627           exsr $d@t2;
789100030627           cld005 = d@t1;
789200030627           //
789300030627           d@t2 = cld006;
789400030627           exsr $d@t2;
789500030627           cld006 = d@t1;
789600030627           //
789700030627           d@t2 = cld007;
789800030627           exsr $d@t2;
789900030627           cld007 = d@t1;
790000030627           //
790100030627           d@t2 = k5crrp;
790200030627           exsr $d@t2;
790300030627           k5crrp = d@t1;
790400030627           //
790500030627           d@t2 = k5lcdt;
790600030627           exsr $d@t2;
790700030627           k5lcdt = d@t1;
790800030627           //
790900030627           d@t2 = k5lcnd;
791000030627           exsr $d@t2;
791100030627           k5lcnd = d@t1;
791200030627           //
791300030627           d@t2 = k5lpdt;
791400030627           exsr $d@t2;
791500030627           k5lpdt = d@t1;
791600030627           //
791700030627           d@t2 = k5lsdt;
791800030627           exsr $d@t2;
791900030627           k5lsdt = d@t1;
792000030627           //
792100030627           d@t2 = k5udat;
792200030627           exsr $d@t2;
792300030627           k5udat = d@t1;
792400030627           //
792500030627           d@t2 = rev001;
792600030627           exsr $d@t2;
792700030627           rev001 = d@t1;
792800030627           //
792900030627           d@t2 = rev002;
793000030627           exsr $d@t2;
793100030627           rev002 = d@t1;
793200030627           //
793300030627           d@t2 = rev003;
793400030627           exsr $d@t2;
793500030627           rev003 = d@t1;
793600030627           //
793700030627           d@t2 = rev004;
793800030627           exsr $d@t2;
793900030627           rev004 = d@t1;
794000030627           //
794100030627           d@t2 = rev005;
794200030627           exsr $d@t2;
794300030627           rev005 = d@t1;
794400030627           //
794500030627           d@t2 = rev006;
794600030627           exsr $d@t2;
794700030627           rev006 = d@t1;
794800030627           //
794900030627           d@t2 = rev007;
795000030627           exsr $d@t2;
795100030627           rev007 = d@t1;
795200030627           //
795300030627         endif;
795400030627         //
795500030627         //   setup parms for window program
795600030627         q#line = 02;
795700030627         %subst(q#name:1:5) = 'CONO ';
795800030627         q#cono = *zero;
795900030627         q#sbky = *blanks;
796000030627         exsr $wndow;
796100030627         kqcono = q#rtvl;
796200030627         q#flag = 'Y';
796300030627         q#xflg = 'Y';
796400030627         q#hit = *zeros;
796500030627       endif;
796600030627       //
796700030627       w$cono = kqcono;
796800030627       exsr $razco;
796900030627       kqcono = w$cono;
797000030627       k5cono = w#cono;
797100030627       //
797200030627       //
797300030627       //   re-write screen if not first "?" selected
797400030627       if q#flag = 'Y';
797500030627         // convert mmddyy dates to correct format
797600030627         d@t1 = cdt001;
797700030627         exsr $d@t1;
797800030627         cdt001 = d@t2;
797900030627         //
798000030627         d@t1 = cdt002;
798100030627         exsr $d@t1;
798200030627         cdt002 = d@t2;
798300030627         //
798400030627         d@t1 = cdt003;
798500030627         exsr $d@t1;
798600030627         cdt003 = d@t2;
798700030627         //
798800030627         d@t1 = cdt004;
798900030627         exsr $d@t1;
799000030627         cdt004 = d@t2;
799100030627         //
799200030627         d@t1 = cdt005;
799300030627         exsr $d@t1;
799400030627         cdt005 = d@t2;
799500030627         //
799600030627         d@t1 = cdt006;
799700030627         exsr $d@t1;
799800030627         cdt006 = d@t2;
799900030627         //
800000030627         d@t1 = cdt007;
800100030627         exsr $d@t1;
800200030627         cdt007 = d@t2;
800300030627         //
800400030627         d@t1 = cld001;
800500030627         exsr $d@t1;
800600030627         cld001 = d@t2;
800700030627         //
800800030627         d@t1 = cld002;
800900030627         exsr $d@t1;
801000030627         cld002 = d@t2;
801100030627         //
801200030627         d@t1 = cld003;
801300030627         exsr $d@t1;
801400030627         cld003 = d@t2;
801500030627         //
801600030627         d@t1 = cld004;
801700030627         exsr $d@t1;
801800030627         cld004 = d@t2;
801900030627         //
802000030627         d@t1 = cld005;
802100030627         exsr $d@t1;
802200030627         cld005 = d@t2;
802300030627         //
802400030627         d@t1 = cld006;
802500030627         exsr $d@t1;
802600030627         cld006 = d@t2;
802700030627         //
802800030627         d@t1 = cld007;
802900030627         exsr $d@t1;
803000030627         cld007 = d@t2;
803100030627         //
803200030627         d@t1 = k5crrp;
803300030627         exsr $d@t1;
803400030627         k5crrp = d@t2;
803500030627         //
803600030627         d@t1 = k5lcdt;
803700030627         exsr $d@t1;
803800030627         k5lcdt = d@t2;
803900030627         //
804000030627         d@t1 = k5lcnd;
804100030627         exsr $d@t1;
804200030627         k5lcnd = d@t2;
804300030627         //
804400030627         d@t1 = k5lpdt;
804500030627         exsr $d@t1;
804600030627         k5lpdt = d@t2;
804700030627         //
804800030627         d@t1 = k5lsdt;
804900030627         exsr $d@t1;
805000030627         k5lsdt = d@t2;
805100030627         //
805200030627         d@t1 = k5udat;
805300030627         exsr $d@t1;
805400030627         k5udat = d@t2;
805500030627         //
805600030627         d@t1 = rev001;
805700030627         exsr $d@t1;
805800030627         rev001 = d@t2;
805900030627         //
806000030627         d@t1 = rev002;
806100030627         exsr $d@t1;
806200030627         rev002 = d@t2;
806300030627         //
806400030627         d@t1 = rev003;
806500030627         exsr $d@t1;
806600030627         rev003 = d@t2;
806700030627         //
806800030627         d@t1 = rev004;
806900030627         exsr $d@t1;
807000030627         rev004 = d@t2;
807100030627         //
807200030627         d@t1 = rev005;
807300030627         exsr $d@t1;
807400030627         rev005 = d@t2;
807500030627         //
807600030627         d@t1 = rev006;
807700030627         exsr $d@t1;
807800030627         rev006 = d@t2;
807900030627         //
808000030627         d@t1 = rev007;
808100030627         exsr $d@t1;
808200030627         rev007 = d@t2;
808300030627         //
808400030627         write comnt1;
808500030627         //
808600030627         // convert formatted dates back to mmddyy
808700030627         d@t2 = cdt001;
808800030627         exsr $d@t2;
808900030627         cdt001 = d@t1;
809000030627         //
809100030627         d@t2 = cdt002;
809200030627         exsr $d@t2;
809300030627         cdt002 = d@t1;
809400030627         //
809500030627         d@t2 = cdt003;
809600030627         exsr $d@t2;
809700030627         cdt003 = d@t1;
809800030627         //
809900030627         d@t2 = cdt004;
810000030627         exsr $d@t2;
810100030627         cdt004 = d@t1;
810200030627         //
810300030627         d@t2 = cdt005;
810400030627         exsr $d@t2;
810500030627         cdt005 = d@t1;
810600030627         //
810700030627         d@t2 = cdt006;
810800030627         exsr $d@t2;
810900030627         cdt006 = d@t1;
811000030627         //
811100030627         d@t2 = cdt007;
811200030627         exsr $d@t2;
811300030627         cdt007 = d@t1;
811400030627         //
811500030627         d@t2 = cld001;
811600030627         exsr $d@t2;
811700030627         cld001 = d@t1;
811800030627         //
811900030627         d@t2 = cld002;
812000030627         exsr $d@t2;
812100030627         cld002 = d@t1;
812200030627         //
812300030627         d@t2 = cld003;
812400030627         exsr $d@t2;
812500030627         cld003 = d@t1;
812600030627         //
812700030627         d@t2 = cld004;
812800030627         exsr $d@t2;
812900030627         cld004 = d@t1;
813000030627         //
813100030627         d@t2 = cld005;
813200030627         exsr $d@t2;
813300030627         cld005 = d@t1;
813400030627         //
813500030627         d@t2 = cld006;
813600030627         exsr $d@t2;
813700030627         cld006 = d@t1;
813800030627         //
813900030627         d@t2 = cld007;
814000030627         exsr $d@t2;
814100030627         cld007 = d@t1;
814200030627         //
814300030627         d@t2 = k5crrp;
814400030627         exsr $d@t2;
814500030627         k5crrp = d@t1;
814600030627         //
814700030627         d@t2 = k5lcdt;
814800030627         exsr $d@t2;
814900030627         k5lcdt = d@t1;
815000030627         //
815100030627         d@t2 = k5lcnd;
815200030627         exsr $d@t2;
815300030627         k5lcnd = d@t1;
815400030627         //
815500030627         d@t2 = k5lpdt;
815600030627         exsr $d@t2;
815700030627         k5lpdt = d@t1;
815800030627         //
815900030627         d@t2 = k5lsdt;
816000030627         exsr $d@t2;
816100030627         k5lsdt = d@t1;
816200030627         //
816300030627         d@t2 = k5udat;
816400030627         exsr $d@t2;
816500030627         k5udat = d@t1;
816600030627         //
816700030627         d@t2 = rev001;
816800030627         exsr $d@t2;
816900030627         rev001 = d@t1;
817000030627         //
817100030627         d@t2 = rev002;
817200030627         exsr $d@t2;
817300030627         rev002 = d@t1;
817400030627         //
817500030627         d@t2 = rev003;
817600030627         exsr $d@t2;
817700030627         rev003 = d@t1;
817800030627         //
817900030627         d@t2 = rev004;
818000030627         exsr $d@t2;
818100030627         rev004 = d@t1;
818200030627         //
818300030627         d@t2 = rev005;
818400030627         exsr $d@t2;
818500030627         rev005 = d@t1;
818600030627         //
818700030627         d@t2 = rev006;
818800030627         exsr $d@t2;
818900030627         rev006 = d@t1;
819000030627         //
819100030627         d@t2 = rev007;
819200030627         exsr $d@t2;
819300030627         rev007 = d@t1;
819400030627         //
819500030627       endif;
819600030627       //
819700030627       endsr;
819800030627       //
819900030627       //************************************************** $qwe05
820000030627       // edit "?" window fields for format comnt1
820100030627       begsr $qwe05;
820200030627       //
820300030627       if k5cono > *zero;
820400030627         kqcono = %editc(k5cono:'X');
820500030627       else;
820600030627         kqcono = *blanks;
820700030627       endif;
820800030627       //
820900030627       endsr;
821000030627       //
821100030627       //************************************************** $qwe06
821200030627       // edit "?" window fields for format usrcde
821300030627       begsr $qwe06;
821400030627       //
821500030627       if k5cono > *zero;
821600030627         kqcono = %editc(k5cono:'X');
821700030627       else;
821800030627         kqcono = *blanks;
821900030627       endif;
822000030627       //
822100030627       endsr;
822200030627       //************************************************** $qwf01
822300030627       // process "?" windows for format usrcde
822400030627       begsr $qwf06;
822500030627       //
822600030627       //  set common values
822700030627       q#shdn = 'N';
822800030627       q#flag = 'N';
822900030627       q#xflg = 'N';
823000030627       q#hit = *zeros;
823100030627       //
823200030627       // processing for field kqcono
823300030627       q#hit = %scan( '?' : kqcono );
823400030627       if q#hit <> *zeros;
823500030627         //
823600030627         //   re-write screen if not first "?" selected
823700030627         if q#flag = 'Y';
823800030627           // convert mmddyy dates to correct format
823900030627           d@t1 = k5udat;
824000030627           exsr $d@t1;
824100030627           k5udat = d@t2;
824200030627           //
824300030627           write usrcde;
824400030627           //
824500030627           // convert formatted dates back to mmddyy
824600030627           d@t2 = k5udat;
824700030627           exsr $d@t2;
824800030627           k5udat = d@t1;
824900030627           //
825000030627         endif;
825100030627         //
825200030627         //   setup parms for window program
825300030627         q#line = 06;
825400030627         %subst(q#name:1:5) = 'CONO ';
825500030627         q#cono = *zero;
825600030627         q#sbky = *blanks;
825700030627         exsr $wndow;
825800030627         kqcono = q#rtvl;
825900030627         q#flag = 'Y';
826000030627         q#xflg = 'Y';
826100030627         q#hit = *zeros;
826200030627       endif;
826300030627       //
826400030627       w$cono = kqcono;
826500030627       exsr $razco;
826600030627       kqcono = w$cono;
826700030627       k5cono = w#cono;
826800030627       //
826900030627       //
827000030627       endsr;
827100030627       //
827200030627       //************************************************** $wndow
827300030627       // call "?" window sub-program
827400030627       begsr $wndow;
827500030627       //
827600030627       xa200@ = 'Y';
827700030627       q#rtvl = *blanks;
827800030627       //
827900030627       XA200 ( q#shdn : q#line : q#name :
828000030627       q#cono : q#sbky : q#rtvl );
828100030627       //
828200030627       endsr;
828300030627       //
828400030627       //************************************************** $razco
828500030627       //* right adjust zero fill company work field
828600030627       begsr $razco;
828700030627       //
828800030627       if w$cono = *blanks;
828900030627         w$cono = '00';
829000030627         leavesr;
829100030627       endif;
829200030627       //
829300030627       w@@ = *blanks;
829400030627      /end-free
829500030627     C                   movea     w$cono        w@@
829600030627      /free
829700030627       #$ = 2;
829800030627       dow w@@(#$) = *blanks;
829900030627      /end-free
830000030627     C                   sub       1             #$
830100030627      /free
830200030627       enddo;
830300030627       //
830400030627       if #$ <> 2;
830500030627         $# = 2;
830600030627         dow #$ > *zero;
830700030627           w@@($#) = w@@(#$);
830800030627      /end-free
830900030627     C                   sub       1             #$
831000030627     C                   sub       1             $#
831100030627      /free
831200030627         enddo;
831300030627         dow $# > *zero;
831400030627           w@@($#) = '0';
831500030627      /end-free
831600030627     C                   sub       1             $#
831700030627      /free
831800030627         enddo;
831900030627       endif;
832000030627       //
832100030627       for #$ = 1 to 2;
832200030627         if w@@(#$) < '0'
832300030627           or w@@(#$) > '9';
832400030627           w@@(#$) = '0';
832500030627         endif;
832600030627       endfor;
832700030627       //
832800030627      /end-free
832900030627     C                   movea     w@@           w$cono
833000030627      //
833100030627      /free
833200030627       endsr;
833300030627       //
833400030627       //************************************************** $nxinv
833500030627       // fill key for 'next invoice' on paid invoices screen
833600030627       //
833700030627       begsr $nxinv;
833800030627       //
833900030627       //*  initialize fields
834000030627       nomore = *blanks;
834100030627      /end-free
834200030627     C                   move      *all'9'       agedt
834300030627      /free
834400030627       @@inno = *zeros;
834500030627       nxtinv = *blanks;
834600030627       %subst(nxtinv:10:8) = %editc(@@inno:'X');
834700030627       //
834800030627       @@intp = *blanks;
834900030627       @@inno = k4nxin;
835000050225       @@agcc = 99;                                         //#*1x
835100050225       @@agdt = 999999;                                     //#*1x
835200030627       //
835300030627       //*  get aging date for requested invoice number
835400050225       // setll ra1pky arhh1r;
835500050225       // read arhh1r;
835600050225       setgt ra1key arhh1r;                                 //#*1x
835700050225       readp arhh1r;                                        //#*1x
835800030627       *in91 = %eof;
835900030627       cocusc = $5c002;
836000030627       *in91 = (cocus <> cocusc);
836100030627       if *in91 = *on;
836200030627         nomore = 'Y';
836300030627         leavesr;
836400030627       endif;
836500030627       //
836600030627       //*  get record after requested invoice number
836700030627       @@intp = raintp;
836800030627       @@inno = rainno;
836900030627       @@agcc = raagcc;
837000030627       @@agdt = raagdt;
837100050225       //                                                    #*1x
837200050225       // If customer has same invoice with earlier age date, warn  #*1x
837300050225       mic = *blanks;                                      //#*1x
837400050225       if *in91 = *off;                                    //#*1x
837500050225         readp arhh1r;                                     //#*1x
837600050225         *in91 = %eof;                                     //#*1x
837700050225         cocusc = $5c002;                                  //#*1x
837800050225         *in91 = (cocus <> cocusc);                        //#*1x
837900050225         if *in91 = *off;                                  //#*1x
838000050225           *in91 = (@@inno <> rainno);                     //#*1x
838100050225         endif;                                            //#*1x
838200050225         if *in91 = *off;                                  //#*1x
838300050225           mic = '7882';                                   //#*1x
838400050225         endif;                                            //#*1x
838500050225       endif;                                              //#*1x
838600050225       //                                                    #*1x
838700030627       setgt ra0ky1 arhhdr;
838800030627       read arhhdr;
838900030627       *in91 = %eof;
839000030627       cocusc = $5c002;
839100030627       *in91 = (cocus <> cocusc);
839200030627       if *in91 <> *on;
839300030627      /end-free
839400030627     C                   movel     raagcc        agedt
839500030627     C                   move      raagdt        agedt
839600030627      /free
839700030627         %subst(nxtinv:10:8) = %editc(rainno:'X');
839800030627       endif;
839900030627       %subst(nxtinv:1:8) = %editc(agedt:'X');
840000030627       %subst(arhhdl:13:17) = nxtinv;
840100030627       //
840200030627       endsr;
840300030627       //
840400030627       //****************************************************
840500030627       begsr $d@t1;
840600030627       //****************************************************
840700030627       // convert mmddy to user format
840800030627       //
840900030627       // get user format
841000030627       if @usrfc = ' ';
841100030627         @usrfc = '*';
841200030627         ninet@ = *in90;
841300030627         //
841400030627         // system default data
841500030627         uz0key = 'SYSDEFLT';
841600030627         chain uz0key usrfcr;
841700030627         *in90 = not %found;
841800030627         if *in90 = *off;
841900030627           @zdfdt = uzdfdt;
842000030627         endif;
842100030627         //
842200030627         // user data - if date fmt is blank, use sys default
842300030627         chain @suser usrfcr;
842400030627         *in90 = not %found;
842500030627         if uzdfdt = ' ';
842600030627           uzdfdt = @zdfdt;
842700030627         endif;
842800030627         //
842900030627         *in90 = ninet@;
843000030627       endif;
843100030627       //
843200030627       // flip mdy to ymd
843300030627       if uzdfdt = '1';
843400030627         fl@1 = y@r;
843500030627         fl@2 = m@n;
843600030627         fl@3 = d@y;
843700030627       else;
843800030627         // flip mdy to dmy
843900030627         if uzdfdt = '3';
844000030627           fl@1 = d@y;
844100030627           fl@2 = m@n;
844200030627           fl@3 = y@r;
844300030627         else;
844400030627           // move mdy to mdy
844500030627           d@t2 = d@t1;
844600030627         endif;
844700030627       endif;
844800030627       //
844900030627       endsr;
845000030627       //****************************************************
845100030627       begsr $d@t2;
845200030627       //****************************************************
845300030627       // convert user format to mmddyy
845400030627       //
845500030627       // flip ymd to mdy
845600030627       if uzdfdt = '1';
845700030627         y@r = fl@1;
845800030627         m@n = fl@2;
845900030627         d@y = fl@3;
846000030627       else;
846100030627         // flip dmy to mdy
846200030627         if uzdfdt = '3';
846300030627           d@y = fl@1;
846400030627           m@n = fl@2;
846500030627           y@r = fl@3;
846600030627         else;
846700030627           // move mdy to mdy
846800030627           d@t1 = d@t2;
846900030627         endif;
847000030627       endif;
847100030627       //
847200030627       endsr;
847300030627       //***************************************************** $mark
847400030627       // mark invoices for payment
847500030627       begsr $mark;
847600030627       //
847700030627       @@mark = 'Y';
847800030627       //
847900030627      /end-free
848000030627     C                   move      co1#          c$cono
848100030627     C                   move      cu1#          c$csno
848200030627      /free
848300030627       c$intp = tp1#;
848400030627      /end-free
848500030627     C                   move      in1#          c$inno
848600030627      /free
848700030627       //
848800030627       //* if called from pos move in pos values
848900030627       if caltp$ = 'P';
849000030627         p@psst = llpsst;
849100030627         p@pstm = llpstm;
849200030627         p@psdr = llpsdr;
849300030627         p@clrk = llclrk;
849400030627       else;
849500030627         p@psst = *blanks;
849600030627         p@pstm = '00000';
849700030627         p@psdr = '000';
849800030627         p@clrk = *blanks;
849900030627       endif;
850000030627       //
850100030627       //*issue mic if g/l system options are not set up
850200030627       x9comp = *zero;
850300030627       x9appl = 'GL';
850400030627       %subst(obj@:1:5) = 'GLIVE';
850500030627       %subst(lib@:1:7) = '*LIBL  ';
850600030627       typ@ = '*FILE  ';
850700030627       flag@ = '1';
850800030627       TPCKOBJP ( obj@ : lib@ : typ@ : flag@ );
850900030627       if flag@ = '0';
851000030627         x9appl = 'G2';
851100030627       endif;
851200030627       x9ckey = 'OPTIONS';
851300030627       chain ctlky orctl;
851400030627       *in60 = not %found;
851500030627       if *in60 = *on;
851600030627         mic = '6668';
851700030627         leavesr;
851800030627       endif;
851900030627       //
852000030627       //*issue mic if the g/l transfer definition is not set up
852100030627       x9comp = k5cono;
852200030627       x9appl = 'GL';
852300030627       if flag@ = '0';
852400030627         x9appl = 'G2';
852500030627       endif;
852600030627       x9ckey = 'GLXATRN';
852700030627       chain ctlky orctl;
852800030627       *in60 = not %found;
852900030627       if *in60 = *on;
853000030627         mic = '6669';
853100030627         leavesr;
853200030627       endif;
853300030627       //
853400030627       //  invoice in use can not mark
853500030627       chain(n) rh0key ardhd;
853600030627       *in90 = not %found;
853700030627       if *in90 = *off;
853800030627         if rhws02 <> ' '
853900030627           and rhws02 <> ws;
854000030627           mic = '2186';
854100030627           leavesr;
854200030627         endif;
854300030627         //
854400030627         //  invoice in has no balance can not mark
854500030627         if rhinbl = 0
854600030627           and iclive <> 'Y';
854700030627           mic = '6252';
854800030627           leavesr;
854900030627         endif;
855000030627         //
855100030627       endif;
855200030627       //
855300030627       // marked invoices must be in the same currency
855400030627       if iclive = 'Y';
855500030627         //
855600030627         chain rh0key icrdhdr;
855700030627         *in90 = not %found;
855800030627         if *in90 = *off;
855900030627           //
856000030627           if rhinbt = 0;
856100030627             mic = '6252';
856200030627             leavesr;
856300030627           endif;
856400030627           @@curr = rhcurr;
856500030627         else;
856600030627           //
856700030627           if rhinbl = 0;
856800030627             mic = '6252';
856900030627             leavesr;
857000030627           endif;
857100030627           @@curr = @dftcr;
857200030627         endif;
857300030627         //
857400030627      /end-free
857500030627     C                   move      co1#          m$cono
857600030627     C                   move      cu1#          m$csno
857700030627      /free
857800030627         setll am0pky armrk;
857900030627         reade(n) am0pky armrk;
858000030627         *in90 = %eof;
858100030627         dow *in90 = *off;
858200030627           c$cono = amcono;
858300030627           c$csno = amcsno;
858400030627           c$intp = amintp;
858500030627           c$inno = aminno;
858600030627           chain rh0key icrdhdr;
858700030627           *in90 = not %found;
858800030627           if *in90 = *off;
858900030627             @qpcur = rhcurr;
859000030627           else;
859100030627             @qpcur = @dftcr;
859200030627           endif;
859300030627           //
859400030627           if @qpcur <> @@curr;
859500030627             mic = '6228';
859600030627             leavesr;
859700030627           endif;
859800030627           //
859900030627           reade(n) am0pky armrk;
860000030627           *in90 = %eof;
860100030627         enddo;
860200030627         //
860300030627         //* for pos custoemr cur must = company curr
860400030627         if caltp$ = 'P';
860500030627           if cmcurr <> @dftcr
860600030627             or @@curr <> @dftcr;
860700030627             mic = '6762';
860800030627             leavesr;
860900030627           endif;
861000030627         endif;
861100030627         //
861200030627       endif;
861300030627       //
861400030627       // update ar marked invoice file - armrk
861500030627       mk = 4 + rn;
861600030627      /end-free
861700030627     C                   move      co1#          m$cono
861800030627     C                   move      cu1#          m$csno
861900030627      /free
862000030627       m$intp = tp1#;
862100030627      /end-free
862200030627     C                   move      in1#          m$inno
862300030627      /free
862400030627       chain am0key armrk;
862500030627       *in90 = not %found;
862600030627       //
862700030627       if *in90 = *off;
862800030627         @@ws02 = *blanks;
862900030627         delete armrkr;
863000030627         *in(mk) = *off;
863100030627       else;
863200030627      /end-free
863300030627     C                   move      co1#          amcono
863400030627     C                   move      cu1#          amcsno
863500030627      /free
863600030627         amintp = tp1#;
863700030627      /end-free
863800030627     C                   move      in1#          aminno
863900030627      /free
864000030627         amws02 = ws;
864100030627         @@ws02 = ws;
864200030627         write armrkr;
864300030627         *in(mk) = *on;
864400030627       endif;
864500030627       //
864600030627       // update in-use work station in ardhd
864700030627       c$cono = amcono;
864800030627       c$csno = amcsno;
864900030627       c$intp = amintp;
865000030627       c$inno = aminno;
865100030627       chain rh0key ardhd;
865200030627       *in90 = not %found;
865300030627       if *in90 = *off;
865400030627         rhws02 = @@ws02;
865500030627         update ardhdr;
865600030627       endif;
865700030627       //
865800030627       endsr;
865900030627       //***************************************************** $inuse
866000030627       // clear in use flag and delete armrk record for ar quick pay
866100030627       begsr $clrmk;
866200030627       //
866300030627       setll ws armrk;
866400030627       reade ws armrk;
866500030627       *in90 = %eof;
866600030627       dow *in90 = *off;
866700030627         //
866800030627         c$cono = amcono;
866900030627         c$csno = amcsno;
867000030627         c$intp = amintp;
867100030627         c$inno = aminno;
867200030627         chain rh0key ardhd;
867300030627         *in92 = not %found;
867400030627         if *in92 = *off;
867500030627           if rhws02 = ws;
867600030627             rhws02 = *blanks;
867700030627           endif;
867800030627           update ardhdr;
867900030627         endif;
868000030627         //
868100030627         delete armrkr;
868200030627         //
868300030627         reade ws armrk;
868400030627         *in90 = %eof;
868500030627       enddo;
868600030627       //
868700030627       %subst(ws4:1:2) = ws;
868800030627       setll ws4 arhc2;
868900030627       reade ws4 arhc2;
869000030627       *in90 = %eof;
869100030627       dow *in90 = *off;
869200030627         clear zxbch#;
869300030627         update arhc2r;
869400030627         reade ws4 arhc2;
869500030627         *in90 = %eof;
869600030627       enddo;
869700030627       //*
869800030627       chain ws arpa1;
869900030627       *in90 = not %found;
870000030627       if *in90 = *off;
870100030627         if a1ws02 = ws;
870200030627           a1ws02 = *blanks;
870300030627         endif;
870400030627         update arpa1r;
870500030627       endif;
870600030627       *in05 = *off;
870700030627       *in06 = *off;
870800030627       *in07 = *off;
870900030627       *in08 = *off;
871000030627       *in09 = *off;
871100030627       *in10 = *off;
871200030627       *in11 = *off;
871300030627       *in12 = *off;
871400030627       //
871500030627       endsr;
871600040713
871700040924       // #*1u - beg of add
871800040621       //***************************************************** $ar203
871900040621       // call ar203 customer comment sub program
872000040621       begsr $ar203;
872100040621
872200040624       out lda;
872300040716       detyp = *blanks;                                    // #*1u
872400040624       ar203@ = 'Y';
872500040621       co2# = %subst(cusblk:1:2);
872600040621       cu2# = %subst(cusblk:3:10);
872700040621       AR203 ( shtdn : callpgm : co2# : cu2# : detyp : intp$ :
872800040624             inno$ : dt2# : arcr : cmtyp$);
872900040624       in lda;
873000040624       if crflag = 'T';
873100040624         *in30 = *on;
873200040624         k2cur1 = @tsymo;
873300040624         k2cur2 = @tsymo;
873400040624         k2cur3 = @tsymo;
873500040624         k2cur4 = @tsymo;
873600040624         k2curr = cmcurr;
873700040624         k2crds = @tdesc;
873800040624       else;
873900040624         k2cur1 = @lsymo;
874000040624         k2cur2 = @lsymo;
874100040624         k2cur3 = @lsymo;
874200040624         k2cur4 = @lsymo;
874300040624         k2curr = @dftcr;
874400040624         k2crds = @ldesc;
874500040624         *in30 = *off;
874600040624       endif;
874700040621
874800040702       // load customer summary information
874900040702      /end-free
875000040702     C                   move      co2#          k5cono
875100040702     C                   move      cu2#          k5csno
875200040702      /free
875300040702       clear hcocus;
875400040702       exsr $edcus;
875500040702
875600040621       endsr;
875700040924       // #*1u - beg of add
875800040713
875900030627       //****************************************************
876000030627      /end-free
876100030627** MSC **
876200030627Open Item
876300030627Balance Forward
876400030627Balance:
876500030627Amount:
876600030627DISPUTED INVOICE
