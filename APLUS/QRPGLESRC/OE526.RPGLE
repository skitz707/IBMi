000100000000      /COPY QCPYSRC,H_SPEC
000110040408      // #*8x - beginning of add                       #*8x
000120040408     H BNDDIR('OE526')
000130040408      // #*8x - end of add                             #*8x
000140030602      //***************************************************************
000150030602      //***************************************************************
000160030602      //**                                                          ***
000170030602      //*                program modifications log                   **
000180030602      //*                =========================                   **
000190030602      //*                                                            **
000200030602      //*  #*8j:  rel6.00:  04/01/03:  0605:  dle001  v6.0c00        **
000210030602      //*  converted to rpgiv - all prior markings removed           **
000220030602      //*                                                            **
000230030815      //*  #*8k:  rel5.01:  05/01/03:  1217:  i308586  v5.0c19       **
000240030602      //*  invoice not printing in warehouse location sequence when  **
000250030602      //*  specified if stock to dock was turned on. reprint from    **
000260030602      //*  history not printing in original sequence.                **
000270030602      //*                                                            **
000280030815      //*  #*8l:  rel5.01:  05/27/03:  1217:  scr3069  v5.0c19       **
000290030602      //*  changed form@work fax subject field to include company/   **
000300030602      //*  invoice number.                                           **
000310030717      //*                                                            **
000320030815      //*  #*8m:  rel5.01:  07/17/03:  0627:  i310993  v5.0c20       **
000330030717      //*  oe402 not shutdown, leaving file xjlwsid1 in use.         **
000340030717      //*  Corrected.                                                **
000350030820      //*                                                            **
000360030820      //*  #*8n:  rel5.01:  08/20/03:  0627:  t31636  v5.0c21        **
000370030820      //*  When print a range of invoices, form type 2, benchmark    **
000380030820      //*  totals sometimes printing for currencies with print       **
000390030820      //*  benchmark = N. Also gst registration line overlaid by     **
000400030820      //*  benchmark total. Corrected.                               **
000410030820      //*                                                            **
000420030820      //*  #*8o:  rel5.01:  08/20/03:  0114:  i308808  v5.0c21       **
000430030820      //*  Not all invoices were being generated for orders.         **
000440030820      //*  Result of an order going on credit card hold.             **
000450030911      //*                                                            **
000460030911      //*  #*8p:  rel5.01:  09/11/03:  0520:  i314889  v5.0c21       **
000470030911      //*  Added logic to not tax an order thourgh vertex if the     **
000480030911      //*  order was on credit card hold.                            **
000490031209      //*                                                            **
000500031210      //*  #*8q:  rel6.01:  12/09/03:  0725:  doe081   v6.0c04       **
000510031217      //*  Immediate returns were being processed for 'R' type       **
000520031217      //*  orders only.  Changed to process immediate returns logic  **
000530031217      //*  if the quantity ordered is negative for an item.          **
000540031217      //*                                                            **
000550031216      //*  #*8r:  rel5.01:  12/16/03:  6613:  i319728  v5.0c22       **
000560031216      //*  Corrections made for readability purposes.  Indented the  **
000570031216      //*  item description(s), customer ordering u/m, and original  **
000580031216      //*  item number.  Also moved the second description to be     **
000590031216      //*  next to the first description.                            **
000600040112      //*                                                            **
000610040112      //*  #*8s:  rel5.01:  01/05/04:  0627:  i320017  v5.0c23       **
000620040112      //*  When using return to vendor processing, incorrectly       **
000630040112      //*  adding items with positive qty to rvlog file. Corrected.  **
000640040120      //*                                                            **
000650040120      //*  #*8t:  rel5.01:  01/20/04:  0823:  i320343  v5.0c23       **
000660040120      //*  Backorders are being created with no line items on them,  **
000670040120      //*  but with order comments on them.  Corrected.              **
000680040317      //*                                                            **
000690040317      //*  #*8v:  rel5.01:  03/17/04:  6613:  i324096  v5.0c24       **
000700040317      //*  For security purposes, the credit card number will only   **
000710040317      //*  display the last 4 digits of the number on the report.    **
000720040317      //*  Corrected to mask the number when electronic payments     **
000730040317      //*  is not live.                                              **
000740040323      //*                                                            **
000750040323      //*  #*8w:  rel5.01:  03/23/04:  0823:  i323155  v5.0c24       **
000760040323      //*  No invoices were being selected, if printing just by      **
000770040323      //*  route.  Corrected.                                        **
000780040408      //*                                                            **
000790040408      //*  #*8x:  rel6.01:  12/04/03:  0605:  dxa058  v6.0c05        **
000800040408      //*  Replaced use of secty  with new security functions        **
000810040408      //*  Added Company and/or Warehouse authorization functions.   **
000820040408      //*  These functions are found in the security service         **
000830040408      //*  program XA950S                                            **
000840040408      //*                                                            **
000850040408      //*  #*8y:  rel6.01:  04/07/04:  0725:  dwm037   v6.0c05       **
000860040408      //*  Changed to print lot/serial information from the wmdls    **
000870040408      //*  file for drop shipments.                                  **
000880040614      //*                                                            **
000890040614      //*  #*8z:  rel6.01:  03/25/04:  0507:  dcg003   v6.0c06       **
000900040614      //*  add logic to submit the invoice XML request               **
000910040724      //*                                                            **
000920040724      //*  #*9a:  rel6.01:  07/23/04:  6613:  I331779  v6.0c07       **
000930040724      //*  When printing the invoice for a POS order, use the same   **
000940040724      //*  tax rate used during the originial POS order.  This way   **
000950040724      //*  an out of balance condition in A/R will not occur.        **
000960040723      //*                                                            **
000970040723      //*  #*9b:  rel6.01:  07/26/04:  0520:  I331896  v6.0c07       **
000980040723      //*  Changed updated statement to correctly move @1ipsq into   **
000990040723      //*  odipsq and not the other way around.                      **
001000041020      //*                                                            **
001010041020      //*  #*9c:  rel6.01:  10/14/04:  0823:  t31952   v6.0c08       **
001020041020      //*  If order type is an 'I', 'move stock to dock' is yes and  **
001030041020      //*  'default invoice seq' is primary loc seq, move wvpksq to  **
001040041020      //*  odipsq.                                                   **
001050050315      //*                                                            **
001060050315      //*  #*9d:  rel6.01:  01/04/05:  8802:  dps014   v6.0c09       **
001070050315      //*  Adjust deposit amount if generated from POS.              **
001080050221      //*                                                            **
001090050222      //*  #*9e:  rel6.01:  02/21/05:  6613:  i340914  v6.0c10       **
001100050221      //*  When printing a batch of invoices, there were some that   **
001110050221      //*  were being emailed that should not have.  Corrected.      **
001120050301      //*                                                            **
001130050301      //*  #*9f:  rel6.01:  03/01/05:  6613:  i342730  v6.0c09       **
001140050301      //*  When EP is not live and the credit card number entered    **
001150050301      //*  is 18 long (max), the whole number is printing on the     **
001160050301      //*  invoice instead of the last 4 digits.  Corrected.         **
001170050301      //*                                                            **
001180050301      //*  #*9g:  rel6.01:  03/01/05:  0114:  t33862   v6.0c09       **
001190050301      //*  When GL is not installed getting decimal data error.      **
001200050414      //*                                                            **
001210050414      //*  #*9h:  rel6.01:  03/14/05:  9605:  t33987   v6.0c10       **
001220050414      //*  FOB information printed for every detail line and it      **
001230050414      //*  should only print once for each sales order for           **
001240050414      //*  consolidate invoices.  Corrected.                         **
001250050526      //*                                                            **
001260050526      //*  #*9i:  rel7.00:  05/26/05:  0806:  t33902   v7.0c00       **
001270050630      //*  Added page number logic to invoice print and email        **
001280050706      //*  attachment and fax.                                       **
001290050615      //*                                                            **
001300050615      //*  #*9j:  rel7.00:  06/15/05:  0520:  I347428  v7.0c00       **
001310050615      //*  Consolidated Bill Hold Code was not getting filled in     **
001320050615      //*  after enhancement doe081 was completed.                   **
001330051103      //*                                                            **
001340051103      //*  #*9k:  rel7.01:  11/03/05:  9002:  T34634   v7.0c01       **
001350051103      //*  fix 9j changed the consolidated invoice code to the hold  **
001360051103      //*  code when invoicing for order activity.  Corrected to     **
001370051103      //*  put the cons inv code in the notes field instead of the   **
001380051103      //*  hold code.                                                **
001390051110      //*                                                            **
001400051110      //*  #*9l:  rel7.01:  11/10/05:  0806:  T34601   v7.0c01       **
001410051110      //*  Invoice print time should be zeros for consolidated order **
001420051110      //*  changing from status 3 to 4.                              **
001430000000      //**                                                          ***
001440000000      //***************************************************************
001450000000      //***                  application plus                      ****
001460000000      //*                    ================                        **
001470000000      //*                                                            **
001480000000      //*           program name:   oe526 (native)                   **
001490000000      //*                                                            **
001500000000      //*           program date:   june  1988                       **
001510000000      //*                                                            **
001520000000      //*           description:    print invoice program            **
001530000000      //*                                                            **
001540000000      //*                                                            **
001550000000      //*           (c) 1992-2004 Infor Global Solutions             **
001560000000      //*                                                            **
001570000000      //*                                                            **
001580000000      //*      this program prints invoices (and a manifest if a     **
001590000000      //*      route is specified) from the open order files         **
001600000000      //*      based on the selection criteria entered in oe520 and  **
001610000000      //*      passed through the lda.                               **
001620000000      //*                                                            **
001630000000      //*    indicator summary                                       **
001640000000      //*                                                            **
001650000000      //*      u1 - use alt index orhe1-type/status/wh/co/order      **
001660000000      //*      u2 - use alt index orhe3-wh/route/stop/co/order       **
001670000000      //*      u3 - use alt index orhe12-ctl#,co,csno,orno,gen
001680000000      //*      u5 - good report-no need to send message              **
001690000000      //*      u6 - called from order entry                          **
001700000000      //*                                                            **
001710000000      //*      of - overflow for invoice                             **
001720000000      //*      oa - overflow for credit manifest                     **
001730000000      //*                                                            **
001740000000      //*      01 - orhe1 input file                                 **
001750000000      //*      02 - orhe3 input file                                 **
001760000000      //*      03 - orhe12 input file                                **
001770000000      //*      04 -                                                  **
001780000000      //*      05 -                                                  **
001790000000      //*      06 -                                                  **
001800000000      //*      07 -                                                  **
001810000000      //*      08 -                                                  **
001820000000      //*      09 -                                                  **
001830000000      //*                                                            **
001840000000      //*      10 -                                                  **
001850000000      //*      11 -                                                  **
001860000000      //*      12 - print real order generation from cixrf
001870000000      //*      13 -                                                  **
001880000000      //*      14 - due date is greater than zero                    **
001890000000      //*      15 - a/r cash discount percent not 0                  **
001900000000      //*      16 - taxable                                          **
001910000000      //*      17 - cash discount applies                            **
001920000000      //*      18 - federal excise tax applies                       **
001930000000      //*      19 - container charge applies                         **
001940000000      //*                                                            **
001950000000      //*      20 - trade discount applies                           **
001960000000      //*      21 - sales tax applies                                **
001970000000      //*      22 - blank credit card number                         **
001980000000      //*      23 - blank quantity b/o, b/o accepted                 **
001990000000      //*      24 - invoice header - no                              **
002000000000      //*      25 - catch weight - no                                **
002010000000      //*      26 - print previous order info for ci
002020000000      //*      27 -                                                  **
002030000000      //*      28 -                                                  **
002040000000      //*      29 - email invoice
002050000000      //*                                                            **
002060000000      //*      30 - fax forms name specified
002070000000      //*      31 - print this invoice
002080000000      //*      32 - fax this invoice
002090000000      //*      33 - fax cover sheet name specified
002100000000      //*      34 - fax notes are specified
002110000000      //*      35 -                                                  **
002120000000      //*      36 - print headings on fax invoice
002130000000      //*      37 - printing a single invoice
002140000000      //*      38 - customer nickname is entered
002150000000      //*      39 - international code entered in prompt
002160000000      //*                                                            **
002170000000      //*      40 -                                                  **
002180000000      //*      41 -                                                  **
002190000000      //*      42 - consolidated invoices
002200000000      //*      43 - fax priority code entered on cover sheet
002210000000      //*      43 -                                                  **
002220000000      //*      44 - print benchmark totals
002230000000      //*      45 - print second item description                    **
002240000000      //*      46 - second item description is blank                 **
002250000000      //*      47 - print deposit amount
002260000000      //*      48 - print deposit column heading
002270000000      //*      49 -                                                  **
002280000000      //*                                                            **
002290000000      //*      50 - taxable                                          **
002300000000      //*      51 - credit memo                                      **
002310000000      //*      52 -                                                  **
002320000000      //*      53 -                                                  **
002330000000      //*      54 -                                                  **
002340000000      //*      55 - print msds message                               **
002350000000      //*      56 - print customer u/m
002360000000      //*     n57 - print detail line
002370000000      //*      58 - print tax id #
002380000000      //*      59 -                                                  **
002390000000      //*                                                            **
002400000000      //*      60 - end of read                                      **
002410000000      //*      61 -                                                  **
002420000000      //*      62 -                                                  **
002430000000      //*      63 -                                                  **
002440000000      //*      64 - print original item as well as ours
002450000000      //*      65 - print original item in place of ours
002460000000      //*      66 - only print fob description once on header.
002470000000      //*      67 -                                                  **
002480000000      //*      68 - print optio api
002490000000      //*      69 - optio invoice
002500000000      //*                                                            **
002510000000      //*      70 -                                                  **
002520000000      //*      71 - print gst tax amount
002530000000      //*      72 - print pst tax amount
002540000000      //*      73 - print gst registration #
002550000000      //*      74 -                                                  **
002560000000      //*      75 -                                                  **
002570000000      //*      76 - re-print                                         **
002580000000      //*      77 - re-print from history                            **
002590000000      //*      78 -                                                  **
002600000000      //*      79 -                                                  **
002610000000      //*                                                            **
002620000000      //*      80 - first time for manifest headings                 **
002630000000      //*      81 -                                                  **
002640000000      //*      82 -                                                  **
002650000000      //*      83 -                                                  **
002660000000      //*      84 -                                                  **
002670000000      //*      85 -                                                  **
002680000000      //*      86 - form type 2
002690000000      //*      87 -                                                  **
002700000000      //*      88 -                                                  **
002710000000      //*                                                            **
002720000000      //*      90 - general purpose/reverse image error message      **
002730000000      //*      91 - used in date conversion                          **
002740000000      //*      92 - used in date conversion                          **
002750000000      //*      93 -                                                  **
002760000000      //*      94 -                                                  **
002770000000      //*      95 -                                                  **
002780000000      //*      96 -                                                  **
002790000000      //*      97 -                                                  **
002800000000      //*      98 -                                                  **
002810000000      //*      99 - first cycle                                      **
002820000000      //*                                                            **
002830000000      //*                                                            **
002840000000      //*                                                            **
002850000000      //*                                                            **
002860000000      //***                                                        ****
002870000000      //*****                                                    ******
002880000000      //***************************************************************
002890000000      //***************************************************************
002900000000      // a+ open order detail  pgm prefix: od
002910000000     Fordet     uf   e           k disk
002920000000      // a+ order detail logical-co, order, gen, inv seq, line  pgm prefix: od
002930000000     Forde1i    uf   e           k disk
002940000000     F                                     rename(ordetr:orde1ir)
002950000000      // a+ order header file  pgm prefix: oh
002960000000     Forhed     uf   e           k disk
002970000000      // a+ order header logical-type, status ,wh,co,ord#  pgm prefix: oh
002980000000     Forhe1     uf   e           k disk
002990000000     F                                     rename(orhedr:orhe1r)
003000000000      // a+ order header log - wh, route,stop,co,order no  pgm prefix: oh
003010000000     Forhe3     uf   e           k disk
003020000000     F                                     rename(orhedr:orhe3r)
003030000000     Forctl     uf a f  256    11aidisk    keyloc(1)
003040000000      // a+ customer master  pgm prefix: cm
003050000000     Fcusms     uf   e           k disk
003060000000      // a+ back order creation file  pgm prefix: bo
003070000000     Fbocrt     uf a e           k disk
003080000000      // a+ item master  pgm prefix: im
003090000000     Fitmst     if   e           k disk
003100000000      // ob bill of material parents  pgm prefix: bp
003110000000     Fbompr     if   e           k disk
003120000000      // ob bill of material components  pgm prefix: bc
003130000000     Fbomco     if   e           k disk
003140000000      // wm location reservations file  pgm prefix: wv
003150000000     Fwmrsv     if   e           k disk
003160000000      // wm log. of wmbal by item,wh,assign seq,loc,lot-ser  pgm prefix: wb
003170000000     Fwmba1     if   e           k disk
003180000000     F                                     rename(wmbalr:wmba1r)
003190000000      // wm location master file  pgm prefix: wl
003200000000     Fwmloc     if   e           k disk
003210000000      // wm location receipts lot/serial number file  pgm prefix: wn
003220000000     Fwmrls     if   e           k disk
003230000000      // wm pick quantities  pgm prefix: wk
003240000000     Fwmpck     uf a e           k disk
003250000000      //
003260000000      // wm box header file logical by compamy/order/gen/box pgm prefix: bh
003270000000     Foebh1     if   e           k disk
003280000000      //
003290000000      // oe invoiced warehouse transfer file  pgm prefix: ot
003300000000     Foewtr     if a e           k disk
003310000000     Fithaz     if   e           k disk
003320000000     Fimaum     if   e           k disk
003330000000     Ficordt    uf   e           k disk    usropn
003340000000     Ficorhd    uf   e           k disk    usropn
003350000000      // a+ extended item comments file
003360000000     Fiaeic     if   e           k disk
003370000000      // a+ ship-to address file     pgm prefix: sa
003380000000     Faddr      if   e           k disk
003390000000     Fapprtinv  o    f  132        printer oflind(*inof)
003400000000     Fapprtimf  o    f  132        printer oflind(*inoa)
003410000000     Fapfaxinv  o    f   83        printer oflind(*inoe)
003420000000      // consolidated invoice hld file pgm prefix: ci
003430000000     Fcihld     uf   e           k disk
003440000000      // a+ order header logical-inv#,co,csno,orno,orgn pgm prefix: oh  h
003450000000     Forhe12    uf   e           k disk
003460000000     F                                     rename(orhedr:orhe12r)
003470000000      // customer comments file        pgm prefix: co
003480000000     Fcscom     if   e           k disk
003490000000      // oe immediate return to inventory file   prefix:o@
003500000000     Foeret     if a e           k disk
003510000000      // ic customer master extension file        pgm prefix: cm
003520000000     Ficcsms    uf   e           k disk    usropn
003530000000      // a+ default date format  pgm prefix: uz
003540000000     Fusrfc     if   e           k disk
003550000000     Fapprtin2  o    f  132        printer oflind(*inob)
003560000000     F                                     usropn
003570000000     Fapprtmf2  o    f  132        printer oflind(*inoc)
003580000000     Fapfaxin2  o    f   83        printer oflind(*inod)
003590000000     Fapprtin3  o    f  132        printer usropn
003600000000     Fapprtin4  o    f  132        printer usropn
003610000000      // a+ customer email file  pgm prefix: ce
003620000000     Fcseml     if   e           k disk
003630000000      // immediate returns work file             prefix: w9
003640000000     Foeimm     if   e           k disk
003650000000      // consolidated invoice holding file       prefix: cx
003660000000     Fcixrf     if   e           k disk
003670000000      // po wh transfer options  pgm prefix: px
003680000000     Fpowt1     if   e           k disk
003690000000     F                                     rename(powtrr:powt1r)
003700000000      // forms@work options file  pgm prefix: fw
003710000000     Ffwopt     if   e           k disk
003720000000      // forms@work output queue file  pgm prefix: fo
003730000000     Ffwout     if   e           k disk
003740000000      // email custom forms file  pgm prefix: em
003750000000     Femldfts   if   e           k disk
003760040408
003770040408      // #*8x - del  // a+ security file  pgm prefix: ys
003780040408      // #*8x - del Fsecty     if   e           k disk
003790040408
003800000000      // user email address
003810000000     Fuseml     if   e           k disk
003820000000      // mail server header      eh
003830000000     Fmshed     uf   e           k disk
003840000000      // mail server detail      ed
003850000000     Fmsdet     uf   e           k disk
003860040614      // #*8z - beg of add
003870040614      // gateway xml options         pgm prefix: gc
003880040614     Fgwcus     if   e           k disk
003890040614      // gateway outboudn documents  pgm prefix: go
003900040614     Fgwout     uf   e           k disk
003910040614      // #*8z - end of add
003920000000      // order control file
003930000000     Forct1     if   e           k disk
003940000000     F                                     rename(orctlr:orct1r)
003950040408      // #*8y - begin add
003960040408      // drop shipment lot/serial logical
003970040408     Fwmdl1     if   e           k disk
003980040408     F                                     rename(wmdlsr:wmdl1r)
003990040408      // #*8y - end add
004000050315      // #*9d- beg add
004010050315      // point of sale deposit prefix: s7
004020050315     Fpsdep1    uf   e           k disk
004030050315      // point of sale payment prefix: s2
004040050315     Fpspa2     if   e           k disk
004050050315      // #*9d- end add
004060000000      //
004070000000      //---------------------------------------------------------------
004080000000     D dsh             s              1    dim(101)                             print lines ----
004090000000     D dshm            s              1    dim(85)                              print lines ----
004100000000     D dsh@            s              1    dim(83)                              print lines ----
004110000000     D dshm2           s              1    dim(82)                              print lines ----
004120000000      //
004130000000     D csl             s             34    dim(9)                               sold to name/addr
004140000000     D csh             s             34    dim(9)                               ship to name/addr
004150000000     D sh              s             34    dim(9)                               work ship to
004160000000     D spr             s              1    dim(30)                              stat/province
004170000000     D zpc             s              1    dim(10)                              zip/postal
004180000000     D wk10            s              1    dim(10)
004190000000      //
004200000000     D unvm            s             62    dim(3)                               universal mess. line
004210000000     D msg             s             26    dim(1) ctdata perrcd(1)              messages
004220000000     D dys             s              2  0 dim(12) ctdata perrcd(12)            days in month
004230000000     D dyx             s              2  0 dim(12) ctdata perrcd(12)            " non leap year
004240000000      //
004250000000     D srn             s              1    dim(20)                              serial # work
004260000000     D sn1             s              1    dim(70)                              serial # hold
004270000000     D sn2             s              1    dim(70)                              serial numbers
004280000000     D box             s              5    dim(8)                               box    numbers
004290000000     D ina             s             17    dim(20)                              in - alpha
004300000000     D len             s              4    dim(20)                              length
004310000000     D err             s              1    dim(20)                              err flag
004320000000     D ota             s             17    dim(20)                              out - alpha
004330000000     D inn             s             17  5 dim(20)                              in - num
004340000000     D otn             s             17  5 dim(20)                              out - num
004350000000     D ady             s              3  0 dim(12)                              split no of days
004360000000     D apc             s              5  2 dim(12)                              split percentage
004370000000     D wdy             s              3  0 dim(12)                              split no of days
004380000000     D wpc             s              5  2 dim(12)                              split percentage
004390040317      // #*8v - beg of add
004400040317     D cc              s              1    dim(18)                              stat/province
004410040317      // #*8v - end of add
004420000000      //* named constants
004430000000      //
004440000000     D #fax            c                   const('**** TRANSMITTED VIA-
004450000000     D                                      FAX ****  ')
004460000000     D #edi            c                   const('**** TRANSMITTED VIA-
004470000000     D                                      EDI ****  ')
004480000000     D #both           c                   const('**** TRANSMITTED FAX-
004490000000     D                                      & EDI ****')
004500000000     D #invce          c                   const('Invoice')
004510000000     D #fxsvr          c                   const('|faxserver=')
004520000000     D #esevr          c                   const('|eserver=')
004530000000     D #fxtyp          c                   const('OPTIOFAX')
004540000000     D #eatth          c                   const('|eattach=')
004550000000     D #esubj          c                   const('|esubject=')
004560000000     D #ebody          c                   const('|ebody=')
004570000000      //---------------------------------------------------------------
004580000000     D                 ds
004590000000     D ohcspo                        22
004600000000     D  cspo@                        20    overlay(ohcspo)
004610000000     D                 ds
004620000000     D nxprdt                         8  0
004630000000     D  nxpcc                         2  0 overlay(nxprdt)
004640000000     D  nxpyr                         2  0 overlay(nxprdt:3)
004650000000     D  nxpmn                         2  0 overlay(nxprdt:5)
004660000000     D  nxpdy                         2  0 overlay(nxprdt:7)
004670000000     D                 ds
004680000000     D hed1ky                        11
004690000000     D  type1                         1    overlay(hed1ky)
004700000000     D  stat1                         1    overlay(hed1ky:2)
004710000000     D  whse1                         2    overlay(hed1ky:3)
004720000000     D  comp1                         2  0 overlay(hed1ky:5)
004730000000     D  ord1                          5    overlay(hed1ky:7)
004740000000     D                 ds
004750000000     D hed3ky                        16
004760000000     D  whse3                         2    overlay(hed3ky)
004770000000     D  rte3                          4    overlay(hed3ky:3)
004780000000     D  rstp3                         3  0 overlay(hed3ky:7)
004790000000     D  comp3                         2  0 overlay(hed3ky:10)
004800000000     D  ord3                          5    overlay(hed3ky:12)
004810000000     D                 ds
004820000000     D newdt                          6  0
004830000000     D  nmth                          2  0 overlay(newdt)
004840000000     D  nday                          2  0 overlay(newdt:3)
004850000000     D  nyr                           2  0 overlay(newdt:5)
004860000000     D                 ds
004870000000     D comcus                        12  0
004880000000     D  comno@                        2  0 overlay(comcus)
004890000000     D  cusnr@                       10  0 overlay(comcus:3)
004900000000     D                 ds
004910000000     D wrkdt                          6  0
004920000000     D  yy                            2  0 overlay(wrkdt)
004930000000     D  mm                            2  0 overlay(wrkdt:3)
004940000000     D  dd                            2  0 overlay(wrkdt:5)
004950000000     D                 ds
004960000000     D ctlkey                        11
004970000000     D  compny                        2  0 overlay(ctlkey)
004980000000     D  applic                        2    overlay(ctlkey:3)
004990000000     D  ctlnm                         7    overlay(ctlkey:5)
005000000000     D                 ds
005010000000     D parkey                        49
005020000000     D  odcono                        2  0 overlay(parkey)
005030000000     D  odcsno                       10  0 overlay(parkey:3)
005040000000     D  pkey2                        37    overlay(parkey:13)
005050000000     D   b5                           5    overlay(pkey2)
005060000000     D   z5                           5  0 overlay(pkey2:6)
005070000000     D   oditno                      27    overlay(pkey2:11)
005080000000     D    $2c002                      1    overlay(oditno)
005090000000     D    $2c003                      1    overlay(oditno:2)
005100000000      //
005110000000      // date fields
005120000000     D                 ds
005130000000     D d@t1                           6  0
005140000000     D  m@n                           2    overlay(d@t1)
005150000000     D  d@y                           2    overlay(d@t1:3)
005160000000     D  y@r                           2    overlay(d@t1:5)
005170000000     D                 ds
005180000000     D d@t2                           6  0
005190000000     D  fl@1                          2    overlay(d@t2)
005200000000     D  fl@2                          2    overlay(d@t2:3)
005210000000     D  fl@3                          2    overlay(d@t2:5)
005220000000      //
005230000000      // alph/numeric conversion
005240000000     D                 ds                  inz
005250000000     D @@alph                        17
005260000000     D  @@numb                       17  5 overlay(@@alph)
005270040614      // #*8z - beg of add
005280040614     D                 ds
005290040614     D  tim_chr                       6
005300040614     D  tim_num                       6  0 overlay(Tim_Chr)
005310040614      // #*8z - end of add
005320000000      //
005330000000      //* data structure for parm for vertex interface
005340000000     D invl            ds           318    occurs(1)
005350000000      //***************************
005360000000      //**** transaction data *****
005370000000      //***************************
005380000000      // (1)  taxed geo code indicator (t,f,o)
005390000000     D ltrn01                         1
005400000000      // (1)  status code
005410000000     D ltrn02                         1
005420000000      // (5)  invoice line item #
005430000000     D ltrn03                         5  0
005440000000      // (6)  transaction type
005450000000     D ltrn04                         6
005460000000      // (3)  transaction sub-type
005470000000     D ltrn05                         3
005480000000      // (1)  transaction code
005490000000     D ltrn06                         1
005500000000      // (8)  transaction date - ccmmddyy
005510000000     D ltrn07                         8  0
005520000000      //***********************
005530000000      //**** product data *****
005540000000      //***********************
005550000000      // (15) product category code
005560000000     D lpro01                        15
005570000000      // (1)  line item exempt flag
005580000000     D lpro02                         1
005590000000      // (1)  product st taxability flag
005600000000     D lpro03                         1
005610000000      // (1)  product co taxability flag
005620000000     D lpro04                         1
005630000000      // (1)  product ci taxability flag
005640000000     D lpro05                         1
005650000000      // (1)  product dd taxability flag
005660000000     D lpro06                         1
005670000000      // (6)  quantity
005680000000     D lpro07                        11p 4
005690000000      // (7)  amount (extended price)
005700000000     D lpro08                        13p 3
005710000000      // (1)  tax inclusion flag (st)
005720000000     D lpro09                         1
005730000000      // (1)  tax inclusion flag (co)
005740000000     D lpro10                         1
005750000000      // (1)  tax inclusion flag (ci)
005760000000     D lpro11                         1
005770000000      // (1)  tax inclusion flag (dd)
005780000000     D lpro12                         1
005790000000      //********** defined area
005800000000      // (25) user defined area
005810000000     D lpro13                        25
005820000000      //*********************
005830000000      //**** state data *****
005840000000      //*********************
005850000000      // (7)  taxed amount
005860000000     D lsta01                        13p 3
005870000000      // (7)  non-taxable amount
005880000000     D lsta02                        13p 3
005890000000      // (1)  exempt reason code
005900000000     D lsta03                         1
005910000000      // (7)  exempt amount
005920000000     D lsta04                        13p 3
005930000000      // (6)  rate
005940000000     D lsta05                         6  6
005950000000      // (1)  rate indicator (c or p)
005960000000     D lsta06                         1
005970000000      // (1)  tax type (s,u,r,o)
005980000000     D lsta07                         1
005990000000      // (7)  tax
006000000000     D lsta08                        13p 3
006010000000      //**********************
006020000000      //**** county data *****
006030000000      //**********************
006040000000      // (7)  taxed amount
006050000000     D lcou01                        13p 3
006060000000      // (7)  non-taxable amount
006070000000     D lcou02                        13p 3
006080000000      // (1)  exempt reason code
006090000000     D lcou03                         1
006100000000      // (7)  exempt amount
006110000000     D lcou04                        13p 3
006120000000      // (6)  rate
006130000000     D lcou05                         6  6
006140000000      // (1)  rate indicator (c or p)
006150000000     D lcou06                         1
006160000000      // (1)  tax type (s,u,r,o)
006170000000     D lcou07                         1
006180000000      // (7)  tax
006190000000     D lcou08                        13p 3
006200000000      //********************
006210000000      //**** city data *****
006220000000      //********************
006230000000      // (7)  taxed amount
006240000000     D lcit01                        13p 3
006250000000      // (7)  non-taxable amount
006260000000     D lcit02                        13p 3
006270000000      // (1)  exempt reason code
006280000000     D lcit03                         1
006290000000      // (7)  exempt amount
006300000000     D lcit04                        13p 3
006310000000      // (6)  rate
006320000000     D lcit05                         6  6
006330000000      // (1)  rate indicator (c or p)
006340000000     D lcit06                         1
006350000000      // (1)  tax type (s,u,r,o)
006360000000     D lcit07                         1
006370000000      // (7)  tax
006380000000     D lcit08                        13p 3
006390000000      //************************
006400000000      //**** district data *****
006410000000      //************************
006420000000      // (7)  taxed amount
006430000000     D ldis01                        13p 3
006440000000      // (7)  non-taxable amount
006450000000     D ldis02                        13p 3
006460000000      // (1)  exempt reason code
006470000000     D ldis03                         1
006480000000      // (7)  exempt amount
006490000000     D ldis04                        13p 3
006500000000      // (6)  rate
006510000000     D ldis05                         6  6
006520000000      // (1)  rate indicator (c or p)
006530000000     D ldis06                         1
006540000000      // (1)  tax type (s,u,r,o)
006550000000     D ldis07                         1
006560000000      // (7)  tax
006570000000     D ldis08                        13p 3
006580000000      //***************************
006590000000      //**** intra state data *****
006600000000      //***************************
006610000000      // (9)  taxed geo code
006620000000     D lspe01                         9  0
006630000000      // (7)  county taxed amount
006640000000     D lspe02                        13p 3
006650000000      // (6)  rate
006660000000     D lspe03                         6  6
006670000000      // (1)  rate indicator (c or p)
006680000000     D lspe04                         1
006690000000      // (1)  tax type (s,u,r,o)
006700000000     D lspe05                         1
006710000000      // (7)  tax
006720000000     D lspe06                        13p 3
006730000000      // (7)  city taxed amount
006740000000     D lspe07                        13p 3
006750000000      // (6)  rate
006760000000     D lspe08                         6  6
006770000000      // (1)  rate indicator (c or p)
006780000000     D lspe09                         1
006790000000      // (1)  tax type (s,u,r,o)
006800000000     D lspe10                         1
006810000000      // (7)  tax
006820000000     D lspe11                        13p 3
006830000000      // (7)  district taxed amount
006840000000     D lspe12                        13p 3
006850000000      // (6)  rate
006860000000     D lspe13                         6  6
006870000000      // (1)  rate indicator (c or p)
006880000000     D lspe14                         1
006890000000      // (1)  tax type (s,u,r,o)
006900000000     D lspe15                         1
006910000000      // (7)  tax
006920000000     D lspe16                        13p 3
006930000000      // (1)  state non-taxable reason cd
006940000000     D lsta09                         1
006950000000      // (1)  county non-taxable reason cd
006960000000     D lcou09                         1
006970000000      // (1)  city non-taxable reason cd
006980000000     D lcit09                         1
006990000000      // (1)  district non-taxable reason cd
007000000000     D ldis09                         1
007010000000      // (1)  district apply flag
007020000000     D ldis10                         1
007030000000      // (3)  return code for return's mod.
007040000000     D lretc                          3
007050000000     D                 ds                  inz
007060000000     D indate                         8  0
007070000000     D  v@rscc                        2  0 overlay(indate)
007080000000     D  v@rsdt                        6  0 overlay(indate:3)
007090000000      //
007100000000     D                 ds                  inz
007110000000     D  txt                    1    490
007120000000     D                                     dim(7)                               body text
007130000000     D  txt001                 1     70
007140000000     D  txt002                71    140
007150000000     D  txt003               141    210
007160000000     D  txt004               211    280
007170000000     D  txt005               281    350
007180000000     D  txt006               351    420
007190000000     D  txt007               421    490
007200000000     D  bdy1                   1    245
007210000000     D  bdy2                 246    490
007220000000      //
007230000000     D @@api           ds          1172
007240000000     D @1api                        116
007250000000     D @2api                        132
007260000000     D @3api                        132
007270000000     D @4api                        132
007280000000     D @5api                        132
007290000000     D @6api                        132
007300000000     D @7api                        132
007310000000     D @8api                        132
007320000000     D @9api                        132
007330000000     D                 ds
007340000000     D xxdata                 14    256
007350000000     D syseml                 35    261
007360000000     D                 ds
007370000000     D @note1                       180
007380000000      //---------------------------------------------------------------
007390000000     D lda            uds
007400000000     D appl                           2
007410000000     D wsid                    5      6
007420000000     D user                   13     20
007430000000     D @@pocc                201    202  0
007440000000     D @@podt                         6  0
007450000000     D jobq                  240    240
007460000000     D ldcomp                257    258  0
007470000000     D ldseq                          1  0
007480000000     D ldwhse                         2
007490000000     D ldrprt                263    263
007500000000     D ldford                         5
007510000000     D ldtord                         5
007520000000     D ldrte                          4
007530000000     D ldprid                284    285
007540000000     D ldcrst                         1
007550000000     D ldidt                 288    293  0
007560000000     D ldblcd                         2
007570000000     D frcict                301    315  0
007580000000     D tocict                        15  0
007590000000     D ldcmcd                347    349
007600000000     D ldcspo                        22
007610000000     D ldcsno                        10
007620000000     D ldarfg                         1
007630000000     D ldcndt                         6
007640000000     D ldcncc                         2
007650000000     D ldctln                401    407
007660000000     D faxusr                501    510
007670000000     D quit                  513    513
007680000000     D ldfrca                701    705
007690000000     D ldtoca                         5
007700000000     D ldorgn                         2
007710000000      //*
007720000000     D  ldorg1                        1    overlay(ldorgn)
007730000000     D ldortp                         1
007740000000     D z$nknm                715    724
007750000000     D z$conm                        30
007760000000     D z$cntc                        30
007770000000     D z$hold                800    800
007780000000     D z$nte1                        80
007790000000     D z$nte2                        80
007800000000     D z$fxpy                964    965
007810000000     D p@outq                970    979
007820000000     D z$test               1020   1021
007830000000     D                sds
007840000000     D @dspid                244    253
007850000000     D @user                         10
007860000000     D                 ds                  inz
007870000000     D @hcndt                         8  0
007880000000     D  ohclcc                        2  0 overlay(@hcndt)
007890000000     D  ohcldt                        6  0 overlay(@hcndt:3)
007900000000     D                 ds                  inz
007910000000     D @lcndt                         8  0
007920000000     D  xxcncc                        2  0 overlay(@lcndt)
007930000000     D  l#cndt                        6  0 overlay(@lcndt:3)
007940000000      //
007950000000      //* data structure for composite/partial fields
007960000000      //
007970000000     D                 ds                  inz
007980000000     D bccmit                        27
007990000000     D  $1c002                        1    overlay(bccmit)
008000000000     D  $1c003                        1    overlay(bccmit:2)
008010000000     D  $1c004                        2    overlay(bccmit:3)
008020000000      //
008030000000     D $3c002                136    144
008040000000     D  $3c001                        7    overlay($3c002)
008050000000     D   ohcono                       2  0 overlay($3c001)
008060000000     D   ohorno                       5    overlay($3c001:3)
008070000000     D  ohorgn                        2  0 overlay($3c002:8)
008080000000      //
008090000000     D $3c006                         8  0
008100000000     D  ohducc                        2  0 overlay($3c006)
008110000000     D  ohdudt                        6  0 overlay($3c006:3)
008120000000      //
008130000000     D #3c003                         8  0
008140000000     D  #3ducc                        2  0 overlay(#3c003)
008150000000     D  #3dudt                        6  0 overlay(#3c003:3)
008160000000      //
008170000000     D $3c008                         8  0
008180000000     D  ohfucc                        2  0 overlay($3c008)
008190000000     D  ohfudt                        6  0 overlay($3c008:3)
008200000000      //
008210000000     D #3c001                         8  0
008220000000     D  #3incc                        2  0 overlay(#3c001)
008230000000     D  #3indt                        6  0 overlay(#3c001:3)
008240000000      //
008250000000     D $5c001                231    259
008260000000     D  wbitno                       27    overlay($5c001)
008270000000     D  wbwhid                        2    overlay($5c001:28)
008280000000      //
008290000000     D $2c001                         9
008300000000     D  o#cono                        2  0 overlay($2c001)
008310000000     D  odorno                        5    overlay($2c001:3)
008320000000     D  odorgn                        2  0 overlay($2c001:8)
008330000000      //
008340000000     D $3c007                         8  0
008350000000     D  ohntcc                        2  0 overlay($3c007)
008360000000     D  ohntdt                        6  0 overlay($3c007:3)
008370000000      //
008380000000     D #3c004                         8  0
008390000000     D  #3ntcc                        2  0 overlay(#3c004)
008400000000     D  #3ntdt                        6  0 overlay(#3c004:3)
008410000000      //
008420000000     D $3c005                         8  0
008430000000     D  ohivcc                        2  0 overlay($3c005)
008440000000     D  ohivdt                        6  0 overlay($3c005:3)
008450000000      //
008460000000     D #3c002                         8  0
008470000000     D  #3ivcc                        2  0 overlay(#3c002)
008480000000     D  #3ivdt                        6  0 overlay(#3c002:3)
008490000000      //
008500000000     D #9c001                        29
008510000000     D  #9whid                        2    overlay(#9c001)
008520000000     D  #9itno                       27    overlay(#9c001:3)
008530000000      //
008540000000     D $6c001                        17
008550000000     D  wnapid                        2    overlay($6c001)
008560000000     D  wncono                        2  0 overlay($6c001:3)
008570000000     D  wngid6                        6    overlay($6c001:5)
008580000000     D  wnorgn                        2  0 overlay($6c001:11)
008590000000     D  wnsq05                        5  0 overlay($6c001:13)
008600000000      //
008610000000     D $3c004                         7
008620000000     D  ohrout                        4    overlay($3c004)
008630000000     D  ohstop                        3  0 overlay($3c004:5)
008640000000     D $3c003                       180
008650000000      //
008660000000     D  ohsad1                       30    overlay($3c003)
008670000000     D  ohsad2                       30    overlay($3c003:31)
008680000000     D  ohscty                       20    overlay($3c003:61)
008690000000     D  ohshst                       30    overlay($3c003:81)
008700000000     D  ohszip                       10    overlay($3c003:111)
008710000000     D  ohsad3                       30    overlay($3c003:121)
008720000000     D  ohsad4                       30    overlay($3c003:151)
008730000000     D                 ds                  inz
008740000000     D $1c001                        49
008750000000     D  bccono                        2  0 overlay($1c001)
008760000000     D  bccsno                       10  0 overlay($1c001:3)
008770000000     D  bcorno                        5    overlay($1c001:13)
008780000000     D  bcorsq                        5  0 overlay($1c001:18)
008790000000     D  bcprit                       27    overlay($1c001:23)
008800000000      //
008810000000      //----------------------------------------------------*
008820000000      // key list mapping data structure for file: bocrt
008830000000     D a$bo0           ds                  inz
008840000000     D a$bo0h                         9
008850000000     D  a$cono                        2  0 overlay(a$bo0h)
008860000000     D  a$orno                        5    overlay(a$bo0h:3)
008870000000     D  a$orgn                        2  0 overlay(a$bo0h:8)
008880000000      // key list mapping data structure for file: bomco
008890000000     D h$bc0           ds                  inz
008900000000     D h$bc0h                        53
008910000000     D  h$cono                        2  0 overlay(h$bc0h)
008920000000     D  h$csno                       10  0 overlay(h$bc0h:3)
008930000000     D  h$orno                        5    overlay(h$bc0h:13)
008940000000     D  h$orsq                        5  0 overlay(h$bc0h:18)
008950000000     D  h$prit                       27    overlay(h$bc0h:23)
008960000000     D  h$bmsq                        4  0 overlay(h$bc0h:50)
008970000000      // key list mapping data structure for file: bompr
008980000000     D g$bp0           ds                  inz
008990000000     D g$bp0h                        49
009000000000     D  g$cono                        2  0 overlay(g$bp0h)
009010000000     D  g$csno                       10  0 overlay(g$bp0h:3)
009020000000     D  g$orno                        5    overlay(g$bp0h:13)
009030000000     D  g$orsq                        5  0 overlay(g$bp0h:18)
009040000000     D  g$prit                       27    overlay(g$bp0h:23)
009050000000      // key list mapping data structure for file: cusms
009060000000     D f$cm0           ds                  inz
009070000000     D f$cm0h                        12  0
009080000000     D  f$cono                        2  0 overlay(f$cm0h)
009090000000     D  f$csno                       10  0 overlay(f$cm0h:3)
009100000000      // key list mapping data structure for file: orhe1
009110000000     D c$oh1           ds                  inz
009120000000     D c$oh1h                        11
009130000000     D  c$ortp                        1    overlay(c$oh1h)
009140000000     D  c$orst                        1    overlay(c$oh1h:2)
009150000000     D  c$whid                        2    overlay(c$oh1h:3)
009160000000     D  c$cono                        2  0 overlay(c$oh1h:5)
009170000000     D  c$orno                        5    overlay(c$oh1h:7)
009180000000      // key list mapping data structure for file: orhe3
009190000000     D d$oh3           ds                  inz
009200000000     D d$oh3h                        16
009210000000     D  d$whid                        2    overlay(d$oh3h)
009220000000     D  d$rout                        4    overlay(d$oh3h:3)
009230000000     D  d$stop                        3  0 overlay(d$oh3h:7)
009240000000     D  d$cono                        2  0 overlay(d$oh3h:10)
009250000000     D  d$orno                        5    overlay(d$oh3h:12)
009260000000      // key list mapping data structure for file: wmba1
009270000000     D j$wb1           ds                  inz
009280000000     D j$wb1h                        65
009290000000     D  j$itno                       27    overlay(j$wb1h)
009300000000     D  j$whid                        2    overlay(j$wb1h:28)
009310000000     D  j$assq                        4  0 overlay(j$wb1h:30)
009320000000     D  j$loca                       12    overlay(j$wb1h:34)
009330000000     D  j$ltsr                       20    overlay(j$wb1h:46)
009340000000      // key list mapping data structure for file: wmloc
009350000000     D k$wl0           ds                  inz
009360000000     D k$wl0h                        14
009370000000     D  k$whid                        2    overlay(k$wl0h)
009380000000     D  k$loca                       12    overlay(k$wl0h:3)
009390000000      // key list mapping data structure for file: wmpck
009400000000     D e$wk0           ds                  inz
009410000000     D e$wk0h                        29
009420000000     D  e$whid                        2    overlay(e$wk0h)
009430000000     D  e$itno                       27    overlay(e$wk0h:3)
009440000000      // key list mapping data structure for file: wmrls
009450000000     D l$wn0           ds                  inz
009460000000     D l$wn0h                        49
009470000000     D  l$apid                        2    overlay(l$wn0h)
009480000000     D  l$cono                        2  0 overlay(l$wn0h:3)
009490000000     D  l$gid6                        6    overlay(l$wn0h:5)
009500000000     D  l$orgn                        2  0 overlay(l$wn0h:11)
009510000000     D  l$sq05                        5  0 overlay(l$wn0h:13)
009520000000     D  l$loca                       12    overlay(l$wn0h:18)
009530000000     D  l$ltsr                       20    overlay(l$wn0h:30)
009540000000      // key list mapping data structure for file: wmrsv
009550000000     D i$wv0           ds                  inz
009560000000     D i$wv0h                        53
009570000000     D  i$apid                        2    overlay(i$wv0h)
009580000000     D  i$cono                        2  0 overlay(i$wv0h:3)
009590000000     D  i$gid6                        6    overlay(i$wv0h:5)
009600000000     D  i$orgn                        2  0 overlay(i$wv0h:11)
009610000000     D  i$sq05                        5  0 overlay(i$wv0h:13)
009620000000     D  i$bmsq                        4  0 overlay(i$wv0h:18)
009630000000     D  i$loca                       12    overlay(i$wv0h:22)
009640000000     D  i$ltsr                       20    overlay(i$wv0h:34)
009650000000     D                 ds                  inz
009660000000     D ctlky                         11
009670000000     D  xxcom                         2  0 overlay(ctlky)
009680000000     D  xxapp                         2    overlay(ctlky:3)
009690000000     D  xxkey                         7    overlay(ctlky:5)
009700000000     D   xxky4                        4    overlay(xxkey)
009710000000     D   xxky3                        3    overlay(xxkey:5)
009720000000     D                 ds                  inz
009730000000     D endate                         8  0
009740000000     D  inedcc                        2  0 overlay(endate)
009750000000     D  ineddt                        6  0 overlay(endate:3)
009760000000     D                 ds                  inz
009770000000     D stdate                         8  0
009780000000     D  instcc                        2  0 overlay(stdate)
009790000000     D  instdt                        6  0 overlay(stdate:3)
009800000000     D                 ds                  inz
009810000000     D rqshdt                         8  0
009820000000     D  odducc                        2  0 overlay(rqshdt)
009830000000     D  oddudt                        6  0 overlay(rqshdt:3)
009840000000     D                 ds                  inz
009850000000     D orhky                          9
009860000000     D  xxcono                        2  0 overlay(orhky)
009870000000     D  xxorno                        5    overlay(orhky:3)
009880000000     D  xxorgn                        2  0 overlay(orhky:8)
009890000000     D                 ds                  inz
009900000000     D x1ctky                        11
009910000000     D  x1comp                        2  0 overlay(x1ctky)
009920000000     D  x1appl                        2    overlay(x1ctky:3)
009930000000     D  x1ckey                        7    overlay(x1ctky:5)
009940000000      // indicator seton/setof named constant(s)
009950000000     D #curr           c                   const('00ICCURR')
009960000000     D #whkey          c                   const('00IAWHSNU')
009970000000     D #whkyx          c                   const('00IAWHSNX')
009980000000     D #spcch          c                   const('SPECIAL CHARGE')
009990000000     D #consh          c                   const('Cons hold-')
010000000000     D #consd          c                   const('Consolidated-')
010010000000     D                 ds                  inz
010020000000     D ctlky2                        11
010030000000     D  x8comp                        2  0 overlay(ctlky2)
010040000000     D  x8appl                        2    overlay(ctlky2:3)
010050000000     D  x8ckey                        7    overlay(ctlky2:5)
010060000000     D                 ds                  inz
010070000000     D  adrs                   1    102
010080000000     D  ad1                    1     34
010090000000     D                                     dim(34)                              addr seq 1
010100000000     D  adrs1                  1     34
010110000000     D  ad2                   35     68
010120000000     D                                     dim(34)                              addr seq 2
010130000000     D  adrs2                 35     68
010140000000     D  ad3                   69    102
010150000000     D                                     dim(34)                              addr seq 3
010160000000     D  adrs3                 69    102
010170000000     D @sld            ds                  inz
010180000000     D  sld                    1    306
010190000000     D                                     dim(9)                               sold to name/addr
010200000000     D @shp            ds                  inz
010210000000     D  shp                    1    306
010220000000     D                                     dim(9)                               ship to name/addr
010230040120      // #*8t-beg of add
010240040120     D somebo          s              1                                         // #*w
010250040120      // #*8t-end of add
010260030518      // prototype for oe526 "Invoice Print Program"
010270030518      /COPY QCPYSRC,P_OE526
010280030518      // prototype for 'xadftq' "Determine Default Output Queue                  XA"
010290030518      /COPY QCPYSRC,P_XADFTQ
010300030518      // prototype for 'oe529' "Check the CIHLD file"
010310030518      /COPY QCPYSRC,P_OE529
010320030518      // prototype for 'oep004' "Encode Decode Credit Card Numbers        (DIST=NO)"
010330030518      /COPY QCPYSRC,P_OEP004
010340030518      // prototype for 'oep526' "Electronic Payments Mark For Settlement"
010350030518      /COPY QCPYSRC,P_OEP526
010360030518      // prototype for 'oe402' "Hazardous Papers Driver"
010370030518      /COPY QCPYSRC,P_OE402
010380030518      // prototype for 'xadat' "Application Plus Date Calculation Sub Program"
010390030518      /COPY QCPYSRC,P_XADAT
010400030518      // prototype for 'oe188' "Log Vendor Returns (sub program)"
010410030518      /COPY QCPYSRC,P_OE188
010420030518      // prototype for 'xa777' "Time Zone Calculation Sub-Program"
010430030518      /COPY QCPYSRC,P_XA777
010440030518      // prototype for 'oe526a' "Consignment Stock Transfer Check Program"
010450030518      /COPY QCPYSRC,P_OE526A
010460030518      // prototype for 'xagpst' "Subpgm to calc GST/PST tax amounts"
010470030518      /COPY QCPYSRC,P_XAGPST
010480030518      // prototype for 'oe528p' "Change Status for Consolidated Print"
010490030518      /COPY QCPYSRC,P_OE528P
010500030518      // prototype for 'wm131k' "Create WMPCK for Kit Components"
010510030518      /COPY QCPYSRC,P_WM131K
010520030518      // prototype for 'ms310p' "Populate Mail Server Print File for Attachments"
010530030518      /COPY QCPYSRC,P_MS310P
010540030518      // prototype for 'oe515m' "Check MSDS Requirements"
010550030518      /COPY QCPYSRC,P_OE515M
010560030518      // prototype for 'ax120' "Retrive Default Fax Notes for a Document"
010570030518      /COPY QCPYSRC,P_AX120
010580030518      // prototype for 'oe720' "Re-cost/Re-price Warehouse Transfer Orders"
010590030518      /COPY QCPYSRC,P_OE720
010600030518      // prototype for 'oe530' "Release from Consolidated Hold"
010610030518      /COPY QCPYSRC,P_OE530
010620030518      // prototype for 'oe935' "Interface program for A+ to Vertex"
010630030518      /COPY QCPYSRC,P_OE935
010640030518      // prototype for 'ic000' "IC Currency Translation Program"
010650030518      /COPY QCPYSRC,P_IC000
010660030518      // prototype for 'oea100' "Order Activity Update Sub-Program"
010670030518      /COPY QCPYSRC,P_OEA100
010680030518      // prototype for 'ms300' "Email Options"
010690030518      /COPY QCPYSRC,P_MS300
010700030518      // prototype for 'ic012' "Revalue Foreign Invoices at Invoice Print"
010710030518      /COPY QCPYSRC,P_IC012
010720040408      // #*8x - beginning of add                       #*8x
010730040408      // prototype for 'xausrtxp' "Retrieve user profile text description."
010740040408      /COPY QCPYSRC,P_XAUSRTXP
010750040408      // prototype for SECURITY "Security Functions"                          XA"
010760040408      /COPY QCPYSRC,P_XA950S
010770040408      // #*8x - end of add                             #*8x
010780040614      // #*8z - beg of add
010790040614      // prototype for 'gw730p' "Outbound Invoice Gateway request"
010800040614      /COPY QCPYSRC,P_GW730P
010810040614      // #*8z - end of add
010820050301
010830050301      // #*9g - Beg of Add
010840050301      // prototype for 'tpckobjp' "Check for existance of an object                XA"
010850050301      /COPY QCPYSRC,P_TPCKOBJP
010860050301      // #*9g - End of Add
010870050301
010880030518     D oe526           pi
010890030518     D p1fxph                        20
010900030518     D z$intc                         3
010910030518     D @cidte                         1
010920030518      //---------------------------------------------------------------------
010930030518      // Stand Alone Fields - TOP
010940030518      //---------------------------------------------------------------------
010950030518     D $$date          s              6
010960030518     D $$shdn          s              1
010970030518     D $$time          s              6
010980030518     D $$tmzn          s              3
010990030518     D $$usid          s             10
011000030518     D ##cbcd          s                   like(ohcbcd)
011010030518     D ##cict          s                   like(ohcict)
011020030518     D ##cono          s                   like(ohcono)
011030030518     D ##csno          s                   like(ohcsno)
011040030518     D ##fxpn          s                   like(cmfxpn)
011050030518     D ##intc          s                   like(cmfxcd)
011060030518     D ##orgn          s                   like(ohorgn)
011070030518     D ##orno          s                   like(ohorno)
011080030518     D ##pytp          s                   like(ohpytp)
011090030518     D ##whid          s                   like(ohwhid)
011100030518     D #cymd           s              8  0
011110030518     D #jday           s              9  0
011120030518     D #type           s                   like(ohortp)
011130030518     D @@amd$          s                   like(icamnt)
011140030518     D @@amnb          s                   like(amntic)
011150030518     D @@apid          s                   like(ccapid)
011160030518     D @@aslp          s                   like(odaslp)
011170030518     D @@aspt          s            + 1    like(odaslp)
011180030518     D @@bcca          s            140
011190030518     D @@cacd          s                   like(ohcacd)
011200040317      // #*8v - added next line
011210040317     D @@card          s             18
011220030518     D @@ccad          s            140
011230030518     D @@cctb          s                   like(ccttic)
011240030518     D @@cds$          s                   like(ohcdat)
011250030518     D @@city          s                   like(ohscty)
011260030518     D @@cntc          s             30
011270030518     D @@comp          s              7
011280030518     D @@conm          s                   like(ohcsnm)
011290030518     D @@cono          s                   like(fwcono)
011300030518     D @@cont          s                   like(cmcont)
011310030518     D @@cprs          s              1
011320030518     D @@csnm          s                   like(ohcsnm)
011330030518     D @@cstm          s                   like(emcstm)
011340030518     D @@date          s              6  0
011350030518     D @@diff          s                   like(ohtxam)
011360030518     D @@dift          s                   like(ohtxat)
011370030518     D @@doc#          s                   like(fwdoc#)
011380030518     D @@dpab          s                   like(dpatic)
011390030518     D @@ectl          s              7  0
011400030518     D @@eddr          s            140
011410030518     D @@efad          s            128
011420030518     D @@emad          s            128
011430030518     D @@emgp          s              3
011440030518     D @@emin          s                   like(saemin)
011450030518     D @@emsv          s                   like(fwemsv)
011460030518     D @@endd          s              8  0
011470030518     D @@fadd          s            140
011480030518     D @@fax#          s             26
011490030518     D @@feab          s                   like(featic)
011500030518     D @@form          s                   like(emform)
011510030518     D @@fxcd          s                   like(cmfxcd)
011520030518     D @@fxpn          s                   like(cmfxpn)
011530030518     D @@fxsv          s                   like(fwfxsv)
011540030518     D @@fxtp          s             14
011550030518     D @@gtxb          s                   like(ctgttx)
011560030518     D @@hlcd          s                   like(ohhlcd)
011570030518     D @@inno          s                   like(ohinno)
011580030518     D @@intc          s              9
011590030518     D @@itno          s                   like(oditno)
011600030518     D @@lin2          s              1
011610030518     D @@msds          s              1
011620030518     D @@note          s             88
011630030518     D @@orgn          s              2
011640030518     D @@outq          s                   like(fwoutq)
011650030518     D @@pct           s              5  4
011660030518     D @@pntr          s            132
011670030518     D @@prum          s                   like(odprum)
011680030518     D @@ptxb          s                   like(ctpttx)
011690030518     D @@pwrd          s             10
011700030518     D @@pwyn          s              1
011710030518     D @@qtor          s                   like(odqtor)
011720030518     D @@rccd          s                   like(ccrccd)
011730030518     D @@rntp          s              1
011740030518     D @@shp#          s                   like(ohshp#)
011750030518     D @@sq03          s              3  0
011760030518     D @@stpv          s                   like(ohshst)
011770030518     D @@strt          s              8  0
011780030518     D @@subb          s                   like(subtic)
011790030602      // #*8l - changed @@subj from 18 to 25
011800030518     D @@subj          s             25
011810030518     D @@symb          s                   like(@@symo)
011820030518     D @@symo          s                   like(ccsymo)
011830030518     D @@tdab          s                   like(tdatic)
011840030518     D @@time          s              6  0
011850030518     D @@totb          s                   like(totlic)
011860030518     D @@totl          s              3  0
011870030518     D @@txab          s                   like(txatic)
011880030518     D @@txam          s                   like(ohtxam)
011890030518     D @@unms          s                   like(odunms)
011900030518     D @@user          s                   like(fwuser)
011910030518     D @@usid          s                   like(uzusid)
011920030518     D @@usnm          s             25
011930030518     D @@whid          s              2
011940030518     D @@woyn          s              1
011950030518     D @@wrk           s             30
011960030518     D @@wrk1          s             12  5
011970030518     D @@wrk2          s              2
011980030518     D @@w3            s              3
011990030518     D @@zpps          s                   like(ohszip)
012000030602      // #*8l - added @acono & @ainno
012010030518     D @acono          s              2
012020030602     D @ainno          s              8
012030030518     D @apin3          s              1
012040030518     D @apin4          s              1
012050030518     D @bl83           s             83
012060030518     D @c              s              1  0
012070030518     D @ccurr          s                   like(cmcurr)
012080030518     D @cdsdt          s                   like(#3c003)
012090030518     D @cfobd          s                   like(fobdco)
012100030518     D @dftcr          s              3
012110030518     D @dsymo          s                   like(ccsymo)
012120030518     D @ducc           s              2  0
012130030518     D @dudt           s              6  0
012140030518     D @eatth          s             30
012150030518     D @emlop          s              1
012160030518     D @esevr          s             25
012170030518     D @esubj          s             90
012180030518     D @faxop          s              1
012190030518     D @faxsv          s             27
012200030518     D @first          s              1
012210030518     D @fname          s             32
012220030518     D @gtxa@          s                   like(ohgtxa)
012230030518     D @gtxao          s                   like(ohgtxa)
012240030518     D @gtxat          s            + 4    like(ohgtxa)
012250030518     D @gtxtb          s            + 4    like(ohgtxa)
012260030518     D @hcacd          s                   like(ohcacd)
012270030518     D @hgtyn          s                   like(ohgtyn)
012280030518     D @hptyn          s                   like(ohptyn)
012290030518     D @htxpc          s              5  5
012300030518     D @iccsm          s              1
012310030518     D @icord          s              1
012320030518     D @lcomp          s              2
012330030518     D @netcc          s              2  0
012340030518     D @netdt          s              6  0
012350030518     D @nodes          s              1
012360030518     D @ntdte          s                   like(#3c003)
012370030518     D @oea10          s              1
012380030518     D @once           s              1
012390030518     D @outq           s             10
012400030518     D @pcltp          s              1
012410030518     D @pcono          s              2  0
012420030518     D @pcsno          s             10  0
012430030518     D @pcurr          s              3
012440030518     D @pexch          s              3
012450030518     D @pexrt          s             13  6
012460030518     D @pflag          s              1
012470030518     D @pitno          s             27
012480030518     D @plcur          s              3
012490030518     D @pnovl          s              2  0
012500030518     D @porgn          s              2  0
012510030518     D @porno          s              5
012520030518     D @prntp          s              1
012530030518     D @prtcc          s              2  0
012540030518     D @prtdt          s              6  0
012550030518     D @prtop          s              1
012560030518     D @pshdn          s              1
012570030518     D @pshp#          s              7
012580030518     D @ptxa@          s                   like(ohptxa)
012590030518     D @ptxao          s                   like(ohptxa)
012600030518     D @ptxat          s            + 4    like(ohptxa)
012610030518     D @ptxtb          s            + 4    like(ohptxa)
012620030518     D @que#           s              2  0
012630030518     D @slctd          s              1
012640030518     D @split          s              1
012650030518     D @tamd$          s                   like(icamnt)
012660030518     D @tcds$          s                   like(ohcdat)
012670030518     D @tcomp          s             36
012680030518     D @tfobd          s                   like(fobdco)
012690030518     D @tname          s             36
012700030518     D @today          s              8
012710030518     D @trdds          s              9  2
012720030518     D @trmsg          s             31
012730030518     D @txhed          s             20
012740030518     D @txid#          s             15
012750030518     D @txlin          s             41
012760030518     D @txln1          s             25
012770030518     D @wamnt          s             13  3
012780030518     D @wcrcd          s             18
012790030518     D @worvl          s                   like(ohorvl)
012800030518     D @wrk54          s              5  4
012810030518     D @x              s              3  0
012820040317      // #*8v - added next line
012830040317     D @x1             s              2  0
012840030518     D @xco            s              2
012850030518     D @xxxxx          s             14
012860040317      // #*8v - added next line
012870040317     D @y1             s              2  0
012880030602      // #*8k - added @1ipsq
012890030602     D @1ipsq          s                   like(odipsq)
012900030518     D a               s              1  0
012910030518     D adrseq          s              1
012920030518     D amntic          s             17  2
012930030518     D amstro          s                   like(odlnvl)
012940030518     D amtdue          s             11  2
012950030518     D astxor          s                   like(odlnvl)
012960030518     D astxot          s                   like(odlnvt)
012970030518     D a0itno          s                   like(auitno)
012980030518     D a0unms          s                   like(auunms)
012990030518     D b#arcs          s                   like(oharcs)
013000030518     D b#blcy          s                   like(ohblcy)
013010030518     D b#blst          s                   like(ohblst)
013020030518     D b#blzp          s                   like(ohblzp)
013030030518     D b#cad1          s                   like(ohcad1)
013040030518     D b#cad2          s                   like(ohcad2)
013050030518     D b#cad3          s                   like(ohcad3)
013060030518     D b#cad4          s                   like(ohcad4)
013070030518     D b#cono          s                   like(ohcono)
013080030518     D b#csnm          s                   like(ohcsnm)
013090030518     D b#ctid          s              3
013100030518     D bic000          s              1
013110030518     D bilco           s              1
013120030518     D bilsys          s              1
013130030518     D boxhd           s             12
013140030518     D camtdu          s             15  2
013150030518     D ccttic          s             15  2
013160030518     D cdate           s              6  0
013170030518     D cdsdtx          s                   like(#3dudt)
013180030518     D char1           s                   like($1c002)
013190030518     D char2           s                   like($1c003)
013200030518     D char34          s                   like($1c004)
013210030518     D citotl          s             13  2
013220030518     D ckey            s              9
013230030518     D ckey49          s                   like($1c001)
013240030518     D coboqt          s                   like(odboqt)
013250030518     D comkey          s             53
013260030518     D comnop          s              2
013270030518     D conoxx          s              2
013280030518     D consgn          s              1
013290030518     D coord           s                   like($3c001)
013300030518     D coqtor          s                   like(odqtor)
013310030518     D coqtsh          s                   like(odqtsh)
013320030518     D crecrd          s              1
013330030518     D crryon          s              1
013340030518     D csbtot          s             13  2
013350030518     D ctarcs          s                   like(oharcs)
013360030518     D ctcdam          s             11  2
013370030518     D ctcdat          s             11  2
013380030518     D ctcdsp          s                   like(ohcdsp)
013390030518     D ctcnct          s             11  2
013400030518     D ctcono          s                   like(ohcono)
013410030518     D ctcrcd          s                   like(ohcrcd)
013420030518     D ctcurr          s                   like(ohcurr)
013430030518     D ctdpam          s             11  2
013440030518     D ctexpd          s                   like(ohexpd)
013450030518     D ctfeam          s             11  2
013460030518     D ctfobd          s                   like(@cfobd)
013470030518     D ctgttt          s             14  2
013480030518     D ctgttx          s             11  2
013490030518     D ctinno          s                   like(ohinno)
013500030518     D ctivdt          s                   like(invdto)
013510030518     D ctortp          s                   like(ohortp)
013520030518     D ctpayd          s                   like(paydsc)
013530030518     D ctpttt          s             14  2
013540030518     D ctpttx          s             11  2
013550030518     D cttaxm          s             11  2
013560030518     D cttdam          s             11  2
013570030518     D ctterm          s                   like(terms)
013580030518     D curitm          s              1
013590030518     D cushld          s                   like(oharcs)
013600030518     D dainot          s             13  2
013610030518     D dainto          s              9  2
013620030518     D datfmt          s              1
013630030518     D days            s                   like(cdsdy)
013640030518     D detlla          s                   like($3c002)
013650030518     D dpatic          s             11  2
013660030518     D duedt           s                   like($3c006)
013670030518     D duedtx          s                   like(#3c003)
013680030518     D duedt6          s              6  0
013690030518     D endcol          s              1
013700030518     D f@wflg          s              1
013710030518     D faxnbr          s                   like(cmfxpn)
013720030518     D featic          s             15  2
013730030518     D ffinv@          s             10
013740030518     D fill            s              1
013750030518     D find            s              1
013760030518     D first1          s              1
013770030518     D fndrec          s              1
013780030518     D futdt           s                   like($3c008)
013790030518     D gdatep          s              8
013800030518     D gtxa#           s             13
013810030518     D gtxa@           s              9
013820030518     D gtxao#          s             13
013830030518     D gtxao@          s              9
013840030518     D gtxaot          s            + 4    like(ohgtxa)
013850030518     D hazext          s              1
013860030518     D icamnt          s             15  2
013870030518     D iclive          s              1
013880030518     D icopen          s              1
013890030518     D icsubt          s             15  2
013900030518     D ictotl          s             15  2
013910030518     D ic001           s              1
013920030518     D ic012@          s              1
013930030518     D invdto          s              6  0
013940030518     D invdtx          s                   like(#3c001)
013950030518     D invnrx          s                   like(ohinno)
013960030518     D invymd          s              6  0
013970030518     D it#1d           s                   like($2c002)
013980030518     D it#2d           s                   like($2c003)
013990030518     D itmwh           s                   like($5c001)
014000030518     D itnoex          s                   like(oditno)
014010030518     D itotal          s             11  2
014020030518     D i0cgid          s                   like(incgid)
014030030518     D i0cono          s                   like(incono)
014040030518     D i0csno          s                   like(incsno)
014050030518     D i0igid          s                   like(inigid)
014060030518     D i0itno          s                   like(initno)
014070030518     D i0whid          s                   like(inwhid)
014080030518     D jday#           s              9  0
014090030518     D jdayp           s              9
014100030518     D key@@@          s              9
014110030518     D kitflg          s              1
014120030518     D l               s              2  0
014130030518     D l#cmcd          s              3  0
014140030518     D l#csno          s             10  0
014150030518     D lactc           s              2
014160030518     D lcom01          s              5
014170030518     D lcom02          s              5
014180030518     D lcom03          s              1
014190030518     D lcom04          s              4
014200030518     D lcom05          s              3
014210030518     D lcom06          s              2
014220030518     D lcom07          s              1
014230030518     D lcom08          s              2  0
014240030518     D lcom09          s              8
014250030518     D lcus01          s             15
014260030518     D lcus02          s              1
014270030518     D lcus03          s             15
014280030518     D lcus04          s              1
014290030518     D leapyr          s              1  0
014300030518     D lfill1          s              1
014310030518     D lfill2          s              1
014320030518     D lfill3          s              1
014330030518     D lfill4          s             95
014340030518     D linv01          s             12
014350030518     D linv02          s              8  0
014360030518     D linv03          s             13  3
014370030518     D linv04          s             13  3
014380030518     D linv05          s              6  6
014390030518     D linv06          s              5
014400030518     D ljur01          s              9  0
014410030518     D ljur02          s              1
014420030518     D ljur03          s              9  0
014430030518     D ljur04          s              1
014440030518     D ljur05          s              9  0
014450030518     D ljur06          s              1
014460030518     D llfeld          s                   like($2c001)
014470030518     D lnseqp          s              5
014480030518     D lockey          s             14
014490030518     D lorco           s             15
014500030518     D lorct           s             25
014510030518     D lorji           s              1
014520030518     D lorrtc          s              2
014530030518     D lorst           s              2
014540030518     D lorzp           s              5
014550030518     D lsfrco          s             15
014560030518     D lsfrct          s             25
014570030518     D lsfrji          s              1
014580030518     D lsfrrt          s              2
014590030518     D lsfrzp          s              5
014600030518     D lshfr           s              2
014610030518     D lshrc           s              2
014620030518     D lshtco          s             15
014630030518     D lshtct          s             25
014640030518     D lshtji          s              1
014650030518     D lshto           s              2
014660030518     D lshtzp          s              5
014670030518     D lstor           s             10
014680030518     D m               s              2  0
014690030518     D mrkflg          s              1
014700030518     D msgno           s              1  0
014710030518     D ncnt            s                   like(curcc)
014720030518     D ndate           s              6  0
014730030518     D ndate2          s                   like(ndate)
014740030518     D netdt           s                   like($3c007)
014750030518     D netdtx          s                   like(#3c004)
014760030518     D netdt6          s              6  0
014770030518     D norecs          s              1
014780030518     D nosplt          s              2  0
014790030518     D note27          s             27
014800030518     D note29          s             29
014810030518     D ntdtex          s                   like(#3dudt)
014820030518     D nxtind          s              8  0
014830030518     D oep004@         s              1
014840030518     D oep526@         s              1
014850030518     D oe188@          s              1
014860030518     D oe188x          s              1
014870030717     D oe402@          s              1                                         #*8m
014880030518     D oe515m@         s              1
014890030518     D oe526a@         s              1
014900030518     D oe528           s              1
014910030518     D oe529@          s              1
014920030518     D once1           s              1
014930030518     D ordsav          s              9
014940030518     D orgenp          s              2
014950030518     D orgnxx          s              2
014960030518     D oritm$          s                   like(odlnvl)
014970030518     D oritmt          s                   like(odlnvt)
014980030518     D ornoxx          s              5
014990030518     D orse1           s              5  0
015000030518     D othor$          s                   like(odlnvl)
015010030518     D othort          s                   like(odlnvt)
015020030518     D ours1           s              6
015030030518     D ovidt           s                   like($3c005)
015040030518     D ovidtx          s                   like(#3c002)
015050030518     D ovidt6          s              6  0
015060030518     D p               s              2  0
015070030518     D p#cono          s              2  0
015080030518     D p#ntes          s             20
015090030518     D p#oacd          s              2
015100030518     D p#orgn          s              2  0
015110030518     D p#orno          s              5
015120030518     D p#pror          s              9  0
015130030518     D p#shdn          s              1
015140030518     D p@shdn          s              1
015150030518     D pckky           s                   like(#9c001)
015160030518     D pkey            s             49
015170030518     D prvitm          s              1
015180040112     D prvrtd          s              1                                         #*8s
015190030518     D ptxa#           s             13
015200030518     D ptxa@           s              9
015210030518     D ptxao#          s             13
015220030518     D ptxao@          s              9
015230030518     D ptxaot          s            + 4    like(ohptxa)
015240030518     D pxcono          s              2
015250030518     D pxflag          s              1
015260030518     D pxorgn          s              2
015270030518     D pxorno          s              5
015280030518     D p1atnm          s             20
015290030518     D p1bcca          s            128
015300030518     D p1bdy1          s            245
015310030518     D p1bdy2          s            245
015320030518     D p1blcd          s              2
015330030518     D p1call          s              8
015340030518     D p1ccad          s            128
015350030518     D p1cict          s             15
015360030518     D p1cono          s              2
015370030518     D p1crcd          s             18
015380030518     D p1csno          s             10
015390030518     D p1ctln          s              7
015400030518     D p1epty          s              1
015410030518     D p1ext           s              1
015420030518     D p1hlcd          s              2
015430030518     D p1hold          s              4
015440030518     D p1inno          s              8
015450030518     D p1itd1          s             31
015460030518     D p1itd2          s             31
015470030518     D p1itno          s             27
015480030518     D p1litp          s              1
015490030518     D p1mail          s              1
015500030518     D p1mode          s              1
015510030518     D p1orgn          s              2
015520030518     D p1orno          s              5
015530030518     D p1orsq          s              5
015540030518     D p1pmpt          s              1
015550030518     D p1prnt          s              1
015560030518     D p1prt           s              1
015570030518     D p1prum          s              3
015580030518     D p1ptct          s              1
015590030518     D p1pwrd          s             10
015600030518     D p1pytp          s              2
015610030518     D p1qtsh          s             11
015620030518     D p1ques          s              1
015630030518     D p1rtfg          s              1
015640030518     D p1rtrc          s              2
015650030518     D p1rtvl          s             15
015660030518     D p1shdn          s              1
015670030518     D p1splf          s             10
015680030518     D p1subj          s             80
015690030518     D p1toad          s            128
015700030518     D p1tocm          s              1
015710030518     D p1topf          s              1
015720030518     D p1umcd          s              1
015730030518     D p1umlt          s             11
015740030518     D p1unms          s              3
015750030518     D p1whid          s              2
015760030518     D p14dig          s              4
015770030518     D p2rsto          s              1
015780030518     D p2shdn          s              1
015790030518     D p2whid          s              2
015800030518     D p9cono          s              2
015810030518     D p9orgn          s              2
015820030518     D p9orno          s              5
015830030518     D q#itno          s              1
015840030518     D rlskey          s             49
015850030518     D rskey           s             17
015860030518     D rsky            s              4
015870030518     D rsky1           s             10
015880030518     D rsky2           s             12
015890030518     D rsord           s                   like($6c001)
015900030518     D rsvkey          s             53
015910030518     D rtestp          s                   like($3c004)
015920030518     D s#crcd          s                   like(ohcrcd)
015930030518     D s#expd          s                   like(ohexpd)
015940030518     D s#sad1          s                   like(ohsad1)
015950030518     D s#sad2          s                   like(ohsad2)
015960030518     D s#sad3          s                   like(ohsad3)
015970030518     D s#sad4          s                   like(ohsad4)
015980030518     D s#scty          s                   like(ohscty)
015990030518     D s#shci          s                   like(ohshci)
016000030518     D s#shnm          s                   like(ohshnm)
016010030518     D s#shst          s                   like(ohshst)
016020030518     D s#szip          s                   like(ohszip)
016030030518     D s@itno          s             27
016040030518     D s@litp          s              1
016050030518     D shipto          s              1
016060030518     D shld2           s              2
016070030518     D shld4           s              4
016080030518     D shld9           s              9
016090030518     D shpa            s                   like($3c003)
016100030518     D shpco           s              1
016110030518     D shpsys          s              1
016120030518     D shtdn           s              1
016130030518     D shtdnp          s              1
016140030518     D shtdwn          s              1
016150030518     D skey1           s             11
016160030518     D skey3           s             16
016170030518     D skpprt          s              1
016180030518     D sn              s             70
016190030518     D soldto          s              1
016200030518     D status          s                   like(ohorst)
016210030518     D stzip           s             13
016220030518     D subtic          s             17  2
016230030518     D subtot          s             11  2
016240030518     D svarcs          s                   like(oharcs)
016250030518     D svblcd          s              2
016260030518     D svblcy          s                   like(ohblcy)
016270030518     D svblst          s                   like(ohblst)
016280030518     D svblzp          s                   like(ohblzp)
016290030518     D svcad1          s                   like(ohcad1)
016300030518     D svcad2          s                   like(ohcad2)
016310030518     D svcad3          s                   like(ohcad3)
016320030518     D svcad4          s                   like(ohcad4)
016330030518     D svcict          s             15  0
016340030518     D svcinv          s                   like(ohcict)
016350030518     D svcsnm          s                   like(ohcsnm)
016360030518     D svctid          s                   like(ohctid)
016370030518     D svinno          s                   like(ohinno)
016380030518     D svitd2          s                   like(oditd2)
016390030518     D svitno          s                   like(oditno)
016400030518     D svorst          s                   like(ohorst)
016410030518     D svpytp          s              2
016420030518     D svrtvl          s             15  0
016430030518     D svsad1          s                   like(ohsad1)
016440030518     D svsad2          s                   like(ohsad2)
016450030518     D svsad3          s                   like(ohsad3)
016460030518     D svsad4          s                   like(ohsad4)
016470030518     D svscty          s                   like(ohscty)
016480030518     D svshci          s                   like(ohshci)
016490030518     D svshnm          s                   like(ohshnm)
016500030518     D svshst          s                   like(ohshst)
016510030518     D svszip          s                   like(ohszip)
016520030518     D svtxam          s                   like(ohtxam)
016530030518     D svtxat          s                   like(ohtxat)
016540030518     D svtxpc          s                   like(ohtxpc)
016550030518     D svws02          s                   like(ohws02)
016560030518     D sxsad1          s                   like(ohsad1)
016570030518     D sxsad2          s                   like(ohsad2)
016580030518     D sxsad3          s                   like(ohsad3)
016590030518     D sxsad4          s                   like(ohsad4)
016600030518     D sxscty          s                   like(ohscty)
016610030518     D sxshci          s                   like(ohshci)
016620030518     D sxshnm          s                   like(ohshnm)
016630030518     D sxshst          s                   like(ohshst)
016640030518     D sxszip          s                   like(ohszip)
016650030518     D sysasq          s              1
016660030518     D s2blcy          s                   like(ohblcy)
016670030518     D s2blst          s                   like(ohblst)
016680030518     D s2blzp          s                   like(ohblzp)
016690030518     D s2cad1          s                   like(ohcad1)
016700030518     D s2cad2          s                   like(ohcad2)
016710030518     D s2cad3          s                   like(ohcad3)
016720030518     D s2cad4          s                   like(ohcad4)
016730030518     D s2csnm          s                   like(ohcsnm)
016740030518     D s2ctid          s                   like(ohctid)
016750030518     D s2inno          s                   like(ohinno)
016760030518     D s2itd2          s                   like(oditd2)
016770030518     D s2itno          s                   like(oditno)
016780030518     D s2orst          s                   like(ohorst)
016790030518     D s2sad1          s                   like(ohsad1)
016800030518     D s2sad2          s                   like(ohsad2)
016810030518     D s2sad3          s                   like(ohsad3)
016820030518     D s2sad4          s                   like(ohsad4)
016830030518     D s2scty          s                   like(ohscty)
016840030518     D s2shci          s                   like(ohshci)
016850030518     D s2shnm          s                   like(ohshnm)
016860030518     D s2shst          s                   like(ohshst)
016870030518     D s2szip          s                   like(ohszip)
016880030518     D s2ws02          s                   like(ohws02)
016890030518     D tastro          s                   like(odlnvt)
016900030518     D tdatic          s             15  2
016910030518     D timex           s              6  0
016920030518     D today           s              8  0
016930030518     D totlic          s             17  2
016940030518     D trdtxo          s                   like(odlnvl)
016950030518     D trdxot          s                   like(odlnvt)
016960030518     D ttldsc          s             11
016970030518     D txamor          s                   like(ohtxam)
016980030518     D txamot          s                   like(ohtxat)
016990030518     D txatic          s             15  2
017000030518     D ud@te           s              6  0
017010030518     D umsg            s              1
017020030518     D v@amnc          s             13  3
017030030518     D v@amnt          s             13  3
017040030518     D v@cono          s              2
017050030518     D v@csno          s             10
017060030518     D v@difc          s             13  3
017070030518     D v@diff          s             13  3
017080030518     D v@dift          s             13  3
017090030518     D v@etsq          s              5  0
017100030518     D v@otxa          s             13  3
017110030518     D v@otxt          s             13  3
017120030518     D v@prtt          s             13  3
017130030518     D v@prtx          s             13  3
017140030518     D v@shp#          s              5
017150030518     D v@tax           s              2  0
017160030518     D v@txam          s             13  3
017170030518     D v@txat          s             13  3
017180030518     D w               s              2  0
017190030518     D w#cmtp          s                   like(cocmtp)
017200030518     D w#cono          s                   like(cocono)
017210030518     D w#csno          s                   like(cocsno)
017220030518     D w#shp#          s                   like(coshp#)
017230030518     D wa9             s              9
017240030518     D whigcg          s              1
017250030518     D whigcs          s              1
017260030518     D whigrp          s              1
017270030518     D whitcg          s              1
017280030518     D whitcs          s              1
017290030518     D whitem          s              1
017300030518     D wkdpam          s              9  2
017310030518     D wkdpat          s             13  2
017320030518     D wkf2dp          s             11  2
017330030518     D wkpmn           s              4  0
017340030518     D wllocx          s                   like(wnloca)
017350030518     D wmkey           s             65
017360030518     D wmkey1          s             29
017370030518     D wm131p          s              1
017380030518     D work54          s              5  4
017390030518     D work92          s              9  2
017400030518     D wrk110          s             11  0
017410030518     D wrk132          s             13  2
017420030518     D wrk140          s             14  0
017430030518     D wrk150          s             15  0
017440030518     D wrk60           s              6  0
017450030518     D w1cnnm          s                   like(cntnmo)
017460030518     D w1whid          s              2
017470030518     D w2              s              2
017480030518     D w2cnnm          s                   like(cntnmo)
017490030518     D x               s              3  0
017500030518     D x@apid          s                   like(w9apid)
017510030518     D x@cono          s                   like(w9cono)
017520030518     D x@gid6          s                   like(w9gid6)
017530030518     D x@orgn          s                   like(w9orgn)
017540030518     D x@spch          s              2
017550030518     D x@sq05          s                   like(w9sq05)
017560030518     D xadat@          s              1
017570030518     D xagpst@         s              1
017580030518     D xa777@          s              1
017590030518     D xgtxtb          s            + 4    like(ohgtxa)
017600030518     D xptxtb          s            + 4    like(ohptxa)
017610030518     D xxamnb          s                   like(icamnt)
017620030518     D xxbmsq          s                   like(bcbmsq)
017630030518     D xxbttl          s                   like(ccbttl)
017640030518     D xxcctb          s                   like(ohcctt)
017650030518     D xxcnsl          s              1
017660030518     D xxcvrs          s             13
017670030518     D xxdcid          s              3
017680030518     D xxdpab          s                   like(ohdpat)
017690030518     D xxfaxf          s             14
017700030518     D xxfeab          s                   like(ohfeat)
017710030518     D xxfkey          s             11
017720030518     D xxgtxb          s                   like(ohgtxa)
017730030518     D xxortp          s              1
017740030518     D xxovbm          s                   like(ccovbm)
017750030518     D xxptxb          s                   like(ohptxa)
017760030518     D xxsubb          s                   like(icsubt)
017770030518     D xxtdab          s                   like(ohtdat)
017780030518     D xxtotb          s                   like(ictotl)
017790030518     D xxtxab          s                   like(ohtxat)
017800030518     D x1cnnm          s                   like(cntnmo)
017810030518     D x2cnnm          s                   like(cntnmo)
017820030518     D x9@cky          s             11
017830030518     D y               s              3  0
017840030518     D z               s              3  0
017850030518     D zzipsq          s                   like(odipsq)
017860030518     D zzwhlc          s                   like(odwhlc)
017870030518     D z12             s             12  0
017880030911      //#*8p BEG OF ADD
017890030911     D @uptax          s              1
017900030911      //#*8p END OF ADD
017910031217      // #*8q - begin add
017920031217     D xxcihc          s                   like(cinvhc)
017930031217      // #*8q - end add
017940040408      // #*8x - beginning of add                       #*8x
017950040408     D @@UsrName50     s             50
017960040408      // #*8x - end of add                             #*8x
017970040614     D* #*8z - beg of add
017980040614     D date6           s              6  0
017990040614     D @@gid6          s                   like(gogid6)
018000040614     D @@dcid          s                   like(godcid)
018010040614     D @@hssq          s                   like(gohssq)
018020040614     D @xcono          s              2
018030040614     D @xorno          s              5
018040040614     D @xorgn          s              2
018050040614     D @xhssq          s              7
018060040614     D @xcsno          s             10
018070040614     D @xjobq          s             10
018080040614     D @xstrt          s              8
018090040614     D @xsubs          s                   like(gcsubs)
018100040614     D @xpass          s                   like(gcpwrd)
018110040614     D* #*8z - end of add
018120050315     D* #*9d - next line added
018130050315     D xxhssq          s              7  0
018140050301
018150050301       // #*9g - Beg of Add
018160050301     D xlibp           s             10    inz('*LIBL')
018170050301     D xpflag          s              1
018180050301     D xpgmp           s             10
018190050301     D xtypp           s              7
018200050301       // #*9g - End of Add
018210050301
018220030518      // Stand Alone Fields - BOTTOM
018230030518      //---------------------------------------------------------------------
018240000000      //
018250000000     Iicorhdr
018260000000     I              ohgtxa                      ohgtxt
018270000000     I              ohptxa                      ohptxt
018280000000      //---------------------------------------------------------------
018290000000     Iorhe1r        01
018300000000     I                                          ohcrcd                  22
018310000000     Iorhe3r        02
018320000000     I                                          ohcrcd                  22
018330000000      // warehouse management reservation file
018340000000     Iwmrsvr
018350000000     I              wvapid                      wnapid
018360000000     I              wvcono                      wncono
018370000000     I              wvgid6                      wngid6
018380000000     I              wvorgn                      wnorgn
018390000000     I              wvsq05                      wnsq05
018400000000     I              wvloca                      wnloca
018410000000     I              wvltsr                      wnltsr
018420000000     I              wvqtrs                      wnstqt
018430000000      // warehouse management balance file
018440000000     Iwmba1r
018450000000     I              wbloca                      wnloca
018460000000      //
018470000000      // options
018480000000      // next order number (key = ordercc)
018490000000     Iorctl     ns       12 cO   13 c#
018500000000     I                                 19   26 0nxti#
018510000000      //
018520000000      // order messages
018530000000     I          ns       12 cM   13 cS
018540000000     I                                 14   75  msgtxt
018550000000      // a/r terms
018560000000     I          ns       12 cA   13 cT
018570000000     I                                 14   33  terms
018580000000     I                                 39   41 0cdsdy
018590000000     I                                 42   43 0proxd
018600000000     I                                 44   46 0netdy
018610000000     I                                 47   47  prxcd
018620000000     I                                 58   93 0ady
018630000000     I                                 94  153 2apc
018640000000     I                                155  155  inprox
018650000000      // payment type
018660000000     I          ns       12 cP   13 cY
018670000000     I                                 14   43  paydsc
018680000000     I                                 45   45  usecc
018690000000     I                                 46   46  updar
018700000000     I                                 50   79  mrchid
018710000000      // century record
018720000000     I          ns       12 cA   13 cC
018730000000     I                                 14   15 0curcc
018740000000     I                                 16   17 0nxtcc
018750000000      // oe options
018760000000     I          ns       12 cO   13 cO
018770000000     I                                 16   16  rtstp
018780000000     I                                 23   23  umsdso
018790000000     I                                 26   26  inmsdo
018800041020      // #*9c begin of add
018810041020     I                                 40   40  inseqo
018820041020      // #*9c end of add
018830000000     I                                 66   66  nsicd
018840000000     I                                 83   83  prtd2
018850000000     I                                 84   84  rndpr
018860000000     I                                 91   91  invhd
018870000000     I                                205  205  invit
018880000000      // order entry options record (cont...)
018890000000     Iorctl     ns       12 cO   13 cX
018900000000     I                                 19   19  invopt
018910000000     I                                 20   20  showpr
018920000000     I                                 72   72  rtcinv
018930000000     I                                 73   74  cinvhc
018940000000     I                                 76   76  imdrtn
018950000000     I                                 77   77  alwchg
018960000000      // consolidated bill codes
018970000000     Iorctl     ns       12 cB   13 cC
018980000000     I                                 44   45  rvwcc
018990000000     I                                 46   51 0rvwdt
019000000000     I                                 60   61  inusws
019010000000      //
019020000000      // warehouse management system options (00,wm,'options')
019030000000     I          ns       12 cW   13 cO
019040000000     I                                191  191  wmlivo
019050030602      // #*8k - added dcklco
019060030602     I                                242  253  dcklco
019070000000      //
019080000000      // warehouse management warehouse options (00,wm,'optn-',whs)
019090000000     I          ns       12 cW   13 cW
019100000000     I                                119  119  pbxcio
019110030602      // #*8k - added midsco
019120030602     I                                200  200  midsco
019130000000     I          ns       12 cE   13 cO
019140000000     I                                 67   67  pbxcio
019150000000      //* print boxes on customer invoice
019160000000      // system options
019170000000     I          ns       12 cS   13 cO
019180000000     I                                 14   14  mltco
019190000000     I                                 15   16 0dftco
019200000000     I                                 26   26  mltwh
019210000000     I                                137  151 0rtvlog
019220000000     I                                 86   86  hazmat
019230000000     I                                 88   88  eicmto
019240000000     I                                 89   89  wseico
019250000000     I                                 90   90  cseico
019260000000     I                                 91   91  dteico
019270000000     I                                 92   92  igeico
019280000000     I                                 93   93  cgeico
019290000000     I                                 94   95  eicmko
019300000000     I                                 96   96  uvrtxo
019310000000     I                                 99   99  ugptxo
019320000000      //--------------------------------
019330000000      // system options extension record
019340000000      //--------------------------------
019350000000     Iorctl     ns       12 cS   13 cX
019360000000     I                                 21   21  alqcmo
019370000000     I                                 20   20  addrsq
019380000000     I                                 22   22  formtp
019390000000      // i/a options
019400000000     Iorctl     ns       12 cI   13 cO
019410000000     I                                 24   25 0whtcom
019420000000      //
019430000000     I          ns       12 cW   13 cH
019440000000     I                                156  156  prtopt
019450000000      //---------------------------------
019460000000      // country names record
019470000000      //---------------------------------
019480000000     Iorctl     ns       12 cC   13 cN
019490000000     I                                  9   11  cntryo
019500000000     I                                 14   43  cntnmo
019510000000     I                                 44   44  prfrmo
019520000000     I                                 45   45  prlabo
019530000000     I                                 46   46  dtfmcn
019540000000     I                                 47   47  adrsqo
019550000000      //--------------------------------
019560000000      // country code company override
019570000000      //--------------------------------
019580000000     Iorctl     ns       12 cC   13 cO
019590000000     I                                 14   14  prcfro
019600000000      //--------------------------------
019610000000      // work order customer number
019620000000      //--------------------------------
019630000000     Iorctl     ns       12 cX   13 cX
019640000000     I                                162  171 0wocsno
019650000000      //
019660000000     I                                179  198  txhedo
019670000000     I                                199  213  txidno
019680000000      //-----------------------
019690000000      // order entry options
019700000000      //-----------------------
019710000000     Iorctl     ns       12 cP   13 cO
019720000000     I                                 96   96  rtvflg
019730000000      //--------------------------------
019740000000      // ic options
019750000000      //--------------------------------
019760000000     Iorctl     ns       12 cM   13 cO
019770000000     I                                 14   14  icmlto
019780000000     I                                 15   17  curdfo
019790000000     I                                 42   42  iclivo
019800000000      //--------------------------------
019810000000      // ic company options
019820000000      //--------------------------------
019830000000     Iorctl     ns       12 cM   13 cC
019840000000     I                                 14   16  curcoo
019850000000      //--------------------------------
019860000000      // currency
019870000000      //--------------------------------
019880000000     Iorctl     ns       12 cC   13 cU
019890000000     I                                 39   41  ccsymo
019900000000     I                                 43   43  ccdeco
019910000000     I                                 47   49  ccovbm
019920000000     I                                 51   51  ccbttl
019930000000      //
019940000000      //------------------------------------
019950000000      // fax system options
019960000000      //------------------------------------
019970000000     I          ns       12 cF   13 cO
019980000000     I                                 14   23  qfxotq
019990000000     I                                 24   24  phinvo
020000000000     I                                 31   40  ffinvo
020010000000     I                                108  117  csinvo
020020000000     I                                178  178  mfinvo
020030000000     I                                234  235  dpinvo
020040000000      //--------------------------------
020050000000      // warehouse number record
020060000000      //--------------------------------
020070000000     I          ns       12 cW   13 cN
020080000000     I                                254  254  wheico
020090000000      //-----------------------------------
020100000000      // warehouse number extension record
020110000000      //-----------------------------------
020120000000     I          ns       12 cW   13 cX
020130000000     I                                 14   22  whgeoc
020140000000     I                                 23   37  gstr#o
020150000000      //---------------------------
020160000000      // special charge code
020170000000      //---------------------------
020180000000     Iorctl     ns       12 cS   13 cP
020190000000     I                                 93  107  sppido
020200000000      //--------------------------------
020210000000      // work order system options
020220000000      //--------------------------------
020230000000     I          ns       12 cW   13 cP
020240000000      //------------------------------------
020250000000      // fob code options
020260000000      //------------------------------------
020270000000     Iorctl     ns       12 cF   13 cB
020280000000     I                                 14   43  fobdco
020290000000      //---------------------------------
020300000000      // return reason code
020310000000      //---------------------------------
020320000000     I          ns       12 cO   13 cR
020330000000     I                                 45   45  rtndsp
020340000000      //---------------------------------
020350000000      // tax bodies
020360000000      //---------------------------------
020370000000     I          ns       12 cT   13 cX
020380000000     I                                 39   43 3crateo
020390000000     I                                 44   48 3nrateo
020400000000     I                                 49   56 0txdato
020410000000     I                             p   57   59 3clrt10
020420000000     I                             p  113  115 3cbsrto
020430000000     I                                187  187  gstyno
020440000000     I                                188  188  pstyno
020450000000      //-------------------------------------------
020460000000      // electronic payment company options record
020470000000      //-------------------------------------------
020480000000     Iorctl     ns       12 cP   13 c1
020490000000     I                                 14   15  pnhlcd
020500000000     I                                 22   23  pehlcd
020510000000     I                                 45   45  eplive
020520000000     I          ns
020530000000      //----------------------------------------------------*
020540000000      // f i e l d    d e f i n i t i o n
020550000000      //----------------------------------------------------*
020560000000      //----------------------------------------------------*
020570000000      // k e y    l i s t s
020580000000      //----------------------------------------------------*
020590000000      // key for file bocrt
020600000000     C     bo0key        klist
020610000000     C                   kfld                    a$cono
020620000000     C                   kfld                    a$orno
020630000000     C                   kfld                    a$orgn
020640000000      // key for file orde1i
020650000000     C     od0key        klist
020660000000     C                   kfld                    ohcono
020670000000     C                   kfld                    ohorno
020680000000     C                   kfld                    ohorgn
020690000000      // key for file orhed
020700000000     C     oh0key        klist
020710000000     C                   kfld                    c$cono
020720000000     C                   kfld                    c$orno
020730000000     C                   kfld                    ohorgn
020740000000      // key for file orhe1
020750000000     C     oh1key        klist
020760000000     C                   kfld                    c$ortp
020770000000     C                   kfld                    c$orst
020780000000     C                   kfld                    c$whid
020790000000     C                   kfld                    c$cono
020800000000     C                   kfld                    c$orno
020810000000      //
020820000000     C     oh1ky1        klist
020830000000     C                   kfld                    c$ortp
020840000000      // key for file orhe3
020850000000     C     oh3key        klist
020860000000     C                   kfld                    d$whid
020870000000     C                   kfld                    d$rout
020880000000     C                   kfld                    d$stop
020890000000     C                   kfld                    d$cono
020900000000     C                   kfld                    d$orno
020910000000      // key for file wmpck
020920000000     C     wk0key        klist
020930000000     C                   kfld                    e$whid
020940000000     C                   kfld                    e$itno
020950000000      // key for file cusms
020960000000     C     cm0key        klist
020970000000     C                   kfld                    f$cono
020980000000     C                   kfld                    f$csno
020990000000      //
021000000000     C     cm0ky1        klist
021010000000     C                   kfld                    ohcono
021020000000     C                   kfld                    ohcsno
021030000000      //
021040000000      // key for file bompr
021050000000     C     bp0key        klist
021060000000     C                   kfld                    g$cono
021070000000     C                   kfld                    g$csno
021080000000     C                   kfld                    g$orno
021090000000     C                   kfld                    g$orsq
021100000000     C                   kfld                    g$prit
021110000000      // key for file bomco
021120000000     C     bc0key        klist
021130000000     C                   kfld                    h$cono
021140000000     C                   kfld                    h$csno
021150000000     C                   kfld                    h$orno
021160000000     C                   kfld                    h$orsq
021170000000     C                   kfld                    h$prit
021180000000     C                   kfld                    h$bmsq
021190000000      // key for file wmrsv
021200000000     C     wv0key        klist
021210000000     C                   kfld                    i$apid
021220000000     C                   kfld                    i$cono
021230000000     C                   kfld                    i$gid6
021240000000     C                   kfld                    i$orgn
021250000000     C                   kfld                    i$sq05
021260000000     C                   kfld                    i$bmsq
021270000000     C                   kfld                    i$loca
021280000000     C                   kfld                    i$ltsr
021290000000      // key for file oewtr
021300000000     C     ot0key        klist
021310000000     C                   kfld                    otcono
021320000000     C                   kfld                    otorno
021330000000     C                   kfld                    otorgn
021340000000      // key for file wmba1
021350000000     C     wb1key        klist
021360000000     C                   kfld                    j$itno
021370000000     C                   kfld                    j$whid
021380000000     C                   kfld                    j$assq
021390000000     C                   kfld                    j$loca
021400000000     C                   kfld                    j$ltsr
021410000000      // key for file wmloc
021420000000     C     wl0key        klist
021430000000     C                   kfld                    k$whid
021440000000     C                   kfld                    k$loca
021450000000      // key for file wmrls
021460000000     C     wn0key        klist
021470000000     C                   kfld                    l$apid
021480000000     C                   kfld                    l$cono
021490000000     C                   kfld                    l$gid6
021500000000     C                   kfld                    l$orgn
021510000000     C                   kfld                    l$sq05
021520000000     C                   kfld                    l$loca
021530000000     C                   kfld                    l$ltsr
021540000000      // key for file oebh1
021550000000     C     oebpky        klist
021560000000     C                   kfld                    ohcono
021570000000     C                   kfld                    ohorno
021580000000     C                   kfld                    ohorgn
021590000000      // key for file icordt
021600000000     C     odckey        klist
021610000000     C                   kfld                    odcono
021620000000     C                   kfld                    odorno
021630000000     C                   kfld                    odorgn
021640000000     C                   kfld                    odorsq
021650000000      // key for additional u/m file
021660000000     C     au0key        klist
021670000000     C                   kfld                    a0itno
021680000000     C                   kfld                    a0unms
021690000000      // partial key list for iaeic
021700000000     C     in0key        klist
021710000000     C                   kfld                    i0whid
021720000000     C                   kfld                    i0itno
021730000000     C                   kfld                    i0igid
021740000000     C                   kfld                    i0cono
021750000000     C                   kfld                    i0csno
021760000000     C                   kfld                    i0cgid
021770000000      // key for file addr
021780000000     C     sa0key        klist
021790000000     C                   kfld                    ohcono
021800000000     C                   kfld                    ohcsno
021810000000     C                   kfld                    ohshp#
021820000000      //
021830000000      // key list for cihld
021840000000     C     ci0key        klist
021850000000     C                   kfld                    ##cono
021860000000     C                   kfld                    ##cbcd
021870000000     C                   kfld                    ##csno
021880000000     C                   kfld                    ##pytp
021890000000      //
021900000000      // key list for orhe12
021910000000     C     oh0ky1        klist
021920000000     C                   kfld                    ##cict
021930000000     C                   kfld                    ##whid
021940000000     C                   kfld                    ##cono
021950000000     C                   kfld                    ##csno
021960000000     C                   kfld                    ##orno
021970000000     C                   kfld                    ##orgn
021980000000      //
021990000000      // key list for cscom
022000000000     C     cs0key        klist
022010000000     C                   kfld                    w#cono
022020000000     C                   kfld                    w#csno
022030000000     C                   kfld                    w#shp#
022040000000     C                   kfld                    w#cmtp
022050000000      //
022060000000      // key list for oeret
022070000000     C     o@0pky        klist
022080000000     C                   kfld                    odcono
022090000000     C                   kfld                    odorno
022100000000     C                   kfld                    odorgn
022110000000     C                   kfld                    odorsq
022120000000      // key for file orhed
022130000000     C     oh0ky2        klist
022140000000     C                   kfld                    xxcono
022150000000     C                   kfld                    xxorno
022160000000     C                   kfld                    xxorgn
022170000000      // key to usrfc file
022180000000     C     uz0key        klist
022190000000     C                   kfld                    @@usid
022200000000      // key to cseml file
022210000000     C     ce0key        klist
022220000000     C                   kfld                    ohcono
022230000000     C                   kfld                    ohcsno
022240000000     C                   kfld                    @@shp#
022250000000     C                   kfld                    @@emgp
022260000000      //
022270000000      // partial key for file oeimm
022280000000     C     w90pky        klist
022290000000     C                   kfld                    x@apid
022300000000     C                   kfld                    x@cono
022310000000     C                   kfld                    x@gid6
022320000000     C                   kfld                    x@orgn
022330000000     C                   kfld                    x@sq05
022340000000      //
022350000000      // key to fwopt file
022360000000     C     fw0key        klist
022370000000     C                   kfld                    @@cono
022380000000     C                   kfld                    @@user
022390000000     C                   kfld                    @@doc#
022400000000      //
022410000000      // key to fwout file
022420000000     C     fo0key        klist
022430000000     C                   kfld                    @@outq
022440000000      //
022450000000      //
022460040408      // #*8x - del  // key to secty file
022470040408      // #*8x - del C     ys0key        klist
022480040408      // #*8x - del C                   kfld                    @@user
022490040408      //
022500000000      // key for emldfts file
022510000000     C     em0key        klist
022520000000     C                   kfld                    ohcono
022530000000     C                   kfld                    @@form
022540000000     C                   kfld                    @@cstm
022550000000      // mail server header
022560000000     C     eh0key        klist
022570000000     C                   kfld                    @@ectl
022580000000      //
022590000000      //* orct1 partial key list
022600000000     C     cc1pky        klist
022610000000     C                   kfld                    @@apid
022620000000     C                   kfld                    @@rccd
022630000000      //
022640000000      // mail server detail
022650000000     C     ed0key        klist
022660000000     C                   kfld                    @@ectl
022670000000     C                   kfld                    @@sq03
022680040614      // #*8z - beg of add
022690040614     C     gw0key        klist
022700040614     C                   kfld                    @@apid
022710040614     C                   kfld                    ohcono
022720040614     C                   kfld                    @@gid6
022730040614     C                   kfld                    ohorgn
022740040614     C                   kfld                    @@hssq
022750040614     C                   kfld                    @@dcid
022760040614     C* key to gwcus file
022770040614     C     gc0key        klist
022780040614     C                   kfld                    ohcono
022790040614     C                   kfld                    ohcsno
022800040614     C                   kfld                    ohshp#
022810040614     C* Partial key to gwcus file
022820040614     C     gcpkey        klist
022830040614     C                   kfld                    ohcono
022840040614     C                   kfld                    ohcsno
022850040614      // #*8z - end of add
022860050315      // #*9d- beg add
022870050315      // key for file pspay
022880050315     C     s202ky        klist
022890050315     C                   kfld                    ohcono
022900050315     C                   kfld                    ohorno
022910050315     C                   kfld                    ohorgn
022920050315     C                   kfld                    xxhssq
022930050315      // #*9d- end add
022940000000      /free
022950000000       //---------------------------------------------------------------
022960000000       //
022970000000       //* entry plist
022980000000       //
022990000000       //
023000000000       // first cycle setup
023010000000       //
023020000000       //
023030000000       if *in99 = *off;
023040000000         exsr $first;
023050000000       endif;
023060000000       //
023070000000       //--------------------------------------------------------------- toptag
023080000000       // u1 on read alternate index file 1 - type/status/wh/co/order
023090000000       // u2 on read alternate index file 3 - wh/route/stop/co/order
023100000000       // u3 on read alternate index file12 - control#/csno/co/order/gen
023110000000       //
023120030518      /end-free
023130000000     C     toptag        tag
023140000000      /free
023150000000       if *inu1 = *on;
023160000000         c$oh1h = hed1ky;
023170000000         setll oh1key orhe1r;
023180000000       endif;
023190000000       if *inu2 = *on;
023200000000         d$oh3h = hed3ky;
023210000000         setll oh3key orhe3r;
023220000000       endif;
023230000000       if *inu3 = *on;
023240000000         ##cict = frcict;
023250000000         ##cono = ldcomp;
023260000000         ##csno = *zeros;
023270000000         ##orno = '00000';
023280000000         ##orgn = *zeros;
023290000000         setll oh0ky1 orhe12r;
023300000000       endif;
023310000000       //
023320000000       //
023330000000       // file read subroutines
023340030518      /end-free
023350000000     C     loop          tag
023360000000      /free
023370000000       //
023380000000       if *inu1 = *on;
023390000000         exsr $read1;
023400000000       endif;
023410000000       if *inu2 = *on;
023420000000         exsr $read3;
023430000000       endif;
023440000000       if *inu3 = *on;
023450000000         exsr $rea12;
023460000000       endif;
023470000000       //
023480000000       // close printer file apprtin2
023490000000       if formtp = '1'
023500000000         and *in60 = *off;
023510000000         if @first = 'N'
023520000000           and ldblcd = *blanks;
023530000000           close apprtin2;
023540000000         else;
023550000000           @first = 'N';
023560000000         endif;
023570000000       endif;
023580000000       //
023590000000       if formtp = '1'
023600000000         and *in60 = *on
023610000000         and @first = 'N'
023620000000         and endcol <> 'Y';
023630000000         close apprtin2;
023640000000       endif;
023650000000       //
023660000000       if *in60 = *on;
023670030518      /end-free
023680000000     C                   goto      endtag
023690000000      /free
023700000000       endif;
023710000000       //
023720000000       // load arrays
023730000000       exsr $load;
023740000000       //
023750000000       // mark credit card order for settlement
023760000000       exsr $ep526;
023770000000       if mrkflg = 'N';
023780030820         if *inu1 = *on                                    // #*8o
023790030820           or *inu3 = *on;                                 // #*8o
023800030820           c$oh1h = skey1;                                 // #*8o
023810030820         endif;                                            // #*8o
023820030518      /end-free
023830000000     C                   goto      loop
023840000000      /free
023850000000       endif;
023860000000       //
023870000000       //
023880000000       // get fob description for the header of a
023890000000       // consolidated invoice
023900000000       *in89 = *off;
023910000000       if ohfobc <> *blanks;
023920000000         x1comp = *zeros;
023930000000         x1appl = 'XA';
023940000000         %subst(x1ckey:1:2) = 'FB';
023950000000         %subst(x1ckey:3:5) = ohfobc;
023960000000         chain x1ctky orctl;
023970000000         *in90 = not %found;
023980000000         if *in90 = *off;
023990000000           @tfobd = fobdco;
024000000000           *in89 = *on;
024010000000         endif;
024020000000       endif;
024030000000       //
024040000000       //* if gst or pst has a value...output that vs. sales tax
024050000000       *in71 = *off;
024060000000       *in72 = *off;
024070000000       *in71 = (ohgtxa <> 0);
024080000000       *in72 = (ohptxa <> 0);
024090000000       //
024100000000       // print subroutine
024110000000       exsr $print;
024120000000       //
024130000000       // generate order activity record
024140000000       //   determine the proper notes statement
024150000000       p#ntes = *blanks;
024160000000       //
024170000000       if *inu3 = *on;
024180000000         p#ntes = %trimr('Consolid') + 'ated';
024190030518      /end-free
024200000000     C     p#ntes        cat       'Print':1     p#ntes
024210000000      /free
024220000000       else;
024230000000         if ohcbcd <> *blanks;
024240030518      /end-free
024250050615     C* #*9j - Begin of change
024260050615     C* del     #consd        cat       ohcbcd:0      p#ntes
024270051103     C* #*9k - Begin of change
024280051103     C     #consd        cat       ohcbcd:0      p#ntes
024290051103     C* #*9k del    #consd        cat       xxcihc:0      p#ntes
024300051103     C* #*9k - End of change
024310050615     C* #*9j - End of change
024320000000      /free
024330000000         endif;
024340000000       endif;
024350000000       //
024360000000       if *in76 = *on;
024370000000         p#ntes = *blanks;
024380000000         %subst(p#ntes:1:7) = 'Reprint';
024390000000       endif;
024400000000       //
024410000000       if *in77 = *on;
024420000000         p#ntes = *blanks;
024430030518      /end-free
024440000000     C     'Reprint'     cat       'from':1      p#ntes
024450000000     C     p#ntes        cat       'Hist':1      p#ntes
024460000000     C     p#ntes        cat       'ory':0       p#ntes
024470000000      /free
024480000000       endif;
024490000000       //
024500000000       p#shdn = 'N';
024510000000       p#cono = ohcono;
024520000000       p#orno = ohorno;
024530000000       p#orgn = ohorgn;
024540000000       p#pror = ohpror;
024550000000       p#oacd = '08';
024560000000       exsr $oea10;
024570000000       //
024580040614       // #*8z - beg of add
024590040614       // submit the xml send of the invoice if necessary
024600040614       exsr $xmlout;
024610040614       // #*8z - end of add
024620000000       // write record to oewtr for warehouse transfer orders
024630000000       // if not a reprint.
024640000000       //    and not a consolidated invoice print
024650000000       if ohcono = whtcom
024660000000         and ldblcd = *blanks
024670000000         and *in76 = *off
024680000000         and *in77 = *off;
024690000000         otcono = ohcono;
024700000000         otorno = ohorno;
024710000000         otorgn = ohorgn;
024720000000         //
024730000000         //* retrieve correct output que for this user and wh
024740000000         //-----------------------------------------*
024750000000         //* determine the printer output queue
024760000000         //-----------------------------------------*
024770000000         //   inv trans register outq
024780000000         @outq = *blanks;
024790000000         @que# = 16;
024800000000         w1whid = ohwhid;
024810000000         XADFTQ ( w1whid : @dspid : @que# : @outq
024820000000         );
024830000000         //
024840000000         otddsp = @dspid;
024850000000         //
024860000000         //* move gl posting date to oewtr file.
024870000000         chain ohcsno powt1r;
024880000000         *in90 = not %found;
024890000000         if *in90 = *off
024900000000           and pxarwt = 'Y';
024910050301
024920050301           // #*9g - Beg of Add
024930050301           // Check if GL is Installed/Live
024940050301           xpgmp = 'GLIVE';
024950050301           xtypp = '*FILE';
024960050301           exsr $chkobject;
024970050301           if xpflag <> '1';
024980050301             clear @@pocc;
024990050301             clear @@podt;
025000050301           endif;
025010050301           // #*9g - End of Add
025020050301
025030000000           otpocc = @@pocc;
025040000000           otpodt = @@podt;
025050000000         endif;
025060000000         //
025070000000         chain ot0key oewtrr;
025080000000         *in90 = not %found;
025090000000         if *in90 = *on;
025100000000           write oewtrr;
025110000000         endif;
025120000000       endif;
025130000000       //*
025140000000       //
025150030518      /end-free
025160000000     C                   goto      loop
025170000000      //
025180000000      //--------------------------------------------------------------- endtag
025190000000     C     endtag        tag
025200000000      /free
025210000000       //--------------------------------------------------------------- endtag
025220000000       //
025230000000       // delete last cihld record when print consolidated invoices
025240000000       if ldrprt <> 'Y';
025250000000         if ldblcd <> *blanks
025260000000           and fndrec = 'Y';
025270000000           p1cono = %editc(ohcono:'X');
025280000000           p1blcd = svblcd;
025290000000           p1pytp = svpytp;
025300000000           p1csno = %editc(svarcs:'X');
025310000000           p1mode = 'D';
025320000000           OE529 ( p1shdn : p1cono : p1blcd :
025330000000           p1pytp : p1csno : p1inno : p1cict :
025340000000           p1mode );
025350000000         endif;
025360000000       endif;
025370000000       //
025380030518      /end-free
025390000000     C   u1              if        #type = 'I'
025400000000      /free
025410000000         *in60 = *off;
025420000000         #type = 'O';
025430000000         %subst(hed1ky:1:1) = #type;
025440030518      /end-free
025450000000     C                   goto      toptag
025460000000      /free
025470000000       endif;
025480000000       //
025490030518      /end-free
025500000000     C   u1              if        #type = 'O'
025510000000     C                             and ldortp <> 'I'
025520000000      /free
025530000000         *in60 = *off;
025540000000         %subst(ttldsc:1:6) = 'CREDIT';
025550030518         %subst(ttldsc:7:5) = ' MEMO';
025560000000         if *in42 = *on;
025570000000           %subst(ttldsc:1:7) = 'INVOICE';
025580030518           %subst(ttldsc:8:4) = '    ';
025590000000         endif;
025600000000         #type = 'R';
025610000000         %subst(hed1ky:1:1) = #type;
025620030518      /end-free
025630000000     C                   goto      toptag
025640000000      /free
025650000000       endif;
025660000000       //
025670000000       //* print bottom on end of consoladited
025680000000       if endcol = 'Y';
025690000000         exsr $botcs;
025700000000         if formtp = '1';
025710000000           close apprtin2;
025720000000         endif;
025730000000       endif;
025740000000       //
025750000000       //  shut down oe515m
025760000000       if oe515m@ = 'Y';
025770000000         @pshdn = 'Y';
025780000000         exsr $515m;
025790000000       endif;
025800000000       //
025810000000       // shut down credit card decoding program
025820000000       if oep004@ = 'Y';
025830000000         p2shdn = 'Y';
025840000000         OEP004 ( p2shdn : p1crcd : p1mode :
025850000000         p14dig );
025860000000       endif;
025870000000       // shut down credit card decoding program
025880000000       if oep526@ = 'Y';
025890000000         p@shdn = 'Y';
025900000000         OEP526 ( p@shdn : p9cono : p9orno :
025910000000         p9orgn : mrkflg : @today );
025920000000       endif;
025930000000       //  shut down ic revalue program
025940000000       if ic012@ = 'Y';
025950000000         @pshdn = 'Y';
025960000000         exsr $ic012;
025970000000       endif;
025980000000       //
025990000000       // if not multi warehouse fill with selected warehouse
026000000000       if ldwhse <> *blanks;
026010000000         @@whid = ldwhse;
026020000000       endif;
026030000000       //
026040000000       // check the warehouse options to see if hazmat
026050000000       // papers should print at invoice time
026060000000       // prtopt = 3 print with invoices
026070000000       // not on reprints
026080000000       %subst(key@@@:1:4) = '00IA';
026090000000       %subst(key@@@:5:5) = 'WHAZD';
026100000000       %subst(x9@cky:1:9) = key@@@;
026110000000       %subst(x9@cky:10:2) = @@whid;
026120000000       chain x9@cky orctl;
026130000000       *in85 = not %found;
026140000000       if *in85 = *on;
026150000000         clear prtopt;
026160000000       else;
026170000000         except relctl;
026180000000       endif;
026190000000       //
026200000000       // print hazmat shipping papers
026210000000       if *in77 = *off
026220000000         and *in76 = *off;
026230000000         if hazmat = 'Y'
026240000000           and prtopt = '3';
026250030717           oe402@ = 'Y';                                   // #*8m
026260000000           shtdn = 'N';
026270000000           p1ext = 'N';
026280000000           p1prt = 'B';
026290030528           p#cono = ohcono;
026300030528           p#orgn = ohorgn;
026310030528           OE402 ( shtdn : p1ext : p1prt : p#cono :
026320030528           ohorno : p#orgn : @@whid );
026330000000         endif;
026340000000       endif;
026350000000       //
026360000000       // save the lda
026370000000       if *in60 = *on;
026380000000         *inlr = *on;
026390030518         shtdnp = 'Y';
026400000000         select;
026410000000         when wm131p = 'Y';
026420000000           exsr $wm131;
026430000000         endsl;
026440000000         //
026450000000         if xadat@ = 'Y';
026460000000           XADAT ( jdayp : gdatep : shtdnp );
026470000000         endif;
026480000000         //
026490000000         if icopen = 'Y';
026500000000           close icordt;
026510000000           close icorhd;
026520000000         endif;
026530000000         //
026540000000         //* close rtv sub-pgm
026550000000         if oe188@ = 'Y';
026560000000           p1shdn = 'Y';
026570000000           OE188 ( p1shdn : p1mode : p1cono :
026580000000           p1orno : p1orgn : p1orsq : p1rtvl :
026590000000           p1itno : p1itd1 : p1itd2 : p1whid :
026600000000           p1qtsh : p1unms : p1umcd : p1umlt :
026610000000           p1prum : p1rtrc : p1litp );
026620000000         endif;
026630000000         //
026640000000         //* close cihld pgm
026650000000         if oe529@ = 'Y';
026660000000           p1shdn = 'Y';
026670000000           OE529 ( p1shdn : p1cono : p1blcd :
026680000000           p1pytp : p1csno : p1inno : p1cict :
026690000000           p1mode );
026700000000         endif;
026710000000         //
026720000000         // shut down order activity program
026730000000         if @oea10 = 'Y';
026740000000           p#shdn = 'Y';
026750000000           exsr $oea10;
026760000000         endif;
026770000000         //
026780000000         //* close time zone calc program
026790000000         if xa777@ = 'Y';
026800000000           $$shdn = 'Y';
026810000000           XA777 ( $$usid : $$time : $$date :
026820000000           $$tmzn : $$shdn );
026830000000         endif;
026840000000         //
026850000000         //* shut down gst/pst tax calculation program
026860000000         if xagpst@ = 'Y';
026870000000           shtdwn = 'Y';
026880000000           exsr $gpstx;
026890000000         endif;
026900000000         //
026910000000         //* close iccsms
026920000000         if @iccsm = 'Y';
026930000000           close iccsms;
026940000000         endif;
026950000000         //
026960000000         // shut down $ic001
026970000000         if ic001 = 'Y';
026980000000           @pshdn = 'Y';
026990000000           exsr $ic001;
027000000000         endif;
027010000000         //
027020000000         //  shut down oe526a@
027030000000         if oe526a@ = 'Y';
027040000000           p2shdn = 'Y';
027050000000           p2whid = ohwhid;
027060000000           p2rsto = *blanks;
027070000000           OE526A ( p2shdn : p2whid : p2rsto );
027080000000         endif;
027090030717       //
027100030717       // shutdown hazmat paper driver pgm                   #*8m
027110030717       if oe402@ = 'Y';                                    //#*8m
027120030717         shtdn = 'Y';                                      //#*8m
027130030717           OE402 ( shtdn : p1ext : p1prt : p#cono :        //#*8m
027140030717           ohorno : p#orgn : @@whid );                     //#*8m
027150030717       endif;                                              //#*8m
027160000000         //
027170000000         out lda;
027180000000         return;
027190000000       endif;
027200000000       //
027210000000       //*************************************************************** $read1
027220000000       // $read1 - read alternative index file for order header file
027230000000       //          u1 is on
027240000000       //
027250000000       begsr $read1;
027260000000       //
027270000000      /end-free
027280000000     C     read1         tag
027290000000      /free
027300000000       //
027310000000       *in60 = *off;
027320000000       reade oh1ky1 orhe1r;                                                     // =
027330000000       *in60 = %eof;                                                            // =
027340000000       if *in60 = *off;
027350000000         coord = $3c001;
027360000000         detlla = $3c002;
027370000000         duedt = $3c006;
027380000000         futdt = $3c008;
027390000000         netdt = $3c007;
027400000000         ovidt = $3c005;
027410000000         rtestp = $3c004;
027420000000         shpa = $3c003;
027430000000         svorst = ohorst;
027440000000         svws02 = ohws02;
027450000000         svcsnm = ohcsnm;
027460000000         svcad1 = ohcad1;
027470000000         svcad2 = ohcad2;
027480000000         svcad3 = ohcad3;
027490000000         svcad4 = ohcad4;
027500000000         svctid = ohctid;
027510000000         svblcy = ohblcy;
027520000000         svblst = ohblst;
027530000000         svblzp = ohblzp;
027540000000         svshnm = ohshnm;
027550000000         svsad1 = ohsad1;
027560000000         svsad2 = ohsad2;
027570000000         svsad3 = ohsad3;
027580000000         svsad4 = ohsad4;
027590000000         svshci = ohshci;
027600000000         svscty = ohscty;
027610000000         svshst = ohshst;
027620000000         svszip = ohszip;
027630000000         svinno = ohinno;
027640000000         //
027650000000         //* retrieve ic header extension
027660000000         if iclive = 'Y';
027670000000           chain(n) od0key icorhdr;
027680000000           *in90 = not %found;
027690000000           if *in90 = *on;
027700000000             ohcurr = @dftcr;
027710000000           endif;
027720000000         endif;
027730000000       endif;
027740000000       if *in60 = *on;
027750000000         leavesr;
027760000000       endif;
027770000000       //
027780000000       // restart check
027790000000       if ldrprt = 'Y';
027800000000         if ohws02 = '&&';
027810000000           if ldford = ldtord;
027820000000             if ohorno = ldford;
027830000000               ohws02 = *blanks;
027840000000               ohorst = ldcrst;
027850000000             endif;
027860000000           endif;
027870000000         endif;
027880000000       endif;
027890000000       //
027900000000       // is order number is greater than to order number?
027910000000       // is order number less than from order number?
027920000000      /end-free
027930000000     C  n60              if        ohorno > ldtord
027940000000     C                             or ohorno < ldford
027950000000      /free
027960000000       //
027970000000       // all warehouses ?
027980000000         if ldwhse = *blanks;
027990000000           ohorst = svorst;
028000000000           ohws02 = svws02;
028010000000           update orhe1r;
028020000000      /end-free
028030000000     C                   goto      read1
028040000000      /free
028050000000         endif;
028060000000         *in60 = *on;
028070000000       endif;
028080000000       //
028090000000       //* if reprinting do not include consolidated invoices = 'n'
028100000000       if ldrprt = 'Y';
028110000000         if ldblcd = *blanks;
028120000000           if ohcbcd <> *blanks;
028130000000      /end-free
028140000000     C                   goto      read1
028150000000      /free
028160000000           endif;
028170000000         endif;
028180000000       endif;
028190000000       //
028200000000       // is company not equal to company selected?
028210000000      /end-free
028220000000     C  n60              if        ohcono <> ldcomp
028230000000      /free
028240000000       //
028250000000       // all warehouses ?
028260000000         if ldwhse = *blanks;
028270000000           ohorst = svorst;
028280000000           ohws02 = svws02;
028290000000           update orhe1r;
028300000000      /end-free
028310000000     C                   goto      read1
028320000000      /free
028330000000         endif;
028340000000         *in60 = *on;
028350000000       endif;
028360000000       //
028370000000       // is warehouse blank? (print all warehouses)
028380000000       if ldwhse <> *blanks;
028390000000         //
028400000000         // is warehouse not equal to warehouse selected?
028410000000      /end-free
028420000000     C  n60              if        ohwhid <> ldwhse
028430000000      /free
028440000000           *in60 = *on;
028450000000         endif;
028460000000       endif;
028470000000       //
028480000000       // is status not equal to status selected?
028490000000      /end-free
028500000000     C  n60              if        ohorst <> status
028510000000      /free
028520000000         *in60 = *on;
028530000000       endif;
028540000000       //
028550000000       // is type not equal to type selected?
028560000000       if *in60 = *on;
028570000000         ohorst = svorst;
028580000000         ohws02 = svws02;
028590000000         update orhe1r;
028600000000         leavesr;
028610000000       endif;
028620000000       //
028630040408
028640040408       // check if user authorized to warehouse?      // #*8x - add
028650040408       if NOT ChkWhAut( @user : ohwhid);              // #*8x - add
028660040408         ohorst = svorst;                             // #*8x - add
028670040408         ohws02 = svws02;                             // #*8x - add
028680040408         update orhe1r;                               // #*8x - add
028690040408       // #*8x - begin
028700040408      /end-free
028710040408     C                   goto      read1
028720040408      /free
028730040408       // #*8x - end
028740040408       endif;                                         // #*8x - add
028750040408
028760000000       // check in use status
028770000000       if ohws02 <> *blanks;
028780000000         ohorst = svorst;
028790000000         ohws02 = svws02;
028800000000         update orhe1r;
028810000000      /end-free
028820000000     C                   goto      read1
028830000000      /free
028840000000       endif;
028850000000       //
028860000000       // check cancel date
028870000000       if ldcndt <> *blanks
028880000000         and ldcndt <> *zeros;
028890000000         if @hcndt > @lcndt
028900000000           or @hcndt = *zeros;
028910000000           ohorst = svorst;
028920000000           ohws02 = svws02;
028930000000           update orhe1r;
028940000000      /end-free
028950000000     C                   goto      read1
028960000000      /free
028970000000         endif;
028980000000       endif;
028990000000       //
029000000000       // check customer po
029010000000       if ldcspo <> *blanks
029020000000         and ohcspo <> ldcspo;
029030000000         ohorst = svorst;
029040000000         ohws02 = svws02;
029050000000         update orhe1r;
029060000000      /end-free
029070000000     C                   goto      read1
029080000000      /free
029090000000       endif;
029100000000       //
029110000000       if l#csno <> *zeros;
029120000000         // check customer number
029130000000         if ldarfg = *blank
029140000000           and ohcsno <> l#csno;
029150000000           ohorst = svorst;
029160000000           ohws02 = svws02;
029170000000           update orhe1r;
029180000000      /end-free
029190000000     C                   goto      read1
029200000000      /free
029210000000         endif;
029220000000         //
029230000000         // check a/r customer number
029240000000         if ldarfg = 'Y'
029250000000           and oharcs <> l#csno;
029260000000           ohorst = svorst;
029270000000           ohws02 = svws02;
029280000000           update orhe1r;
029290000000      /end-free
029300000000     C                   goto      read1
029310000000      /free
029320000000         endif;
029330000000       endif;
029340000000       //
029350000000       // check customer commitment code
029360000000       if l#cmcd <> *zeros;
029370000000         if ohcono <> cmcono
029380000000           or ohcsno <> cmcsno;
029390000000           chain(n) cm0ky1 cusmsr;
029400000000           *in90 = not %found;
029410000000         endif;
029420000000         if l#cmcd <> cmcscm;
029430000000           ohorst = svorst;
029440000000           ohws02 = svws02;
029450000000           update orhe1r;
029460000000      /end-free
029470000000     C                   goto      read1
029480000000      /free
029490000000         endif;
029500000000       endif;
029510000000       //
029520000000       // check from/to carrier
029530000000       if ohcacd > ldtoca
029540000000         or ohcacd < ldfrca;
029550000000         ohorst = svorst;
029560000000         ohws02 = svws02;
029570000000         update orhe1r;
029580000000      /end-free
029590000000     C                   goto      read1
029600000000      /free
029610000000       endif;
029620000000       //
029630000000       // if consolidated invoices then is bill code=field in orhed
029640000000       // read another record
029650000000       if ldblcd <> *blanks
029660000000         and ldrprt = 'Y';
029670000000         if ldblcd <> ohcbcd;
029680000000      /end-free
029690000000     C                   goto      read1
029700000000      /free
029710000000         endif;
029720000000       endif;
029730000000       //
029740000000       // if reprint - is order gen equal to order gen selected?
029750000000       @@orgn = %editc(ohorgn:'X');
029760000000       if ldrprt = 'Y'
029770000000         and ldorg1 <> ' '
029780000000         and ldorgn <> @@orgn;
029790000000         ohorst = svorst;
029800000000         ohws02 = svws02;
029810000000         update orhe1r;
029820000000      /end-free
029830000000     C                   goto      read1
029840000000      /free
029850000000       endif;
029860000000       //
029870000000       // get nxt record if cust. is a work order customer
029880000000       if ohcsno = wocsno;
029890000000         update orhe1r;
029900000000      /end-free
029910000000     C                   goto      read1
029920000000      /free
029930000000       endif;
029940000000       //
029950000000       // check for consignment order
029960000000       exsr $csgn;
029970000000       // do not consolidate zero value stock transfers
029980000000       if ohcsor = 'AT'
029990000000         and ohorvl = *zeros;
030000000000         clear ohcbcd;
030010000000       endif;
030020000000       //
030030000000       //* check options for returns for consol. invoices
030040031217       //if xxortp = 'R';                                  #*8q del
030050050616       //clear xxcihc;                                     // #*8q  #*9j del
030060000000         compny = ohcono;
030070000000         applic = 'OE';
030080000000         ctlnm = 'OPTIONX';
030090000000         chain(n) ctlkey orctl;
030100000000         *in91 = not %found;
030110000000         if *in91 = *off;
030120031217           if xxortp = 'R';                                // #*8q
030130031217             if rtcinv = 'N';
030140031217               ohcbcd = *blanks;
030150031217             endif;
030160031217             xxcihc = cinvhc;                              // #*8q
030170031217           endif;                                          // #*8q
030180000000         endif;
030190031217       //endif;                                            #*8q del
030200000000       //
030210000000       // should the order be put on consol. invoice hold
030220000000       if ohcbcd <> *blanks;
030230000000         newdt = udate;
030240000000         exsr $centy;
030250000000      /end-free
030260000000     C     newdt         mult      10000.01      today
030270000000     C                   movel     ncnt          today
030280000000      /free
030290000000       // get invoice date
030300000000         compny = ldcomp;
030310000000         applic = 'AR';
030320000000         %subst(ctlnm:1:5) = 'BILLC';
030330000000         %subst(ctlnm:6:2) = ohcbcd;
030340000000         chain(n) ctlkey orctl;
030350000000         *in90 = not %found;
030360000000         if *in90 = *off;
030370000000           //
030380000000           // do not process order if consolidated invoice is
030390000000           //  currently being created
030400000000           if inusws <> *blanks;
030410000000      /end-free
030420000000     C                   goto      read1
030430000000      /free
030440000000           endif;
030450000000      /end-free
030460000000     C                   movel     rvwcc         nxtind
030470000000     C                   move      rvwdt         nxtind
030480000000      /free
030490000000         endif;
030500000000         //
030510000000         //* is next invoice date <= todays date or = 0
030520000000         //*  then place on hold
030530000000         if nxtind < today
030540000000           or nxtind = 0;
030550000000           //
030560000000           // generate order activity record
030570000000           p#ntes = *blanks;
030580000000      /end-free
030590031217       //C     #consh        cat       cinvhc:0      p#ntes  #*8q del
030600031217       // #*8q - begin add
030610031217     C     #consh        cat       xxcihc:0      p#ntes
030620031217       // #*8q - end add
030630000000      /free
030640000000           p#shdn = 'N';
030650000000           p#cono = ohcono;
030660000000           p#orno = ohorno;
030670000000           p#orgn = ohorgn;
030680000000           p#pror = ohpror;
030690000000           p#oacd = '04';
030700000000           exsr $oea10;
030710000000           //
030720000000           *inu5 = *on;
030730000000           @cidte = 'Y';
030740000000           ohorst = '9';
030750031217           //ohhlcd = cinvhc;                              #*8q del
030760031217           ohhlcd = xxcihc;                                // #*8q
030770000000           update orhe1r;
030780000000           //
030790000000           //* put all of the detail records on hold to
030800000000           chain od0key ordetr;
030810000000           *in60 = not %found;
030820000000           dow *in60 = *off;
030830000000             odorst = '9';
030840031217             //odohld = cinvhc;                            #*8q del
030850031217             odohld = xxcihc;                              // #*8q
030860000000             update ordetr;
030870000000             reade od0key ordetr;
030880000000             *in60 = %eof;
030890000000           enddo;
030900000000           //
030910000000      /end-free
030920000000     C                   goto      read1
030930000000      /free
030940000000         endif;
030950000000       endif;
030960000000       //
030970000000       //
030980000000       //  similiar calcs for either file read
030990000000       exsr $calcs;
031000000000       //
031010000000       // build key for later chain
031020000000       shld2 = *blanks;
031030000000       clear c$oh1;
031040000000       skey1 = c$oh1h;
031050000000       %subst(shld2:1:1) = ohortp;
031060000000       %subst(shld2:2:1) = ohorst;
031070000000       %subst(shld4:1:2) = shld2;
031080000000       %subst(shld4:3:2) = ohwhid;
031090000000       %subst(skey1:1:4) = shld4;
031100000000       %subst(skey1:5:7) = coord;
031110000000       ordsav = detlla;
031120000000       //
031130000000       // save fields before update
031140000000       s2orst = ohorst;
031150000000       s2ws02 = ohws02;
031160000000       s2csnm = ohcsnm;
031170000000       s2cad1 = ohcad1;
031180000000       s2cad2 = ohcad2;
031190000000       s2cad3 = ohcad3;
031200000000       s2cad4 = ohcad4;
031210000000       s2ctid = ohctid;
031220000000       s2blcy = ohblcy;
031230000000       s2blst = ohblst;
031240000000       s2blzp = ohblzp;
031250000000       s2shnm = ohshnm;
031260000000       s2sad1 = ohsad1;
031270000000       s2sad2 = ohsad2;
031280000000       s2sad3 = ohsad3;
031290000000       s2sad4 = ohsad4;
031300000000       s2shci = ohshci;
031310000000       s2scty = ohscty;
031320000000       s2shst = ohshst;
031330000000       s2szip = ohszip;
031340000000       s2inno = ohinno;
031350000000       //
031360000000       // restore fields before update
031370000000       ohorst = svorst;
031380000000       ohws02 = svws02;
031390000000       ohcsnm = svcsnm;
031400000000       ohcad1 = svcad1;
031410000000       ohcad2 = svcad2;
031420000000       ohcad3 = svcad3;
031430000000       ohcad4 = svcad4;
031440000000       ohctid = svctid;
031450000000       ohblcy = svblcy;
031460000000       ohblst = svblst;
031470000000       ohblzp = svblzp;
031480000000       ohshnm = svshnm;
031490000000       ohsad1 = svsad1;
031500000000       ohsad2 = svsad2;
031510000000       ohsad3 = svsad3;
031520000000       ohsad4 = svsad4;
031530000000       ohshci = svshci;
031540000000       ohscty = svscty;
031550000000       ohshst = svshst;
031560000000       ohszip = svszip;
031570000000       ohinno = svinno;
031580000000       //
031590000000       // good record report will print no need to send msg to
031600000000       // workstation saying no data for report
031610000000       *inu5 = *on;
031620000000       ohws02 = '&&';
031630000000       ohinup = 'OE525   ';
031640000000       update orhe1r;
031650000000       //
031660000000       // restore fields after update
031670000000       ohorst = s2orst;
031680000000       ohws02 = s2ws02;
031690000000       ohcsnm = s2csnm;
031700000000       ohcad1 = s2cad1;
031710000000       ohcad2 = s2cad2;
031720000000       ohcad3 = s2cad3;
031730000000       ohcad4 = s2cad4;
031740000000       ohctid = s2ctid;
031750000000       ohblcy = s2blcy;
031760000000       ohblst = s2blst;
031770000000       ohblzp = s2blzp;
031780000000       ohshnm = s2shnm;
031790000000       ohsad1 = s2sad1;
031800000000       ohsad2 = s2sad2;
031810000000       ohsad3 = s2sad3;
031820000000       ohsad4 = s2sad4;
031830000000       ohshci = s2shci;
031840000000       ohscty = s2scty;
031850000000       ohshst = s2shst;
031860000000       ohszip = s2szip;
031870000000       ohinno = s2inno;
031880000000       //
031890000000       // revalue ic invoices
031900000000       if ldrprt <> 'Y';
031910000000         if iclive = 'Y'
031920000000           and ohcurr <> @dftcr;
031930000000           @pcono = ohcono;
031940000000           @porno = ohorno;
031950000000           @porgn = ohorgn;
031960000000           @pshdn = 'N';
031970000000           exsr $ic012;
031980000000         endif;
031990000000       endif;
032000000000       //
032010000000       endsr;
032020000000       //*************************************************************** $read3
032030000000       // $read3 - read alternative index file for order header file
032040000000       //          u1 is on
032050000000       //
032060000000       begsr $read3;
032070000000       //
032080000000      /end-free
032090000000     C     read3         tag
032100000000      /free
032110000000       //
032120000000       *in60 = *off;
032130000000       read orhe3r;                                                             // =
032140000000       *in60 = %eof;                                                            // =
032150000000       if *in60 = *off;
032160000000         coord = $3c001;
032170000000         detlla = $3c002;
032180000000         duedt = $3c006;
032190000000         futdt = $3c008;
032200000000         netdt = $3c007;
032210000000         ovidt = $3c005;
032220000000         rtestp = $3c004;
032230000000         shpa = $3c003;
032240000000         svorst = ohorst;
032250000000         svws02 = ohws02;
032260000000         svcsnm = ohcsnm;
032270000000         svcad1 = ohcad1;
032280000000         svcad2 = ohcad2;
032290000000         svcad3 = ohcad3;
032300000000         svctid = ohctid;
032310000000         svcad4 = ohcad4;
032320000000         svblcy = ohblcy;
032330000000         svblst = ohblst;
032340000000         svblzp = ohblzp;
032350000000         svshnm = ohshnm;
032360000000         svsad1 = ohsad1;
032370000000         svsad2 = ohsad2;
032380000000         svsad3 = ohsad3;
032390000000         svsad4 = ohsad4;
032400000000         svshci = ohshci;
032410000000         svscty = ohscty;
032420000000         svshst = ohshst;
032430000000         svszip = ohszip;
032440000000         svinno = ohinno;
032450000000         //
032460000000         //* retrieve ic header extension
032470000000         if iclive = 'Y';
032480000000           chain(n) od0key icorhdr;
032490000000           *in90 = not %found;
032500000000           if *in90 = *on;
032510000000             ohcurr = @dftcr;
032520000000           endif;
032530000000         endif;
032540000000       endif;
032550000000       if *in60 = *on;
032560000000         leavesr;
032570000000       endif;
032580000000       //
032590000000       // restart check
032600000000       if ldrprt = 'Y';
032610000000         if ohws02 = '&&';
032620000000           if ldford = ldtord;
032630000000             if ohorno = ldford;
032640000000               ohws02 = *blanks;
032650000000               ohorst = ldcrst;
032660000000             endif;
032670000000           endif;
032680000000         endif;
032690000000       endif;
032700000000       //
032710040323       // is route not equal to route selected if wh is blank // #*8w
032720040323       if ldwhse = *blanks;                                   // #*8w
032730040323       if ohrout <> ldrte;                                    // #*8w
032740040323           update orhe3r;                                     // #*8w
032750040323       // #*8w - begin of add
032760040323      /end-free
032770040323     C                   goto      read3
032780040323      /free
032790040323       // #*8w - end of add
032800040323       endif;                                                 // #*8w
032810040323       endif;                                                 // #*8w
032820000000       // is route not equal to route selected?
032830000000       if ohrout <> ldrte;
032840040323         *in60 = *on;
032850000000       endif;
032860000000       //
032870000000       // is warehouse not equal to warehouse selected?
032880000000       // check for blank warehouse (all whs)
032890000000       if ldwhse <> *blanks;
032900000000      /end-free
032910000000     C  n60              if        ohwhid <> ldwhse
032920000000      /free
032930000000           *in60 = *on;
032940000000         endif;
032950000000       endif;
032960000000       //
032970000000       //* if reprinting do not include consolidated invoices = 'n'
032980000000       if ldrprt = 'Y';
032990000000         if ldblcd = *blanks;
033000000000           if ohcbcd <> *blanks;
033010000000      /end-free
033020000000     C                   goto      read3
033030000000      /free
033040000000           endif;
033050000000         endif;
033060000000       endif;
033070000000       //
033080000000       if *in60 = *on;
033090000000         ohorst = svorst;
033100000000         ohws02 = svws02;
033110000000         update orhe3r;
033120000000         leavesr;
033130000000       endif;
033140000000       //
033150000000       // check for consignment order
033160000000       exsr $csgn;
033170000000       //
033180000000       // should this invoice / return be printed?
033190000000       if ldortp <> 'B';
033200000000         //
033210000000         if ldortp = 'I'
033220000000           and xxortp = 'R';
033230000000           ohorst = svorst;
033240000000           ohws02 = svws02;
033250000000           update orhe3r;
033260000000      /end-free
033270000000     C                   goto      read3
033280000000      /free
033290000000         endif;
033300000000         //
033310000000         if ldortp = 'R'
033320000000           and xxortp <> 'R';
033330000000           ohorst = svorst;
033340000000           ohws02 = svws02;
033350000000           update orhe3r;
033360000000      /end-free
033370000000     C                   goto      read3
033380000000      /free
033390000000         endif;
033400000000         //
033410000000       endif;
033420000000       //
033430000000       // check in-use code
033440000000       if ohws02 <> *blanks;
033450000000         ohorst = svorst;
033460000000         ohws02 = svws02;
033470000000         update orhe3r;
033480000000      /end-free
033490000000     C                   goto      read3
033500000000      /free
033510000000       endif;
033520040408
033530040408       // check if user authorized to warehouse?      // #*8x - add
033540040408       if NOT ChkWhAut( @user : ohwhid);              // #*8x - add
033550040408         ohorst = svorst;                             // #*8x - add
033560040408         ohws02 = svws02;                             // #*8x - add
033570040408         update orhe3r;                               // #*8x - add
033580040408       // #*8x - begin
033590040408      /end-free
033600040408     C                   goto      read3
033610040408      /free
033620040408       // #*8x - end
033630040408       endif;                                         // #*8x - add
033640040408
033650000000       //
033660000000       // check order/co/status
033670000000       if ohorno > ldtord
033680000000         or ohorno < ldford;
033690000000         ohorst = svorst;
033700000000         ohws02 = svws02;
033710000000         update orhe3r;
033720000000      /end-free
033730000000     C                   goto      read3
033740000000      /free
033750000000       endif;
033760000000       //
033770000000       if ohcono <> ldcomp;
033780000000         ohorst = svorst;
033790000000         ohws02 = svws02;
033800000000         update orhe3r;
033810000000      /end-free
033820000000     C                   goto      read3
033830000000      /free
033840000000       endif;
033850000000       //
033860000000       if ohorst <> status;
033870000000         ohorst = svorst;
033880000000         ohws02 = svws02;
033890000000         update orhe3r;
033900000000      /end-free
033910000000     C                   goto      read3
033920000000      /free
033930000000       endif;
033940000000       //
033950000000       if ohcacd > ldtoca
033960000000         or ohcacd < ldfrca;
033970000000         ohorst = svorst;
033980000000         ohws02 = svws02;
033990000000         update orhe3r;
034000000000      /end-free
034010000000     C                   goto      read3
034020000000      /free
034030000000       endif;
034040000000       //
034050000000       // get nxt record if cust. is a work order customer
034060000000       if ohcsno = wocsno;
034070000000         update orhe3r;
034080000000      /end-free
034090000000     C                   goto      read3
034100000000      /free
034110000000       endif;
034120000000       //
034130000000       // check cancel date
034140000000       if ldcndt <> *blanks
034150000000         and ldcndt <> *zeros;
034160000000         if @hcndt > @lcndt
034170000000           or @hcndt = *zeros;
034180000000           ohorst = svorst;
034190000000           ohws02 = svws02;
034200000000           update orhe3r;
034210000000      /end-free
034220000000     C                   goto      read3
034230000000      /free
034240000000         endif;
034250000000       endif;
034260000000       //
034270000000       // check customer po
034280000000       if ldcspo <> *blanks
034290000000         and ohcspo <> ldcspo;
034300000000         ohorst = svorst;
034310000000         ohws02 = svws02;
034320000000         update orhe3r;
034330000000      /end-free
034340000000     C                   goto      read3
034350000000      /free
034360000000       endif;
034370000000       //
034380000000       if l#csno <> *zeros;
034390000000         // check customer number
034400000000         if ldarfg = *blank
034410000000           and ohcsno <> l#csno;
034420000000           ohorst = svorst;
034430000000           ohws02 = svws02;
034440000000           update orhe3r;
034450000000      /end-free
034460000000     C                   goto      read3
034470000000      /free
034480000000         endif;
034490000000         //
034500000000         // check a/r customer number
034510000000         if ldarfg = 'Y'
034520000000           and oharcs <> l#csno;
034530000000           ohorst = svorst;
034540000000           ohws02 = svws02;
034550000000           update orhe3r;
034560000000      /end-free
034570000000     C                   goto      read3
034580000000      /free
034590000000         endif;
034600000000       endif;
034610000000       //
034620000000       // check customer commitment code
034630000000       if l#cmcd <> *zeros;
034640000000         if ohcono <> cmcono
034650000000           or ohcsno <> cmcsno;
034660000000           chain(n) cm0ky1 cusmsr;
034670000000           *in90 = not %found;
034680000000         endif;
034690000000         if l#cmcd <> cmcscm;
034700000000           ohorst = svorst;
034710000000           ohws02 = svws02;
034720000000           update orhe3r;
034730000000      /end-free
034740000000     C                   goto      read3
034750000000      /free
034760000000         endif;
034770000000       endif;
034780000000       //
034790000000       // do not consolidate zero value stock transfers
034800000000       if ohcsor = 'AT'
034810000000         and ohorvl = *zeros;
034820000000         clear ohcbcd;
034830000000       endif;
034840000000       //
034850000000       //*  moved this code from above
034860000000       //* check options for returns for consol. invoices
034870031217       //if xxortp = 'R';                                  #*8q del
034880031217         clear xxcihc;                                     // #*8q
034890000000         compny = ohcono;
034900000000         applic = 'OE';
034910000000         ctlnm = 'OPTIONX';
034920000000         chain(n) ctlkey orctl;
034930000000         *in91 = not %found;
034940000000         if *in91 = *off;
034950031217           if xxortp = 'R';                                // #*8q
034960031217             if rtcinv = 'N';
034970031217               ohcbcd = *blanks;
034980031217             endif;
034990031217             xxcihc = cinvhc;                              // #*8q
035000031217           endif;                                          // #*8q
035010000000         endif;
035020031217       //endif;                                            #*8q del
035030000000       //
035040000000       // should the order be put on consol. invoice hold
035050000000       if ohcbcd <> *blanks;
035060000000         newdt = udate;
035070000000         exsr $centy;
035080000000      /end-free
035090000000     C     newdt         mult      10000.01      today
035100000000     C                   movel     ncnt          today
035110000000      /free
035120000000       // get invoice date
035130000000         compny = ldcomp;
035140000000         applic = 'AR';
035150000000         %subst(ctlnm:1:5) = 'BILLC';
035160000000         %subst(ctlnm:6:2) = ohcbcd;
035170000000         chain(n) ctlkey orctl;
035180000000         *in90 = not %found;
035190000000         if *in90 = *off;
035200000000           //
035210000000           // do not process order if consolidated invoice is
035220000000           //  currently being created
035230000000           if inusws <> *blanks;
035240000000      /end-free
035250000000     C                   goto      read3
035260000000      /free
035270000000           endif;
035280000000      /end-free
035290000000     C                   movel     rvwcc         nxtind
035300000000     C                   move      rvwdt         nxtind
035310000000      /free
035320000000         endif;
035330000000         //
035340000000         //* is next invoice date <= todays date or = 0
035350000000         //*  then place on hold
035360000000         if nxtind < today
035370000000           or nxtind = 0;
035380000000           //
035390000000           // generate order activity record
035400000000           p#ntes = *blanks;
035410000000      /end-free
035420050615     C* #*9j - Begin of change
035430050615     C* del     #consh        cat       ohcbcd:0      p#ntes
035440050615     C     #consh        cat       xxcihc:0      p#ntes
035450050615     C* #*9j - End of change
035460000000      /free
035470000000           p#shdn = 'N';
035480000000           p#cono = ohcono;
035490000000           p#orno = ohorno;
035500000000           p#orgn = ohorgn;
035510000000           p#pror = ohpror;
035520000000           p#oacd = '04';
035530000000           exsr $oea10;
035540000000           //
035550000000           ohorst = '9';
035560031217           //ohhlcd = cinvhc;                              #*8q del
035570031217           ohhlcd = xxcihc;                                // #*8q
035580000000           update orhe3r;
035590000000           *inu5 = *on;
035600000000           @cidte = 'Y';
035610000000           //
035620000000           //* put all of the detail records on hold to
035630000000           chain od0key ordetr;
035640000000           *in60 = not %found;
035650000000           dow *in60 = *off;
035660000000             odorst = '9';
035670031217             //odohld = cinvhc;                            #*8q del
035680031217             odohld = xxcihc;                              // #*8q
035690000000             update ordetr;
035700000000             reade od0key ordetr;
035710000000             *in60 = %eof;
035720000000           enddo;
035730000000           //
035740000000      /end-free
035750000000     C                   goto      read3
035760000000      /free
035770000000         endif;
035780000000       endif;
035790000000       //
035800000000       // perform calculations
035810000000       exsr $calcs;
035820000000       //
035830000000       // build key for later chain
035840000000       shld9 = *blanks;
035850000000       clear d$oh3;
035860000000       skey3 = d$oh3h;
035870000000       %subst(shld9:1:2) = ohwhid;
035880000000       %subst(shld9:3:7) = rtestp;
035890000000       %subst(skey3:1:9) = shld9;
035900000000       %subst(skey3:10:7) = coord;
035910000000       ordsav = detlla;
035920000000       //
035930000000       // save fields before update
035940000000       s2orst = ohorst;
035950000000       s2ws02 = ohws02;
035960000000       s2csnm = ohcsnm;
035970000000       s2cad1 = ohcad1;
035980000000       s2cad2 = ohcad2;
035990000000       s2cad3 = ohcad3;
036000000000       s2cad4 = ohcad4;
036010000000       s2ctid = ohctid;
036020000000       s2blcy = ohblcy;
036030000000       s2blst = ohblst;
036040000000       s2blzp = ohblzp;
036050000000       s2shnm = ohshnm;
036060000000       s2sad1 = ohsad1;
036070000000       s2sad2 = ohsad2;
036080000000       s2sad3 = ohsad3;
036090000000       s2sad4 = ohsad4;
036100000000       s2shci = ohshci;
036110000000       s2scty = ohscty;
036120000000       s2shst = ohshst;
036130000000       s2szip = ohszip;
036140000000       s2inno = ohinno;
036150000000       //
036160000000       // restore fields before update
036170000000       ohorst = svorst;
036180000000       ohws02 = svws02;
036190000000       ohcsnm = svcsnm;
036200000000       ohcad1 = svcad1;
036210000000       ohcad2 = svcad2;
036220000000       ohcad3 = svcad3;
036230000000       ohcad4 = svcad4;
036240000000       ohctid = svctid;
036250000000       ohblcy = svblcy;
036260000000       ohblst = svblst;
036270000000       ohblzp = svblzp;
036280000000       ohshnm = svshnm;
036290000000       ohsad1 = svsad1;
036300000000       ohsad2 = svsad2;
036310000000       ohsad3 = svsad3;
036320000000       ohsad4 = svsad4;
036330000000       ohshci = svshci;
036340000000       ohscty = svscty;
036350000000       ohshst = svshst;
036360000000       ohszip = svszip;
036370000000       ohinno = svinno;
036380000000       //
036390000000       // u5 on means at least one invoice will be printed
036400000000       *inu5 = *on;
036410000000       ohws02 = '&&';
036420000000       ohinup = 'OE525   ';
036430000000       update orhe3r;
036440000000       //
036450000000       // restore fields after update
036460000000       ohorst = s2orst;
036470000000       ohws02 = s2ws02;
036480000000       ohcsnm = s2csnm;
036490000000       ohcad1 = s2cad1;
036500000000       ohcad2 = s2cad2;
036510000000       ohcad3 = s2cad3;
036520000000       ohcad4 = s2cad4;
036530000000       ohctid = s2ctid;
036540000000       ohblcy = s2blcy;
036550000000       ohblst = s2blst;
036560000000       ohblzp = s2blzp;
036570000000       ohshnm = s2shnm;
036580000000       ohsad1 = s2sad1;
036590000000       ohsad2 = s2sad2;
036600000000       ohsad3 = s2sad3;
036610000000       ohsad4 = s2sad4;
036620000000       ohshci = s2shci;
036630000000       ohscty = s2scty;
036640000000       ohshst = s2shst;
036650000000       ohszip = s2szip;
036660000000       ohinno = s2inno;
036670000000       //
036680000000       // revalue ic invoices
036690000000       if ldrprt <> 'Y';
036700000000         if iclive = 'Y'
036710000000           and ohcurr <> @dftcr;
036720000000           @pcono = ohcono;
036730000000           @porno = ohorno;
036740000000           @porgn = ohorgn;
036750000000           @pshdn = 'N';
036760000000           exsr $ic012;
036770000000         endif;
036780000000       endif;
036790000000       //
036800000000       // print the manifest headings (if necessary)
036810000000       if xxortp <> 'R'
036820000000         and ohhsid = *zeros;
036830000000         if *in80 = *off
036840000000           or *inoa = *on
036850000000           or *inoc = *on;
036860000000           except headmf;
036870000000           //
036880000000         endif;
036890000000         if *inoa = *on
036900000000           or *inoc = *on;
036910000000           *inoa = *off;
036920000000         endif;
036930000000         if *in80 = *off;
036940000000           *in80 = *on;
036950000000         endif;
036960000000         except detlmf;
036970000000       endif;
036980000000       //
036990000000       endsr;
037000000000       //************************************************** $rea12
037010000000       // $rea12- read alternative index file for order header file
037020000000       //          u3 is on
037030000000       //
037040000000       begsr $rea12;
037050000000       //
037060000000       //----------------------------
037070000000      /end-free
037080000000     C     read12        tag
037090000000      /free
037100000000       //----------------------------
037110000000       //
037120000000       //* save header information for overlfow printing.
037130000000       clear ctcono;
037140000000       clear ctarcs;
037150000000       clear csl;
037160000000       clear csh;
037170000000       clear ctinno;
037180000000       clear ctivdt;
037190000000       clear ctcdsp;
037200000000       clear ctterm;
037210000000       clear ctpayd;
037220000000       clear ctcrcd;
037230000000       clear ctexpd;
037240000000       clear ctfobd;
037250000000       clear ctortp;
037260000000       clear ctcurr;
037270000000       ctcono = ohcono;
037280000000       ctarcs = oharcs;
037290000000       csl = sld;
037300000000       csh = shp;
037310000000       ctinno = ohinno;
037320000000       ctivdt = invdto;
037330000000       ctcdsp = ohcdsp;
037340000000       ctterm = terms;
037350000000       ctpayd = paydsc;
037360000000       ctcrcd = ohcrcd;
037370000000       ctexpd = ohexpd;
037380000000       ctfobd = @cfobd;
037390000000       ctortp = xxortp;
037400000000       ctcurr = ohcurr;
037410000000       //
037420000000       *in60 = *off;
037430000000       read orhe12r;                                                            // =
037440000000       *in60 = %eof;                                                            // =
037450000000       if *in60 = *off;
037460000000         coord = $3c001;
037470000000         shpa = *blanks;
037480000000         shpa = $3c003;
037490000000         detlla = $3c002;
037500000000         //
037510000000         //* retrieve ic header extension
037520000000         if iclive = 'Y';
037530000000           chain(n) od0key icorhdr;
037540000000           *in90 = not %found;
037550000000           if *in90 = *on;
037560000000             ohcurr = @dftcr;
037570000000           endif;
037580000000         endif;
037590000000       endif;
037600000000       //
037610000000       //* get out if no record found turn on end of colsolidate flag
037620000000       //* if previous records were found
037630000000       if *in60 = *on;
037640000000         if fndrec = 'Y';
037650000000           endcol = 'Y';
037660000000         endif;
037670000000         leavesr;
037680000000       endif;
037690000000       //
037700000000       // is control number is greater than to control number?
037710000000       // is control number less than from control number?
037720000000      /end-free
037730000000     C  n60              if        frcict <> *zeros
037740000000     C  n60              if        ohcict < frcict
037750000000     C                             or ohcict > tocict
037760000000      //
037770000000     C                   goto      read12
037780000000      /free
037790000000         endif;
037800000000       endif;
037810000000       //
037820000000       // is the status of the order equal to a '4'
037830000000       if ohorst <> '4';
037840000000      /end-free
037850000000     C                   goto      read12
037860000000      /free
037870000000       endif;
037880000000       //
037890000000       // is the order headr bill code equal to the one on selection srn
037900000000       if ohcbcd <> ldblcd;
037910000000      /end-free
037920000000     C                   goto      read12
037930000000      /free
037940000000       endif;
037950000000       //
037960000000       // if not in re-print mode then is the make sure print flag='n'
037970000000       if ldrprt <> 'Y';
037980000000         if ohcipf <> 'N';
037990000000      /end-free
038000000000     C                   goto      read12
038010000000      /free
038020000000         endif;
038030000000       else;
038040000000         // if in re-print mode then is the make sure print flag='y'
038050000000         if ohcipf <> 'Y';
038060000000      /end-free
038070000000     C                   goto      read12
038080000000      /free
038090000000         endif;
038100000000       endif;
038110000000       //
038120000000       // check for consignment order
038130000000       exsr $csgn;
038140000000       // do not consolidate zero value stock transfers
038150000000       if ohcsor = 'AT'
038160000000         and ohorvl = *zeros;
038170000000      /end-free
038180000000     C                   goto      read12
038190000000      /free
038200000000       endif;
038210000000       //
038220000000       // has the control number and invoice number changed  if so...
038230000000       //* delete the cihld record print new heading
038240000000       if svcict <> *zeros;
038250000000      /end-free
038260000000     C  n60              if        ohcict <> svcict
038270000000      /free
038280000000           if ldrprt <> 'Y';
038290000000             p1mode = 'D';
038300000000             p1shdn = 'N';
038310000000             p1cono = %editc(ohcono:'X');
038320000000             p1blcd = svblcd;
038330000000             p1pytp = svpytp;
038340000000             p1csno = %editc(svarcs:'X');
038350000000             OE529 ( p1shdn : p1cono : p1blcd :
038360000000             p1pytp : p1csno : p1inno : p1cict :
038370000000             p1mode );
038380000000           endif;
038390000000           endcol = 'Y';
038400000000           exsr $botcs;
038410000000           //* clear all off the total fields
038420000000           if formtp = '1'
038430000000             and @once = 'Y';
038440000000             close apprtin2;
038450000000             open apprtin2;
038460000000           endif;
038470000000           exsr $clear;
038480000000         endif;
038490000000       endif;
038500000000       svpytp = ohpytp;
038510000000       svarcs = oharcs;
038520000000       svcict = ohcict;
038530000000       svblcd = ohcbcd;
038540000000       //
038550000000       //  similiar calcs for either file read
038560000000       exsr $calcs;
038570000000       //
038580000000       //  ship to
038590000000       if first1 <> 'Y';
038600000000         //  save address field for the first one printed for compare
038610000000         if ohcsno = oharcs;
038620000000           sxshnm = ohshnm;
038630000000           sxsad1 = ohsad1;
038640000000           sxsad2 = ohsad2;
038650000000           sxsad3 = ohsad3;
038660000000           sxsad4 = ohsad4;
038670000000           sxshci = ohshci;
038680000000           sxscty = ohscty;
038690000000           sxshst = ohshst;
038700000000           sxszip = ohszip;
038710000000           if shpa = *blanks;
038720000000             sxshnm = ohcsnm;
038730000000             sxsad1 = ohcad1;
038740000000             sxsad2 = ohcad2;
038750000000             sxsad3 = ohcad3;
038760000000             sxsad4 = ohcad4;
038770000000             sxshci = ohctid;
038780000000             sxscty = ohblcy;
038790000000             sxshst = ohblst;
038800000000             sxszip = ohblzp;
038810000000           endif;
038820000000         endif;
038830000000         //  if the shp to is ne blanks move in overidden address
038840000000         if shpa <> *blanks;
038850000000           s#shnm = ohshnm;
038860000000           s#sad1 = ohsad1;
038870000000           s#sad2 = ohsad2;
038880000000           s#sad3 = ohsad3;
038890000000           s#sad4 = ohsad4;
038900000000           s#shci = ohshci;
038910000000           s#scty = ohscty;
038920000000           s#shst = ohshst;
038930000000           s#szip = ohszip;
038940000000         else;
038950000000           //  if the shp to is blank move in the bill to infoirmation
038960000000           s#shnm = ohcsnm;
038970000000           s#sad1 = ohcad1;
038980000000           s#sad2 = ohcad2;
038990000000           s#sad3 = ohcad3;
039000000000           s#sad4 = ohcad4;
039010000000           s#shci = ohctid;
039020000000           s#scty = ohblcy;
039030000000           s#shst = ohblst;
039040000000           s#szip = ohblzp;
039050000000         endif;
039060000000         //
039070000000         //  bill/sold to
039080000000         b#csnm = ohcsnm;
039090000000         b#cad1 = ohcad1;
039100000000         b#cad2 = ohcad2;
039110000000         b#cad3 = ohcad3;
039120000000         b#cad4 = ohcad4;
039130000000         b#ctid = ohctid;
039140000000         b#blcy = ohblcy;
039150000000         b#blst = ohblst;
039160000000         b#blzp = ohblzp;
039170000000         //  bill to
039180000000         b#arcs = oharcs;
039190000000         b#cono = ohcono;
039200000000         //
039210000000         //  credit card# exp date save
039220000000         s#crcd = ohcrcd;
039230000000         s#expd = ohexpd;
039240000000         first1 = 'Y';
039250000000       endif;
039260000000       //
039270000000       //  compare fields to see if bill to or ship to has changed
039280000000       //  from the first invoice printed
039290000000       //  ship to
039300000000       shipto = ' ';
039310000000       if shpa <> *blanks;
039320000000         if ohshnm <> sxshnm
039330000000           or ohsad1 <> sxsad1
039340000000           or ohsad2 <> sxsad2
039350000000           or ohsad3 <> sxsad3
039360000000           or ohsad4 <> sxsad4
039370000000           or ohshci <> sxshci
039380000000           or ohscty <> sxscty
039390000000           or ohshst <> sxshst
039400000000           or ohszip <> sxszip;
039410000000           shipto = 'Y';
039420000000         endif;
039430000000         //
039440000000         // if ship-to is blank, check sold-to fields
039450000000       else;
039460000000         if ohcsnm <> sxshnm
039470000000           or ohcad1 <> sxsad1
039480000000           or ohcad2 <> sxsad2
039490000000           or ohcad3 <> sxsad3
039500000000           or ohcad4 <> sxsad4
039510000000           or ohctid <> sxshci
039520000000           or ohblcy <> sxscty
039530000000           or ohblst <> sxshst
039540000000           or ohblzp <> sxszip;
039550000000           shipto = 'Y';
039560000000         endif;
039570000000       endif;
039580000000       //  bill to
039590000000       soldto = ' ';
039600000000       if ohcono <> b#cono
039610000000         or ohcsno <> b#arcs
039620000000         or ohcsnm <> b#csnm;
039630000000         soldto = 'Y';
039640000000       endif;
039650000000       //  credit card # and expiration date
039660000000       crecrd = ' ';
039670000000       if ohcrcd <> s#crcd
039680000000         and ohexpd <> s#expd;
039690000000         crecrd = 'Y';
039700000000       endif;
039710000000       //
039720000000       // build key for later chain
039730000000       shld2 = *blanks;
039740000000       clear c$oh1;
039750000000       skey1 = c$oh1h;
039760000000       %subst(shld2:1:1) = ohortp;
039770000000       %subst(shld2:2:1) = ohorst;
039780000000       %subst(shld4:1:2) = shld2;
039790000000       %subst(shld4:3:2) = ohwhid;
039800000000       %subst(skey1:1:4) = shld4;
039810000000       %subst(skey1:5:7) = coord;
039820000000       ordsav = detlla;
039830000000       //
039840000000       // good record report will print no need to send msg to
039850000000       // workstation saying no data for report re-start
039860000000       *inu5 = *on;
039870000000       ohws02 = '&&';
039880030518       ohinup = 'OE525   ';
039890000000       if *in60 = *off;
039900000000         update orhe12r;
039910000000       endif;
039920000000       //
039930000000       // fill all shp and sld to info so it stays the same for the inv
039940000000       sld = *blanks;                                                           // bill to
039950000000       %subst(sld(1):1:30) = b#csnm;
039960000000       a = 2;
039970000000       if b#cad1 > *blanks;
039980000000         %subst(sld(a):1:30) = b#cad1;
039990000000      /end-free
040000000000     C                   add       1             a
040010000000      /free
040020000000       endif;
040030000000       if b#cad2 > *blanks;
040040000000         %subst(sld(a):1:30) = b#cad2;
040050000000      /end-free
040060000000     C                   add       1             a
040070000000      /free
040080000000       endif;
040090000000       //
040100000000       //* get system level country code values
040110000000       //
040120000000       if b#ctid > *blanks;
040130000000         x8comp = *zeros;
040140000000         x8appl = 'XA';
040150000000         %subst(x8ckey:1:4) = 'CNTY';
040160000000         %subst(x8ckey:5:3) = b#ctid;
040170000000         chain ctlky2 orctl;
040180000000         *in92 = not %found;
040190000000         if *in92 = *off;
040200000000           adrseq = adrsqo;
040210000000         endif;
040220000000       endif;
040230000000       if adrseq = ' ';
040240000000         adrseq = sysasq;
040250000000       endif;
040260000000       if adrseq = ' ';
040270000000         adrseq = '1';
040280000000       endif;
040290000000       //
040300000000       if b#cad3 > *blanks;
040310000000         %subst(sld(a):1:30) = b#cad3;
040320000000      /end-free
040330000000     C                   add       1             a
040340000000      /free
040350000000       endif;
040360000000       if formtp = '2';
040370000000         if b#cad4 > *blanks;
040380000000           %subst(sld(a):1:30) = b#cad4;
040390000000      /end-free
040400000000     C                   add       1             a
040410000000      /free
040420000000         endif;
040430000000         //
040440000000         //* sequence address layout
040450000000         @@city = b#blcy;
040460000000         @@stpv = b#blst;
040470000000         @@zpps = b#blzp;
040480000000         //
040490000000         exsr $adrsq;
040500000000         //
040510000000         if adrs1 > *blanks;
040520000000           sld(a) = adrs1;
040530000000      /end-free
040540000000     C                   add       1             a
040550000000      /free
040560000000         endif;
040570000000         //
040580000000         if adrs2 > *blanks;
040590000000           sld(a) = adrs2;
040600000000      /end-free
040610000000     C                   add       1             a
040620000000      /free
040630000000         endif;
040640000000         //
040650000000         if adrs3 > *blanks;
040660000000           sld(a) = adrs3;
040670000000      /end-free
040680000000     C                   add       1             a
040690000000      /free
040700000000         endif;
040710000000         //
040720000000         %subst(sld(a):1:30) = x1cnnm;
040730000000       else;
040740000000         %subst(sld(a):1:20) = b#blcy;
040750000000         w2 = b#blst;
040760000000         %subst(stzip:1:2) = w2;
040770000000         %subst(stzip:4:10) = b#blzp;
040780000000         %subst(sld(a):22:13) = stzip;
040790000000      /end-free
040800000000     C                   add       1             a
040810000000      /free
040820000000         %subst(sld(a):1:30) = x1cnnm;
040830000000       endif;
040840000000       //
040850000000       // ship to information
040860000000       shp = *blanks;
040870000000       if ohcsno = oharcs;
040880000000         if s#shnm > *blanks;
040890000000           %subst(shp(1):1:30) = s#shnm;
040900000000         endif;
040910000000         a = 2;
040920000000         if s#sad1 > *blanks;
040930000000           %subst(shp(a):1:30) = s#sad1;
040940000000      /end-free
040950000000     C                   add       1             a
040960000000      /free
040970000000         endif;
040980000000         if s#sad2 > *blanks;
040990000000           %subst(shp(a):1:30) = s#sad2;
041000000000      /end-free
041010000000     C                   add       1             a
041020000000      /free
041030000000         endif;
041040000000         //
041050000000         //* get system level country code values
041060000000         //
041070000000         if s#shci > *blanks;
041080000000           x8comp = *zeros;
041090000000           x8appl = 'XA';
041100000000           %subst(x8ckey:1:4) = 'CNTY';
041110000000           %subst(x8ckey:5:3) = s#shci;
041120000000           chain ctlky2 orctl;
041130000000           *in92 = not %found;
041140000000           if *in92 = *off;
041150000000             adrseq = adrsqo;
041160000000           endif;
041170000000         endif;
041180000000         if adrseq = ' ';
041190000000           adrseq = sysasq;
041200000000         endif;
041210000000         if adrseq = ' ';
041220000000           adrseq = '1';
041230000000         endif;
041240000000         //
041250000000         if s#sad3 > *blanks;
041260000000           %subst(shp(a):1:30) = s#sad3;
041270000000      /end-free
041280000000     C                   add       1             a
041290000000      /free
041300000000         endif;
041310000000         if formtp = '2';
041320000000           if s#sad4 > *blanks;
041330000000             %subst(shp(a):1:30) = s#sad4;
041340000000      /end-free
041350000000     C                   add       1             a
041360000000      /free
041370000000           endif;
041380000000           //
041390000000           //* sequence address layout
041400000000           @@city = s#scty;
041410000000           @@stpv = s#shst;
041420000000           @@zpps = s#szip;
041430000000           //
041440000000           exsr $adrsq;
041450000000           //
041460000000           if adrs1 > *blanks;
041470000000             shp(a) = adrs1;
041480000000      /end-free
041490000000     C                   add       1             a
041500000000      /free
041510000000           endif;
041520000000           //
041530000000           if adrs2 > *blanks;
041540000000             shp(a) = adrs2;
041550000000      /end-free
041560000000     C                   add       1             a
041570000000      /free
041580000000           endif;
041590000000           //
041600000000           if adrs3 > *blanks;
041610000000             shp(a) = adrs3;
041620000000      /end-free
041630000000     C                   add       1             a
041640000000      /free
041650000000           endif;
041660000000           %subst(shp(a):1:30) = x2cnnm;
041670000000           //
041680000000         else;
041690000000           %subst(shp(a):1:20) = s#scty;
041700000000           w2 = s#shst;
041710000000           %subst(stzip:1:2) = w2;
041720000000           %subst(stzip:4:10) = s#szip;
041730000000           %subst(shp(a):22:13) = stzip;
041740000000      /end-free
041750000000     C                   add       1             a
041760000000      /free
041770000000           %subst(shp(a):1:30) = x2cnnm;
041780000000         endif;
041790000000       endif;
041800000000       //
041810000000       // did we find a rec
041820000000       fndrec = 'Y';
041830000000       //
041840000000       endsr;
041850000000       //*************************************************************** $load
041860000000       // $load - load arrays
041870000000       //
041880000000       begsr $load;
041890000000       //
041900000000       // is warehouse management installed?
041910000000       // get the wm system options record.
041920000000       //
041930000000       pbxcio = ' ';
041940000000       wmlivo = ' ';
041950000000       %subst(ctlky:1:4) = '00WM';
041960000000       %subst(ctlky:5:7) = 'OPTIONS';
041970000000       chain ctlky orctl;
041980000000       *in93 = not %found;
041990000000       if *in93 = *off;
042000000000         except relctl;
042010000000         %subst(ctlky:1:8) = '00WMOPTN';
042020000000         %subst(@@w3:1:1) = '-';
042030000000         %subst(@@w3:2:2) = ohwhid;
042040000000         %subst(ctlky:9:3) = @@w3;
042050000000         chain ctlky orctl;
042060000000         *in93 = not %found;
042070000000         if *in93 = *off;
042080000000           except relctl;
042090000000         endif;
042100000000       else;
042110000000         %subst(ctlky:1:4) = '00EI';
042120000000         %subst(ctlky:5:7) = 'OPTIONS';
042130000000         chain ctlky orctl;
042140000000         *in93 = not %found;
042150000000         if *in93 = *off;
042160000000           except relctl;
042170000000         endif;
042180000000       endif;
042190000000       //
042200000000       //* clear out tax accumulation fields
042210000000       v@txam = *zeros;
042220000000       v@otxa = *zeros;
042230000000       v@prtx = *zeros;
042240000000       v@txat = *zeros;
042250000000       v@otxt = *zeros;
042260000000       v@prtt = *zeros;
042270000000       astxor = *zeros;
042280000000       astxot = *zeros;
042290000000       oritm$ = *zeros;
042300000000       oritmt = *zeros;
042310000000       amstro = *zeros;
042320000000       tastro = *zeros;
042330000000       trdtxo = *zeros;
042340000000       trdxot = *zeros;
042350000000       othor$ = *zeros;
042360000000       othort = *zeros;
042370000000       //
042380000000       // check a/r cash disc pct
042390000000       *in15 = (ohcdsp > 0);
042400000000       //
042410000000       // fill array for sort
042420000000       zzipsq = *blanks;
042430000000       s@itno = *blanks;
042440000000       s@litp = *blanks;
042450000000       svrtvl = *zeros;
042460000000       prvitm = *blanks;
042470040121       somebo = 'N';                                        // #*8t
042480000000       chain od0key ordetr;
042490000000       *in60 = not %found;
042500000000       dow *in60 = *off;
042510000000         //
042520000000         //
042530000000         // if not running consolidated invoices (batch)
042540000000         if ldblcd = *blanks;
042550000000           if rtvflg = 'Y';
042560000000             if ldrprt = 'N'
042570000000               or ldrprt = 'Y'
042580000000               and ohws02 = '&&';
042590000000               // call oe188@ to write rvlog record if return
042600000000               if xxortp = 'R';
042610000000                 //
042620000000                 //* do not process special charges.
042630000000                 if odlitp = 'C';
042640000000      /end-free
042650000000     C                   goto      skptag
042660000000      /free
042670000000                 endif;
042680000000                 //
042690000000                 // check the current  item to see if item or comment
042700000000                 q#itno = oditno;
042710000000                 //
042720000000                 //* do not process order comments.
042730000000                 if q#itno = '/'
042740000000                   and odlitp = 'M';
042750000000      /end-free
042760000000     C                   goto      skptag
042770000000      /free
042780000000                 endif;
042790000000                 //
042800000000                 if odlitp = 'I';
042810000000                   curitm = 'I';
042820000000                 else;
042830000000                   curitm = 'C';
042840000000                 endif;
042850000000                 //
042860000000                 // check the previous item to see if item or comment
042870000000                 if s@litp <> *blanks;
042880000000                   if s@litp = 'I';
042890000000                     prvitm = 'I';
042900000000                   else;
042910000000                     prvitm = 'C';
042920000000                   endif;
042930000000                 endif;
042940000000                 //
042950000000                 // check to see if return code is 'v' for rtv.
042960040112                 rtndsp = *blanks;                         //#*8s
042970040112                 if curitm <> 'C';                         //#*8s
042980040112                   prvrtd = *blanks;                       //#*8s
042990040112                 endif;                                    //#*8s
043000040112                 if odrtrc <> *blanks;                     //#*8s
043010040112                   compny = odcono;
043020040112                   applic = 'OE';
043030040112                   %subst(ctlnm:1:5) = 'RETRN';
043040040112                   %subst(ctlnm:6:2) = odrtrc;
043050040112                   chain(n) ctlkey orctl;
043060040112                   *in90 = not %found;
043070040112                   if %found(orctl);                       //#*8s
043080040112                     prvrtd = rtndsp;                      //#*8s
043090040112                   endif;                                  //#*8s
043100040112                 endif;                                    //#*8s
043110000000                 //* only process if item is to be returned to vendor
043120000000                 //* or record is a comment
043130000000                 if rtndsp = 'V'
043140040112                   or (curitm = 'C' and prvrtd = 'V');     //#*8s
043150040112                   //or curitm = 'C';                    del #*8s
043160000000                   //* skip comment. if comment does not come after an item
043170000000                   if curitm = 'C'
043180000000                     and prvitm = *blanks;
043190000000      /end-free
043200000000     C                   goto      skptag
043210000000      /free
043220000000                   endif;
043230000000                   //
043240000000                   //* to delete from in use
043250000000                   if curitm = 'I'
043260000000                     and prvitm = 'I'
043270000000                     or curitm = 'I'
043280000000                     and prvitm = 'C';
043290000000                     p1mode = 'D';
043300000000                     p1rtvl = %editc(svrtvl:'X');
043310000000                     OE188 ( p1shdn : p1mode : p1cono :
043320000000                     p1orno : p1orgn : p1orsq : p1rtvl :
043330000000                     p1itno : p1itd1 : p1itd2 : p1whid :
043340000000                     p1qtsh : p1unms : p1umcd : p1umlt :
043350000000                     p1prum : p1rtrc : p1litp );
043360000000                     oe188x = 'N';
043370000000                   endif;
043380000000                   //
043390000000                   //* if cur item is a comment and previous is an item
043400000000                   //* then move in saved odrtvl
043410000000                   if curitm = 'C'
043420000000                     and prvitm = 'I';
043430000000                     odrtvl = svrtvl;
043440000000                   endif;
043450000000                   //
043460000000                   // current item a comment and previous item a comment
043470000000                   if curitm = 'C'
043480000000                     and prvitm = 'C';
043490000000                     odrtvl = svrtvl;
043500000000                   endif;
043510000000                   //
043520000000                   // check to see if rtv log number has be assigned
043530000000                   // if not then get next log#
043540000000                   if odrtvl = *zeros;
043550000000                     exsr $rtvlg;
043560000000                     odrtvl = rtvlog;
043570000000                   endif;
043580000000                   //
043590000000                   if curitm = 'I';
043600000000                     oe188x = 'Y';
043610000000                   endif;
043620000000                   p1mode = *blanks;
043630000000                   svrtvl = odrtvl;
043640000000                   s@itno = oditno;
043650000000                   s@litp = odlitp;
043660000000                   oe188@ = 'Y';
043670000000                   p1shdn = 'N';
043680000000                   p1cono = %editc(odcono:'X');
043690000000                   p1orno = odorno;
043700000000                   p1orgn = %editc(odorgn:'X');
043710000000                   p1orsq = %editc(odorsq:'X');
043720000000                   p1rtvl = %editc(odrtvl:'X');
043730000000                   p1itno = oditno;
043740000000                   p1itd1 = oditd1;
043750000000                   p1itd2 = oditd2;
043760000000                   p1whid = odwhid;
043770000000                   %subst(p1qtsh:2:10) = %editc(odqtsh:'X');
043780000000                   p1unms = odunms;
043790000000                   p1umcd = odumcd;
043800000000                   p1umlt = %editc(odumlt:'X');
043810000000                   p1prum = odprum;
043820000000                   p1rtrc = odrtrc;
043830000000                   p1litp = odlitp;
043840000000                   OE188 ( p1shdn : p1mode : p1cono :
043850000000                   p1orno : p1orgn : p1orsq : p1rtvl :
043860000000                   p1itno : p1itd1 : p1itd2 : p1whid :
043870000000                   p1qtsh : p1unms : p1umcd : p1umlt :
043880000000                   p1prum : p1rtrc : p1litp );
043890000000                 endif;
043900000000               endif;
043910000000             endif;
043920000000             //-----------------------------
043930000000      /end-free
043940000000     C     skptag        tag
043950000000      /free
043960000000       //-----------------------------
043970000000           endif;
043980000000         endif;
043990000000         //
044000000000         //* retrieve ic extension record
044010000000         if iclive = 'Y'
044020000000           and ohcurr <> @dftcr;
044030000000           chain odckey icordtr;
044040000000           *in96 = not %found;
044050000000         endif;
044060000000         //
044070000000         it#1d = $2c002;
044080000000         it#2d = $2c003;
044090000000         o#cono = odcono;
044100000000         llfeld = $2c001;
044110030602         //
044120030602         //* save invoice print sequence for use with reprint  #*8k
044130030602         //* from history.                                     #*8k
044140030602         @1ipsq = odipsq;                                   // #*8k
044150000000         //
044160000000         //* clear invoice print sequence
044170000000         odipsq = *blanks;
044180000000         //
044190000000         // entry sequence ?
044200000000         if ldseq <> 1;
044210000000           %subst(odipsq:1:5) = %editc(odorsq:'X');
044220000000         endif;
044230000000         //
044240000000         // fill arrays
044250000000         if odlitp <> 'I';
044260000000           if it#1d = '/';
044270000000      /end-free
044280000000     C                   movel     *all'9'       odipsq
044290000000      /free
044300000000             odwhlc = '99999999';
044310000000           else;
044320000000             odipsq = zzipsq;
044330000000             odwhlc = zzwhlc;
044340000000           endif;
044350000000         endif;
044360000000         //
044370000000         if odlitp = 'I';
044380000000           //
044390000000           //  warehouse location sequence
044400000000           if ldseq = 1;
044410000000             //
044420000000             // if warehouse management, use first location from
044430000000             // the reservation file(wmrsv) or (if credit memo)
044440000000             // the loc. receipts file(wmrls). if in neither, use
044450000000             // first location from the wm balance file.(wmbal)
044460000000             //
044470000000             if wmlivo = 'Y';
044480000000               exsr $wmsrt;
044490000000               //
044500000000               if odbmcd = 'K'
044510000000                 and odplsq = ' '
044520000000                 and odblqt = odqtsh;
044530000000                 odipsq = *blanks;
044540000000               else;
044550000000                 odipsq = %editc(wlpksq:'X');
044560000000               endif;
044570030602               //
044580030602               // if stock to dock is turned on and not a return     #*8k
044590030602               // and not a consignment stock transfer (also an 'r') #*8k
044600030602               // use the pick list sequence.                        #*8k
044610030602               if midsco = 'Y' and xxortp <> 'R' and              // #*8k
044620030602                  k$loca = dcklco;                                // #*8k
044630030602                 odipsq = odplsq;                                 // #*8k
044640041020               if ohortp = 'I' and inseqo = 'W';                  // #*9c
044650041020                 odipsq = %editc(wvpksq:'X');                     // #*9c
044660041020               endif;                                             // #*9c
044670030602               endif;                                             // #*8k
044680030602               //                                                    #*8k
044690030602               // if a complete backorder of the item, the item      #*8k
044700030602               // should print at the bottom.                        #*8k
044710030602               if odqtsh = *zeros;                                // #*8k
044720030602                 odipsq = '9999998';                              // #*8k
044730030602               endif;                                             // #*8k
044740000000               //
044750000000             endif;
044760000000             //
044770000000             if wmlivo <> 'Y';
044780000000               odipsq = odwhlc;
044790000000             endif;
044800000000             //
044810030602             // if this is a reprint from history use the original   #*8k
044820030602             // value of invoice print sequence.                     #*8k
044830030602             if ohhsid <> *zeros;                                 // #*8k
044840040723           //#*9b - begin of change
044850040723           //  @1ipsq = odipsq;                                   // #*8k
044860040723               odipsq = @1ipsq;
044870040723           //#*9b - end of change
044880030602             endif;                                               // #*8k
044890030602             //
044900000000           endif;
044910000000           //
044920000000           // if msds used and notification printed on pick list
044930000000           if umsdso = 'Y'
044940000000             and odmsds = *blank
044950000000             and odqtsh > 0;
044960000000             if inmsdo = 'Y';
044970000000               @@rntp = *blank;
044980000000             else;
044990000000               @@rntp = 'P';
045000000000             endif;
045010000000             @@itno = oditno;
045020000000             exsr $msds;
045030000000             odmsds = @@msds;
045040000000           endif;
045050000000           //
045060000000      /end-free
045070000000     C                   add       odlnvl        oritm$
045080000000      /free
045090000000           if iclive = 'Y';
045100000000      /end-free
045110000000     C                   add       odlnvt        oritmt
045120000000      /free
045130000000           endif;
045140000000           //
045150000000           // excise tax
045160000000           if ohexcs = 'Y';
045170000000      /end-free
045180000000     C     odqtor        mult      odfetx        work92
045190000000     C                   add       work92        othor$
045200000000      /free
045210000000             if iclive = 'Y';
045220000000      /end-free
045230000000     C     odqtor        mult      odfett        wrk132
045240000000      /free
045250000000               if ccdeco = '0';
045260000000      /end-free
045270000000     C                   z-add(h)  wrk132        wrk110
045280000000      /free
045290000000                 wrk132 = wrk110;
045300000000               endif;
045310000000      /end-free
045320000000     C                   add       wrk132        othort
045330000000      /free
045340000000             endif;
045350000000           endif;
045360000000           // container charge
045370000000      /end-free
045380000000     C     odqtor        mult      odcnch        work92
045390000000     C                   add       work92        othor$
045400000000      /free
045410000000           if iclive = 'Y';
045420000000      /end-free
045430000000     C     odqtor        mult      odcnct        wrk132
045440000000      /free
045450000000             if ccdeco = '0';
045460000000      /end-free
045470000000     C                   z-add(h)  wrk132        wrk110
045480000000      /free
045490000000               wrk132 = wrk110;
045500000000             endif;
045510000000      /end-free
045520000000     C                   add       wrk132        othort
045530000000      /free
045540000000           endif;
045550000000         endif;
045560000000         //
045570000000         //* check if vertex is used, if so calcuate tax
045580000000         if uvrtxo = 'Y'
045590000000           and odlitp <> 'M'
045600000000           and *in42 <> *on;
045610000000           if *in76 <> *on
045620000000             and *in77 <> *on;
045630000000      /end-free
045640000000     C                   add       odotxa        v@prtx
045650000000      /free
045660030911             @uptax = 'N';                                  //#*8p
045670000000             exsr $oe935;
045680000000             //
045690000000             // convert order currency to customer currency
045700000000             if iclive = 'Y'
045710000000               and ohcurr <> @dftcr;
045720000000      /end-free
045730000000     C                   add       odotxt        v@prtt
045740000000      /free
045750000000       //
045760000000       //* retrieve currency information
045770000000               xxcom = *zeros;
045780000000               xxapp = 'IC';
045790000000               %subst(xxkey:1:4) = 'CURR';
045800000000               %subst(xxkey:5:3) = ohcurr;
045810000000               chain ctlky orctl;
045820000000               *in90 = not %found;
045830000000               if *in90 = *off;
045840000000                 except relctl;
045850000000               endif;
045860000000               //
045870000000               clear len;
045880000000               clear err;
045890000000               inn = *zeros;
045900000000               inn(1) = odltxa;
045910000000               inn(2) = odotxa;
045920000000               len(1) = '13,2';
045930000000               len(2) = '13,2';
045940000000               @pnovl = 2;
045950000000               @pcltp = 'T';
045960000000               @pcurr = ohcurr;
045970000000               @plcur = @dftcr;
045980000000               @pexch = ohexch;
045990000000               @pexrt = ohexrt;
046000000000               exsr $ic001;
046010000000               //
046020000000      /end-free
046030000000     C                   z-add(h)  otn(1)        odltxt
046040000000     C                   z-add(h)  otn(2)        odotxt
046050000000      /free
046060000000               if ccdeco = '0';
046070000000      /end-free
046080000000     C                   z-add(h)  otn(1)        wrk140
046090000000     C                   z-add     wrk140        odltxt
046100000000     C                   z-add(h)  otn(2)        wrk140
046110000000     C                   z-add     wrk140        odotxt
046120000000      /free
046130000000               endif;
046140000000      /end-free
046150000000     C                   add       odltxt        v@txat
046160000000     C                   add       odotxt        v@otxt
046170000000      /free
046180000000       //* update ic extension file
046190000000               if *in96 = *off;
046200000000                 update icordtr;
046210000000               endif;
046220000000             endif;
046230000000           else;
046240000000      /end-free
046250000000     C                   add       odotxt        v@otxt
046260000000     C                   add       odltxt        v@txat
046270000000      /free
046280000000           endif;
046290000000         endif;
046300000000         //
046310000000         //* accumulate amount subject to tax (ordered)
046320000000         if odexmt = '0';
046330000000      /end-free
046340000000     C                   add       odlnvl        astxor
046350000000      /free
046360000000           if iclive = 'Y';
046370000000      /end-free
046380000000     C                   add       odlnvt        astxot
046390000000      /free
046400000000           endif;
046410000000         endif;
046420000000         //
046430000000         //* accumulate amount subject to cash & trade disc.
046440000000         if odacdc = 'Y';
046450000000      /end-free
046460000000     C                   sub       odlnvl        amstro
046470000000      /free
046480000000           if iclive = 'Y';
046490000000      /end-free
046500000000     C                   sub       odlnvt        tastro
046510000000      /free
046520000000           endif;
046530000000           //
046540000000           //* accumulate tax totals for trade discounts
046550000000           if odexmt = '0';
046560000000      /end-free
046570000000     C                   sub       odlnvl        trdtxo
046580000000      /free
046590000000             if iclive = 'Y';
046600000000      /end-free
046610000000     C                   sub       odlnvt        trdxot
046620000000      /free
046630000000             endif;
046640000000           endif;
046650000000         endif;
046660040121         //                                                   // #*8t
046670040121         // Check for backorders                              // #*8t
046680040121           if odboqt > 0;                                     // #*8t
046690040121             somebo = 'Y';                                    // #*8t
046700040121           endif;                                             // #*8t
046710040121         //
046720000000         //* update invoice print sequence in order detail record
046730000000         update ordetr;
046740000000         zzipsq = odipsq;
046750000000         zzwhlc = odwhlc;
046760000000         //
046770000000         //* read next ordet detail
046780000000         //
046790000000         reade od0key ordetr;
046800000000         *in60 = %eof;
046810000000         //
046820000000         //* retrieve ic extension record
046830000000         if iclive = 'Y'
046840000000           and ohcurr <> @dftcr;
046850000000           chain odckey icordtr;
046860000000           *in96 = not %found;
046870000000         endif;
046880000000       enddo;                                                                   // load dow end
046890000000       //
046900000000       if oe188x = 'Y';
046910000000         p1mode = 'D';
046920000000         p1rtvl = %editc(svrtvl:'X');
046930000000         OE188 ( p1shdn : p1mode : p1cono :
046940000000         p1orno : p1orgn : p1orsq : p1rtvl :
046950000000         p1itno : p1itd1 : p1itd2 : p1whid :
046960000000         p1qtsh : p1unms : p1umcd : p1umlt :
046970000000         p1prum : p1rtrc : p1litp );
046980000000         oe188x = 'N';
046990000000       endif;
047000000000       curitm = *blanks;
047010000000       prvitm = *blanks;
047020000000       //
047030000000       //* update order header file with new tax information
047040000000       //*  if not doing a reprint
047050000000       if uvrtxo = 'Y'
047060000000         and *in42 <> *on;
047070000000         if *in76 = *off
047080000000           and *in77 = *off;
047090000000           orhky = ordsav;
047100000000           chain oh0ky2 orhedr;
047110000000           *in95 = not %found;
047120000000           if *in95 = *off;
047130000000             @worvl = ohorvl;
047140000000             //
047150000000      /end-free
047160000000     C     v@txam        sub       ohtxam        v@diff
047170000000     C                   z-add     v@txam        ohtxam
047180000000      /free
047190000000       //
047200000000       //* if tax for order is different, add in adjusted amt
047210000000             v@amnt = *zeros;
047220000000      /end-free
047230000000     C     v@otxa        sub       v@prtx        v@amnt
047240000000     C                   add       v@amnt        ohorvl
047250000000      /free
047260000000             @wamnt = v@amnt;
047270000000      /end-free
047280000000     C                   add       v@diff        ohinam
047290000000      /free
047300000000             if ohupar = 'Y';
047310000000      /end-free
047320000000     C                   add       v@diff        oharc$
047330000000      /free
047340000000             endif;
047350000000             //
047360000000             //* update the header extension record
047370000000             if iclive = 'Y';
047380000000               chain oh0ky2 icorhdr;
047390000000               *in95 = not %found;
047400000000               if *in95 = *off;
047410000000                 //
047420000000      /end-free
047430000000     C     v@txat        sub       ohtxat        v@dift
047440000000     C                   z-add     v@txat        ohtxat
047450000000      /free
047460000000       //
047470000000       //* if tax for order is different, add in adjusted amt
047480000000                 v@amnt = *zeros;
047490000000      /end-free
047500000000     C     v@otxt        sub       v@prtt        v@amnt
047510000000      /free
047520000000       //
047530000000                 @ccurr = @dftcr;
047540000000                 chain(n) cm0ky1 iccsms;
047550000000                 *in90 = not %found;
047560000000                 if *in90 = *off;
047570000000                   @ccurr = cmcurr;
047580000000                 endif;
047590000000                 //
047600000000                 // convert adjusted amount to customer's currency
047610000000                 //   if not the same as order's currency.
047620000000                 v@amnc = v@amnt;
047630000000                 v@difc = v@dift;
047640000000                 if ohcurr <> @ccurr;
047650000000                   if @ccurr = @dftcr;
047660000000      /end-free
047670000000     C     v@otxa        sub       v@prtx        v@amnc
047680000000      /free
047690000000                     v@difc = v@diff;
047700000000                   else;
047710000000                     //* retrieve currency information
047720000000                     xxcom = *zeros;
047730000000                     xxapp = 'IC';
047740000000                     %subst(xxkey:1:4) = 'CURR';
047750000000                     %subst(xxkey:5:3) = cmcurr;
047760000000                     chain(n) ctlky orctl;
047770000000                     *in90 = not %found;
047780000000                     //
047790000000                     clear len;
047800000000                     clear err;
047810000000                     inn = *zeros;
047820000000                     inn(1) = v@amnt;
047830000000                     inn(2) = v@dift;
047840000000                     len(1) = '13,3';
047850000000                     len(2) = '13,3';
047860000000                     @pnovl = 2;
047870000000                     @pcltp = 'L';
047880000000                     @pcurr = ohcurr;
047890000000                     @plcur = cmcurr;
047900000000                     @pexch = *blanks;
047910000000                     @pexrt = *zeros;
047920000000                     exsr $ic001;
047930000000                     //
047940000000      /end-free
047950000000     C                   z-add(h)  otn(1)        v@amnc
047960000000     C                   z-add(h)  otn(2)        v@difc
047970000000      /free
047980000000                     if ccdeco = '0';
047990000000      /end-free
048000000000     C                   z-add(h)  otn(1)        wrk140
048010000000     C                   z-add     wrk140        v@amnc
048020000000     C                   z-add(h)  otn(2)        wrk140
048030000000     C                   z-add     wrk140        v@difc
048040000000      /free
048050000000                     endif;
048060000000                   endif;
048070000000                 endif;
048080000000      /end-free
048090000000     C                   add       v@amnt        ohorvt
048100000000     C                   add       v@dift        ohinat
048110000000     C                   add       v@amnc        ohorvc
048120000000     C                   add       v@difc        ohinac
048130000000      /free
048140000000                 if ohupar = 'Y';
048150000000      /end-free
048160000000     C                   add       v@dift        oharct
048170000000      /free
048180000000                 endif;
048190000000                 if iclive = 'Y'
048200000000                   and icopen = 'Y';
048210000000      /end-free
048220000000     C                   z-add     @gtxat        ohgtxt
048230000000     C                   z-add     @ptxat        ohptxt
048240000000      /free
048250000000                 endif;
048260000000                 update icorhdr;
048270000000               endif;
048280000000             endif;
048290000000             //
048300000000             update orhedr;
048310000000             //
048320000000             //* update the customer master file with open order
048330000000             //* value
048340000000             if @worvl <> ohorvl;
048350000000               chain cm0ky1 cusmsr;
048360000000               *in95 = not %found;
048370000000               if *in95 = *off;
048380000000      /end-free
048390000000     C                   add       @wamnt        cmopor
048400000000      /free
048410000000                 update cusmsr;
048420000000               endif;
048430000000               //
048440000000               //* update ic customer extension file
048450000000               if iclive = 'Y';
048460000000                 chain cm0ky1 iccsmsr;
048470000000                 *in95 = not %found;
048480000000      /end-free
048490000000     C                   add       v@amnc        cmopot
048500000000      /free
048510000000                 update iccsmsr;
048520000000               endif;
048530000000             endif;
048540000000             //
048550000000             //  reset invoice number
048560000000             ohinno = invnrx;
048570000000             //
048580000000             // sales tax ne 0   seton  21
048590000000             if ohcurr = @dftcr;
048600000000               *in21 = (ohtxam <> 0);
048610000000             else;
048620000000               *in21 = (ohtxat <> 0);
048630000000             endif;
048640000000           endif;
048650000000         endif;
048660000000       else;
048670000000         //
048680000000         exsr $retax;
048690000000       endif;
048700000000       //
048710000000       endsr;
048720000000       //
048730000000       //********************************************************* $gpstx
048740000000       //
048750000000       begsr $gpstx;
048760000000       //
048770000000      /end-free
048780000000     C                   move      *all'0'       gtxa@
048790000000     C                   move      *all'0'       gtxao@
048800000000     C                   move      *all'0'       ptxa@
048810000000     C                   move      *all'0'       ptxao@
048820000000     C                   move      *all'0'       gtxa#
048830000000     C                   move      *all'0'       gtxao#
048840000000     C                   move      *all'0'       ptxa#
048850000000     C                   move      *all'0'       ptxao#
048860000000      /free
048870000000       @icord = 'N';
048880000000       if iclive = 'Y'
048890000000         and ohcurr <> @dftcr;
048900000000         @icord = 'Y';
048910000000       endif;
048920000000       //
048930000000       //* call to recalc the gst/pst tax amounts
048940000000       XAGPST ( shtdwn : conoxx : ornoxx :
048950000000       orgnxx : gtxa@ : gtxao@ : ptxa@ : ptxao@
048960000000       : @icord : gtxa# : gtxao# : ptxa# :
048970000000       ptxao# );
048980000000       //
048990000000       xagpst@ = 'Y';
049000000000       //
049010000000       endsr;
049020000000       //
049030000000       //********************************************************* $print
049040000000       // $print - print subroutine
049050000000       //
049060000000       begsr $print;
049070000000       // reset fob description indicator
049080000000       *in66 = *off;
049090000000       //
049100000000       //* if a bill code is specified skip printing of invoices
049110000000       skpprt = *blanks;
049120000000       xxcnsl = *blanks;
049130000000       consgn = *blanks;
049140000000       if ohcbcd <> *blanks
049150000000         and ohorst = '3';
049160000000         skpprt = 'Y';
049170000000         xxcnsl = 'Y';
049180000000       endif;
049190000000       if ohcsor = 'AT'
049200000000         and ohorvl = *zeros;
049210000000         @split = 'N';
049220000000         skpprt = 'Y';
049230000000         consgn = 'Y';
049240000000       endif;
049250000000       //
049260000000       // convert invoice print time  to correct time zone
049270000000      /end-free
049280000000     C                   time                    timex
049290000000      /free
049300000000       $$usid = @user;
049310000000       $$time = %editc(timex:'X');
049320000000      /end-free
049330000000     C     udate         mult      10000.01      @@date
049340000000      /free
049350000000       $$date = %editc(@@date:'X');
049360000000       $$tmzn = *blank;
049370000000       $$shdn = *blank;
049380000000       XA777 ( $$usid : $$time : $$date :
049390000000       $$tmzn : $$shdn );
049400000000       xa777@ = 'Y';
049410000000      /end-free
049420000000     C                   move      $$time        @@time
049430000000      /free
049440000000       //
049450000000       // only show last 4 digits of credit card number
049460000000       @wcrcd = ohcrcd;
049470000000       if eplive = 'Y';
049480000000         @wcrcd = *blanks;
049490000000         if ohcrcd <> *blanks;
049500000000           oep004@ = 'Y';
049510000000           p1crcd = ohcrcd;
049520000000           p1mode = 'D';
049530000000           OEP004 ( p2shdn : p1crcd : p1mode :
049540000000           p14dig );
049550000000           %subst(@wcrcd:15:4) = p14dig;
049560000000      /end-free
049570000000     C     'XXXXXXXX'    cat       'XXXXXX':0    @xxxxx
049580000000      /free
049590000000           %subst(@wcrcd:1:14) = @xxxxx;
049600000000         endif;
049610000000         if ctcrcd <> *blanks;
049620000000           oep004@ = 'Y';
049630000000           p1crcd = ctcrcd;
049640000000           p1mode = 'D';
049650000000           OEP004 ( p2shdn : p1crcd : p1mode :
049660000000           p14dig );
049670000000           %subst(ctcrcd:15:4) = p14dig;
049680000000      /end-free
049690000000     C     'XXXXXXXX'    cat       'XXXXXX':0    @xxxxx
049700000000      /free
049710000000           %subst(ctcrcd:1:14) = @xxxxx;
049720040317         endif;
049730040317       //                                                         #*8v
049740040317       // get last 4 digits                                       #*8v
049750040317       else;                                                   // #*8v
049760040317         if ohcrcd <> *blanks;                                 // #*8v
049770040317           clear cc;                                           // #*8v
049780040317       // #*8v - beg of add
049790040317      /end-free
049800040317     C                   movea     ohcrcd        cc
049810040317      /free
049820040317       // #*8v - end of add
049830040317           @x1 = 0;                                            // #*8v
049840040317           @y1 = 0;                                            // #*8v
049850040317       // #*8v - beg of add
049860040317      /end-free
049870040317     C                   do        18
049880040317      /free
049890040317       // #*8v - end of add
049900040317             @x1 = @x1 + 1;                                    // #*8v
049910050301       //    if cc(@x1) = ' ';                     del - #*9f  // #*8v
049920050301             if cc(@x1) = ' '                                  // #*9f
049930050301               or @x1 = 18;                                    // #*9f
049940040317               @y1 = @x1 - 4;                                  // #*8v
049950040317               leave;                                          // #*8v
049960040317             endif;                                            // #*8v
049970040317           enddo;                                              // #*8v
049980040317       //                                                         #*8v
049990040317           if @y1 > 0;                                         // #*8v
050000040317             @wcrcd = *blanks;                                 // #*8v
050010040317       // #*8v - beg of add
050020040317      /end-free
050030040317     C                   movea     cc            @@card
050040040317      /free
050050040317       // #*8v - end of add
050060040317             %subst(p14dig:1:4) = %subst(@@card:@y1:4);        // #*8v
050070040317             %subst(@wcrcd:15:4) = p14dig;                     // #*8v
050080040317       // #*8v - beg of add
050090040317      /end-free
050100040317     C     'XXXXXXXX'    cat       'XXXXXX':0    @xxxxx
050110040317      /free
050120040317       // #*8v - end of add
050130040317             %subst(@wcrcd:1:14) = @xxxxx;                     // #*8v
050140040317           endif;                                              // #*8v
050150040317         endif;                                                // #*8v
050160040317         if ctcrcd <> *blanks;                                 // #*8v
050170040317           clear cc;                                           // #*8v
050180040317       // #*8v - beg of add
050190040317      /end-free
050200040317     C                   movea     ctcrcd        cc
050210040317      /free
050220040317       // #*8v - end of add
050230040317           @x1 = 0;                                            // #*8v
050240040317           @y1 = 0;                                            // #*8v
050250040317       // #*8v - beg of add
050260040317      /end-free
050270040317     C                   do        18
050280040317      /free
050290040317       // #*8v - end of add
050300040317             @x1 = @x1 + 1;                                    // #*8v
050310040317             if cc(@x1) = ' ';                                 // #*8v
050320040317               @y1 = @x1 - 4;                                  // #*8v
050330040317               leave;                                          // #*8v
050340040317             endif;                                            // #*8v
050350040317           enddo;                                              // #*8v
050360040317       //                                                         #*8v
050370040317           if @y1 > 0;                                         // #*8v
050380040317             ctcrcd = *blanks;                                 // #*8v
050390040317       // #*8v - beg of add
050400040317      /end-free
050410040317     C                   movea     cc            @@card
050420040317      /free
050430040317       // #*8v - end of add
050440040317             %subst(p14dig:1:4) = %subst(@@card:@y1:4);        // #*8v
050450040317             %subst(ctcrcd:15:4) = p14dig;                     // #*8v
050460040317       // #*8v - beg of add
050470040317      /end-free
050480040317     C     'XXXXXXXX'    cat       'XXXXXX':0    @xxxxx
050490040317      /free
050500040317       // #*8v - end of add
050510040317             %subst(ctcrcd:1:14) = @xxxxx;                     // #*8v
050520040317           endif;                                              // #*8v
050530040317         endif;                                                // #*8v
050540000000       endif;
050550000000       // skip print for 0 value consignment orders
050560000000      /end-free
050570000000     C     consgn        cabeq     'Y'           hedskp
050580000000      /free
050590000000       //
050600000000       //--------------------------------------------------------------
050610000000       // logic added for fax
050620000000       //
050630000000       *in31 = (ohprti <> 'N');
050640000000       *in32 = (ohfxin = 'Y');
050650000000       *in29 = (ohemin = 'Y');
050660000000       *in38 = (ohnknm <> *blanks);
050670000000       //
050680000000       //* get default cover sheet information for fax
050690000000       //
050700000000       if ohfxin = 'Y'
050710000000         and z$test <> '&*';
050720000000         //
050730000000         if ohcono <> cmcono
050740000000           or ohcsno <> cmcsno;
050750000000           chain(n) cm0ky1 cusmsr;
050760000000           *in90 = not %found;
050770000000         endif;
050780000000         //
050790000000       endif;
050800000000       //
050810000000       // if single invoice be sure *in38 is off
050820000000       if z$test = '&*'
050830000000         and *in38 = *on;
050840000000         *in38 = *off;
050850000000       endif;
050860000000       //
050870000000       // if quadrant is not used then *in38 is off
050880000000       if qfxotq = ' ';
050890000000         *in38 = *off;
050900000000       endif;
050910000000       //
050920000000       //* print cover page
050930000000       //
050940000000       //* retrieve fax number
050950000000       clear faxnbr;
050960000000       faxnbr = p1fxph;
050970000000       //
050980000000       @@fxpn = *blanks;
050990000000       @@fxcd = *blanks;
051000000000       @@cont = *blanks;
051010000000       @@fxpn = cmfxpn;
051020000000       @@fxcd = cmfxcd;
051030000000       @@cont = cmcont;
051040000000       //
051050000000       // bring in addr information for fax
051060000000       if z$test <> '&*'
051070000000         and ohshp# <> *blanks;
051080000000         chain sa0key addrr;
051090000000         *in90 = not %found;
051100000000         if *in90 = *off
051110000000           and safxin <> 'C';
051120000000           @@fxpn = *blanks;
051130000000           @@fxcd = *blanks;
051140000000           @@cont = *blanks;
051150000000           @@fxpn = safaxn;
051160000000           @@fxcd = safxcd;
051170000000           @@cont = sascnt;
051180000000         endif;
051190000000       endif;
051200000000       //
051210000000       // if running in batch check then check for country
051220000000       // code.
051230000000       if z$test <> '&*';
051240000000         if cmfxcd <> *blanks
051250000000           and *in38 = *off;
051260000000           *in39 = *on;
051270000000         else;
051280000000           *in39 = *off;
051290000000         endif;
051300000000       endif;
051310000000       //
051320000000       // check forms@work options for print, fax, and email
051330000000       @faxop = 'N';
051340000000       @emlop = 'N';
051350000000       if formtp = '1'
051360000000         and skpprt <> 'Y';
051370000000         exsr $opt01;
051380000000       endif;
051390000000       //
051400000000       //
051410000000       //* do not fax if fax system option is optio but
051420000000       //* forms@work options for document fax via optio = n
051430000000       //
051440000000       if *in32 = *on;
051450000000         if qfxotq = ' '
051460000000           and @faxop = 'N';
051470000000           *in32 = *off;
051480000000         endif;
051490000000       endif;
051500000000       //
051510000000       //* set message to print on po
051520000000       //
051530000000       @trmsg = *blanks;
051540000000       if *in32 = *on
051550000000         and oheiin = 'Y';
051560000000         if ohhsid = *zeros;
051570000000      /end-free
051580000000     C                   movel     #both         @trmsg
051590000000      /free
051600000000         else;
051610000000      /end-free
051620000000     C                   movel     #fax          @trmsg
051630000000      /free
051640000000         endif;
051650000000       else;
051660000000         if *in32 = *on
051670000000           and oheiin = 'N';
051680000000      /end-free
051690000000     C                   movel     #fax          @trmsg
051700000000      /free
051710000000         else;
051720000000           if *in32 = *off
051730000000             and oheiin = 'Y'
051740000000             and ohhsid = *zeros;
051750000000      /end-free
051760000000     C                   movel     #edi          @trmsg
051770000000      /free
051780000000           endif;
051790000000         endif;
051800000000       endif;
051810000000       //
051820000000       if skpprt <> 'Y';
051830000000         if svcinv = *zeros
051840000000           or ohcict <> svcinv;
051850000000           svcinv = ohcict;
051860000000           if @faxop <> 'Y';
051870000000             except coverp;
051880000000           endif;
051890000000         endif;
051900000000       endif;
051910000000       //* email invoice
051920000000       if skpprt <> 'Y';
051930000000         if ohemin = 'Y';
051940000000           exsr $email;
051950000000         endif;
051960000000       endif;
051970000000       //
051980000000       // process forms@work to print, fax, or email
051990000000       if formtp = '1'
052000000000         and skpprt <> 'Y';
052010000000         exsr $opt02;
052020000000       endif;
052030000000       //--------------------------------------------------------------
052040000000       //
052050000000       //
052060000000       // if history id is not zero this is a reprint from history
052070000000       if ohhsid <> *zeros;
052080000000         *in77 = *on;
052090000000       endif;
052100000000       // if bill code is filled in and not in re-print mode move zeros
052110000000       if ldblcd <> *blanks
052120000000         and ldrprt <> 'Y';
052130000000         *in76 = *off;
052140000000         *in77 = *off;
052150000000         %subst(p#ntes:19:2) = ldblcd;
052160000000       endif;
052170000000       //
052180000000       hazext = *blanks;
052190000000       //
052200000000       // check the warehouse options to see if hazmat
052210000000       // papers should print at invoice time
052220000000       // prtopt = 3 print with invoices
052230000000       %subst(key@@@:1:4) = '00IA';
052240000000       %subst(key@@@:5:5) = 'WHAZD';
052250000000       %subst(x9@cky:1:9) = key@@@;
052260000000       %subst(x9@cky:10:2) = ohwhid;
052270000000       chain x9@cky orctl;
052280000000       *in85 = not %found;
052290000000       if *in85 = *on;
052300000000         clear prtopt;
052310000000       else;
052320000000         except relctl;
052330000000       endif;
052340000000       //
052350000000       // move ohnote to 29 position field for fax print
052360000000       note29 = *blanks;
052370000000       note27 = *blanks;
052380000000       note29 = ohnote;
052390000000       note27 = ohnote;
052400000000       //
052410000000       if skpprt <> 'Y'
052420000000         and once1 <> 'Y';
052430000000         //
052440000000         //  moves date into correct format
052450000000         //
052460000000         d@t1 = invdto;
052470000000         exsr $d@t1;
052480000000         invdto = d@t2;
052490000000         except headin;
052500000000         *in66 = *on;
052510000000         d@t2 = invdto;
052520000000         exsr $d@t2;
052530000000         invdto = d@t1;
052540000000         *in68 = *off;
052550000000         //
052560000000         if ldblcd <> *blanks;
052570000000           // print consolidated comments if they exist for invoice
052580000000           exsr $cocom;
052590000000         endif;
052600000000       endif;
052610000000       // check overflow
052620000000       // print *credit memo* if r type
052630000000       if *inof = *on
052640000000         or *inoe = *on
052650000000         or *inob = *on
052660000000         or *inod = *on;
052670000000         exsr $prtof;
052680000000       endif;
052690000000       if ldblcd <> *blanks
052700000000         and xxortp = 'R';
052710000000         except crdmem;
052720000000       endif;
052730000000       //
052740000000       //* print consolidted invoice heading
052750000000       if ldblcd <> *blanks;
052760000000         once1 = 'Y';
052770000000         //
052780000000         // check overflow
052790000000         if *inof = *on
052800000000           or *inoe = *on
052810000000           or *inob = *on
052820000000           or *inod = *on;
052830000000           exsr $prtof;
052840000000         endif;
052850000000         except conhd1;
052860000000         //
052870000000         // check overflow
052880000000         if *inof = *on
052890000000           or *inoe = *on
052900000000           or *inob = *on
052910000000           or *inod = *on;
052920000000           exsr $prtof;
052930000000         endif;
052940000000         except conhd2;
052950000000       endif;
052960000000       //
052970000000       // check overflow
052980000000       if *inof = *on
052990000000         or *inoe = *on
053000000000         or *inob = *on
053010000000         or *inod = *on;
053020000000         exsr $prtof;
053030000000       endif;
053040000000       //
053050000000       //* print ship to and bill to if address has changed
053060000000       //* from the first invoice printed
053070000000       if soldto = 'Y';
053080000000         except consld;
053090000000       endif;
053100000000       if shipto = 'Y';
053110000000         //-----------------------
053120000000      /end-free
053130000000     C     shptag        tag
053140000000      /free
053150000000       //-----------------------
053160000000         if shpa > *blanks;
053170000000           sh = *blanks;
053180000000           a = 1;
053190000000           if ohshnm > *blanks;
053200000000             %subst(sh(a):1:30) = ohshnm;
053210000000      /end-free
053220000000     C                   add       1             a
053230000000      /free
053240000000           endif;
053250000000           if ohsad1 > *blanks;
053260000000             %subst(sh(a):1:30) = ohsad1;
053270000000      /end-free
053280000000     C                   add       1             a
053290000000      /free
053300000000           endif;
053310000000           if ohsad2 > *blanks;
053320000000             %subst(sh(a):1:30) = ohsad2;
053330000000      /end-free
053340000000     C                   add       1             a
053350000000      /free
053360000000           endif;
053370000000           //
053380000000           //* get system level country code values
053390000000           //
053400000000           if ohshci > *blanks;
053410000000             x8comp = *zeros;
053420000000             x8appl = 'XA';
053430000000             %subst(x8ckey:1:4) = 'CNTY';
053440000000             %subst(x8ckey:5:3) = ohshci;
053450000000             chain ctlky2 orctl;
053460000000             *in92 = not %found;
053470000000             if *in92 = *off;
053480000000               adrseq = adrsqo;
053490000000               @@wrk = cntnmo;
053500000000             endif;
053510000000           endif;
053520000000           if adrseq = ' ';
053530000000             adrseq = sysasq;
053540000000           endif;
053550000000           if adrseq = ' ';
053560000000             adrseq = '1';
053570000000           endif;
053580000000           //
053590000000           if ohsad3 > *blanks;
053600000000             %subst(sh(a):1:30) = ohsad3;
053610000000      /end-free
053620000000     C                   add       1             a
053630000000      /free
053640000000           endif;
053650000000           if formtp = '2';
053660000000             if ohsad4 > *blanks;
053670000000               %subst(sh(a):1:30) = ohsad4;
053680000000      /end-free
053690000000     C                   add       1             a
053700000000      /free
053710000000             endif;
053720000000             //
053730000000             //* sequence address layout
053740000000             @@city = ohscty;
053750000000             @@stpv = ohshst;
053760000000             @@zpps = ohszip;
053770000000             //
053780000000             exsr $adrsq;
053790000000             //
053800000000             if adrs1 > *blanks;
053810000000               sh(a) = adrs1;
053820000000      /end-free
053830000000     C                   add       1             a
053840000000      /free
053850000000             endif;
053860000000             //
053870000000             if adrs2 > *blanks;
053880000000               sh(a) = adrs2;
053890000000      /end-free
053900000000     C                   add       1             a
053910000000      /free
053920000000             endif;
053930000000             //
053940000000             if adrs3 > *blanks;
053950000000               sh(a) = adrs3;
053960000000      /end-free
053970000000     C                   add       1             a
053980000000      /free
053990000000             endif;
054000000000             %subst(sh(a):1:30) = @@wrk;
054010000000             @@wrk = *blanks;
054020000000             //
054030000000           else;
054040000000             %subst(sh(a):1:20) = ohscty;
054050000000             w2 = ohshst;
054060000000             %subst(stzip:1:2) = w2;
054070000000             %subst(stzip:4:10) = ohszip;
054080000000             %subst(sh(a):22:13) = stzip;
054090000000      /end-free
054100000000     C                   add       1             a
054110000000      /free
054120000000             %subst(sh(a):1:30) = @@wrk;
054130000000             @@wrk = *blanks;
054140000000           endif;
054150000000         else;
054160000000           //* if ship to blank then move in sold to
054170000000           sh = *blanks;
054180000000           a = 1;
054190000000           if ohcsnm > *blanks;
054200000000             %subst(sh(a):1:30) = ohcsnm;
054210000000      /end-free
054220000000     C                   add       1             a
054230000000      /free
054240000000           endif;
054250000000           if ohcad1 > *blanks;
054260000000             %subst(sh(a):1:30) = ohcad1;
054270000000      /end-free
054280000000     C                   add       1             a
054290000000      /free
054300000000           endif;
054310000000           if ohcad2 > *blanks;
054320000000             %subst(sh(a):1:30) = ohcad2;
054330000000      /end-free
054340000000     C                   add       1             a
054350000000      /free
054360000000           endif;
054370000000           //
054380000000           //* get system level country code values
054390000000           //
054400000000           if ohctid > *blanks;
054410000000             x8comp = *zeros;
054420000000             x8appl = 'XA';
054430000000             %subst(x8ckey:1:4) = 'CNTY';
054440000000             %subst(x8ckey:5:3) = ohctid;
054450000000             chain ctlky2 orctl;
054460000000             *in92 = not %found;
054470000000             if *in92 = *off;
054480000000               adrseq = adrsqo;
054490000000             endif;
054500000000           endif;
054510000000           if adrseq = ' ';
054520000000             adrseq = sysasq;
054530000000           endif;
054540000000           if adrseq = ' ';
054550000000             adrseq = '1';
054560000000           endif;
054570000000           //
054580000000           if ohcad3 > *blanks;
054590000000             %subst(sh(a):1:30) = ohcad3;
054600000000      /end-free
054610000000     C                   add       1             a
054620000000      /free
054630000000           endif;
054640000000           if formtp = '2';
054650000000             if ohcad4 > *blanks;
054660000000               %subst(sh(a):1:30) = ohcad4;
054670000000      /end-free
054680000000     C                   add       1             a
054690000000      /free
054700000000             endif;
054710000000             //
054720000000             //* sequence address layout
054730000000             @@city = ohblcy;
054740000000             @@stpv = ohblst;
054750000000             @@zpps = ohblzp;
054760000000             //
054770000000             exsr $adrsq;
054780000000             //
054790000000             if adrs1 > *blanks;
054800000000               sh(a) = adrs1;
054810000000      /end-free
054820000000     C                   add       1             a
054830000000      /free
054840000000             endif;
054850000000             //
054860000000             if adrs2 > *blanks;
054870000000               sh(a) = adrs2;
054880000000      /end-free
054890000000     C                   add       1             a
054900000000      /free
054910000000             endif;
054920000000             //
054930000000             if adrs3 > *blanks;
054940000000               sh(a) = adrs3;
054950000000      /end-free
054960000000     C                   add       1             a
054970000000      /free
054980000000             endif;
054990000000             %subst(sh(a):5:30) = x2cnnm;
055000000000             //
055010000000           else;
055020000000             //
055030000000             %subst(sh(a):1:20) = ohblcy;
055040000000             w2 = ohblst;
055050000000             %subst(stzip:1:2) = w2;
055060000000             %subst(stzip:4:10) = ohblzp;
055070000000             %subst(sh(a):22:13) = stzip;
055080000000      /end-free
055090000000     C                   add       1             a
055100000000      /free
055110000000           endif;
055120000000         endif;
055130000000         if *inof = *on
055140000000           or *inoe = *on
055150000000           or *inob = *on
055160000000           or *inod = *on;
055170000000           exsr $prtof;
055180000000      /end-free
055190000000     C                   goto      shptag
055200000000      /free
055210000000         endif;
055220000000         except consh1;
055230000000         //
055240000000         if *inof = *on
055250000000           or *inoe = *on
055260000000           or *inob = *on
055270000000           or *inod = *on;
055280000000           exsr $prtof;
055290000000      /end-free
055300000000     C                   goto      shptag
055310000000      /free
055320000000         endif;
055330000000         except consh2;
055340000000         //
055350000000         if *inof = *on
055360000000           or *inoe = *on
055370000000           or *inob = *on
055380000000           or *inod = *on;
055390000000           exsr $prtof;
055400000000      /end-free
055410000000     C                   goto      shptag
055420000000      /free
055430000000         endif;
055440000000         except consh3;
055450000000         //
055460000000         if *inof = *on
055470000000           or *inoe = *on
055480000000           or *inob = *on
055490000000           or *inod = *on;
055500000000           exsr $prtof;
055510000000           if sh(4) <> *blanks;
055520000000      /end-free
055530000000     C                   goto      shptag
055540000000      /free
055550000000           endif;
055560000000         endif;
055570000000         if sh(4) <> *blanks;
055580000000           except consh4;
055590000000         endif;
055600000000         //
055610000000         if *inof = *on
055620000000           or *inoe = *on
055630000000           or *inob = *on
055640000000           or *inod = *on;
055650000000           exsr $prtof;
055660000000           if sh(5) <> *blanks;
055670000000      /end-free
055680000000     C                   goto      shptag
055690000000      /free
055700000000           endif;
055710000000         endif;
055720000000         if sh(5) <> *blanks;
055730000000           except consh5;
055740000000         endif;
055750000000         //
055760000000         if *inof = *on
055770000000           or *inoe = *on
055780000000           or *inob = *on
055790000000           or *inod = *on;
055800000000           exsr $prtof;
055810000000           if sh(6) <> *blanks;
055820000000      /end-free
055830000000     C                   goto      shptag
055840000000      /free
055850000000           endif;
055860000000         endif;
055870000000         if sh(6) <> *blanks;
055880000000           except consh6;
055890000000         endif;
055900000000         //
055910000000         if *inof = *on
055920000000           or *inoe = *on
055930000000           or *inob = *on
055940000000           or *inod = *on;
055950000000           exsr $prtof;
055960000000           if sh(7) <> *blanks;
055970000000      /end-free
055980000000     C                   goto      shptag
055990000000      /free
056000000000           endif;
056010000000         endif;
056020000000         if sh(7) <> *blanks;
056030000000           except consh7;
056040000000         endif;
056050000000         //
056060000000         if *inof = *on
056070000000           or *inoe = *on
056080000000           or *inob = *on
056090000000           or *inod = *on;
056100000000           exsr $prtof;
056110000000           if sh(8) <> *blanks;
056120000000      /end-free
056130000000     C                   goto      shptag
056140000000      /free
056150000000           endif;
056160000000         endif;
056170000000         if sh(8) <> *blanks;
056180000000           except consh8;
056190000000         endif;
056200000000         //
056210000000         if *inof = *on
056220000000           or *inoe = *on
056230000000           or *inob = *on
056240000000           or *inod = *on;
056250000000           exsr $prtof;
056260000000           if sh(9) <> *blanks;
056270000000      /end-free
056280000000     C                   goto      shptag
056290000000      /free
056300000000           endif;
056310000000         endif;
056320000000         if sh(9) <> *blanks;
056330000000           except consh9;
056340000000         endif;
056350000000         //
056360000000       endif;
056370000000       //
056380000000       if crecrd = 'Y';
056390000000         except concrd;
056400000000       endif;
056410050414       //                                                    #*9h
056420050414       // Get FOB description for Consolidated Invoices      #*9h
056430050414       if ohfobc <> *blanks                               // #*9h
056440050414        and ldblcd <> *blanks;                            // #*9h
056450050414         x1comp = *zeros;                                 // #*9h
056460050414         x1appl = 'XA';                                   // #*9h
056470050414         %subst(x1ckey:1:2) = 'FB';                       // #*9h
056480050414         %subst(x1ckey:3:5) = ohfobc;                     // #*9h
056490050414         chain x1ctky orctl;                              // #*9h
056500050414         if %found(orctl);                                // #*9h
056510050414           @tfobd = fobdco;                               // #*9h
056520050414         endif;                                           // #*9h
056530050414         //                                                  #*9h
056540050414         // Check overflow                                   #*9h
056550050414         if *inof or *inoe or *inob or *inod;             // #*9h
056560050414           exsr $prtof;                                   // #*9h
056570050414         endif;                                           // #*9h
056580050414         //                                                  #*9h
056590050414         // Print FOB Code description in detail lines for   #*9h
056600050414         //   Consolidated Invoices                          #*9h
056610050414         if skpprt <> 'Y';                                // #*9h
056620050414           except fobdes;                                 // #*9h
056630050414         endif;                                           // #*9h
056640050414       endif;                                             // #*9h
056650000000       //
056660000000       // check overflow
056670000000       if *inof = *on
056680000000         or *inoe = *on
056690000000         or *inob = *on
056700000000         or *inod = *on;
056710000000         exsr $prtof;
056720000000       endif;
056730000000       //------------------------------*
056740000000      /end-free
056750000000     C     hedskp        tag
056760000000      /free
056770000000       //------------------------------*
056780000000       //
056790000000       //* read order detail file
056800000000       chain od0key orde1ir;
056810000000       *in90 = not %found;
056820000000       dow *in90 = *off;
056830000000         //
056840000000         if xxcnsl <> 'Y'
056850000000           and ohcsor = 'AT';
056860000000           select;
056870000000           when odlitp = 'I';
056880000000             skpprt = 'Y';
056890000000           when odlitp = 'C';
056900000000             skpprt = ' ';
056910000000           endsl;
056920000000         endif;
056930000000         //
056940030911         // Update vertex tables with tax amount after credit    #*8p
056950030911         // card authorization is completed                      #*8p
056960030912         if eplive = 'Y'                                       //#*8p
056970030912           and  uvrtxo = 'Y'                                   //#*8p
056980030912           and odlitp <> 'M';                                  //#*8p
056990030911           @uptax = 'Y';                                       //#*8p
057000030911           exsr $oe935;                                        //#*8p
057010030911         endif;                                                //#*8p
057020030911         //
057030000000         it#1d = $2c002;
057040000000         it#2d = $2c003;
057050000000         if *in60 = *off;
057060000000           o#cono = odcono;
057070000000         endif;
057080000000         llfeld = $2c001;
057090000000         svitno = oditno;
057100000000         svitd2 = oditd2;
057110000000         //
057120000000         *in64 = *off;
057130000000         *in65 = *off;
057140030820         *in44 = *off;                                     // #*8n
057150000000         //
057160000000         // check if order is in foreign currency
057170000000         if iclive = 'Y';
057180000000           *in75 = *off;
057190000000           @@symo = @dsymo;
057200000000           chain(n) od0key icorhdr;
057210000000           *in90 = not %found;
057220000000           if *in90 = *off
057230000000             and ohcurr <> @dftcr;
057240000000             //* retrieve currency information
057250000000             xxcom = *zeros;
057260000000             xxapp = 'IC';
057270000000             %subst(xxkey:1:4) = 'CURR';
057280000000             %subst(xxkey:5:3) = ohcurr;
057290000000             chain ctlky orctl;
057300000000             *in90 = not %found;
057310000000             if *in90 = *off;
057320000000               @@symo = ccsymo;
057330000000               except relctl;
057340000000               //
057350000000               xxbttl = ccbttl;
057360000000               xxovbm = ccovbm;
057370000000               if xxovbm = *blanks;
057380000000                 xxovbm = @dftcr;
057390000000               endif;
057400000000               //
057410000000               //* retrieve currency symbol for the currency's
057420000000               //* benchmark
057430030820               //*in44 = *off;                            del #*8n
057440000000               if xxbttl = 'Y'
057450000000                 and formtp = '2';
057460000000                 *in44 = *on;
057470000000                 clear @@symb;
057480000000                 xxcom = *zeros;
057490000000                 xxapp = 'IC';
057500000000                 %subst(xxkey:1:4) = 'CURR';
057510000000                 %subst(xxkey:5:3) = xxovbm;
057520000000                 chain(n) ctlky orctl;
057530000000                 *in90 = not %found;
057540000000                 if *in90 = *off;
057550000000                   @@symb = ccsymo;
057560000000                 endif;
057570000000                 //
057580000000                 //  benchmark is local - set flag
057590000000                 bic000 = 'Y';
057600000000                 if xxovbm = @dftcr;
057610000000                   bic000 = 'N';
057620000000                 endif;
057630000000                 //
057640000000                 //* re-position pointer to order currency
057650000000                 //* pgm uses file fields for future calculations
057660000000                 xxcom = *zeros;
057670000000                 xxapp = 'IC';
057680000000                 %subst(xxkey:1:4) = 'CURR';
057690000000                 %subst(xxkey:5:3) = ohcurr;
057700000000                 chain(n) ctlky orctl;
057710000000                 *in90 = not %found;
057720000000               endif;
057730000000               //
057740000000             endif;
057750000000             *in75 = *on;
057760000000           endif;
057770000000           //
057780000000           if *in75 = *on;
057790000000             chain(n) odckey icordtr;
057800000000             *in90 = not %found;
057810000000           endif;
057820000000         endif;
057830000000         //
057840000000         // over flow check
057850000000         if *inof = *on
057860000000           or *inoe = *on
057870000000           or *inob = *on
057880000000           or *inod = *on;
057890000000           exsr $prtof;
057900000000         endif;
057910000000         //
057920000000         *in50 = *off;
057930000000         if *in16 = *on;
057940000000           *in50 = (odtxcd = 'Y');                                              //  eq
057950000000         endif;
057960000000         //
057970000000         // use tax amount calculated by vertex to determine
057980000000         // if the item should be taxed.
057990000000         if uvrtxo = 'Y';
058000000000           *in50 = *off;
058010000000           if odltxa <> 0;
058020000000             *in50 = *on;
058030000000           endif;
058040000000         endif;
058050000000         //
058060000000         // do not print 't' for taxable on line items if gst
058070000000         if *in50 = *on;
058080000000           if ohgtyn = 'Y'
058090000000             or ohptyn = 'Y'
058100000000             or ohptyn = 'C';
058110000000             *in50 = *off;
058120000000           endif;
058130000000         endif;
058140000000         //
058150000000         *in25 = (odctwt = 'N');                                                //  eq
058160000000         //
058170000000         // if first character of item # is / detail line is msg
058180000000         // only want record if second character is blank or i for inv print
058190000000         //
058200000000         // check messages
058210000000         if odlitp = 'M';
058220000000           //
058230000000           if it#2d < '1';
058240000000             if it#2d = ' ';
058250000000               if skpprt <> 'Y';
058260000000                 except msge;
058270000000               endif;
058280000000             endif;
058290000000           endif;
058300000000           //
058310000000           if it#2d = 'I';
058320000000             if skpprt <> 'Y';
058330000000               except msge;
058340000000             endif;
058350000000           endif;
058360000000           //
058370000000         endif;
058380000000         //
058390000000         // check special charges
058400000000         if odlitp = 'C';
058410000000           if skpprt <> 'Y';
058420000000             except spcl;
058430000000           endif;
058440000000         endif;
058450000000         //
058460000000         // check line items
058470000000         if odlitp = 'I';
058480000000           //
058490000000           // if the oe options are set up to print the 2nd description line
058500000000           // as non-stock items, set up to print 2nd description line in place
058510000000           // of the item number.
058520000000           //
058530000000           // determine item to print - replacements
058540000000           //    if not our item
058550000000           if invit <> '1';
058560000000             //    if the original item not blank
058570000000             //    them perform switch
058580000000             if odorit <> *blanks;
058590000000               if invit = '2';
058600000000                 *in65 = *on;
058610000000               else;
058620000000                 *in64 = *on;
058630000000               endif;
058640000000             endif;
058650000000           endif;
058660000000           //
058670000000           // if msds used and notification printed on pack list
058680000000           *in55 = *off;
058690000000           if umsdso = 'Y'
058700000000             and inmsdo = 'Y'
058710000000             and odmsds = 'Y';
058720000000             *in55 = *on;
058730000000           endif;
058740000000           //
058750000000           // output detail line item
058760000000           // should backorder quantity print ?
058770000000           *in23 = *on;
058780000000           if ohcscd <> 'D'
058790000000             and odboqt <> 0;
058800000000             *in23 = *off;
058810000000           endif;
058820000000           //
058830000000           // determine if hazmat item on invoice
058840000000           if hazmat = 'Y'
058850000000             and prtopt = '3'
058860000000             and hazext <> 'Y';
058870000000             chain oditno ithaz;
058880000000             *in85 = not %found;
058890000000             if *in85 = *off
058900000000               and hzdotr = 'Y';
058910000000               hazext = 'Y';
058920000000             endif;
058930000000           endif;
058940000000           //
058950000000           //* check oe options & determine price to print
058960000000           if showpr = 'O'
058970000000             and odcpum <> *blanks
058980000000             and invopt <> 'O';
058990000000             exsr $cpuom;
059000000000           else;
059010000000             @@aslp = odaslp;
059020000000             @@prum = odprum;
059030000000           endif;
059040000000           //
059050000000           // save itno for $extic subr
059060000000           itnoex = oditno;
059070000000           //
059080000000           // if the oe options are set up to print the 2nd desc. line
059090000000           // as non-stock items, set up to print 2nd desc. line in
059100000000           // place of the item number.
059110000000           //
059120000000           if nsicd = 'Y';
059130000000             if odnost = 'Y';
059140000000               oditno = oditd2;
059150000000               oditd2 = *blanks;
059160000000             endif;
059170000000           endif;
059180000000           //
059190000000           // get fob description for non-consolidated invoices
059200000000           if ohfobc <> *blanks
059210000000             and ldblcd <> *blanks;
059220000000             @nodes = *blanks;
059230000000             x1comp = *zeros;
059240000000             x1appl = 'XA';
059250000000             %subst(x1ckey:1:2) = 'FB';
059260000000             %subst(x1ckey:3:5) = ohfobc;
059270000000             chain x1ctky orctl;
059280000000             *in90 = not %found;
059290000000             if *in90 = *off;
059300000000               @cfobd = fobdco;
059310000000               @nodes = 'Y';
059320000000             endif;
059330000000           else;
059340000000             @nodes = 'N';
059350000000           endif;
059360000000           //
059370000000           // for ic print populate smaller field.
059380000000           if *in75 = *on;
059390000000             //* check oe options & determine price to print
059400000000             if showpr = 'O'
059410000000               and odcpum <> *blanks
059420000000               and invopt <> 'O';
059430000000               exsr $ctuom;
059440000000             else;
059450000000      /end-free
059460000000     C                   z-add     odaspt        @@aspt
059470000000      /free
059480000000             endif;
059490000000           endif;
059500000000           //
059510000000           //* check customer defualt options
059520000000           *in56 = *off;
059530000000           *in57 = *off;
059540000000           if invopt = 'C'
059550000000             or invopt = 'B';
059560000000             exsr $cusum;
059570000000           endif;
059580000000           //
059590000000           if skpprt <> 'Y';
059600000000             except detlin;
059610000000           endif;
059620031216           if prtd2 = 'Y';                                     // #*8r
059630031216             *in45 = *on;                                      // #*8r
059640031216             if oditd2 <> *blanks;                             // #*8r
059650031216               if skpprt <> 'Y';                               // #*8r
059660031216                 except dsc2;                                  // #*8r
059670031216               endif;                                          // #*8r
059680031216             endif;                                            // #*8r
059690031216           endif;                                              // #*8r
059700000000           if *in57 = *off;
059710000000             if skpprt <> 'Y';
059720000000               except detln1;
059730000000             endif;
059740000000           endif;
059750000000           //                                                               t
059760031216         //if prtd2 = 'Y';                                        #*8r
059770031216         //  *in45 = *on;                                         #*8r
059780031216         //  if oditd2 <> *blanks;                                #*8r
059790031216         //    if skpprt <> 'Y';                                  #*8r
059800031216         //      except dsc2;                                     #*8r
059810031216         //    endif;                                             #*8r
059820031216         //  endif;                                               #*8r
059830031216         //endif;                                                 #*8r
059840000000         endif;
059850000000         //
059860000000         //* clear out fields for chain
059870000000         i0whid = *blanks;
059880000000         i0itno = *blanks;
059890000000         i0igid = *blanks;
059900000000         i0cono = *zeros;
059910000000         i0csno = *zeros;
059920000000         i0cgid = *blanks;
059930000000         //
059940000000         //* set chain flags
059950000000         if odlitp = 'I';
059960000000           if eicmto = 'Y';
059970000000             whitcs = 'N';
059980000000             whigcs = 'N';
059990000000             whitcg = 'N';
060000000000             whigcg = 'N';
060010000000             whigrp = 'N';
060020000000             whitem = 'N';
060030000000             norecs = *blanks;
060040000000             //
060050000000             //* find any extended item comments
060060000000             exsr $extic;
060070000000           endif;
060080000000         endif;
060090000000         //
060100000000         // print msds message "** msds **"
060110000000         if *in55 = *on;
060120000000           if skpprt <> 'Y';
060130000000             except msds;
060140000000           endif;
060150000000           *in55 = *off;
060160000000         endif;
060170000000         //
060180000000         // print original as well as ours
060190000000         if *in64 = *on;
060200000000           if skpprt <> 'Y';
060210000000             except orgitm;
060220000000           endif;
060230000000         endif;
060240000000         //
060250000000         // print serial numbers/lots if warehouse management
060260000000         // is installed and the item is a lot/serial and
060270000000         // serial numbers/lots were selected to print.
060280000000         // 51 = credit memo.
060290000000         //
060300000000         if wmlivo = 'Y';
060310000000           chain oditno itmst;
060320000000           *in90 = not %found;
060330000000           //
060340000000           if *in90 = *off;
060350000000             if imlsiv = 'Y';
060360000000               //
060370000000               // for kit parent, lot/serial numbers should print
060380000000               //  with associated component.
060390000000               if odbmcd = 'K';
060400000000                 kitflg = 'Y';
060410000000                 xxbmsq = *zeros;
060420000000               else;
060430000000                 kitflg = *blanks;
060440000000                 xxbmsq = *zeros;
060450000000               endif;
060460000000               //
060470000000               if imwmcd = 'L';
060480000000                 if odqtsh > 0;
060490000000                   exsr $lot;
060500000000                 endif;
060510000000                 if odqtsh < 0;
060520000000                   exsr $lotc;
060530000000                 endif;
060540000000               else;
060550000000                 if odqtsh > 0;
060560000000                   exsr $srn;
060570000000                 endif;
060580000000                 if odqtsh < 0;
060590000000                   exsr $srnc;
060600000000                 endif;
060610000000               endif;
060620000000               //
060630000000             endif;
060640000000             //
060650000000             // update warehouse management pick file
060660000000             //
060670000000             pckky = *blanks;
060680000000             %subst(pckky:1:2) = ohwhid;
060690000000             %subst(pckky:3:27) = oditno;
060700000000             e$wk0h = pckky;
060710000000             chain wk0key wmpckr;
060720000000             *in90 = not %found;
060730000000             if *in90 = *on;
060740000000               #9c001 = pckky;
060750000000               wkwhid = #9whid;
060760000000               wkitno = #9itno;
060770000000               write wmpckr;
060780000000             endif;
060790000000             if *in90 = *off;
060800000000               update wmpckr;
060810000000             endif;
060820000000             if odbmcd = 'K';
060830000000               exsr $wm131;
060840000000             endif;
060850000000             //
060860000000           endif;
060870000000           //
060880000000         endif;
060890000000         //
060900000000         // if the line item just printed is a parent item
060910000000         // explode into components on the invoice
060920000000         //
060930000000         if odbmcd <> ' ';
060940000000           if odbmcd <> 'A';
060950000000             exsr $bom;
060960000000           endif;
060970000000         endif;
060980000000         //
060990000000         //* update order detail status
061000000000         odorst = '4';
061010000000         odcict = ohcict;
061020000000         s2itno = oditno;
061030000000         s2itd2 = oditd2;
061040000000         oditno = svitno;
061050000000         oditd2 = svitd2;
061060000000         //
061070000000         // write out returns update record conditionally
061080000000         if *in77 = *off
061090000000           and *in76 = *off;
061100031217         //if odortp = 'R'                                 #*8q del
061110031217           if odqtor < 0                                   // #*8q
061120031209             and imdrtn = 'Y'
061130031217             and odalcd = 'Y';                             // #*8q
061140031217           //and odalcd = 'Y'                              #*8q del
061150031217           //and odqtsh < 0;                               #*8q del
061160000000             //
061170000000             odalcd = 'N';
061180000000             odcovc = 'Y';
061190000000             //
061200000000             chain o@0pky oeret;
061210000000             *in90 = not %found;
061220000000             if *in90 = *on;
061230000000               o@cono = odcono;
061240000000               o@orno = odorno;
061250000000               o@orgn = odorgn;
061260000000               o@orsq = odorsq;
061270000000               clear o@grid;
061280000000               write oeretr;
061290000000             endif;
061300000000             //
061310000000             // change the allow change flag on options if yes
061320050615             clear xxcihc;                                 // #*9j
061330000000             if alwchg = 'Y'
061340000000               or alwchg = ' ';
061350000000               xxcom = odcono;
061360000000               xxapp = 'OE';
061370000000               xxkey = 'OPTIONX';
061380000000               chain ctlky orctl;
061390000000               *in90 = not %found;
061400000000               if *in90 = *off;
061410050615                 xxcihc = cinvhc;                          // #*9j
061420000000                 alwchg = 'N';
061430000000                 except updalw;
061440000000               endif;
061450000000             endif;
061460000000             //
061470000000           endif;
061480000000         endif;
061490000000         //
061500000000         update orde1ir;
061510000000         oditno = s2itno;
061520000000         oditd2 = s2itd2;
061530000000         //
061540000000         //* read next order detail record
061550000000         reade od0key orde1ir;
061560000000         *in90 = %eof;
061570000000       enddo;
061580000000       //
061590000000       if xxcnsl <> 'Y'
061600000000         and ohorvl <> *zeros;
061610000000         skpprt = *blanks;
061620000000       endif;
061630000000       //
061640050315       // update deposit balance                              #*9d
061650050315       if ohetus = 'POS*ORDR';                             // #*9d
061660050315         if ldrprt <> 'Y'                                  // #*9d
061670050315           and ohdpam <> 0                                 // #*9d
061680050315           and ohHSID =  0;                                // #*9d
061690050315           xxhssq = 0;                                     // #*9d
061700050315           chain s202ky pspa2;                             // #*9d
061710050315           if not %found(pspa2);                           // #*9d
061720050315             if ohinam < ohdpam                            // #*9d
061730050315               and ohinam > *zeros;                        // #*9d
061740050315               ohdpam = ohinam;                            // #*9d
061750050315             endif;                                        // #*9d
061760050315             chain ohpror psdep1;                          // #*9d
061770050315             if %found;                                    // #*9d
061780050315               s7dpbl = s7dpbl - ohdpam;                   // #*9d
061790050315               update psdepr;                              // #*9d
061800050315             endif;                                        // #*9d
061810050315           endif;                                          // #*9d
061820050315         endif;                                            // #*9d
061830050315       endif;                                              // #*9d
061840050315                                                           // #*9d
061850000000       // put out bottom of invoice
061860000000       exsr $bottm;
061870000000       //
061880000000       // save total fields if print consdolidated invoices
061890000000       if ldblcd <> *blanks;
061900000000         // - sub total
061910000000      /end-free
061920000000     C                   add       subtot        csbtot
061930000000      // - total
061940000000     C                   add       itotal        citotl
061950000000      // - ic sub total
061960000000     C                   add       icsubt        subtic
061970000000      // - ic total
061980000000     C                   add       ictotl        totlic
061990000000      // - ic amount due
062000000000     C                   add       icamnt        amntic
062010000000      // - amount due
062020000000     C                   add       amtdue        camtdu
062030000000      // -  sales tax
062040000000     C                   add       ohtxam        cttaxm
062050000000      // -  ic sales tax
062060000000     C                   add       ohtxat        txatic
062070000000      // - deposit
062080000000     C                   add       ohdpam        ctdpam
062090000000      // -  ic deposit
062100000000     C                   add       ohdpat        dpatic
062110000000      // - trade discount amount
062120000000     C                   add       ohtdam        cttdam
062130000000      // - ic trade discount amount
062140000000     C                   add       ohtdat        tdatic
062150000000      // - container charge
062160000000     C                   add       ohcnct        ctcnct
062170000000      // -  ic container charge
062180000000     C                   add       ohcctt        ccttic
062190000000      // - federal excise tax
062200000000     C                   add       ohfeam        ctfeam
062210000000      // -  ic federal excise tax
062220000000     C                   add       ohfeat        featic
062230000000      // - gst  tax amount
062240000000     C                   add       ohgtxa        ctgttx
062250000000     C                   add       ohgtxt        ctgttt
062260000000      // - pst  tax amount
062270000000     C                   add       ohptxa        ctpttx
062280000000     C                   add       ohptxt        ctpttt
062290000000      // - cash discount amount
062300000000     C                   add       ohcdam        ctcdam
062310000000      // - ic cash discount amount
062320000000     C                   add       ohcdat        ctcdat
062330000000      /free
062340000000       //
062350000000         if ohcsor = 'AT'
062360000000           and camtdu <> *zeros;
062370000000           skpprt = *blanks;
062380000000         endif;
062390000000         //
062400000000       endif;
062410030518       if ohcurr = @dftcr;
062420000000         if *in42 = *on;
062430030518           *in17 = (ctcdam > 0);                                                // gt
062440000000         endif;
062450000000         if *in42 = *on;
062460030518           *in18 = (ctfeam <> 0);                                               // ><
062470000000         endif;
062480000000         if *in42 = *on;
062490030518           *in19 = (ctcnct <> 0);                                               // ><
062500000000         endif;
062510000000         if *in42 = *on;
062520030518           *in20 = (cttdam <> 0);                                               // ><
062530000000         endif;
062540000000         if *in42 = *on;
062550030518           *in21 = (cttaxm <> 0);                                               // ><
062560000000         endif;
062570000000       else;
062580000000         if *in42 = *on;
062590030518           *in17 = (ctcdat > 0);                                                //  gt
062600000000         endif;
062610000000         if *in42 = *on;
062620030518           *in18 = (featic <> 0);                                               // ><
062630000000         endif;
062640000000         if *in42 = *on;
062650030518           *in19 = (ccttic <> 0);                                               // ><
062660000000         endif;
062670000000         if *in42 = *on;
062680030518           *in20 = (tdatic <> 0);                                               // ><
062690000000         endif;
062700000000         if *in42 = *on;
062710030518           *in21 = (txatic <> 0);                                               // ><
062720000000         endif;
062730000000       endif;
062740000000       // file updates
062750000000       if *inu1 = *on
062760000000         or *inu3 = *on;
062770000000         c$oh1h = skey1;
062780000000         chain oh0key orhed;
062790000000         *in90 = not %found;
062800000000         if *in90 = *off;
062810000000           coord = $3c001;
062820000000           detlla = $3c002;
062830000000           duedt = $3c006;
062840000000           futdt = $3c008;
062850000000           netdt = $3c007;
062860000000           ovidt = $3c005;
062870000000           rtestp = $3c004;
062880000000           shpa = $3c003;
062890040121         // update order header backorder code                  // #*8t
062900040121            if somebo = 'N';                                    // #*8t
062910040121              ohbkcd = *blanks;                                 // #*8t
062920040121             endif;                                             // #*8t
062930000000         endif;
062940000000       endif;
062950000000       if *inu1 = *on
062960000000         or *inu3 = *on
062970000000         and *in90 = *off;
062980000000         //
062990000000         // if invoice printed has some back ordered items,
063000000000         //  output record to back order check file.
063010000000         // the order must not be marked as delete b/o's
063020000000         // in the complete ship code. *in77 indicates
063030000000         // reprint from history.
063040000000         if ohbkcd = 'S'
063050000000           and *in77 = *off;
063060000000           a$bo0h = detlla;
063070000000           chain bo0key bocrtr;
063080000000           *in90 = not %found;
063090000000           if *in90 = *off;
063100000000             update bocrtr;
063110000000           endif;
063120000000           if *in90 = *on;
063130000000             $3c002 = detlla;
063140000000             bocono = ohcono;
063150000000             boorno = ohorno;
063160000000             boorgn = ohorgn;
063170000000             boboco = *zeros;
063180000000             bobono = *blanks;
063190000000             bobogn = *zeros;
063200000000             boboup = *blanks;
063210000000             boprfl = *blanks;
063220000000             bofl12 = *blanks;
063230000000             write bocrtr;
063240000000           endif;
063250000000         endif;
063260000000         //
063270000000         #3c003 = duedtx;
063280000000         #3c001 = invdtx;
063290000000         #3c004 = netdtx;
063300000000         #3c002 = ovidtx;
063310000000         ohorst = '4';
063320000000         //
063330000000         // if not printing consolidated invoices
063340000000         if *inu3 = *off;
063350000000           ohcipf = 'Y';
063360000000           if xxcnsl = 'Y';
063370000000             ohcipf = 'N';
063380000000           endif;
063390000000           //* if prting con.inv. call oe528 to flp prt flg to y
063400000000         else;
063410000000           oe528 = 'Y';
063420000000           pxflag = ' ';
063430000000           pxcono = %editc(ohcono:'X');
063440000000           pxorno = ohorno;
063450000000           pxorgn = %editc(ohorgn:'X');
063460000000           OE528P ( pxflag : pxcono : pxorno :
063470000000           pxorgn );
063480000000         endif;
063490000000         //
063500051110         //* invoice printed date and time must be zero if first printing
063510000000         if ohorst = '4'
063520000000           and ohcipf = 'N'
063530000000           and pxflag = ' ';
063540000000           #3incc = *zeros;
063550000000           #3indt = *zeros;
063560051110           timex = *zeros;                               // #*9l
063570000000         endif;
063580000000         ohincc = #3incc;
063590000000         ohindt = #3indt;
063600000000         ohinur = @user;
063610000000         ohintm = timex;
063620000000         ohivcc = #3ivcc;
063630000000         ohivdt = #3ivdt;
063640000000         ohducc = #3ducc;
063650000000         ohdudt = #3dudt;
063660000000         ohntcc = #3ntcc;
063670000000         ohntdt = #3ntdt;
063680000000         ohinno = invnrx;
063690000000         ohws02 = *blanks;
063700000000         ohinup = *blanks;
063710000000         if ldrprt <> 'Y';
063720000000           ohcacd = @@cacd;
063730000000         endif;
063740000000         update orhedr;
063750000000       endif;
063760000000       //
063770000000       // if invoice printed has some back ordered items,
063780000000       //  output record to back order check file.
063790000000       // the order must not be marked as delete b/o's in
063800000000       // the complete ship code. *in77 indicates reprint
063810000000       // from history.
063820000000       if *inu2 = *on;
063830000000         d$oh3h = skey3;
063840000000         setll oh3key orhe3r;
063850000000         find = 'N';
063860000000         dow find = 'N';
063870000000           *in90 = *off;
063880000000           read orhe3r;
063890000000           *in90 = %eof;
063900000000           if *in90 = *off;
063910000000             coord = $3c001;
063920000000             detlla = $3c002;
063930000000             duedt = $3c006;
063940000000             futdt = $3c008;
063950000000             netdt = $3c007;
063960000000             ovidt = $3c005;
063970000000             rtestp = $3c004;
063980000000             shpa = $3c003;
063990000000           endif;
064000000000           if *in90 = *off;
064010000000             if detlla <> ordsav;
064020000000               update orhe3r;
064030000000             else;
064040000000               find = 'Y';
064050000000               if ohbkcd = 'S'
064060000000                 and *in77 = *off;
064070000000                 a$bo0h = detlla;
064080000000                 chain bo0key bocrtr;
064090000000                 *in90 = not %found;
064100000000                 if *in90 = *off;
064110000000                   update bocrtr;
064120000000                 endif;
064130000000                 if *in90 = *on;
064140000000                   $3c002 = detlla;
064150000000                   bocono = ohcono;
064160000000                   boorno = ohorno;
064170000000                   boorgn = ohorgn;
064180000000                   boboco = *zeros;
064190000000                   bobono = *blanks;
064200000000                   bobogn = *zeros;
064210000000                   boboup = *blanks;
064220000000                   boprfl = *blanks;
064230000000                   bofl12 = *blanks;
064240000000                   write bocrtr;
064250000000                 endif;
064260000000               endif;
064270000000               //
064280000000               #3c003 = duedtx;
064290000000               #3c001 = invdtx;
064300000000               #3c004 = netdtx;
064310000000               #3c002 = ovidtx;
064320000000               ohorst = '4';
064330000000               //
064340000000               // if not printing consolidated invoices
064350000000               if *inu3 = *off;
064360000000                 ohcipf = 'Y';
064370000000                 if xxcnsl = 'Y';
064380000000                   ohcipf = 'N';
064390000000                 endif;
064400000000                 //* if prting con.inv. call oe528 to flp prt flg to 'y'
064410000000               else;
064420000000                 pxflag = ' ';
064430000000                 pxcono = %editc(ohcono:'X');
064440000000                 pxorno = ohorno;
064450000000                 pxorgn = %editc(ohorgn:'X');
064460000000                 oe528 = 'Y';
064470000000                 OE528P ( pxflag : pxcono : pxorno :
064480000000                 pxorgn );
064490000000               endif;
064500000000               //
064510051110               //* invoice printed date and time must be zero if first printing
064520000000               if ohorst = '4'
064530000000                 and ohcipf = 'N'
064540000000                 and pxflag = ' ';
064550000000                 #3incc = *zeros;
064560000000                 #3indt = *zeros;
064570051110                 timex = *zeros;                         // #*9l
064580000000               endif;
064590000000               ohincc = #3incc;
064600000000               ohindt = #3indt;
064610000000               ohinur = @user;
064620000000               ohintm = timex;
064630000000               ohivcc = #3ivcc;
064640000000               ohivdt = #3ivdt;
064650000000               ohducc = #3ducc;
064660000000               ohdudt = #3dudt;
064670000000               ohntcc = #3ntcc;
064680000000               ohntdt = #3ntdt;
064690000000               ohinno = invnrx;
064700000000               ohws02 = *blanks;
064710000000               ohinup = *blanks;
064720000000               if ldrprt <> 'Y';
064730000000                 ohcacd = @@cacd;
064740000000               endif;
064750000000               update orhe3r;
064760000000             endif;
064770000000           endif;
064780000000           if *in90 = *on;
064790000000             find = 'Y';
064800000000           endif;
064810000000         enddo;
064820000000       endif;
064830000000       //
064840000000       // set page counter to zero
064850000000       page = 0;
064860000000       *inoe = *off;
064870000000       *inob = *off;
064880000000       *inod = *off;
064890000000       *inof = *off;
064900000000       //
064910000000       endsr;
064920000000       //****************************************************** $cocom
064930000000       // see if consolidated comments exist
064940000000       begsr $cocom;
064950000000       //
064960000000       w#cono = ohcono;
064970000000       w#csno = oharcs;
064980000000       w#shp# = *blanks;
064990000000       w#cmtp = 'C';
065000000000       chain cs0key cscomr;
065010000000       *in91 = not %found;
065020000000       dow *in91 = *off;
065030000000         //
065040000000         // check overflow
065050000000         if *inof = *on
065060000000           or *inoe = *on
065070000000           or *inob = *on
065080000000           or *inod = *on;
065090000000           exsr $prtof;
065100000000         endif;
065110000000         except cuscom;
065120000000         reade cs0key cscom;
065130000000         *in91 = %eof;
065140000000       enddo;
065150000000       //
065160000000       endsr;
065170000000       //***************************************************************
065180000000       // create wmpck for kit components
065190000000       begsr $wm131;
065200000000       comnop = %editc(odcono:'X');
065210000000       orgenp = %editc(odorgn:'X');
065220000000       lnseqp = '00000';
065230000000       lnseqp = %editc(odorsq:'X');
065240000000       //
065250000000       wm131p = 'Y';
065260000000       WM131K ( shtdnp : comnop : odorno :
065270000000       orgenp : lnseqp );
065280000000       //
065290000000       endsr;
065300000000       //******************************************************* $rtvlg
065310000000       // get next log control #
065320000000       begsr $rtvlg;
065330000000       //
065340000000       compny = *zeros;
065350000000       applic = 'XA';
065360000000       ctlnm = 'OPTIONS';
065370000000       chain ctlkey orctl;
065380000000       *in90 = not %found;
065390000000       if *in90 = *off;
065400000000      /end-free
065410000000     C                   add       1             rtvlog
065420000000      /free
065430000000         except upctl2;
065440000000       endif;
065450000000       //
065460000000       endsr;
065470000000       //
065480000000       //
065490000000       //************************************************************** $wmsrt
065500000000       // get pick sequence to use in sort when printing in
065510000000       // warehouse location sequence.
065520000000       //
065530000000       begsr $wmsrt;
065540000000       //
065550000000       *in35 = *on;
065560000000       //
065570000000       // get item master record
065580000000       chain(n) oditno itmst;
065590000000       *in90 = not %found;
065600000000       kitflg = *blanks;
065610000000       xxbmsq = *zeros;
065620000000       //
065630000000       // get location for item
065640000000       if imwmcd = 'L';
065650000000         if *in51 = *off;
065660000000           exsr $lot;
065670000000         endif;
065680000000         if *in51 = *on;
065690000000           exsr $lotc;
065700000000         endif;
065710000000       else;
065720000000         if *in51 = *off;
065730000000           exsr $srn;
065740000000         endif;
065750000000         if *in51 = *on;
065760000000           exsr $srnc;
065770000000         endif;
065780000000       endif;
065790000000       //
065800000000       if wllocx = *blanks;
065810000000         exsr $gtloc;
065820000000       endif;
065830000000       //
065840000000       *in35 = *off;
065850000000       //
065860000000       // build wm location file key
065870000000       lockey = *blanks;
065880000000       %subst(lockey:1:2) = ohwhid;
065890000000       %subst(lockey:3:12) = wllocx;
065900000000       //
065910000000       // get the pick sequence for this location
065920000000       k$wl0h = lockey;
065930000000       chain wl0key wmlocr;
065940000000       *in90 = not %found;
065950000000       if *in90 = *on;
065960000000         wlpksq = 0;
065970000000       endif;
065980000000       //
065990000000       endsr;
066000000000       //
066010000000       //******************************************************** $clear
066020000000       // clear all the accumulator fields
066030000000       begsr $clear;
066040000000       //
066050000000       clear csbtot;
066060000000       clear citotl;
066070000000       clear subtic;
066080000000       clear totlic;
066090000000       clear amntic;
066100000000       clear camtdu;
066110000000       clear cttaxm;
066120000000       clear txatic;
066130000000       clear ctdpam;
066140000000       clear dpatic;
066150000000       clear cttdam;
066160000000       clear tdatic;
066170000000       clear ctcnct;
066180000000       clear ccttic;
066190000000       clear ctfeam;
066200000000       clear featic;
066210000000       clear ctgttx;
066220000000       clear ctpttx;
066230000000       clear ctgttt;
066240000000       clear ctpttt;
066250000000       clear ctcdam;
066260000000       //* clear all work fields
066270000000       clear s#shnm;
066280000000       clear s#sad1;
066290000000       clear s#sad2;
066300000000       clear s#sad3;
066310000000       clear s#sad4;
066320000000       clear s#shci;
066330000000       clear s#scty;
066340000000       clear s#shst;
066350000000       clear s#szip;
066360000000       //  bill to
066370000000       clear b#csnm;
066380000000       clear b#cad1;
066390000000       clear b#cad2;
066400000000       clear b#cad3;
066410000000       clear b#cad4;
066420000000       clear b#blcy;
066430000000       clear b#blst;
066440000000       clear b#blzp;
066450000000       clear b#arcs;
066460000000       clear b#cono;
066470000000       //
066480000000       clear sxshnm;
066490000000       clear sxsad1;
066500000000       clear sxsad2;
066510000000       clear sxsad3;
066520000000       clear sxsad4;
066530000000       clear sxshci;
066540000000       clear sxscty;
066550000000       clear sxshst;
066560000000       clear sxszip;
066570000000       //  credit card# exp date clear
066580000000       clear s#crcd;
066590000000       clear s#expd;
066600000000       clear first1;
066610000000       clear once1;
066620000000       endcol = 'N';
066630000000       x2cnnm = *blanks;
066640000000       w2cnnm = *blanks;
066650000000       //
066660000000       endsr;
066670000000       //
066680000000       //************************************************************** $srn
066690000000       // get serial number assignments and print
066700000000       //
066710000000       begsr $srn;
066720000000       //
066730040408       // drop ship serial item                                 #*8y
066740040408       if oddrsh = 'Y';                                         // #*8y
066750040408         exsr $dssrn;                                           // #*8y
066760040408         leavesr;                                               // #*8y
066770040408       endif;                                                   // #*8y
066780040408       //                                                       #*8y
066790000000       // create warehouse management reservation key
066800000000       //
066810000000       rsky = *blanks;
066820000000       rsky1 = *blanks;
066830000000       rsky2 = *blanks;
066840000000       rskey = *blanks;
066850000000       clear i$wv0;
066860000000       rsvkey = i$wv0h;
066870000000       //
066880000000       %subst(ours1:1:5) = ohorno;
066890000000       orse1 = odorsq;
066900000000       //
066910000000       %subst(rsky:1:2) = 'OE';
066920000000       %subst(rsky:3:2) = %editc(ohcono:'X');
066930000000       %subst(rsky1:1:4) = rsky;
066940000000       %subst(rsky1:5:6) = ours1;
066950000000       %subst(rsky2:1:10) = rsky1;
066960000000       %subst(rsky2:11:2) = %editc(odorgn:'X');
066970000000       %subst(rskey:1:12) = rsky2;
066980000000       %subst(rskey:13:5) = %editc(orse1:'X');
066990000000       %subst(rsvkey:1:17) = rskey;
067000000000       //
067010000000       // get all assignments for the invoiced item
067020000000       i$wv0h = rsvkey;
067030000000       //
067040000000       // if dealing with a kit, only get reservations for
067050000000       //   this bom sequence
067060000000       if kitflg = 'Y';
067070000000         i$bmsq = xxbmsq;
067080000000       endif;
067090000000       //
067100000000       setll wv0key wmrsvr;
067110000000       //
067120000000      /end-free
067130000000     C     loops         tag
067140000000      /free
067150000000       //
067160000000       if crryon = 'Y';
067170000000         crryon = ' ';
067180000000         wllocx = *blanks;
067190000000         sn = *blanks;
067200000000         sn1 = *blanks;
067210000000         sn2 = *blanks;
067220000000         l = 1;
067230000000      /end-free
067240000000     C                   goto      carry
067250000000      /free
067260000000       endif;
067270000000       //
067280000000       wllocx = *blanks;
067290000000       sn = *blanks;
067300000000       sn1 = *blanks;
067310000000       sn2 = *blanks;
067320000000       l = 0;
067330000000       p = 1;
067340000000       //
067350000000      /end-free
067360000000     C     loopf         tag
067370000000      //
067380000000     C                   add       1             l
067390000000      /free
067400000000       //
067410000000       *in60 = *off;
067420000000       read wmrsvr;                                                             // eof
067430000000       *in60 = %eof;                                                            // eof
067440000000       if *in60 = *off;
067450000000         rsord = $6c001;
067460000000       endif;
067470000000       if *in60 = *on;
067480000000      /end-free
067490000000     C                   goto      exit
067500000000      /free
067510000000       endif;
067520000000       //
067530000000       if rsord <> rskey;
067540000000         *in60 = *on;
067550000000      /end-free
067560000000     C                   goto      exit
067570000000      /free
067580000000       endif;
067590000000       //
067600000000       // check bom sequence if this is a kit
067610000000       if kitflg = 'Y'
067620000000         and wvbmsq <> xxbmsq;
067630000000         *in60 = *on;
067640000000      /end-free
067650000000     C                   goto      exit
067660000000      /free
067670000000       endif;
067680000000       //
067690000000       // if called from warehouse sort routine ($wmsrt)
067700000000       // (ind. 35 is on) stop after getting a location.
067710000000       //
067720000000       if *in35 = *on;
067730000000         wllocx = wnloca;
067740000000         leavesr;
067750000000       endif;
067760000000       //
067770000000       fill = *blanks;
067780000000       w = 1;
067790000000       srn = *blanks;
067800000000      /end-free
067810000000     C                   movea     wnltsr        srn
067820000000      //-------------------------------------
067830000000     C     carry         tag
067840000000      /free
067850000000       //-------------------------------------
067860000000       //
067870000000       // fill serial number print array routine
067880000000       dou w = 21;
067890000000         //
067900000000         sn1(l) = srn(w);
067910000000         //
067920000000         if srn(w) <> *blanks
067930000000           and fill = 'Y';
067940000000           fill = ' ';
067950000000         endif;
067960000000         //
067970000000         if srn(w) = *blanks;
067980000000           if fill = 'Y';
067990000000      /end-free
068000000000     C                   goto      filld
068010000000      /free
068020000000           else;
068030000000             fill = 'Y';
068040000000           endif;
068050000000         endif;
068060000000         //
068070000000         if l < 70;
068080000000      /end-free
068090000000     C                   add       1             l
068100000000      /free
068110000000         else;
068120000000      /end-free
068130000000     C                   goto      filld
068140000000      /free
068150000000         endif;
068160000000         //
068170000000      /end-free
068180000000     C                   add       1             w
068190000000      /free
068200000000       enddo;
068210000000       //
068220000000       if w = 21;
068230000000      /end-free
068240000000     C                   add       2             l
068250000000      /free
068260000000       endif;
068270000000       //
068280000000      /end-free
068290000000     C     filld         tag
068300000000      /free
068310000000       //
068320000000       if l < 70;
068330000000      /end-free
068340000000     C                   movea     sn1           sn2
068350000000     C                   goto      loopf
068360000000      /free
068370000000       endif;
068380000000       //
068390000000       if fill = 'Y';
068400000000      /end-free
068410000000     C                   movea     sn1           sn2
068420000000     C                   goto      exit
068430000000      /free
068440000000       endif;
068450000000       //
068460000000       if w >= 20;
068470000000      /end-free
068480000000     C                   movea     sn1           sn2
068490000000     C                   goto      exit
068500000000      /free
068510000000       endif;
068520000000       //
068530000000      /end-free
068540000000     C                   add       1             w
068550000000      /free
068560000000       //
068570000000       // is there more to the serial number? if so, print
068580000000       // the rest on next line.
068590000000       if srn(w) = *blanks
068600000000         and w <> 21
068610000000         and fill <> 'Y';
068620000000         crryon = 'Y';
068630000000      /end-free
068640000000     C                   movea     sn1           sn2
068650000000     C                   goto      exit
068660000000      /free
068670000000       endif;
068680000000       //
068690000000       if srn(w) = *blanks;
068700000000      /end-free
068710000000     C                   movea     sn1           sn2
068720000000     C                   goto      exit
068730000000      /free
068740000000       endif;
068750000000       readp wmrsvr;
068760000000       *in60 = %eof;
068770000000       //
068780000000      /end-free
068790000000     C     exit          tag
068800000000      /free
068810000000       //
068820000000       // if called from warehouse sort routine ($wmsrt)
068830000000       // (ind. 35 is on) get out.
068840000000       //
068850000000       if *in35 = *on;
068860000000         leavesr;
068870000000       endif;
068880000000       //
068890000000      /end-free
068900000000     C                   movea     sn2           sn
068910000000      /free
068920000000       //
068930000000       //  if this is a kit parent and no serial numbers
068940000000       //  were found get out
068950000000       if kitflg = 'Y'
068960000000         and sn = *blanks;
068970000000         leavesr;
068980000000       endif;
068990000000       //
069000000000       // check overflow
069010000000       if *inof = *on
069020000000         or *inoe = *on
069030000000         or *inob = *on
069040000000         or *inod = *on;
069050000000         exsr $prtof;
069060000000       endif;
069070000000       //
069080000000       //
069090000000       // print serial numbers
069100000000       if skpprt <> 'Y';
069110000000         except srna;
069120000000       endif;
069130000000       //
069140000000       if *in60 = *off;
069150000000      /end-free
069160000000     C                   goto      loops
069170000000      /free
069180000000       endif;
069190000000       //
069200000000       endsr;
069210000000       //
069220000000       //************************************************************** $srnc
069230000000       // get serial number assignments and print
069240000000       //
069250000000       begsr $srnc;
069260000000       //
069270000000       // check if serial info has been moved to oeimm
069280000000       x@apid = 'OE';
069290000000       x@cono = ohcono;
069300000000       x@orgn = odorgn;
069310000000       %subst(x@gid6:1:5) = ohorno;
069320000000       x@sq05 = odorsq;
069330000000       //
069340000000       // $srni will get serial assignments from oeimm
069350000000       chain w90pky oeimmr;
069360000000       *in60 = not %found;
069370000000       if *in60 = *off;
069380000000         exsr $srni;
069390000000         leavesr;
069400000000       endif;
069410000000       //
069420000000       // create warehouse management reservation key
069430000000       //
069440000000       rsky = *blanks;
069450000000       rsky1 = *blanks;
069460000000       rsky2 = *blanks;
069470000000       rskey = *blanks;
069480000000       clear i$wv0;
069490000000       rsvkey = i$wv0h;
069500000000       //
069510000000       %subst(ours1:1:5) = ohorno;
069520000000       orse1 = odorsq;
069530000000       //
069540000000       %subst(rsky:1:2) = 'OE';
069550000000       %subst(rsky:3:2) = %editc(ohcono:'X');
069560000000       %subst(rsky1:1:4) = rsky;
069570000000       %subst(rsky1:5:6) = ours1;
069580000000       %subst(rsky2:1:10) = rsky1;
069590000000       %subst(rsky2:11:2) = %editc(odorgn:'X');
069600000000       %subst(rskey:1:12) = rsky2;
069610000000       %subst(rskey:13:5) = %editc(orse1:'X');
069620000000       %subst(rlskey:1:17) = rskey;
069630000000       //
069640000000       // get all assignments for the invoiced item
069650000000       l$wn0h = rlskey;
069660000000       setll wn0key wmrlsr;
069670000000       //
069680000000      /end-free
069690000000     C     loopsc        tag
069700000000      /free
069710000000       //
069720000000       wllocx = *blanks;
069730000000       sn = *blanks;
069740000000       sn1 = *blanks;
069750000000       sn2 = *blanks;
069760000000       l = 0;
069770000000       p = 1;
069780000000       //
069790000000      /end-free
069800000000     C     loopfc        tag
069810000000      /free
069820000000       //
069830000000       if crryon = 'Y';
069840000000         crryon = ' ';
069850000000         wllocx = *blanks;
069860000000         sn = *blanks;
069870000000         sn1 = *blanks;
069880000000         sn2 = *blanks;
069890000000         l = 1;
069900000000      /end-free
069910000000     C                   goto      carrc
069920000000      /free
069930000000       endif;
069940000000       //
069950000000      /end-free
069960000000     C                   add       1             l
069970000000      /free
069980000000       //
069990000000       *in60 = *off;
070000000000       read wmrlsr;                                                             // eof
070010000000       *in60 = %eof;                                                            // eof
070020000000       if *in60 = *off;
070030000000         rsord = $6c001;
070040000000       endif;
070050000000       if *in60 = *on;
070060000000      /end-free
070070000000     C                   goto      exitc
070080000000      /free
070090000000       endif;
070100000000       //
070110000000       if rsord <> rskey;
070120000000         *in60 = *on;                                                           // *  wm
070130000000      /end-free
070140000000     C                   goto      exitc
070150000000      /free
070160000000       endif;
070170000000       //
070180000000       // if called from warehouse sort routine ($wmsrt)
070190000000       //=(ind. 35 is on) stop after getting a location.
070200000000       //
070210000000       if *in35 = *on;
070220000000         wllocx = wnloca;
070230000000         leavesr;
070240000000       endif;
070250000000       //
070260000000       fill = *blanks;
070270000000       w = 1;
070280000000       srn = *blanks;
070290000000      /end-free
070300000000     C                   movea     wnltsr        srn
070310000000      //-------------------------------------
070320000000     C     carrc         tag
070330000000      /free
070340000000       //-------------------------------------
070350000000       //
070360000000       // fill serial number print array routine
070370000000       dou w = 21;
070380000000         //
070390000000         sn1(l) = srn(w);
070400000000         //
070410000000         if srn(w) <> *blanks
070420000000           and fill = 'Y';
070430000000           fill = ' ';
070440000000         endif;
070450000000         //
070460000000         if srn(w) = *blanks;
070470000000           if fill = 'Y';
070480000000      /end-free
070490000000     C                   goto      filldc
070500000000      /free
070510000000           else;
070520000000             fill = 'Y';
070530000000           endif;
070540000000         endif;
070550000000         //
070560000000         if l < 70;
070570000000      /end-free
070580000000     C                   add       1             l
070590000000      /free
070600000000         else;
070610000000           readp wmrlsr;
070620000000           *in60 = %eof;
070630000000      /end-free
070640000000     C                   goto      filldc
070650000000      /free
070660000000         endif;
070670000000         //
070680000000      /end-free
070690000000     C                   add       1             w
070700000000      /free
070710000000       enddo;
070720000000       //
070730000000       if w = 21;
070740000000      /end-free
070750000000     C                   add       2             l
070760000000      /free
070770000000       endif;
070780000000       //
070790000000      /end-free
070800000000     C     filldc        tag
070810000000      /free
070820000000       //
070830000000       if l < 70;
070840000000      /end-free
070850000000     C                   movea     sn1           sn2
070860000000     C                   goto      loopfc
070870000000      /free
070880000000       endif;
070890000000       //
070900000000       if fill = 'Y';
070910000000      /end-free
070920000000     C                   movea     sn1           sn2
070930000000     C                   goto      exitc
070940000000      /free
070950000000       endif;
070960000000       //
070970000000       if w >= 20;
070980000000      /end-free
070990000000     C                   movea     sn1           sn2
071000000000     C                   goto      exitc
071010000000      /free
071020000000       endif;
071030000000       //
071040000000      /end-free
071050000000     C                   add       1             w
071060000000      /free
071070000000       //
071080000000       // is there more to the serial number? if so, print
071090000000       // the rest on next line.
071100000000       if srn(w) = *blanks
071110000000         and w <> 21
071120000000         and fill <> 'Y';
071130000000         crryon = 'Y';
071140000000      /end-free
071150000000     C                   movea     sn1           sn2
071160000000     C                   goto      exitc
071170000000      /free
071180000000       endif;
071190000000       //
071200000000       if srn(w) = *blanks;
071210000000      /end-free
071220000000     C                   movea     sn1           sn2
071230000000     C                   goto      exitc
071240000000      /free
071250000000       endif;
071260000000       //
071270000000      /end-free
071280000000     C     exitc         tag
071290000000      /free
071300000000       //
071310000000       // if called from warehouse sort routine ($wmsrt)
071320000000       // (ind. 35 is on) get out.
071330000000       //
071340000000       if *in35 = *on;
071350000000         leavesr;
071360000000       endif;
071370000000       //
071380000000      /end-free
071390000000     C                   movea     sn2           sn
071400000000      /free
071410000000       //
071420000000       // check overflow
071430000000       if *inof = *on
071440000000         or *inoe = *on
071450000000         or *inob = *on
071460000000         or *inod = *on;
071470000000         exsr $prtof;
071480000000       endif;
071490000000       //
071500000000       //
071510000000       // print serial numbers
071520000000       if skpprt <> 'Y';
071530000000         except srna;
071540000000       endif;
071550000000       //
071560000000       if *in60 = *off;
071570000000      /end-free
071580000000     C                   goto      loopsc
071590000000      /free
071600000000       endif;
071610000000       //
071620000000       endsr;
071630000000       //
071640000000       //********************************************************* $lot
071650000000       // get lot assignments and print
071660000000       //
071670000000       begsr $lot;
071680000000       //
071690040408       // drop ship lot item                                    #*8y
071700040408       if oddrsh = 'Y';                                         // #*8y
071710040408         exsr $dslot;                                           // #*8y
071720040408         leavesr;                                               // #*8y
071730040408       endif;                                                   // #*8y
071740040408       //                                                       #*8y
071750000000       // create warehouse management reservation key
071760000000       //
071770000000       rsky = *blanks;
071780000000       rsky1 = *blanks;
071790000000       rsky2 = *blanks;
071800000000       rskey = *blanks;
071810000000       clear i$wv0;
071820000000       rsvkey = i$wv0h;
071830000000       //
071840000000       %subst(ours1:1:5) = ohorno;
071850000000       orse1 = odorsq;
071860000000       //
071870000000       %subst(rsky:1:2) = 'OE';
071880000000       %subst(rsky:3:2) = %editc(ohcono:'X');
071890000000       %subst(rsky1:1:4) = rsky;
071900000000       %subst(rsky1:5:6) = ours1;
071910000000       %subst(rsky2:1:10) = rsky1;
071920000000       %subst(rsky2:11:2) = %editc(odorgn:'X');
071930000000       %subst(rskey:1:12) = rsky2;
071940000000       %subst(rskey:13:5) = %editc(orse1:'X');
071950000000       %subst(rsvkey:1:17) = rskey;
071960000000       //
071970000000       // get all assignments for the invoiced item
071980000000       i$wv0h = rsvkey;
071990000000       //
072000000000       // if dealing with a kit, only get reservations for
072010000000       //   this bom sequence
072020000000       if kitflg = 'Y';
072030000000         i$bmsq = xxbmsq;
072040000000       endif;
072050000000       //
072060000000       setll wv0key wmrsvr;
072070000000       //
072080000000       wllocx = *blanks;
072090000000       //
072100000000      /end-free
072110000000     C     loopr         tag
072120000000      /free
072130000000       //
072140000000       *in60 = *off;
072150000000       read wmrsvr;                                                             // eof
072160000000       *in60 = %eof;                                                            // eof
072170000000       if *in60 = *off;
072180000000         rsord = $6c001;
072190000000       endif;
072200000000       if *in60 = *on;
072210000000         leavesr;
072220000000       endif;
072230000000       //
072240000000       if rsord <> rskey;
072250000000         leavesr;
072260000000       endif;
072270000000       //
072280000000       // check bom sequence if this is a kit
072290000000       if kitflg = 'Y'
072300000000         and wvbmsq <> xxbmsq;
072310000000         leavesr;
072320000000       endif;
072330000000       //
072340000000       // if called from warehouse sort routine ($wmsrt)
072350000000       // (ind. 35 is on) stop after getting a location.
072360000000       //
072370000000       if *in35 = *on;
072380000000         wllocx = wnloca;
072390000000         leavesr;
072400000000       endif;
072410000000       //
072420000000       // check overflow
072430000000       if *inof = *on
072440000000         or *inoe = *on
072450000000         or *inob = *on
072460000000         or *inod = *on;
072470000000         exsr $prtof;
072480000000       endif;
072490000000       //
072500000000       // print lots
072510000000       if skpprt <> 'Y';
072520000000         except lota;
072530000000       endif;
072540000000      /end-free
072550000000     C                   goto      loopr
072560000000      //
072570000000      /free
072580000000       endsr;
072590000000       //
072600000000       //************************************************************** $lot
072610000000       // get lot assignments and print - credits only
072620000000       //
072630000000       begsr $lotc;
072640000000       //
072650000000       // check if lot info has been moved to oeimm
072660000000       x@apid = 'OE';
072670000000       x@cono = ohcono;
072680000000       x@orgn = odorgn;
072690000000       %subst(x@gid6:1:5) = ohorno;
072700000000       x@sq05 = odorsq;
072710000000       //
072720000000       // $loti will get lot assignments from oeimm
072730000000       chain w90pky oeimmr;
072740000000       *in60 = not %found;
072750000000       if *in60 = *off;
072760000000         exsr $loti;
072770000000         leavesr;
072780000000       endif;
072790000000       //
072800000000       // create warehouse management reservation key
072810000000       //
072820000000       *in13 = *off;
072830000000       rsky = *blanks;
072840000000       rsky1 = *blanks;
072850000000       rsky2 = *blanks;
072860000000       rskey = *blanks;
072870000000       clear l$wn0;
072880000000       rlskey = l$wn0h;
072890000000       //
072900000000       %subst(ours1:1:5) = ohorno;
072910000000       orse1 = odorsq;
072920000000       //
072930000000       %subst(rsky:1:2) = 'OE';
072940000000       %subst(rsky:3:2) = %editc(ohcono:'X');
072950000000       %subst(rsky1:1:4) = rsky;
072960000000       %subst(rsky1:5:6) = ours1;
072970000000       %subst(rsky2:1:10) = rsky1;
072980000000       %subst(rsky2:11:2) = %editc(odorgn:'X');
072990000000       %subst(rskey:1:12) = rsky2;
073000000000       %subst(rskey:13:5) = %editc(orse1:'X');
073010000000       %subst(rlskey:1:17) = rskey;
073020000000       //
073030000000       // get all assignments for the invoiced item
073040000000       l$wn0h = rlskey;
073050000000       setll wn0key wmrlsr;
073060000000       //
073070000000       wllocx = *blanks;
073080000000       //
073090000000      /end-free
073100000000     C     looprc        tag
073110000000      /free
073120000000       //
073130000000       *in60 = *off;
073140000000       read wmrlsr;                                                             // eof
073150000000       *in60 = %eof;                                                            // eof
073160000000       if *in60 = *off;
073170000000         rsord = $6c001;
073180000000       endif;
073190000000       if *in60 = *on;
073200000000         leavesr;
073210000000       endif;
073220000000       //
073230000000       if rsord <> rskey;
073240000000         leavesr;
073250000000       endif;
073260000000       //
073270000000       // if called from warehouse sort routine ($wmsrt)
073280000000       // (ind. 35 is on) stop after getting a location.
073290000000       //
073300000000       if *in35 = *on;
073310000000         wllocx = wnloca;
073320000000         leavesr;
073330000000       endif;
073340000000       //
073350000000       // check overflow
073360000000       if *inof = *on
073370000000         or *inoe = *on
073380000000         or *inob = *on
073390000000         or *inod = *on;
073400000000         exsr $prtof;
073410000000       endif;
073420000000       //
073430000000       // print lots
073440000000       if skpprt <> 'Y';
073450000000         except lota;
073460000000       endif;
073470000000      /end-free
073480000000     C                   goto      looprc
073490000000      //
073500000000      /free
073510000000       endsr;
073520000000       //
073530000000       //************************************************************** $gtloc
073540000000       // get the first location - use for sequencing
073550000000       //
073560000000       begsr $gtloc;
073570000000       //
073580000000       wllocx = *blanks;
073590000000       //
073600000000       // create warehouse management balance key
073610000000       //
073620000000       clear j$wb1;
073630000000       wmkey = j$wb1h;
073640000000       wmkey1 = *blanks;
073650000000       %subst(wmkey1:1:27) = oditno;
073660000000       %subst(wmkey1:28:2) = ohwhid;
073670000000       %subst(wmkey:1:29) = wmkey1;
073680000000       //
073690000000       // get first location for item/warehouse
073700000000       j$wb1h = wmkey;
073710000000       setll wb1key wmba1r;
073720000000       //
073730000000       *in60 = *off;
073740000000       read wmba1r;                                                             // eof
073750000000       *in60 = %eof;                                                            // eof
073760000000       if *in60 = *off;
073770000000         itmwh = $5c001;
073780000000       endif;
073790000000       if *in60 = *on;
073800000000         leavesr;
073810000000       endif;
073820000000       //
073830000000       if itmwh <> wmkey1;
073840000000         leavesr;
073850000000       endif;
073860000000       //
073870000000       wllocx = wnloca;
073880000000       //
073890000000       endsr;
073900000000       //
073910000000       //******************************************************************
073920000000       // $bom subroutine     done when exploding a line item
073930000000       begsr $bom;
073940000000       //
073950000000       //
073960000000       // chain for order specific bill
073970000000       b5 = odorno;
073980000000       z5 = odorsq;
073990000000       g$bp0h = parkey;
074000000000       chain bp0key bomprr;
074010000000       *in90 = not %found;
074020000000       if *in90 = *off;
074030000000         pkey = parkey;
074040000000       endif;
074050000000       if *in90 = *on;
074060000000         b5 = *blanks;
074070000000         z5 = *zeros;
074080000000       endif;
074090000000       if *in90 = *on;
074100000000         g$bp0h = parkey;
074110000000         chain bp0key bomprr;
074120000000         *in90 = not %found;
074130000000         if *in90 = *off;
074140000000           pkey = parkey;
074150000000         endif;
074160000000         if *in90 = *on;
074170000000           %subst(pkey:1:12) = %editc(z12:'X');
074180000000           %subst(pkey:13:37) = pkey2;
074190000000           g$bp0h = pkey;
074200000000           chain bp0key bomprr;
074210000000           *in90 = not %found;
074220000000         endif;
074230000000         if *in90 = *on;
074240000000           bpexin = 'N';
074250000000         endif;
074260000000       endif;
074270000000       //
074280000000       // parent file allows exploding of line item
074290000000       if odbmcd = 'K';
074300000000         if bpexin = 'N';
074310000000           leavesr;
074320000000         endif;
074330000000       endif;
074340000000       //
074350000000       if odbmcd = 'M';
074360000000         if bpexin = 'N'
074370000000           or @@woyn = 'Y';
074380000000           leavesr;
074390000000         endif;
074400000000       endif;
074410000000       //
074420000000       // print heading for components
074430000000       //
074440000000       if skpprt <> 'Y';
074450000000         except cnsist;
074460000000       endif;
074470000000       //
074480000000       // build key for bom file
074490000000       %subst(comkey:1:49) = pkey;
074500000000       %subst(comkey:50:4) = '0001';
074510000000       //
074520000000       h$bc0h = comkey;
074530000000       setll bc0key bomcor;
074540000000       //
074550000000      /end-free
074560000000     C     tag001        tag
074570000000      /free
074580000000       *in98 = *off;
074590000000       read bomcor;                                                             // eof
074600000000       *in98 = %eof;                                                            // eof
074610000000       if *in98 = *off;
074620000000         char1 = $1c002;
074630000000         char2 = $1c003;
074640000000         char34 = $1c004;
074650000000         ckey49 = $1c001;
074660000000       endif;
074670000000       if *in98 = *on;
074680000000         if skpprt <> 'Y';
074690000000           except endmsg;
074700000000         endif;
074710000000         leavesr;
074720000000       endif;
074730000000       //
074740000000       // if end of component records for this parent
074750000000       if pkey <> ckey49;
074760000000         if skpprt <> 'Y';
074770000000           except endmsg;
074780000000         endif;
074790000000         leavesr;
074800000000       endif;
074810000000       //
074820000000       // over flow check
074830000000       //
074840000000       if *inof = *on
074850000000         or *inoe = *on
074860000000         or *inob = *on
074870000000         or *inod = *on;
074880000000         exsr $prtof;
074890000000       endif;
074900000000       //
074910000000       // check if description is special message
074920000000       //
074930000000       if char1 <> '/';
074940000000         if char1 <> '&';
074950000000      /end-free
074960000000     C                   goto      notm2
074970000000      /free
074980000000         endif;
074990000000       endif;
075000000000       //
075010000000       // check if message is to be printed on all
075020000000       // documents or pick slips
075030000000       if char2 = ' ';
075040000000         %subst(ckey:1:2) = %editc(ohcono:'X');
075050000000         %subst(ckey:3:7) = 'OEMESS-';
075060000000         %subst(ctlky:1:9) = ckey;
075070000000         %subst(ctlky:10:2) = char34;
075080000000         chain ctlky orctl;
075090000000         *in09 = not %found;
075100000000         if *in09 = *off;
075110000000           except relctl;
075120000000         endif;
075130000000         if skpprt <> 'Y';
075140000000           except smsg;
075150000000         endif;
075160000000       endif;
075170000000      /end-free
075180000000     C                   goto      tag001
075190000000      //
075200000000     C     notm2         tag
075210000000      /free
075220000000       //
075230000000       // obtain component description from item
075240000000       //
075250000000       chain bccmit itmst;
075260000000       *in07 = not %found;
075270000000       *in46 = *off;
075280000000       if imitd2 = *blanks;
075290000000         *in46 = *on;
075300000000       endif;
075310000000       //
075320000000       // print msds message (line items)
075330000000       *in55 = *off;
075340000000       if umsdso = 'Y'
075350000000         and inmsdo = 'Y'
075360000000         and *in07 <> *on
075370000000         and immsdt <> *zeros
075380000000         and odqtsh > 0;
075390000000         @@itno = bccmit;
075400000000         exsr $msds;
075410000000         if @@msds = 'Y';
075420000000           *in55 = *on;
075430000000         endif;
075440000000       endif;
075450000000       //
075460000000       //
075470000000       // print component on invoice
075480000000       //
075490000000       if skpprt <> 'Y';
075500000000         except cdet;
075510000000       endif;
075520000000       *in55 = *off;
075530000000       //
075540000000       // print serial numbers/lots if warehouse management
075550000000       // is installed and the item is a lot/serial and
075560000000       // serial numbers/lots were selected to print.
075570000000       if wmlivo = 'Y';
075580000000         if imlsiv = 'Y';
075590000000           kitflg = 'Y';
075600000000           xxbmsq = bcbmsq;
075610000000           //
075620000000           if imwmcd = 'L';
075630000000             if odqtsh > 0;
075640000000               exsr $lot;
075650000000             endif;
075660000000             if odqtsh < 0;
075670000000               exsr $lotc;
075680000000             endif;
075690000000           else;
075700000000             if odqtsh > 0;
075710000000               exsr $srn;
075720000000             endif;
075730000000             if odqtsh < 0;
075740000000               exsr $srnc;
075750000000             endif;
075760000000           endif;
075770000000           //
075780000000         endif;
075790000000       endif;
075800000000       //----------------------------------------------------
075810000000       //
075820000000      /end-free
075830000000     C                   goto      tag001
075840000000      //
075850000000      /free
075860000000       endsr;
075870000000       //*************************************************************** $bottm
075880000000       // $bottm - put out bottom of invoice
075890000000       //
075900000000       begsr $bottm;
075910000000       //
075920000000       subtot = ohisam + ohscam;
075930000000      /end-free
075940000000     C                   add       ohfeam        subtot
075950000000     C                   add       ohcnct        subtot
075960000000     C                   add       ohtdam        subtot
075970000000      //
075980000000     C     subtot        add       ohtxam        itotal
075990000000     C     itotal        sub       ohdpam        amtdue
076000000000      /free
076010000000       wkdpam = ohdpam;
076020000000       //
076030000000       //* calculate foreign amts if ic is live
076040000000       if *in70 = *on;
076050000000         icsubt = ohisat + ohscat;
076060000000      /end-free
076070000000     C                   add       ohfeat        icsubt
076080000000     C                   add       ohcctt        icsubt
076090000000     C                   add       ohtdat        icsubt
076100000000     C     icsubt        add       ohtxat        ictotl
076110000000     C     ictotl        sub       ohdpat        icamnt
076120000000      /free
076130000000         wkdpat = ohdpat;
076140000000      /end-free
076150000000     C                   z-add     ohdpat        wkf2dp
076160000000      /free
076170000000       endif;
076180000000       //----------------------------------------------------
076190000000       //
076200000000       //  get gst registration number if gst will print
076210000000       *in73 = *off;
076220000000      /end-free
076230000000     C   71              do
076240000000      /free
076250000000         %subst(ctlky:1:9) = #whkyx;
076260000000         %subst(ctlky:10:2) = ohwhid;
076270000000         chain ctlky orctl;
076280000000         *in95 = not %found;
076290000000         if *in95 = *on;
076300000000           gstr#o = *blanks;
076310000000         else;
076320000000           except relctl;
076330000000         endif;
076340000000         if gstr#o <> *blanks;
076350000000           *in73 = *on;
076360000000         endif;
076370000000       enddo;
076380000000       //
076390000000       //* skip  boxes if end of consoladition because they print
076400000000       //* everytime an order prints
076410000000       if endcol <> 'Y';
076420000000         // print box numbers used
076430000000         @c = *zeros;
076440000000         %subst(boxhd:1:8) = 'BOX NUMB';
076450000000         %subst(boxhd:9:4) = 'ERS:';
076460000000         setll oebpky oebhdr;
076470000000         *in90 = *off;
076480000000         @@cacd = ohcacd;
076490000000         @hcacd = *blanks;
076500000000         dow *in90 = *off;
076510000000           reade oebpky oebhdr;
076520000000           *in90 = %eof;
076530000000           if *in90 = *off;
076540000000             //----------------------------------------------------
076550000000             // if carrier codes in box file vary from order
076560000000             // change orders code to same as boxes code
076570000000             // if different carrier codes in boxes, change to
076580000000             // *mult
076590000000             if bhcacd <> ' ';
076600000000               //
076610000000               if @@cacd <> '*MULT';
076620000000                 @@cacd = bhcacd;
076630000000               endif;
076640000000               //
076650000000               if @hcacd = ' ';
076660000000                 @hcacd = bhcacd;
076670000000               endif;
076680000000               //
076690000000               if bhcacd <> @hcacd;
076700000000                 @@cacd = '*MULT';
076710000000               endif;
076720000000             endif;
076730000000             //----------------------------------------------------
076740000000             if pbxcio = 'Y';
076750000000      /end-free
076760000000     C                   add       1             @c
076770000000      /free
076780000000               box(@c) = bhbxno;
076790000000               if @c = 8;
076800000000                 if skpprt <> 'Y';
076810000000                   except boxlin;
076820000000                 endif;
076830000000                 @c = *zeros;
076840000000                 boxhd = *blanks;
076850000000                 box = *blanks;
076860000000               endif;
076870000000             endif;
076880000000             if *inof = *on
076890000000               or *inoe = *on
076900000000               or *inob = *on
076910000000               or *inod = *on;
076920000000               exsr $prtof;
076930000000               %subst(boxhd:1:8) = 'BOX NUMB';
076940000000               %subst(boxhd:9:4) = 'ERS:';
076950000000             endif;
076960000000           else;
076970000000             if pbxcio = 'Y';
076980000000               if @c <> 0;
076990000000                 if skpprt <> 'Y';
077000000000                   except boxlin;
077010000000                 endif;
077020000000                 boxhd = *blanks;
077030000000                 box = *blanks;
077040000000               endif;
077050000000             endif;
077060000000           endif;
077070000000         enddo;
077080000000       endif;
077090000000       //----------------------------------------------------
077100000000       // should footer print for a/r split invoice
077110000000       if @split = 'Y';
077120000000         //
077130000000         @tamd$ = 0;
077140000000         @tcds$ = 0;
077150000000         @@inno = ohinno;
077160000000         if wkdpam <> *zeros
077170000000           or wkdpat <> *zeros;
077180000000           *in48 = *on;
077190000000         endif;
077200000000         except splthd;
077210000000         //
077220000000         x = 1;
077230000000         dow x <= 12;
077240000000           if wpc(x) <> 0;
077250000000      /end-free
077260000000     C     wpc(x)        div       100           @@pct
077270000000      /free
077280000000             if *in75 = *off;
077290000000               eval(h) @@amd$ = itotal * @@pct;
077300000000               if x = 1;
077310000000                 if wkdpam <> *zeros;
077320000000      /end-free
077330000000     C     @@amd$        sub       wkdpam        @@amd$
077340000000      /free
077350000000                   *in47 = *on;
077360000000                 endif;
077370000000                 eval(h) @@cds$ = ohcdam * @@pct;
077380000000               else;
077390000000                 *in47 = *off;
077400000000                 wkdpam = *zeros;
077410000000                 eval(h) @@cds$ = ohcdam * @@pct;
077420000000               endif;
077430000000             else;
077440000000      /end-free
077450000000     C     ictotl        mult(h)   @@pct         @@amd$
077460000000      /free
077470000000               if x = 1;
077480000000                 if wkdpat <> *zeros;
077490000000      /end-free
077500000000     C     @@amd$        sub       wkdpat        @@amd$
077510000000      /free
077520000000                   *in47 = *on;
077530000000                 endif;
077540000000      /end-free
077550000000     C     ohcdat        mult(h)   @@pct         @@cds$
077560000000      /free
077570000000               else;
077580000000                 *in47 = *off;
077590000000                 wkdpat = *zeros;
077600000000      /end-free
077610000000     C     ohcdat        mult(h)   @@pct         @@cds$
077620000000      /free
077630000000               endif;
077640000000             endif;
077650000000             //
077660000000             // get aging date
077670000000             exsr $gtadt;
077680000000      /end-free
077690000000     C                   z-add     @ntdte        ntdtex
077700000000     C     ntdtex        mult      100.0001      ntdtex
077710000000     C                   z-add     @cdsdt        cdsdtx
077720000000     C     cdsdtx        mult      100.0001      cdsdtx
077730000000      //
077740000000     C                   add       1             x
077750000000      /free
077760000000             if x <= 12;
077770000000               if wpc(x) = 0;
077780000000                 if *in75 = *off;
077790000000      /end-free
077800000000     C     amtdue        sub       @tamd$        @@amd$
077810000000     C     ohcdam        sub       @tcds$        @@cds$
077820000000      /free
077830000000                 else;
077840000000      /end-free
077850000000     C     icamnt        sub       @tamd$        @@amd$
077860000000     C     ohcdat        sub       @tcds$        @@cds$
077870000000      /free
077880000000                 endif;
077890000000               endif;
077900000000             else;
077910000000               if *in75 = *off;
077920000000      /end-free
077930000000     C     amtdue        sub       @tamd$        @@amd$
077940000000     C     ohcdam        sub       @tcds$        @@cds$
077950000000      /free
077960000000               else;
077970000000      /end-free
077980000000     C     icamnt        sub       @tamd$        @@amd$
077990000000     C     ohcdat        sub       @tcds$        @@cds$
078000000000      /free
078010000000               endif;
078020000000             endif;
078030000000             //
078040000000             //  moves date into correct format
078050000000             //
078060000000             d@t1 = ntdtex;
078070000000             exsr $d@t1;
078080000000             ntdtex = d@t2;
078090000000             d@t1 = cdsdtx;
078100000000             exsr $d@t1;
078110000000             cdsdtx = d@t2;
078120000000             except spltdt;
078130000000             d@t2 = ntdtex;
078140000000             exsr $d@t2;
078150000000             ntdtex = d@t1;
078160000000             d@t2 = cdsdtx;
078170000000             exsr $d@t2;
078180000000             cdsdtx = d@t1;
078190000000             //
078200000000             if *inof = *on
078210000000               or *inoe = *on
078220000000               or *inob = *on
078230000000               or *inod = *on;
078240000000               exsr $prtof;
078250000000             endif;
078260000000      /end-free
078270000000     C                   add       @@amd$        @tamd$
078280000000     C                   add       @@cds$        @tcds$
078290000000      /free
078300000000           else;
078310000000             leave;
078320000000           endif;
078330000000           //
078340000000           if x <= 12
078350000000             and wpc(x) <> 0;
078360000000      /end-free
078370000000     C                   add       1             @@inno
078380000000      /free
078390000000           endif;
078400000000         enddo;
078410000000         //
078420000000         except spltbt;
078430000000         if *inof = *on
078440000000           or *inoe = *on
078450000000           or *inob = *on
078460000000           or *inod = *on;
078470000000           exsr $prtof;
078480000000         endif;
078490000000       endif;
078500000000       //
078510000000       if umsg = 'Y';
078520000000         if *inof = *on
078530000000           or *inoe = *on
078540000000           or *inob = *on
078550000000           or *inod = *on;
078560000000           exsr $prtof;
078570000000         endif;
078580000000         if skpprt <> 'Y';
078590000000           if endcol = ' '
078600000000             or endcol = 'Y';
078610000000             except unvmg1;
078620000000           endif;
078630000000         endif;
078640000000         if *inof = *on
078650000000           or *inoe = *on
078660000000           or *inob = *on
078670000000           or *inod = *on;
078680000000           exsr $prtof;
078690000000         endif;
078700000000         if skpprt <> 'Y';
078710000000           if endcol = ' '
078720000000             or endcol = 'Y';
078730000000             except unvmg2;
078740000000           endif;
078750000000         endif;
078760000000         if *inof = *on
078770000000           or *inoe = *on
078780000000           or *inob = *on
078790000000           or *inod = *on;
078800000000           exsr $prtof;
078810000000         endif;
078820000000         if skpprt <> 'Y';
078830000000           if endcol = ' '
078840000000             or endcol = 'Y';
078850000000             except unvmg3;
078860000000           endif;
078870000000         endif;
078880000000       endif;
078890000000       if *inof = *on
078900000000         or *inoe = *on
078910000000         or *inob = *on
078920000000         or *inod = *on;
078930000000         exsr $prtof;
078940000000       endif;
078950000000       // only excpt out bottm1 if amtdue is not zero
078960000000       // and update ar equals 'no' and the order type
078970000000       // is not a return.
078980000000       if amtdue <> *zeros
078990000000         and updar <> 'N'
079000000000         and xxortp <> 'R'
079010000000         and @split <> 'Y';
079020000000         if skpprt <> 'Y';
079030000000           if endcol = ' '
079040000000             or endcol = 'Y';
079050000000             //
079060000000             //  moves date into correct format
079070000000             //
079080000000             d@t1 = cdate;
079090000000             exsr $d@t1;
079100000000             cdate = d@t2;
079110000000             d@t1 = ndate;
079120000000             exsr $d@t1;
079130000000             ndate = d@t2;
079140000000             except bottm1;
079150000000             d@t2 = cdate;
079160000000             exsr $d@t2;
079170000000             cdate = d@t1;
079180000000             d@t2 = ndate;
079190000000             exsr $d@t2;
079200000000             ndate = d@t1;
079210000000             //
079220000000           endif;
079230000000         endif;
079240000000         if *inof = *on
079250000000           or *inoe = *on
079260000000           or *inob = *on
079270000000           or *inod = *on;
079280000000           exsr $prtof;
079290000000         endif;
079300000000       endif;
079310000000       //
079320000000       // if lda warehouse is blank (multi warehouse print)
079330000000       // check before extract if warehouse has changed
079340000000       // if so then write shipping papers for the prior
079350000000       // warehouse
079360000000       if ldwhse = *blanks;
079370000000         if @@whid <> *blanks;
079380000000           if ohwhid <> @@whid;
079390000000             // print hazmat shipping papers
079400000000             if hazmat = 'Y'
079410000000               and prtopt = '3';
079420000000               if *in77 = *off
079430000000                 and *in76 = *off;
079440030717                 oe402@ = 'Y';                             // #*8m
079450000000                 shtdn = 'N';
079460000000                 p1ext = 'N';
079470000000                 p1prt = 'B';
079480030528                 p#cono = ohcono;
079490030528                 p#orgn = ohorgn;
079500000000                 OE402 ( shtdn : p1ext : p1prt :
079510030528                 p#cono : ohorno : p#orgn : @@whid );
079520000000               endif;
079530000000             endif;
079540000000             @@whid = ohwhid;
079550000000           endif;
079560000000         else;
079570000000           @@whid = ohwhid;
079580000000         endif;
079590000000       endif;
079600000000       //
079610000000       // print message and extract order
079620000000       if hazext = 'Y';
079630000000         if skpprt <> 'Y';
079640000000           if endcol = ' '
079650000000             or endcol = 'Y';
079660000000             except hazmsg;
079670000000           endif;
079680000000         endif;
079690000000         shtdn = 'N';
079700000000         p1ext = 'Y';
079710000000         p1prt = 'N';
079720000000         if *in77 = *off
079730000000           and *in76 = *off;
079740030717           oe402@ = 'Y';                                   // #*8m
079750030528           p#cono = ohcono;
079760030528           p#orgn = ohorgn;
079770000000           OE402 ( shtdn : p1ext : p1prt :
079780030528           p#cono : ohorno : p#orgn : ohwhid );
079790000000         endif;
079800000000       endif;
079810000000       //
079820000000       //* if printing benchmark totals - translate.
079830000000       clear xxtdab;
079840000000       clear @@tdab;
079850000000       clear xxfeab;
079860000000       clear @@feab;
079870000000       clear xxcctb;
079880000000       clear @@cctb;
079890000000       clear xxsubb;
079900000000       clear @@subb;
079910000000       clear xxtxab;
079920000000       clear @@txab;
079930000000       clear xxtotb;
079940000000       clear @@totb;
079950000000       clear xxdpab;
079960000000       clear @@dpab;
079970000000       clear xxamnb;
079980000000       clear @@amnb;
079990000000       clear @@gtxb;
080000000000       clear xxgtxb;
080010000000       clear @@ptxb;
080020000000       clear xxptxb;
080030000000       clear @gtxtb;
080040000000       clear @ptxtb;
080050000000       clear xgtxtb;
080060000000       clear xptxtb;
080070000000       //
080080000000       if iclive = 'Y'
080090000000         and xxbttl = 'Y';
080100000000         //
080110000000         // do not convert if benchmark = local
080120000000         if bic000 = 'N';
080130000000           xxtdab = ohtdam;
080140000000           @@tdab = cttdam;
080150000000           xxfeab = ohfeam;
080160000000           @@feab = ctfeam;
080170000000           xxcctb = ohcnct;
080180000000           @@cctb = ctcnct;
080190000000           xxsubb = subtot;
080200000000           @@subb = csbtot;
080210000000           xxtxab = ohtxam;
080220000000           @@txab = cttaxm;
080230000000           xxtotb = itotal;
080240000000           @@totb = citotl;
080250000000           xxdpab = ohdpam;
080260000000           @@dpab = ctdpam;
080270000000           xxamnb = amtdue;
080280000000           @@amnb = camtdu;
080290000000           xxgtxb = ohgtxa;
080300000000           @@gtxb = ctgttx;
080310000000           xxptxb = ohptxa;
080320000000           @@ptxb = ctpttx;
080330000000           @gtxtb = ohgtxa;
080340000000           xgtxtb = ctgttx;
080350000000           @ptxtb = ohptxa;
080360000000           xptxtb = ctpttx;
080370000000         endif;
080380000000         //
080390000000         // if ic live order curr *ne local curr
080400000000         //   and benchmark *ne local curr
080410000000         if bic000 = 'Y';
080420000000           clear len;
080430000000           clear err;
080440000000           inn = *zeros;
080450000000           if *in75 = *on;
080460000000             inn(1) = ohtdat;
080470000000      /end-free
080480000000     C                   z-add     tdatic        inn(2)
080490000000      /free
080500000000             inn(3) = ohfeat;
080510000000      /end-free
080520000000     C                   z-add     featic        inn(4)
080530000000      /free
080540000000             inn(5) = ohcctt;
080550000000      /end-free
080560000000     C                   z-add     ccttic        inn(6)
080570000000     C                   z-add     icsubt        inn(7)
080580000000     C                   z-add     subtic        inn(8)
080590000000      /free
080600000000             inn(9) = ohtxat;
080610000000      /end-free
080620000000     C                   z-add     txatic        inn(10)
080630000000     C                   z-add     ictotl        inn(11)
080640000000     C                   z-add     totlic        inn(12)
080650000000      /free
080660000000             inn(13) = ohdpat;
080670000000             inn(14) = dpatic;
080680000000      /end-free
080690000000     C                   z-add     icamnt        inn(15)
080700000000      /free
080710000000             @pnovl = 15;
080720000000           else;
080730000000             inn(1) = ohtdam;
080740000000             inn(2) = cttdam;
080750000000             inn(3) = ohfeam;
080760000000             inn(4) = ctfeam;
080770000000             inn(5) = ohcnct;
080780000000             inn(6) = ctcnct;
080790000000             inn(7) = subtot;
080800000000             inn(8) = csbtot;
080810000000             inn(9) = ohtxam;
080820000000             inn(10) = cttaxm;
080830000000             inn(11) = itotal;
080840000000             inn(12) = citotl;
080850000000             inn(13) = ohdpam;
080860000000             inn(14) = ctdpam;
080870000000             inn(15) = amtdue;
080880000000             @pnovl = 15;
080890000000           endif;
080900000000           len(1) = '15,5';
080910000000           len(2) = '15,5';
080920000000           len(3) = '15,5';
080930000000           len(4) = '15,5';
080940000000           len(5) = '15,5';
080950000000           len(6) = '15,5';
080960000000           len(7) = '15,5';
080970000000           len(8) = '15,5';
080980000000           len(9) = '15,5';
080990000000           len(10) = '15,5';
081000000000           len(11) = '15,5';
081010000000           len(12) = '15,5';
081020000000           len(13) = '15,5';
081030000000           len(14) = '15,5';
081040000000           len(15) = '15,5';
081050000000           @pexrt = *zeros;
081060000000           @prtcc = ohetcc;
081070000000           @prtdt = ohetdt;
081080000000           @plcur = ohcurr;
081090000000           @pcurr = xxovbm;
081100000000           @pexch = *blanks;
081110000000           @pcltp = 'T';
081120000000           p#shdn = 'N';
081130000000           exsr $ic001;
081140000000           //
081150000000      /end-free
081160000000     C                   z-add(h)  otn(1)        xxtdab
081170000000     C                   z-add(h)  otn(2)        @@tdab
081180000000     C                   z-add(h)  otn(3)        xxfeab
081190000000     C                   z-add(h)  otn(4)        @@feab
081200000000     C                   z-add(h)  otn(5)        xxcctb
081210000000     C                   z-add(h)  otn(6)        @@cctb
081220000000     C                   z-add(h)  otn(7)        xxsubb
081230000000     C                   z-add(h)  otn(8)        @@subb
081240000000     C                   z-add(h)  otn(9)        xxtxab
081250000000     C                   z-add(h)  otn(10)       @@txab
081260000000     C                   z-add(h)  otn(11)       xxtotb
081270000000     C                   z-add(h)  otn(12)       @@totb
081280000000     C                   z-add(h)  otn(13)       xxdpab
081290000000     C                   z-add(h)  otn(14)       @@dpab
081300000000     C                   z-add(h)  otn(15)       xxamnb
081310000000      /free
081320000000       //
081330000000       //* remaining fields
081340000000           clear len;
081350000000           clear err;
081360000000           inn = *zeros;
081370000000           if *in75 = *on;
081380000000      /end-free
081390000000     C                   z-add     amntic        inn(1)
081400000000      /free
081410000000             inn(2) = ohgtxt;
081420000000             inn(3) = ctgttt;
081430000000             inn(4) = ohptxt;
081440000000             inn(5) = ctpttt;
081450000000             @pnovl = 5;
081460000000           else;
081470000000      /end-free
081480000000     C                   z-add     camtdu        inn(1)
081490000000      /free
081500000000             inn(2) = ohgtxa;
081510000000             inn(3) = ctgttx;
081520000000             inn(4) = ohptxa;
081530000000             inn(5) = ctpttx;
081540000000             @pnovl = 5;
081550000000             len(2) = '15,5';
081560000000             len(3) = '15,5';
081570000000             len(4) = '15,5';
081580000000             len(5) = '15,5';
081590000000           endif;
081600000000           len(1) = '15,5';
081610000000           len(2) = '15,5';
081620000000           len(3) = '15,5';
081630000000           len(4) = '15,5';
081640000000           len(5) = '15,5';
081650000000           @pexrt = *zeros;
081660000000           @prtcc = ohetcc;
081670000000           @prtdt = ohetdt;
081680000000           @plcur = ohcurr;
081690000000           @pcurr = xxovbm;
081700000000           @pexch = *blanks;
081710000000           @pcltp = 'T';
081720000000           p#shdn = 'N';
081730000000           exsr $ic001;
081740000000           //
081750000000      /end-free
081760000000     C                   z-add     otn(1)        @@amnb
081770000000      /free
081780000000           if *in75 = *off;
081790000000             //
081800000000      /end-free
081810000000     C                   z-add(h)  otn(2)        xxgtxb
081820000000     C                   z-add(h)  otn(3)        @@gtxb
081830000000     C                   z-add(h)  otn(4)        xxptxb
081840000000     C                   z-add(h)  otn(5)        @@ptxb
081850000000      /free
081860000000           endif;
081870000000      /end-free
081880000000     C                   z-add(h)  otn(2)        @gtxtb
081890000000     C                   z-add(h)  otn(3)        xgtxtb
081900000000     C                   z-add(h)  otn(4)        @ptxtb
081910000000     C                   z-add(h)  otn(5)        xptxtb
081920000000      /free
081930000000         endif;
081940000000       endif;
081950000000       //
081960000000       if skpprt <> 'Y';
081970000000         if endcol = ' '
081980000000           or endcol = 'Y';
081990000000           except bottom;
082000000000           //
082010000000           // close email printer files and update stat of email
082020000000           if *in29 = *on;
082030000000             if *in86 = *off;
082040000000               if @apin3 = 'Y';
082050000000                 close apprtin3;
082060000000               endif;
082070000000               %subst(p1splf:1:8) = 'APPRTIN3';
082080000000               @apin3 = ' ';
082090000000             else;
082100000000               if @apin4 = 'Y';
082110000000                 close apprtin4;
082120000000               endif;
082130000000               %subst(p1splf:1:8) = 'APPRTIN4';
082140000000               @apin4 = ' ';
082150000000             endif;
082160000000             p1mail = 'Y';
082170000000             p1prnt = 'N';
082180000000             MS310P ( p1splf : p1mail : p1prnt :
082190000000             p1ctln : p1hold );
082200000000             p1ctln = *blanks;
082210000000           endif;
082220000000           //
082230000000         endif;
082240000000       endif;
082250000000       //
082260000000       //
082270000000       endsr;
082280000000       //*************************************************************** $prtof
082290000000       // $prtof - print subroutine done at overflow time
082300000000       begsr $prtof;
082310000000       //
082320000000       if skpprt <> 'Y';
082330000000         except contin;
082340000000         //
082350000000         //  moves date into correct format
082360000000         //
082370000000         d@t1 = invdto;
082380000000         exsr $d@t1;
082390000000         invdto = d@t2;
082400000000         except headin;
082410000000         *in66 = *on;
082420000000         d@t2 = invdto;
082430000000         exsr $d@t2;
082440000000         invdto = d@t1;
082450000000         //
082460000000       endif;
082470000000       *inof = *off;
082480000000       *inoe = *off;
082490000000       *inob = *off;
082500000000       *inod = *off;
082510000000       //
082520000000       endsr;
082530000000       //*************************************************************** $calcs
082540000000       // $calcs - perform calculations similar to both files
082550000000       //
082560000000       begsr $calcs;
082570000000       //
082580000000       // get invoice print date
082590000000       newdt = udate;
082600000000       exsr $centy;
082610000000      /end-free
082620000000     C     newdt         mult      10000.01      invymd
082630000000      /free
082640000000       invdtx = invymd;
082650000000      /end-free
082660000000     C                   movel     ncnt          invdtx
082670000000      /free
082680000000       //
082690000000       // setup headings for invoice or credit memo
082700000000       if xxortp = 'R';
082710000000         *in51 = *on;
082720000000         %subst(ttldsc:1:6) = 'CREDIT';
082730000000         %subst(ttldsc:7:5) = ' MEMO';
082740000000       else;
082750000000         *in51 = *off;
082760000000         %subst(ttldsc:1:7) = 'INVOICE';
082770000000         %subst(ttldsc:8:4) = '    ';
082780000000       endif;
082790000000       //
082800000000       // if consolidated always print 'invoice' at top
082810000000       if ohcbcd <> *blanks;
082820000000         %subst(ttldsc:1:7) = 'INVOICE';
082830000000         %subst(ttldsc:8:4) = '    ';
082840000000       endif;
082850000000       //
082860000000       //
082870000000       // determine number of invoices number to reserve for
082880000000       // split invoice
082890000000       compny = ohcono;
082900000000       applic = 'AR';
082910000000       %subst(ctlnm:1:5) = '@TRMS';
082920000000       %subst(ctlnm:6:2) = ohtmcd;
082930000000       nosplt = 0;
082940000000       chain ctlkey orctl;
082950000000       *in90 = not %found;
082960000000       if *in90 = *off;
082970000000         x = 1;
082980000000         dow x <= 12;
082990000000           if apc(x) > 0;
083000000000      /end-free
083010000000     C                   add       1             nosplt
083020000000      /free
083030000000           else;
083040000000             leave;
083050000000           endif;
083060000000      /end-free
083070000000     C                   add       1             x
083080000000      /free
083090000000         enddo;
083100000000         except updtrm;
083110000000       endif;
083120000000       //
083130000000       if ohcbcd <> *blanks
083140000000         and ohcipf <> 'Y'
083150000000         and ldrprt = 'N';
083160000000         p1shdn = 'N';
083170000000         oe529@ = 'Y';
083180000000         p1cono = %editc(ohcono:'X');
083190000000         p1blcd = ohcbcd;
083200000000         p1pytp = ohpytp;
083210000000         p1csno = %editc(oharcs:'X');
083220000000         p1inno = *blanks;
083230000000         p1cict = *blanks;
083240000000         p1mode = *blanks;
083250000000         OE529 ( p1shdn : p1cono : p1blcd :
083260000000         p1pytp : p1csno : p1inno : p1cict :
083270000000         p1mode );
083280000000      /end-free
083290000000     C                   move      p1inno        ohinno
083300000000     C                   move      p1cict        ohcict
083310000000      /free
083320000000       endif;
083330000000       //
083340000000       // get the next invoice number
083350000000       if ohinno = 0;
083360000000         compny = ohcono;
083370000000         applic = 'OE';
083380000000         ctlnm = 'ORDERNO';
083390000000         chain ctlkey orctl;
083400000000         *in90 = not %found;
083410000000         if *in90 = *on;
083420000000           except addctl;
083430000000           chain ctlkey orctl;
083440000000           *in90 = not %found;
083450000000         endif;
083460000000      /end-free
083470000000     C                   add       1             nxti#
083480000000      /free
083490000000         ohinno = nxti#;
083500000000         if nosplt > 0;
083510000000      /end-free
083520000000     C     nosplt        sub       1             nosplt
083530000000     C                   add       nosplt        nxti#
083540000000      /free
083550000000         endif;
083560000000         except updctl;
083570120815
083580120815MOD01 /copy qcpysrc,oe526m01c1
083590120815
083600000000       endif;
083610000000       //
083620000000       // future date overrides if invoice date is blank
083630000000       //  only if future date is later than today's date
083640000000       clear ovidt6;
083650000000       if ovidt = 0;
083660000000         if futdt > today;
083670000000      /end-free
083680000000     C                   z-add     futdt         ovidt6
083690000000      /free
083700000000         endif;
083710000000       else;
083720000000      /end-free
083730000000     C                   z-add     ovidt         ovidt6
083740000000      /free
083750000000       endif;
083760000000       //
083770000000       //* if the future date is less than today remove
083780000000       if futdt < today;
083790000000         $3c008 = *zeros;
083800000000         futdt = *zeros;
083810000000       endif;
083820000000       //
083830000000       // fill in overide invoice date
083840000000       if ovidt6 = 0;
083850000000         if ldidt <> 0;
083860000000           ovidt6 = ldidt;
083870000000         else;
083880000000      /end-free
083890000000     C     udate         mult      10000.01      ovidt6
083900000000      /free
083910000000         endif;
083920000000       endif;
083930000000       //
083940000000       //* move in next invoice date for consolated invoices
083950000000       if ohcbcd <> *blanks
083960000000         and ohorst = '3';
083970000000         compny = ldcomp;
083980000000         applic = 'AR';
083990000000         %subst(ctlnm:1:5) = 'BILLC';
084000000000         %subst(ctlnm:6:2) = ohcbcd;
084010000000         chain(n) ctlkey orctl;
084020000000         *in90 = not %found;
084030000000         ovidt6 = rvwdt;
084040000000       else;
084050000000         // if printing consolidated invoices
084060000000         if ohcbcd <> *blanks
084070000000           and ohorst = '4';
084080000000           ovidt6 = ohivdt;
084090000000         endif;
084100000000       endif;
084110000000       //
084120000000      /end-free
084130000000     C     ovidt6        mult      100.0001      newdt
084140000000      /free
084150000000       invdto = newdt;
084160000000       exsr $centy;
084170000000      /end-free
084180000000     C     newdt         mult      10000.01      ovidt6
084190000000      /free
084200000000       ovidt = ovidt6;
084210000000      /end-free
084220000000     C                   movel     ncnt          ovidt
084230000000      /free
084240000000       //
084250000000       // move greater date to work field
084260000000       if ovidt < futdt;
084270000000      /end-free
084280000000     C                   z-add     futdt         wrkdt
084290000000      /free
084300000000       else;
084310000000      /end-free
084320000000     C                   z-add     ovidt         wrkdt
084330000000      /free
084340000000       endif;
084350000000       //
084360000000       // get payment type description from order control file
084370000000       compny = ohcono;
084380000000       applic = 'OE';
084390000000       %subst(ctlnm:1:5) = 'PTYPE';
084400000000       %subst(ctlnm:6:2) = ohpytp;
084410000000       chain ctlkey orctl;
084420000000       *in90 = not %found;
084430000000       if *in90 = *off;
084440000000         except relctl;
084450000000       endif;
084460000000       if *in90 = *on;
084470000000         paydsc = *blanks;
084480000000       endif;
084490000000       //
084500000000       // get a/r terms from order control file
084510000000       @split = 'N';
084520000000       wdy = 0;
084530000000       wpc = 0;
084540000000       //
084550000000       compny = ohcono;
084560000000       applic = 'AR';
084570000000       %subst(ctlnm:1:5) = '@TRMS';
084580000000       %subst(ctlnm:6:2) = ohtmcd;
084590000000       chain ctlkey orctl;
084600000000       *in90 = not %found;
084610000000       if *in90 = *off;
084620000000         //
084630000000         // determine if split terms exist for invoice
084640000000         wdy = ady;
084650000000         wpc = apc;
084660000000         x = 1;
084670000000         dow x <= 12;
084680000000           if wpc(x) <> 0;
084690000000             @split = 'Y';
084700000000             leave;
084710000000           endif;
084720000000      /end-free
084730000000     C                   add       1             x
084740000000      /free
084750000000         enddo;
084760000000         //
084770000000         except relctl;
084780000000       endif;
084790000000       if *in90 = *on;
084800000000         prxcd = 'N';
084810000000         netdy = 0;
084820000000         cdsdy = 0;
084830000000       endif;
084840000000       //
084850000000      /end-free
084860000000     C                   z-add     duedt         wrk60
084870000000     C     wrk60         mult      100.0001      cdate
084880000000      /free
084890000000       //
084900000000       // calculate due dates and net dates for no prox ****
084910000000       // due date - no prox
084920000000       if prxcd = 'N';
084930000000         if duedt = 0;
084940000000           days = cdsdy;
084950000000           exsr $caldt;
084960000000           cdate = newdt;
084970000000      /end-free
084980000000     C     newdt         mult      10000.01      duedt6
084990000000      /free
085000000000           duedt = duedt6;
085010000000      /end-free
085020000000     C                   movel     ncnt          duedt
085030000000      /free
085040000000         endif;
085050000000         //
085060000000         // net date - no prox
085070000000         days = netdy;
085080000000         exsr $caldt;
085090000000         ndate = newdt;
085100000000      /end-free
085110000000     C     newdt         mult      10000.01      netdt6
085120000000      /free
085130000000         netdt = netdt6;
085140000000      /end-free
085150000000     C                   movel     ncnt          netdt
085160000000      /free
085170000000       endif;
085180000000       //
085190000000       // calculate due dates and net dates for prox ****
085200000000       // due date - prox  (no cash discount %)
085210000000       if prxcd = 'Y';
085220000000         // due date - prox
085230000000         if duedt = 0
085240000000           and cdsdy > 0;
085250000000      /end-free
085260000000     C                   z-add     cdsdy         nday
085270000000      /free
085280000000           exsr $cprox;
085290000000           cdate = newdt;
085300000000      /end-free
085310000000     C     newdt         mult      10000.01      duedt6
085320000000      /free
085330000000           duedt = duedt6;
085340000000      /end-free
085350000000     C                   movel     ncnt          duedt
085360000000      /free
085370000000         endif;
085380000000         //
085390000000         // net date - prox
085400000000         nday = proxd;
085410000000         exsr $cprox;
085420000000         ndate = newdt;
085430000000      /end-free
085440000000     C     newdt         mult      10000.01      netdt6
085450000000      /free
085460000000         netdt = netdt6;
085470000000      /end-free
085480000000     C                   movel     ncnt          netdt
085490000000      /free
085500000000         if duedt = 0;
085510000000           duedt = netdt;
085520000000         endif;
085530000000       endif;
085540000000       //
085550000000       // check if net date is less than due date
085560000000       if netdt < duedt;
085570000000         netdt = duedt;
085580000000      /end-free
085590000000     C                   z-add     duedt         ndate2
085600000000     C     ndate2        mult      100.0001      ndate
085610000000      /free
085620000000       endif;
085630000000       //
085640000000       //
085650000000       // due date greater than 0?
085660000000       *in14 = (cdate > 0);                                                     // >
085670000000       //
085680000000       // taxable?   if taxable seton ind 16
085690000000       *in16 = (ohexcd = '0');                                                  //  eq
085700000000       if ohexcd = 'J';
085710000000         *in16 = *on;
085720000000       endif;
085730000000       //
085740000000       // cash discount?  if cash discount seton ind 17
085750000000       if ohcurr = @dftcr;
085760000000         *in17 = (ohcdam > 0);                                                  //  gt
085770000000         //
085780000000         // federal tax ne 0    seton  18
085790000000         *in18 = (ohfeam <> 0);                                                 // ><
085800000000         //
085810000000         // container charge ne 0  seton  19
085820000000         *in19 = (ohcnct <> 0);                                                 // ><
085830000000         //
085840000000         // trade discount amount ne 0  seton  20
085850000000         *in20 = (ohtdam <> 0);                                                 // ><
085860000000         //
085870000000         // sales tax ne 0   seton  21
085880000000         *in21 = (ohtxam <> 0);                                                 // ><
085890000000       else;
085900000000         *in17 = (ohcdat > 0);                                                  //  gt
085910000000         *in18 = (ohfeat <> 0);                                                 // ><
085920000000         *in19 = (ohcctt <> 0);                                                 // ><
085930000000         *in20 = (ohtdat <> 0);                                                 // ><
085940000000         *in21 = (ohtxat <> 0);                                                 // ><
085950000000       endif;
085960000000       // if *in21 is off check for pst without gst
085970000000       if *in21 = *off
085980000000         and ohgtyn = 'N'
085990000000         and ohptxa <> *zeros;
086000000000         *in21 = *on;
086010000000       endif;
086020000000       //
086030000000       // fill in comcus for invoice heading print
086040000000       comno@ = ohcono;
086050000000       cusnr@ = ohcsno;
086060000000       @@csnm = ohcsnm;
086070000000       //
086080000000       // check if sold to is the same as bill to
086090000000       cushld = oharcs;
086100000000       if ohcsno <> oharcs;
086110000000         //
086120000000         // check if ship-to is blank, if yes move sold-to ship-to fields
086130000000         if shpa = *blanks;
086140000000           ohshnm = ohcsnm;
086150000000           ohsad1 = ohcad1;
086160000000           ohsad2 = ohcad2;
086170000000           ohsad3 = ohcad3;
086180000000           ohsad4 = ohcad4;
086190000000           ohshci = ohctid;
086200000000           ohscty = ohblcy;
086210000000           ohshst = ohblst;
086220000000           ohszip = ohblzp;
086230000000           %subst(shpa:1:4) = '****';
086240000000         endif;
086250000000         //
086260000000      /end-free
086270000000     C                   move      cushld        comcus
086280000000      /free
086290000000         f$cm0h = comcus;
086300000000         chain(n) cm0key cusmsr;
086310000000         *in90 = not %found;
086320000000         if *in90 = *off;
086330000000           ohcsnm = cmcsnm;
086340000000           ohcad1 = cmcad1;
086350000000           ohcad2 = cmcad2;
086360000000           ohcad3 = cmcad3;
086370000000           ohcad4 = cmcad4;
086380000000           ohctid = cmctid;
086390000000           ohblcy = cmcity;
086400000000           ohblst = cmstat;
086410000000           ohblzp = cmzip4;
086420000000         endif;
086430000000       endif;
086440000000       //
086450000000       // set up to print bill to address
086460000000       sld = *blanks;                                                           // bill to
086470000000       %subst(sld(1):1:30) = ohcsnm;
086480000000       a = 2;
086490000000       if ohcad1 > *blanks;
086500000000         %subst(sld(a):1:30) = ohcad1;
086510000000      /end-free
086520000000     C                   add       1             a
086530000000      /free
086540000000       endif;
086550000000       if ohcad2 > *blanks;
086560000000         %subst(sld(a):1:30) = ohcad2;
086570000000      /end-free
086580000000     C                   add       1             a
086590000000      /free
086600000000       endif;
086610000000       //
086620000000       //* get system level country code values
086630000000       //
086640000000       if ohctid > *blanks;
086650000000         x8comp = *zeros;
086660000000         x8appl = 'XA';
086670000000         %subst(x8ckey:1:4) = 'CNTY';
086680000000         %subst(x8ckey:5:3) = ohctid;
086690000000         chain ctlky2 orctl;
086700000000         *in92 = not %found;
086710000000         if *in92 = *off;
086720000000           adrseq = adrsqo;
086730000000         endif;
086740000000       endif;
086750000000       if adrseq = ' ';
086760000000         adrseq = sysasq;
086770000000       endif;
086780000000       if adrseq = ' ';
086790000000         adrseq = '1';
086800000000       endif;
086810000000       //
086820000000       if ohcad3 > *blanks;
086830000000         %subst(sld(a):1:30) = ohcad3;
086840000000      /end-free
086850000000     C                   add       1             a
086860000000      /free
086870000000       endif;
086880000000       if formtp = '2';
086890000000         if ohcad4 > *blanks;
086900000000           %subst(sld(a):1:30) = ohcad4;
086910000000      /end-free
086920000000     C                   add       1             a
086930000000      /free
086940000000         endif;
086950000000         //
086960000000         //* sequence address layout
086970000000         @@city = ohblcy;
086980000000         @@stpv = ohblst;
086990000000         @@zpps = ohblzp;
087000000000         //
087010000000         exsr $adrsq;
087020000000         //
087030000000         if adrs1 > *blanks;
087040000000           sld(a) = adrs1;
087050000000      /end-free
087060000000     C                   add       1             a
087070000000      /free
087080000000         endif;
087090000000         //
087100000000         if adrs2 > *blanks;
087110000000           sld(a) = adrs2;
087120000000      /end-free
087130000000     C                   add       1             a
087140000000      /free
087150000000         endif;
087160000000         //
087170000000         if adrs3 > *blanks;
087180000000           sld(a) = adrs3;
087190000000      /end-free
087200000000     C                   add       1             a
087210000000      /free
087220000000         endif;
087230000000         //
087240000000       else;
087250000000         %subst(sld(a):1:20) = ohblcy;
087260000000         w2 = ohblst;
087270000000         %subst(stzip:1:2) = w2;
087280000000         %subst(stzip:4:10) = ohblzp;
087290000000         %subst(sld(a):22:13) = stzip;
087300000000      /end-free
087310000000     C                   add       1             a
087320000000      /free
087330000000       endif;
087340000000       //
087350000000       // set up to print ship to address
087360000000       shp = *blanks;                                                           // ship to
087370000000       if shpa > *blanks;
087380000000         a = 2;
087390000000         if ohsad1 > *blanks;
087400000000           %subst(shp(a):1:30) = ohsad1;
087410000000      /end-free
087420000000     C                   add       1             a
087430000000      /free
087440000000         endif;
087450000000         if ohsad2 > *blanks;
087460000000           %subst(shp(a):1:30) = ohsad2;
087470000000      /end-free
087480000000     C                   add       1             a
087490000000      /free
087500000000         endif;
087510000000         //
087520000000         //* get system level country code values
087530000000         //
087540000000         if ohshci > *blanks;
087550000000           x8comp = *zeros;
087560000000           x8appl = 'XA';
087570000000           %subst(x8ckey:1:4) = 'CNTY';
087580000000           %subst(x8ckey:5:3) = ohshci;
087590000000           chain ctlky2 orctl;
087600000000           *in92 = not %found;
087610000000           if *in92 = *off;
087620000000             adrseq = adrsqo;
087630000000           endif;
087640000000         endif;
087650000000         if adrseq = ' ';
087660000000           adrseq = sysasq;
087670000000         endif;
087680000000         if adrseq = ' ';
087690000000           adrseq = '1';
087700000000         endif;
087710000000         //
087720000000         if ohsad3 > *blanks;
087730000000           %subst(shp(a):1:30) = ohsad3;
087740000000      /end-free
087750000000     C                   add       1             a
087760000000      /free
087770000000         endif;
087780000000         if formtp = '2';
087790000000           if ohsad4 > *blanks;
087800000000             %subst(shp(a):1:30) = ohsad4;
087810000000      /end-free
087820000000     C                   add       1             a
087830000000      /free
087840000000           endif;
087850000000           //
087860000000           //* sequence address layout
087870000000           @@city = ohscty;
087880000000           @@stpv = ohshst;
087890000000           @@zpps = ohszip;
087900000000           //
087910000000           exsr $adrsq;
087920000000           //
087930000000           if adrs1 > *blanks;
087940000000             shp(a) = adrs1;
087950000000      /end-free
087960000000     C                   add       1             a
087970000000      /free
087980000000           endif;
087990000000           //
088000000000           if adrs2 > *blanks;
088010000000             shp(a) = adrs2;
088020000000      /end-free
088030000000     C                   add       1             a
088040000000      /free
088050000000           endif;
088060000000           //
088070000000           if adrs3 > *blanks;
088080000000             shp(a) = adrs3;
088090000000      /end-free
088100000000     C                   add       1             a
088110000000      /free
088120000000           endif;
088130000000           //
088140000000         else;
088150000000           %subst(shp(a):1:20) = ohscty;
088160000000           w2 = ohshst;
088170000000           %subst(stzip:1:2) = w2;
088180000000           %subst(stzip:4:10) = ohszip;
088190000000           %subst(shp(a):22:13) = stzip;
088200000000      /end-free
088210000000     C                   add       1             a
088220000000      /free
088230000000         endif;
088240000000       else;
088250000000         shp = sld;
088260000000       endif;
088270000000       //*
088280000000       //* get print country option on company level (bill-to)
088290000000       x1cnnm = *blanks;
088300000000       w1cnnm = *blanks;
088310000000       xxcom = ohcono;
088320000000       xxapp = 'XA';
088330000000       xxky4 = 'CNTY';
088340000000       xxky3 = ohctid;
088350000000       chain ctlky orctl;
088360000000       *in92 = not %found;
088370000000       if *in92 = *off;
088380000000         except relctl;
088390000000         if prcfro = 'Y';
088400000000           bilco = 'Y';
088410000000         else;
088420000000           bilco = 'N';
088430000000         endif;
088440000000       else;
088450000000         bilco = *blanks;
088460000000       endif;
088470000000       //
088480000000       //* get print country option on company level (ship-to)
088490000000       //    default bill-to only when bill-to & ship-to same
088500000000       if ohshci = *blanks
088510000000         and @sld = @shp;
088520000000         ohshci = ohctid;
088530000000       endif;
088540000000       //
088550000000       // blank out if not a consolidated invoice run.
088560000000       // if it is a consolidated run it will be blanked out
088570000000       // in the $clear subroutine.
088580000000       if *in42 <> *on;
088590000000         x2cnnm = *blanks;
088600000000         w2cnnm = *blanks;
088610000000       endif;
088620000000       //
088630000000       xxcom = ohcono;
088640000000       xxapp = 'XA';
088650000000       xxky4 = 'CNTY';
088660000000       xxky3 = ohshci;
088670000000       chain ctlky orctl;
088680000000       *in93 = not %found;
088690000000       if *in93 = *off;
088700000000         except relctl;
088710000000         if prcfro = 'Y';
088720000000           shpco = 'Y';
088730000000         else;
088740000000           shpco = 'N';
088750000000         endif;
088760000000       else;
088770000000         shpco = *blanks;
088780000000       endif;
088790000000       //
088800000000       datfmt = *blanks;
088810000000       //
088820000000       //* get print country option on system level (bill-to)
088830000000       xxcom = *zeros;
088840000000       xxapp = 'XA';
088850000000       xxky4 = 'CNTY';
088860000000       xxky3 = ohctid;
088870000000       chain ctlky orctl;
088880000000       *in90 = not %found;
088890000000       if *in90 = *off;
088900000000         datfmt = dtfmcn;
088910000000         except relctl;
088920000000         if prfrmo = 'Y';
088930000000           bilsys = 'Y';
088940000000           w1cnnm = cntnmo;
088950000000         else;
088960000000           bilsys = 'N';
088970000000         endif;
088980000000       endif;
088990000000       //
089000000000       //
089010000000       //* get print country option on system level (ship-to)
089020000000       if w2cnnm = *blanks;
089030000000         xxky3 = *blanks;
089040000000         xxky3 = ohshci;
089050000000         chain ctlky orctl;
089060000000         *in90 = not %found;
089070000000         if *in90 = *off;
089080000000           except relctl;
089090000000           if prfrmo = 'Y';
089100000000             shpsys = 'Y';
089110000000             w2cnnm = cntnmo;
089120000000           else;
089130000000             shpsys = 'N';
089140000000           endif;
089150000000         endif;
089160000000       endif;
089170000000       //
089180000000       if bilco = 'Y';
089190000000         x1cnnm = w1cnnm;
089200000000       else;
089210000000         if bilsys = 'Y'
089220000000           and bilco = *blanks;
089230000000           x1cnnm = w1cnnm;
089240000000         endif;
089250000000       endif;
089260000000       //
089270000000       if shpco = 'Y';
089280000000         x2cnnm = w2cnnm;
089290000000       else;
089300000000         if shpsys = 'Y'
089310000000           and shpco = *blanks;
089320000000           x2cnnm = w2cnnm;
089330000000         endif;
089340000000       endif;
089350000000       //
089360000000       %subst(sld(9):1:30) = x1cnnm;
089370000000       if sld(8) = *blanks;
089380000000         sld(8) = sld(9);
089390000000         sld(9) = *blanks;
089400000000       endif;
089410000000       if sld(7) = *blanks;
089420000000         sld(7) = sld(8);
089430000000         sld(8) = *blanks;
089440000000       endif;
089450000000       if sld(6) = *blanks;
089460000000         sld(6) = sld(7);
089470000000         sld(7) = *blanks;
089480000000       endif;
089490000000       if sld(5) = *blanks;
089500000000         sld(5) = sld(6);
089510000000         sld(6) = *blanks;
089520000000       endif;
089530000000       //
089540000000       %subst(shp(9):1:30) = x2cnnm;
089550000000       if shp(8) = *blanks;
089560000000         shp(8) = shp(9);
089570000000         shp(9) = *blanks;
089580000000       endif;
089590000000       if shp(7) = *blanks;
089600000000         shp(7) = shp(8);
089610000000         shp(8) = *blanks;
089620000000       endif;
089630000000       if shp(6) = *blanks;
089640000000         shp(6) = shp(7);
089650000000         shp(7) = *blanks;
089660000000       endif;
089670000000       if shp(5) = *blanks;
089680000000         shp(5) = shp(6);
089690000000         shp(6) = *blanks;
089700000000       endif;
089710000000       //
089720000000       if ohshnm > *blanks;
089730000000         %subst(shp(1):1:30) = ohshnm;
089740000000       endif;
089750000000       //
089760000000       // check date format options
089770000000       //
089780000000       if datfmt = *blanks;
089790000000         datfmt = uzdfdt;
089800000000       endif;
089810000000       //
089820000000       d@t1 = udate;
089830000000       exsr $d@t1;
089840000000       ud@te = d@t2;
089850000000       //
089860000000       // check the cihld file,check terms code
089870000000       if ohcbcd <> *blanks;
089880000000         ##cono = ohcono;
089890000000         ##csno = oharcs;
089900000000         ##cbcd = ohcbcd;
089910000000         ##pytp = ohpytp;
089920000000         chain ci0key cihldr;
089930000000         *in91 = not %found;
089940000000         if *in91 = *off;
089950000000           // load file with values if terms blank
089960000000           if citmcd = *blanks;
089970000000             citmcd = ohtmcd;
089980000000             cicdsp = ohcdsp;
089990000000      /end-free
090000000000     C                   movel     duedt         @ducc
090010000000     C                   move      duedt         @dudt
090020000000      /free
090030000000             ciducc = @ducc;
090040000000             cidudt = @dudt;
090050000000      /end-free
090060000000     C                   movel     netdt         @netcc
090070000000     C                   move      netdt         @netdt
090080000000      /free
090090000000             cintcc = @netcc;
090100000000             cintdt = @netdt;
090110000000           else;
090120000000             // change net and due date to be file values
090130000000      /end-free
090140000000     C                   movel     ciducc        duedtx
090150000000     C                   move      cidudt        duedtx
090160000000     C                   movel     cintcc        netdtx
090170000000     C                   move      cintdt        netdtx
090180000000      /free
090190000000           endif;
090200000000           update cihldr;
090210000000         endif;
090220000000         //
090230000000         // check for real order number in cixrf
090240000000         *in12 = *off;
090250000000         chain(n) od0key cixrfr;
090260000000         *in97 = not %found;
090270000000         if *in97 = *off;
090280000000           if cxrpgn <> cxrlgn;
090290000000             *in12 = *on;
090300000000           endif;
090310000000         endif;
090320000000         //
090330000000       endif;
090340000000       //
090350000000       //
090360000000       invnrx = ohinno;
090370000000       ovidtx = ovidt;
090380000000       duedtx = duedt;
090390000000       netdtx = netdt;
090400000000       //*
090410000000       endsr;
090420000000       //*************************************************************** $cprox
090430000000       // $cprox - calculate due date and net date for prox
090440000000       //
090450000000       begsr $cprox;
090460000000       //
090470000000       if inprox <> 'Y';
090480000000         if dd < proxd;
090490000000      /end-free
090500000000     C     mm            add       1             nmth
090510000000      /free
090520000000         endif;
090530000000         //
090540000000         if dd >= proxd;
090550000000      /end-free
090560000000     C     mm            add       2             nmth
090570000000      /free
090580000000         endif;
090590000000       else;
090600000000         if dd <= proxd;
090610000000      /end-free
090620000000     C     mm            add       1             nmth
090630000000      /free
090640000000         endif;
090650000000         //
090660000000         if dd > proxd;
090670000000      /end-free
090680000000     C     mm            add       2             nmth
090690000000      /free
090700000000         endif;
090710000000       endif;
090720000000       //
090730000000       nyr = yy;
090740000000       if nmth > 12;
090750000000      /end-free
090760000000     C     nmth          sub       12            nmth
090770000000     C                   add       1             nyr
090780000000      /free
090790000000       endif;
090800000000       //
090810000000       // get century
090820000000       exsr $centy;
090830000000       //
090840000000       // check to see if this is a leap year
090850000000      /end-free
090860000000     C     nyr           div       4             leapyr
090870000000     C                   mvr                     leapyr
090880000000      /free
090890000000       //
090900000000       m = nmth;
090910000000       if leapyr = 0;
090920000000         if nday > dys(m);
090930000000           nday = dys(m);
090940000000         endif;
090950000000       else;
090960000000         if nday > dyx(m);
090970000000           nday = dyx(m);
090980000000         endif;
090990000000       endif;
091000000000       //
091010000000       endsr;
091020000000       //*************************************************************** $caldt
091030000000       // $caldt - calculate due date and net date - no prox
091040000000       //
091050000000       begsr $caldt;
091060000000       //
091070000000       xadat@ = 'Y';
091080000000       //
091090000000       if curcc = 0;
091100000000         compny = 0;
091110000000         applic = 'XA';
091120000000         ctlnm = '@CENTRY';
091130000000         chain(n) ctlkey orctl;
091140000000         *in90 = not %found;
091150000000       endif;
091160000000       //
091170000000       #cymd = wrkdt;
091180000000       //
091190000000       if yy > 50;
091200000000      /end-free
091210000000     C                   movel     curcc         #cymd
091220000000      /free
091230000000       else;
091240000000      /end-free
091250000000     C                   movel     nxtcc         #cymd
091260000000      /free
091270000000       endif;
091280000000       //
091290000000       gdatep = %editc(#cymd:'X');
091300000000       clear jdayp;
091310000000       XADAT ( jdayp : gdatep : shtdnp );
091320000000       //
091330000000      /end-free
091340000000     C                   move      jdayp         #jday
091350000000     C                   add       days          #jday
091360000000      /free
091370000000       jdayp = %editc(#jday:'X');
091380000000       clear gdatep;
091390000000       //
091400000000       XADAT ( jdayp : gdatep : shtdnp );
091410000000      /end-free
091420000000     C                   movel     gdatep        ncnt
091430000000     C                   move      gdatep        newdt
091440000000     C                   mult      100.0001      newdt
091450000000      //
091460000000      /free
091470000000       endsr;
091480000000       //*************************************************************** $centy
091490000000       // $centy - get century record from order control file
091500000000       //
091510000000       begsr $centy;
091520000000       //
091530000000       compny = 0;
091540000000       applic = 'XA';
091550000000       ctlnm = '@CENTRY';
091560000000       chain ctlkey orctl;
091570000000       *in90 = not %found;
091580000000       if *in90 = *off;
091590000000         except relctl;
091600000000       endif;
091610000000      /end-free
091620000000     C  n90              if        nyr > 50
091630000000      /free
091640000000         ncnt = curcc;
091650000000       else;
091660000000         ncnt = nxtcc;
091670000000       endif;
091680000000       //
091690000000       endsr;
091700000000       //
091710000000       //*********************************************** $msds
091720000000       // check if msds (materials safety data sheet) sheet required
091730000000       begsr $msds;
091740000000       //
091750000000       // define parms
091760000000       //
091770000000       // get item master record
091780000000       chain @@itno itmstr;
091790000000       *in90 = not %found;
091800000000       if *in90 = *on
091810000000         or *in90 = *off
091820000000         and immsdt = *zeros;
091830000000         @@msds = 'N';
091840000000         leavesr;
091850000000       endif;
091860000000       //
091870000000       // load parms
091880000000       @pcono = odcono;
091890000000       @pcsno = odcsno;
091900000000       @pshp# = odshp#;
091910000000       @pitno = @@itno;
091920000000       @pshdn = 'N';
091930000000       @prntp = @@rntp;
091940000000       //
091950000000       // call subprogram (oe515m)
091960000000       exsr $515m;
091970000000       @@msds = @pflag;
091980000000       //
091990000000       endsr;
092000000000       //
092010000000       //*********************************************** $515m
092020000000       // call subprogram to check msds sheet requirments
092030000000       begsr $515m;
092040000000       //
092050000000       //
092060000000       oe515m@ = 'Y';
092070000000       //
092080000000       OE515M ( @pshdn : @prntp : @pcono :
092090000000       @pcsno : @pshp# : @pitno : @pflag );
092100000000       //
092110000000       endsr;
092120000000       //
092130000000       //*************************************************************** $first
092140000000       // $first - first cycle
092150000000       //
092160000000       begsr $first;
092170000000       //
092180000000       // get the lda
092190000000      /end-free
092200000000     C     *dtaara       define    *lda          lda
092210000000      /free
092220000000       in lda;
092230000000       //
092240000000       if ldtoca = ' ';
092250000000         ldtoca = '99999';
092260000000       endif;
092270000000       //---------------------------------------------------------------
092280000000       @bl83 = *blanks;
092290000000       //
092300000000       // get fax options
092310000000       %subst(xxfkey:1:4) = '00AX';
092320000000       %subst(xxfkey:5:7) = 'OPTIONS';
092330000000       chain xxfkey orctl;
092340000000       *in90 = not %found;
092350000000       if *in90 = *off;
092360000000         except relctl;
092370000000       endif;
092380000000       //
092390000000       //* get electronic payment options
092400000000       //
092410000000       compny = ldcomp;
092420000000       applic = 'OE';
092430000000       ctlnm = 'EPAYOPT';
092440000000       clear eplive;
092450000000       chain(n) ctlkey orctl;
092460000000       *in91 = not %found;
092470000000       //
092480000000       //
092490000000       // get work order customer number
092500000000       compny = ldcomp;
092510000000       applic = 'XA';
092520000000       ctlnm = 'COMNAME';
092530000000       chain(n) ctlkey orctl;
092540000000       *in91 = not %found;
092550000000       //
092560000000       // use return to vendor processing must be 'y'
092570000000       compny = ldcomp;
092580000000       applic = 'PO';
092590000000       ctlnm = 'OPTIONS';
092600000000       chain(n) ctlkey orctl;
092610000000       *in91 = not %found;
092620000000       //
092630000000       //* get default notes if printed from batch
092640000000       //
092650000000       if *in90 = *off
092660000000         and z$test <> '&*';
092670000000         xxdcid = 'INV';
092680000000         AX120 ( xxdcid : z$nte1 : z$nte2 );
092690000000       endif;
092700000000       //
092710000000       //* seton *in34 if notes are entered
092720000000       //
092730000000       if z$nte1 <> *blanks
092740000000         or z$nte2 <> *blanks;
092750000000         *in34 = *on;
092760000000       endif;
092770000000       //
092780000000       //* generate fax forms name header (seton *in30)
092790000000       //
092800000000       if ffinvo <> *blanks;
092810000000         *in30 = *on;
092820000000         %subst(xxfaxf:1:4) = '&FON';
092830000000         if mfinvo = 'Y';
092840000000           @xco = %editc(ldcomp:'X');
092850000000      /end-free
092860000000     C     ffinvo        cat       @xco:0        ffinv@
092870000000      /free
092880000000           ffinvo = ffinv@;
092890000000         endif;
092900000000         %subst(xxfaxf:5:10) = ffinvo;
092910000000       endif;
092920000000       //
092930000000       //* generate fax cover sheet name  (seton *in33)
092940000000       //
092950000000       if csinvo <> *blanks;
092960000000         *in33 = *on;
092970000000         %subst(xxcvrs:1:3) = '*CV';
092980000000         %subst(xxcvrs:4:10) = csinvo;
092990000000       endif;
093000000000       //
093010000000       //* seton *in36 if we are to print headings on fax
093020000000       //
093030000000       *in36 = (phinvo = 'Y');
093040000000       //
093050000000       //* seton *in37 if this is a single invoice run
093060000000       //
093070000000       *in37 = (z$test = '&*');
093080000000       if *in37 = *on
093090000000         and z$intc <> *blanks;
093100000000         *in39 = *on;
093110000000       endif;
093120000000       if z$test <> '&*';
093130000000         z$fxpy = dpinvo;
093140000000       endif;
093150000000       if z$fxpy <> *blanks
093160000000         and z$fxpy <> '00';
093170000000         *in43 = *on;
093180000000       endif;
093190000000       //---------------------------------------------------------------
093200000000       //
093210000000       // decide which file to read
093220000000       *inu2 = (ldrte > *blanks);
093230000000       *inu1 = (ldrte = *blanks);
093240000000       //
093250000000       //* if using consolidated bill codes set on u3
093260000000       if ldblcd <> *blanks;
093270000000         *inu2 = *off;
093280000000         *inu1 = *off;
093290000000         *inu3 = *on;
093300000000         endcol = 'N';
093310000000       else;
093320000000         endcol = ' ';
093330000000       endif;
093340000000       //
093350000000       dsh = '-';
093360000000       dshm = '-';
093370000000       dsh@ = '-';
093380000000       dshm2 = '-';
093390000000       %subst(ttldsc:1:7) = 'INVOICE';
093400000000       //
093410000000       if ldortp = 'R';
093420000000         #type = 'R';
093430000000       else;
093440000000         #type = 'I';
093450000000       endif;
093460000000       //
093470000000       b5 = *blanks;
093480000000       z5 = 0;
093490000000       z12 = 0;
093500000000       //----------------------------------------------------
093510000000       // see if warehouse transfer company exists and if this company is
093520000000       // the warehouse transfer company
093530000000       if ldrprt <> 'Y';
093540000000         %subst(ctlky:1:8) = '00XAOPTI';
093550000000         %subst(ctlky:9:3) = 'ONS';
093560000000         chain ctlky orctl;
093570000000         *in90 = not %found;
093580000000         if *in90 = *off;
093590000000           except relctl;
093600000000         endif;
093610000000         //
093620000000         if mltco <> 'Y'
093630000000           or mltwh <> 'Y';
093640000000           whtcom = 0;
093650000000         else;
093660000000           %subst(ctlky:1:2) = %editc(dftco:'X');
093670000000           %subst(wa9:1:8) = 'IAOPTION';
093680000000           %subst(wa9:9:1) = 'S';
093690000000           %subst(ctlky:3:9) = wa9;
093700000000           chain ctlky orctl;
093710000000           *in90 = not %found;
093720000000           if *in90 = *off;
093730000000             except relctl;
093740000000           endif;
093750000000         endif;
093760000000         //
093770000000         // call oe720@ if warehouse transfer company
093780000000         if whtcom = ldcomp;
093790000000           @lcomp = %editc(ldcomp:'X');
093800000000           OE720 ( @lcomp : ldwhse : ldford :
093810000000           ldtord );
093820000000         endif;
093830000000       endif;
093840000000       //
093850000000       //* retrieve system options extension record
093860000000       *in86 = *off;
093870000000       %subst(ctlky:1:8) = '00XAOPTI';
093880000000       %subst(ctlky:9:3) = 'ONX';
093890000000       chain ctlky orctl;
093900000000       *in90 = not %found;
093910000000       if *in90 = *on;
093920000000         alqcmo = 'N';
093930000000       endif;
093940000000       if *in91 = *off
093950000000         and formtp = '2';
093960000000         *in86 = *on;
093970000000       endif;
093980000000       if *in91 = *off;
093990000000         sysasq = addrsq;
094000000000       endif;
094010000000       //----------------------------------------------------
094020000000       //
094030000000       // retreive universal messages from order control file.
094040000000       if appl = ' ';
094050000000         appl = 'OE';
094060000000       endif;
094070000000       //*
094080000000       applic = appl;
094090000000       compny = ldcomp;
094100000000       %subst(ctlnm:1:6) = 'MESS-I';
094110000000       msgno = 1;
094120000000       x = 1;
094130000000       //
094140000000       dou x > 3;
094150000000         %subst(ctlkey:11:1) = %editc(msgno:'X');
094160000000         chain ctlkey orctl;
094170000000         *in90 = not %found;
094180000000         if *in90 = *off;
094190000000           except relctl;
094200000000           umsg = 'Y';
094210000000           unvm(x) = msgtxt;
094220000000         endif;
094230000000      /end-free
094240000000     C                   add       1             x
094250000000     C                   add       1             msgno
094260000000      /free
094270000000       enddo;
094280000000       //
094290000000       // get oe options record
094300000000       applic = 'OE';
094310000000       compny = ldcomp;
094320000000       ctlnm = 'OPTIONS';
094330000000       rtstp = 'N';
094340000000       chain ctlkey orctl;
094350000000       *in90 = not %found;
094360000000       if *in90 = *off;
094370000000         except relctl;
094380000000       endif;
094390000000       if *in90 = *on;
094400000000         prtd2 = 'Y';
094410000000         invhd = 'Y';
094420000000         nsicd = 'N';
094430000000         umsdso = 'N';
094440000000       endif;
094450000000       if *in90 = *on;
094460000000         invit = '1';
094470000000       else;
094480000000         if invit = *blank;
094490000000           invit = '1';
094500000000         endif;
094510000000       endif;
094520000000       *in24 = (invhd = 'N');
094530000000       //
094540000000       // check reprint
094550000000       status = '3';
094560000000       *in76 = (ldrprt = 'Y');                                                  // =
094570000000      /end-free
094580000000     C   76              if        ldcrst = *blanks
094590000000      /free
094600000000         status = '4';
094610000000       else;
094620000000         status = ldcrst;
094630000000       endif;
094640000000       //
094650000000       //* if bill code filled in change status to 4
094660000000       if ldblcd <> *blanks;
094670000000         status = '4';
094680000000       endif;
094690000000       //
094700000000       //* chain to order entry options (cont...)
094710000000       ctlnm = 'OPTIONX';
094720000000       chain(n) ctlkey orctl;
094730000000       *in94 = not %found;
094740050615       clear xxcihc;                               // #*9j
094750050615       if *in94 = *off;                            // #*9j
094760050615         xxcihc = cinvhc;                          // #*9j
094770050615       endif;                                      // #*9j
094780000000       //
094790000000       // build setll keys for alt index files 1 and 3
094800000000       //
094810000000       // alt. index 1 key - type/status/wh/co/order
094820000000       if *inu1 = *on;
094830000000         //
094840000000         if ldortp = 'R';
094850000000           type1 = 'R';
094860000000         else;
094870000000           type1 = 'I';
094880000000         endif;
094890000000         //
094900000000         stat1 = status;
094910000000         whse1 = ldwhse;
094920000000         ord1 = ldford;
094930000000         comp1 = ldcomp;
094940000000       endif;
094950000000       //
094960000000       // alt. index 3 key - wh/route/stop/co/order
094970000000       if *inu2 = *on;
094980000000         whse3 = ldwhse;
094990000000         rte3 = ldrte;
095000000000      /end-free
095010000000     C                   move      '000'         rstp3
095020000000      /free
095030000000         ord3 = ldford;
095040000000         comp3 = ldcomp;
095050000000       endif;
095060000000       //
095070000000       *in99 = *on;
095080000000       //----------------------------------------------------
095090000000       // check system options to determine if hazmat is
095100000000       // being used  - hazmat field
095110000000       %subst(ctlky:1:8) = '00XAOPTI';
095120000000       %subst(ctlky:9:3) = 'ONS';
095130000000       chain ctlky orctl;
095140000000       *in90 = not %found;
095150000000       if *in90 = *off;
095160000000         except relctl;
095170000000       endif;
095180000000       //
095190000000       // if gst is used, get tax id number
095200000000       @txid# = *blanks;
095210000000       @txhed = *blanks;
095220000000       if ugptxo = 'Y';
095230000000         if txidno <> *blanks;
095240000000           @txid# = txidno;
095250000000           @txhed = txhedo;
095260000000      /end-free
095270000000     C     @txhed        cat       ':':1         @txln1
095280000000     C     @txln1        cat       @txid#:1      @txlin
095290000000      /free
095300000000         endif;
095310000000       endif;
095320000000       //
095330000000       //* retrieve ic record
095340000000       iclive = 'N';
095350000000       *in70 = *off;
095360000000       %subst(ctlky:1:4) = '00IC';
095370000000       %subst(ctlky:5:7) = 'OPTIONS';
095380000000       chain ctlky orctl;
095390000000       *in90 = not %found;
095400000000       if *in90 = *off;
095410000000         except relctl;
095420000000         if iclivo = 'Y';
095430000000           *in70 = *on;
095440000000           iclive = 'Y';
095450000000           @dftcr = curdfo;
095460000000           //
095470000000           //* retrieve the local currency symbol and description
095480000000           %subst(ctlky:1:8) = #curr;
095490000000           %subst(ctlky:9:3) = @dftcr;
095500000000           chain ctlky orctl;
095510000000           *in90 = not %found;
095520000000           if *in90 = *off;
095530000000             except relctl;
095540000000             @@symo = ccsymo;
095550000000             @dsymo = ccsymo;
095560000000           endif;
095570000000           //* retrieve ic company options recrods
095580000000           if icmlto = 'Y';
095590000000             xxcom = ldcomp;
095600000000             xxapp = 'IC';
095610000000             xxkey = 'OPTIONS';
095620000000             chain ctlky orctl;
095630000000             *in90 = not %found;
095640000000             if *in90 = *off;
095650000000               except relctl;
095660000000               @dftcr = curcoo;
095670000000             endif;
095680000000           endif;
095690000000           //
095700000000           //* retrieve currency information
095710000000           xxcom = *zeros;
095720000000           xxapp = 'IC';
095730000000           %subst(xxkey:1:4) = 'CURR';
095740000000           %subst(xxkey:5:3) = @dftcr;
095750000000           chain ctlky orctl;
095760000000           *in90 = not %found;
095770000000           if *in90 = *off;
095780000000             except relctl;
095790000000             @@symo = ccsymo;
095800000000             @dsymo = ccsymo;
095810000000           endif;
095820000000           if icopen <> 'Y';
095830000000             open icordt;
095840000000             open icorhd;
095850000000             icopen = 'Y';
095860000000           endif;
095870000000         endif;
095880000000       endif;
095890000000       //
095900000000       // check to see if work orders is installed
095910000000       xxcom = *zeros;
095920000000       xxapp = 'WO';
095930000000       xxkey = 'OPTIONS';
095940000000       chain(n) ctlky orctl;
095950000000       *in90 = not %found;
095960000000       if *in90 = *off;
095970000000         @@woyn = 'Y';
095980000000       endif;
095990000000       //
096000000000       // call oe530 to see if need to release orders
096010000000       // if bill code is is prompt
096020000000       if ldblcd = *blanks;
096030000000         p1cono = %editc(ldcomp:'X');
096040031217         //p1hlcd = cinvhc;                                #*8q del
096050031217         p1hlcd = xxcihc;                                  // #*8q
096060000000         p1whid = ldwhse;
096070000000         OE530 ( p1cono : p1hlcd : p1whid );
096080000000       endif;
096090000000       //
096100000000       //* if consolidating invoices seton 42
096110000000       if ldblcd <> *blanks;
096120000000         *in42 = *on;
096130000000       endif;
096140000000       first1 = ' ';
096150000000       //
096160000000       // convert lda from string to numberic
096170000000       if ldcndt <> *blanks
096180000000         and ldcndt <> *zeros;
096190000000      /end-free
096200000000     C                   move      ldcndt        l#cndt
096210000000      /free
096220000000         if ldcncc = *blanks
096230000000           or ldcncc = *zeros;
096240000000           // get century for cancel date
096250000000      /end-free
096260000000     C                   movel     l#cndt        nyr
096270000000      /free
096280000000           exsr $centy;
096290000000           xxcncc = ncnt;
096300000000         else;
096310000000      /end-free
096320000000     C                   movel     ldcncc        xxcncc
096330000000      /free
096340000000         endif;
096350000000       endif;
096360000000       // customer number
096370000000       if ldcsno <> *blanks;
096380000000      /end-free
096390000000     C                   move      ldcsno        l#csno
096400000000      /free
096410000000       endif;
096420000000       // customer commitment code
096430000000       if ldcmcd <> *blanks;
096440000000      /end-free
096450000000     C                   move      ldcmcd        l#cmcd
096460000000      /free
096470000000       endif;
096480000000       //
096490000000       //  open iccsms if ic live and vertex installed
096500000000       @iccsm = *blanks;
096510000000       if iclive = 'Y'
096520000000         or uvrtxo = 'Y';
096530000000         open iccsms;
096540000000         @iccsm = 'Y';
096550000000       endif;
096560000000       //
096570000000       // determine today's date
096580000000       newdt = udate;
096590000000       exsr $centy;
096600000000      /end-free
096610000000     C     newdt         mult      10000.01      today
096620000000     C                   movel     ncnt          today
096630000000      /free
096640000000       //
096650000000       %subst(@@usid:1:8) = 'SYSDEFLT';
096660000000       chain uz0key usrfc;
096670000000       *in90 = not %found;
096680000000       //
096690000000       d@t1 = udate;
096700000000       exsr $d@t1;
096710000000       ud@te = d@t2;
096720000000       //
096730000000       endsr;
096740000000       //**************************************************** $cusum
096750000000       begsr $cusum;
096760000000       //
096770000000       //* check if customer u/m is an item master u/m
096780000000       if odcoum = imunm1
096790000000         or odcoum = imunm2
096800000000         or odcoum = imunm3;
096810000000         leavesr;
096820000000       endif;
096830000000       //
096840000000       //* check if customer u/m is equal to blanks
096850000000       if odcoum = *blanks;
096860000000         leavesr;
096870000000       endif;
096880000000       //
096890000000       //* check if qty order equals qty shipped
096900000000       if odqtor = odqtsh;
096910000000         coqtsh = odcqto;
096920000000         coqtor = odcqto;
096930000000       else;
096940000000         //
096950000000         //* perform conversion to additional u/m for shipped
096960000000         //* and backorder amounts
096970000000         a0itno = oditno;
096980000000         a0unms = odcoum;
096990000000         chain a0itno itmst;
097000000000         *in94 = not %found;
097010000000         chain au0key imaum;
097020000000         *in94 = not %found;
097030000000         if *in94 = *off;
097040000000           coqtor = odcqto;
097050000000           //
097060000000           //* convert quantity shipped
097070000000           coqtsh = *zeros;
097080000000           if odqtsh <> *zeros;
097090000000             if aucum1 <> *zeros;
097100000000      /end-free
097110000000     C     odqtsh        div(h)    auaumf        coqtsh
097120000000      /free
097130000000             else;
097140000000      /end-free
097150000000     C     odqtsh        mult(h)   auaumf        coqtsh
097160000000      /free
097170000000             endif;
097180000000           endif;
097190000000         endif;
097200000000       endif;
097210000000       //
097220000000       //* set on print indicator for customer u/m
097230000000       if invopt <> 'O';
097240000000         *in56 = *on;
097250000000       endif;
097260000000       if invopt = 'C';
097270000000         *in57 = *on;
097280000000         if skpprt <> 'Y';
097290000000           except detln1;
097300000000         endif;
097310000000       endif;
097320000000       //
097330000000       endsr;
097340000000       //**************************************************** $cpuom
097350000000       begsr $cpuom;
097360000000       //
097370000000       //* check if the u/m is from itmst or imaum
097380000000       a0itno = oditno;
097390000000       a0unms = odcoum;
097400000000       chain a0itno itmst;
097410000000       *in91 = not %found;
097420000000       if odcoum = *blanks;
097430000000         @@wrk1 = *zeros;
097440000000      /end-free
097450000000     C     odaslp        mult      impumc        @@wrk1
097460000000      /free
097470000000         if imunm2 = odunms;
097480000000           if imumc1 <> *zeros;
097490000000      /end-free
097500000000     C                   div       imumc1        @@wrk1
097510000000      /free
097520000000           endif;
097530000000         endif;
097540000000         if imunm3 = odunms;
097550000000           if imumc2 <> *zeros;
097560000000      /end-free
097570000000     C                   div       imumc2        @@wrk1
097580000000      /free
097590000000           endif;
097600000000         endif;
097610000000         //
097620000000      /end-free
097630000000     C                   z-add     @@wrk1        @@aslp
097640000000      /free
097650000000         @@prum = odunms;
097660000000         //
097670000000       else;
097680000000         //
097690000000         //* chain to additional u/m file
097700000000         chain au0key imaum;
097710000000         *in91 = not %found;
097720000000         //
097730000000         if aucum1 <> *zeros;
097740000000           if aucum1 = 1;
097750000000             @@unms = imunm1;
097760000000           endif;
097770000000           if aucum1 = 2;
097780000000             @@unms = imunm2;
097790000000           endif;
097800000000           if aucum1 = 3;
097810000000             @@unms = imunm3;
097820000000           endif;
097830000000         else;
097840000000           //
097850000000           if aucum2 = 1;
097860000000             @@unms = imunm1;
097870000000           endif;
097880000000           if aucum2 = 2;
097890000000             @@unms = imunm2;
097900000000           endif;
097910000000           if aucum2 = 3;
097920000000             @@unms = imunm3;
097930000000           endif;
097940000000         endif;
097950000000         //
097960000000         @@wrk1 = *zeros;
097970000000      /end-free
097980000000     C     odaslp        mult      impumc        @@wrk1
097990000000      /free
098000000000         if imunm2 = @@unms;
098010000000           if imumc1 <> *zeros;
098020000000      /end-free
098030000000     C                   div       imumc1        @@wrk1
098040000000      /free
098050000000           endif;
098060000000         endif;
098070000000         if imunm3 = @@unms;
098080000000           if imumc2 <> *zeros;
098090000000      /end-free
098100000000     C                   div       imumc2        @@wrk1
098110000000      /free
098120000000           endif;
098130000000         endif;
098140000000         //
098150000000         if aucum1 <> *zeros;
098160000000      /end-free
098170000000     C                   mult      auaumf        @@wrk1
098180000000      /free
098190000000         else;
098200000000           if auaumf <> *zeros;
098210000000      /end-free
098220000000     C                   div       auaumf        @@wrk1
098230000000      /free
098240000000           endif;
098250000000         endif;
098260000000         //
098270000000      /end-free
098280000000     C                   z-add     @@wrk1        @@aslp
098290000000      /free
098300000000         @@prum = odcoum;
098310000000         //
098320000000       endif;
098330000000       //
098340000000       endsr;
098350000000       //**************************************************** $ctuom
098360000000       begsr $ctuom;
098370000000       //
098380000000       //* check if the u/m is from itmst or imaum
098390000000       a0itno = oditno;
098400000000       a0unms = odcoum;
098410000000       chain a0itno itmst;
098420000000       *in91 = not %found;
098430000000       if odcoum = *blanks;
098440000000         @@wrk1 = *zeros;
098450000000      /end-free
098460000000     C     odaspt        mult      impumc        @@wrk1
098470000000      /free
098480000000         if imunm2 = odunms;
098490000000           if imumc1 <> *zeros;
098500000000      /end-free
098510000000     C                   div       imumc1        @@wrk1
098520000000      /free
098530000000           endif;
098540000000         endif;
098550000000         if imunm3 = odunms;
098560000000           if imumc2 <> *zeros;
098570000000      /end-free
098580000000     C                   div       imumc2        @@wrk1
098590000000      /free
098600000000           endif;
098610000000         endif;
098620000000         //
098630000000         @@aspt = @@wrk1;
098640000000         @@prum = odunms;
098650000000         //
098660000000       else;
098670000000         //
098680000000         //* chain to additional u/m file
098690000000         chain au0key imaum;
098700000000         *in91 = not %found;
098710000000         //
098720000000         if aucum1 <> *zeros;
098730000000           if aucum1 = 1;
098740000000             @@unms = imunm1;
098750000000           endif;
098760000000           if aucum1 = 2;
098770000000             @@unms = imunm2;
098780000000           endif;
098790000000           if aucum1 = 3;
098800000000             @@unms = imunm3;
098810000000           endif;
098820000000         else;
098830000000           //
098840000000           if aucum2 = 1;
098850000000             @@unms = imunm1;
098860000000           endif;
098870000000           if aucum2 = 2;
098880000000             @@unms = imunm2;
098890000000           endif;
098900000000           if aucum2 = 3;
098910000000             @@unms = imunm3;
098920000000           endif;
098930000000         endif;
098940000000         //
098950000000         @@wrk1 = *zeros;
098960000000      /end-free
098970000000     C     odaspt        mult      impumc        @@wrk1
098980000000      /free
098990000000         if imunm2 = @@unms;
099000000000           if imumc1 <> *zeros;
099010000000      /end-free
099020000000     C                   div       imumc1        @@wrk1
099030000000      /free
099040000000           endif;
099050000000         endif;
099060000000         if imunm3 = @@unms;
099070000000           if imumc2 <> *zeros;
099080000000      /end-free
099090000000     C                   div       imumc2        @@wrk1
099100000000      /free
099110000000           endif;
099120000000         endif;
099130000000         //
099140000000         if aucum1 <> *zeros;
099150000000      /end-free
099160000000     C                   mult      auaumf        @@wrk1
099170000000      /free
099180000000         else;
099190000000           if auaumf <> *zeros;
099200000000      /end-free
099210000000     C                   div       auaumf        @@wrk1
099220000000      /free
099230000000           endif;
099240000000         endif;
099250000000         //
099260000000         @@aspt = @@wrk1;
099270000000         @@prum = odcoum;
099280000000         //
099290000000       endif;
099300000000       //
099310000000       endsr;
099320000000       //
099330000000       //**************************************************** $extic
099340000000       begsr $extic;
099350000000       //
099360000000       //* fill in warehouse
099370000000       i0whid = *blanks;
099380000000       if wseico = 'Y';
099390000000         %subst(ctlky:1:9) = #whkey;
099400000000         %subst(ctlky:10:2) = odwhid;
099410000000         chain ctlky orctl;
099420000000         *in90 = not %found;
099430000000         if *in90 = *off;
099440000000           except relctl;
099450000000         endif;
099460000000         if wheico = 'Y';
099470000000           i0whid = odwhid;
099480000000         endif;
099490000000       endif;
099500000000       //
099510000000       //* retrieve customer master & item master
099520000000       chain(n) cm0ky1 cusmsr;
099530000000       *in90 = not %found;
099540000000       chain itnoex itmstr;
099550000000       *in90 = not %found;
099560000000       //
099570000000       //* find the first record that matches criteria
099580000000       //--------------------------*
099590000000      /end-free
099600000000     C     rechn         tag
099610000000      /free
099620000000       //--------------------------*
099630000000       //
099640000000       //* chain out with wh/item/customer
099650000000       if whitcs <> 'Y';
099660000000         if cmexdf = 'Y'
099670000000           and imexdf = 'Y';
099680000000           //
099690000000           i0itno = itnoex;
099700000000           i0igid = *blanks;
099710000000           //
099720000000           //* check if company/customer is used
099730000000           if cseico = 'Y';
099740000000             i0cono = odcono;
099750000000             i0csno = odcsno;
099760000000           else;
099770000000             i0cono = *zeros;
099780000000             i0csno = *zeros;
099790000000           endif;
099800000000           //
099810000000           i0cgid = *blanks;
099820000000           whitcs = 'Y';
099830000000           //
099840000000           //* retrieve first record
099850000000           chain in0key iaeicr;
099860000000           *in33 = not %found;
099870000000           if *in33 = *off;
099880000000      /end-free
099890000000     C                   goto      #found
099900000000      /free
099910000000           else;
099920000000      /end-free
099930000000     C                   goto      rechn
099940000000      /free
099950000000           endif;
099960000000         endif;
099970000000         whitcs = 'Y';
099980000000       endif;
099990000000       //
100000000000       //* chain out with wh/item group/customer
100010000000       if whigcs <> 'Y';
100020000000         if imigid <> *blanks
100030000000           and cmexdf = 'Y';
100040000000           //
100050000000           i0itno = *blanks;
100060000000           //
100070000000           //* check if item eic group is used
100080000000           if igeico = 'Y';
100090000000             i0igid = imigid;
100100000000           else;
100110000000             i0igid = *blanks;
100120000000           endif;
100130000000           //
100140000000           //* check if company/customer is used
100150000000           if cseico = 'Y';
100160000000             i0cono = odcono;
100170000000             i0csno = odcsno;
100180000000           else;
100190000000             i0cono = *zeros;
100200000000             i0csno = *zeros;
100210000000           endif;
100220000000           //
100230000000           i0cgid = *blanks;
100240000000           whigcs = 'Y';
100250000000           //
100260000000           //* retrieve first record
100270000000           chain in0key iaeicr;
100280000000           *in33 = not %found;
100290000000           if *in33 = *off;
100300000000      /end-free
100310000000     C                   goto      #found
100320000000      /free
100330000000           else;
100340000000      /end-free
100350000000     C                   goto      rechn
100360000000      /free
100370000000           endif;
100380000000         endif;
100390000000         whigcs = 'Y';
100400000000       endif;
100410000000       //
100420000000       //* chain out with wh/item/customer group
100430000000       if whitcg <> 'Y';
100440000000         if cmcgid <> *blanks
100450000000           and imexdf = 'Y';
100460000000           //
100470000000           i0itno = itnoex;
100480000000           i0igid = *blanks;
100490000000           //
100500000000           i0cono = *zeros;
100510000000           i0csno = *zeros;
100520000000           //
100530000000           //* check if customer eic group is used
100540000000           if cgeico = 'Y';
100550000000             i0cgid = cmcgid;
100560000000           else;
100570000000             i0cgid = *blanks;
100580000000           endif;
100590000000           whitcg = 'Y';
100600000000           //
100610000000           //* retrieve first record
100620000000           chain in0key iaeicr;
100630000000           *in33 = not %found;
100640000000           if *in33 = *off;
100650000000      /end-free
100660000000     C                   goto      #found
100670000000      /free
100680000000           else;
100690000000      /end-free
100700000000     C                   goto      rechn
100710000000      /free
100720000000           endif;
100730000000         endif;
100740000000         whitcg = 'Y';
100750000000       endif;
100760000000       //
100770000000       //* chain out with wh/item group/customer group
100780000000       if whigcg <> 'Y';
100790000000         if cmcgid <> *blanks
100800000000           and imigid <> *blanks;
100810000000           //
100820000000           i0itno = *blanks;
100830000000           //
100840000000           //* check if item eid group is used
100850000000           if igeico = 'Y';
100860000000             i0igid = imigid;
100870000000           else;
100880000000             i0igid = *blanks;
100890000000           endif;
100900000000           //
100910000000           i0cono = *zeros;
100920000000           i0csno = *zeros;
100930000000           //
100940000000           //* check if customer eid group is used
100950000000           if cgeico = 'Y';
100960000000             i0cgid = cmcgid;
100970000000           else;
100980000000             i0cgid = *blanks;
100990000000           endif;
101000000000           whigcg = 'Y';
101010000000           //
101020000000           //* retrieve first record
101030000000           chain in0key iaeicr;
101040000000           *in33 = not %found;
101050000000           if *in33 = *off;
101060000000      /end-free
101070000000     C                   goto      #found
101080000000      /free
101090000000           else;
101100000000      /end-free
101110000000     C                   goto      rechn
101120000000      /free
101130000000           endif;
101140000000         endif;
101150000000         whigcg = 'Y';
101160000000       endif;
101170000000       //
101180000000       //* chain out with wh/item
101190000000       if whitem <> 'Y';
101200000000         i0itno = itnoex;
101210000000         i0igid = *blanks;
101220000000         i0cono = *zeros;
101230000000         i0csno = *zeros;
101240000000         i0cgid = *blanks;
101250000000         whitem = 'Y';
101260000000         //
101270000000         //* retrieve first record
101280000000         chain in0key iaeicr;
101290000000         *in33 = not %found;
101300000000         if *in33 = *off;
101310000000      /end-free
101320000000     C                   goto      #found
101330000000      /free
101340000000         else;
101350000000      /end-free
101360000000     C                   goto      rechn
101370000000      /free
101380000000         endif;
101390000000         whitem = 'Y';
101400000000       endif;
101410000000       //
101420000000       //* chain out with wh/item group
101430000000       if whigrp <> 'Y';
101440000000         if imigid <> *blanks;
101450000000           //
101460000000           i0itno = *blanks;
101470000000           //
101480000000           //* check if item eic group is used
101490000000           if igeico = 'Y';
101500000000             i0igid = imigid;
101510000000           else;
101520000000             i0igid = *blanks;
101530000000           endif;
101540000000           //
101550000000           i0cono = *zeros;
101560000000           i0csno = *zeros;
101570000000           i0cgid = *blanks;
101580000000           whigrp = 'Y';
101590000000           //
101600000000           //* retrieve first record
101610000000           chain in0key iaeicr;
101620000000           *in33 = not %found;
101630000000           if *in33 = *off;
101640000000      /end-free
101650000000     C                   goto      #found
101660000000      /free
101670000000           else;
101680000000      /end-free
101690000000     C                   goto      rechn
101700000000      /free
101710000000           endif;
101720000000         endif;
101730000000         whigrp = 'Y';
101740000000       endif;
101750000000       //
101760000000       norecs = 'Y';
101770000000       //------------------------------*
101780000000      /end-free
101790000000     C     #found        tag
101800000000      /free
101810000000       //------------------------------*
101820000000       if norecs = 'Y';
101830000000         leavesr;
101840000000       endif;
101850000000       //
101860000000       @slctd = 'N';
101870000000       @@strt = *zeros;
101880000000       @@endd = *zeros;
101890000000       //
101900000000       //* load all the records into the subfile
101910000000       dow *in33 = *off;
101920000000         //
101930000000         //* filter out values
101940000000         if inwhid <> i0whid
101950000000           or initno <> i0itno
101960000000           or inigid <> i0igid
101970000000           or incono <> i0cono
101980000000           or incsno <> i0csno
101990000000           or incgid <> i0cgid;
102000000000           leave;
102010000000         endif;
102020000000         //
102030000000         //* determine if within requested ship date
102040000000         if rqshdt <= endate
102050000000           and rqshdt >= stdate;
102060000000           if incmpr = ' '
102070000000             or incmpr = 'I';
102080000000             //
102090000000             if @slctd = 'N';
102100000000               @@strt = stdate;
102110000000               @@endd = endate;
102120000000               @slctd = 'Y';
102130000000             endif;
102140000000             //
102150000000             //
102160000000             // check overflow
102170000000             if *inof = *on
102180000000               or *inoe = *on
102190000000               or *inob = *on
102200000000               or *inod = *on;
102210000000               exsr $prtof;
102220000000             endif;
102230000000             //
102240000000             if skpprt <> 'Y';
102250000000               except extic;
102260000000             endif;
102270000000           endif;
102280000000         endif;
102290000000         reade in0key iaeicr;
102300000000         *in33 = %eof;
102310000000       enddo;
102320000000       //
102330000000       //* if showing all qualifying comments, continue
102340000000       //*   checking all possibilities
102350000000       if alqcmo = 'Y';
102360000000         //
102370000000         //* check if all possibilities were checked
102380000000         if whigrp <> 'Y';
102390000000      /end-free
102400000000     C                   goto      rechn
102410000000      /free
102420000000         endif;
102430000000       endif;
102440000000       //
102450000000       endsr;
102460000000       //*************************************************** $oe935
102470000000       begsr $oe935;
102480000000       //
102490000000       //* retrieve warehouse extension record
102500000000       %subst(ctlky:1:9) = #whkyx;
102510000000       %subst(ctlky:10:2) = odwhid;
102520000000       chain ctlky orctl;
102530000000       *in95 = not %found;
102540000000       if *in95 = *on;
102550000000         whgeoc = '000000000';
102560000000       else;
102570000000         except relctl;
102580000000       endif;
102590000000       //
102600000000       //* check for special charges
102610000000       if odlitp = 'C';
102620000000      /end-free
102630000000     C                   goto      spcch
102640000000      /free
102650000000       endif;
102660000000       //
102670000000       if v@tax = *zeros;
102680000000         v@tax = 1;
102690000000       endif;
102700000000       //
102710000000       //* if order amount and order value have been taxed - get out
102720000000       if v@tax > 2;
102730000000         v@tax = 1;
102740000000         leavesr;
102750000000       endif;
102760000000       //---------------------------*
102770000000      /end-free
102780000000     C     retax         tag
102790000000      /free
102800000000       //---------------------------*
102810000000       //
102820000000       //* load values for sub-program call to vertex
102830000000       exsr $intax;
102840000000       //
102850000000       //* load geocodes
102860000000       ljur01 = ohsgeo;
102870000000      /end-free
102880000000     C                   movel     whgeoc        ljur03
102890000000      /free
102900000000       //
102910000000       //* load order information
102920000000       v@rsdt = ohivdt;
102930000000       v@rscc = ohivcc;
102940000000       linv02 = indate;
102950000000       %subst(linv01:5:8) = %editc(ohinno:'X');
102960000000       //
102970000000       //* load customer information
102980000000       v@csno = %editc(ohcsno:'X');
102990000000       %subst(lcus01:1:10) = v@csno;
103000000000       //
103010000000       //* retrieve ship-to record
103020000000       if ohshp# <> *blanks;
103030000000         chain sa0key addrr;
103040000000         *in95 = not %found;
103050000000       endif;
103060000000       if savtsh <> *blanks;
103070000000         %subst(lcus01:11:5) = savtsh;
103080000000       else;
103090000000         if ohshp# <> *blanks;
103100000000           v@shp# = ohshp#;
103110000000           %subst(lcus01:11:5) = v@shp#;
103120000000         endif;
103130000000       endif;
103140000000       //
103150000000       //* load company/division information
103160000000       v@cono = %editc(odcono:'X');
103170000000       %subst(lcom01:1:2) = v@cono;
103180000000       %subst(lcom02:1:2) = odwhid;
103190000000       lcom07 = 'I';
103200000000       lcom08 = 1;
103210000000       ltrn03 = odetsq;
103220000000       %subst(ltrn04:1:4) = 'SALE';
103230000000       //
103240000000       //* load user are if ic is installed or special charge
103250000000       lpro13 = *blanks;
103260000000       if iclive = 'Y';
103270000000         %subst(lpro13:1:3) = @dftcr;
103280000000       endif;
103290000000       if odlitp = 'C';
103300000000      /end-free
103310000000     C     lpro13        cat       #spcch:5      lpro13
103320000000      /free
103330000000       endif;
103340000000       //
103350000000       //* load item information
103360000000       chain oditno itmstr;
103370000000       *in95 = not %found;
103380000000       lpro01 = impdid;
103390000000       //
103400000000       @trdds = *zeros;
103410000000       //
103420000000       if v@tax = 1;
103430000000         lcom03 = '1';
103440000000         lpro07 = odqtsh;
103450000000      /end-free
103460000000     C     ohtdpc        div       100           @wrk54
103470000000     C     odlnam        mult      @wrk54        @trdds
103480000000      /free
103490000000         lpro08 = odlnam - @trdds;
103500000000       endif;
103510000000       //
103520000000       //* fill in line value amount
103530000000       if v@tax = 2;
103540000000         lcom03 = '0';
103550000000         lpro07 = odqtor;
103560000000      /end-free
103570000000     C     ohtdpc        div       100           @wrk54
103580000000     C     odlnvl        mult      @wrk54        @trdds
103590000000      /free
103600000000         lpro08 = odlnvl - @trdds;
103610000000       endif;
103620000000       //
103630000000      /end-free
103640000000     C                   goto      vertx
103650000000      //
103660000000      //* special charges
103670000000      //--------------------------*
103680000000     C     spcch         tag
103690000000      /free
103700000000       //--------------------------*
103710000000       //* retrieve special charge code
103720000000       xxcom = odcono;
103730000000       xxapp = 'OE';
103740000000       %subst(xxkey:1:5) = 'SPCH-';
103750000000       x@spch = oditno;
103760000000       %subst(xxkey:6:2) = x@spch;
103770000000       chain ctlky orctl;
103780000000       *in90 = not %found;
103790000000       if *in90 = *off;
103800000000         except relctl;
103810000000       endif;
103820000000       //
103830000000       //* load values for sub-program call to vertex
103840000000       exsr $intax;
103850000000       lpro01 = sppido;
103860000000       //
103870000000       //* load geocodes
103880000000       ljur01 = ohsgeo;
103890000000      /end-free
103900000000     C                   movel     whgeoc        ljur03
103910000000      /free
103920000000       //
103930000000       //* load order information
103940000000       v@rscc = ohivcc;
103950000000       v@rsdt = ohivdt;
103960000000       linv02 = indate;
103970000000       %subst(linv01:5:8) = %editc(ohinno:'X');
103980000000       //
103990000000       //* load customer information
104000000000       v@csno = %editc(ohcsno:'X');
104010000000       %subst(lcus01:1:10) = v@csno;
104020000000       if ohshp# <> *blanks;
104030000000         chain sa0key addrr;
104040000000         *in95 = not %found;
104050000000       endif;
104060000000       if savtsh <> *blanks;
104070000000         %subst(lcus01:11:5) = savtsh;
104080000000       else;
104090000000         if ohshp# <> *blanks;
104100000000           v@shp# = ohshp#;
104110000000           %subst(lcus01:11:5) = v@shp#;
104120000000         endif;
104130000000       endif;
104140000000       //
104150000000       //* load user are if ic is installed or special charge
104160000000       lpro13 = *blanks;
104170000000       if iclive = 'Y';
104180000000         %subst(lpro13:1:3) = @dftcr;
104190000000       endif;
104200000000       if odlitp = 'C';
104210000000      /end-free
104220000000     C     lpro13        cat       #spcch:5      lpro13
104230000000      /free
104240000000       endif;
104250000000       //
104260000000       //* load company/division information
104270000000       v@cono = %editc(ohcono:'X');
104280000000       %subst(lcom01:1:2) = v@cono;
104290000000       %subst(lcom02:1:2) = ohwhid;
104300000000       lcom03 = '1';
104310000000       lcom07 = 'I';
104320000000       lcom08 = 1;
104330000000       //
104340000000       //* load line item amount information
104350000000       %occur(invl) = 1;
104360000000       v@etsq = odetsq;
104370000000       ltrn03 = v@etsq;
104380000000       %subst(ltrn04:1:4) = 'SALE';
104390000000       lpro07 = 1;
104400000000       lpro08 = odlnvl;
104410000000       //
104420000000      /end-free
104430000000     C                   goto      vertx
104440000000      //--------------------------*
104450000000     C     vertx         tag
104460000000      /free
104470000000       //--------------------------*
104480030911       //                                                           #*8p
104490030911       // If EP is live then only update after authorization check  #*8p
104500030911         if eplive = 'Y' and @uptax = 'N';                        //#*8p
104510030911           lcom03 = '0';                                          //#*8p
104520030911         endif;                                                   //#*8p
104530000000       //
104540000000       //* call tax program
104550000000       OE935 ( ljur01 : ljur02 : ljur03 :
104560000000       ljur04 : ljur05 : ljur06 : linv01 :
104570000000       linv02 : linv03 : linv04 : linv05 :
104580000000       linv06 : lcus01 : lcus02 : lcus03 :
104590000000       lcus04 : lcom01 : lcom02 : lcom03 :
104600000000       lcom04 : lcom05 : lcom06 : lcom07 :
104610000000       lcom08 : lcom09 : invl : lactc : lshto :
104620000000       lshtzp : lshtct : lshtco : lshtji :
104630000000       lfill1 : lshrc : lshfr : lsfrzp : lsfrct
104640000000       : lsfrco : lsfrji : lfill2 : lsfrrt :
104650000000       lorst : lorzp : lorct : lorco : lorji :
104660000000       lfill3 : lorrtc : lstor : lfill4 );
104670000000       //
104680000000       //* check if special charge code
104690000000       if odlitp = 'C';
104700000000      /end-free
104710000000     C                   goto      spch1
104720000000      /free
104730000000       endif;
104740000000       //
104750000000       //* save the tax amount (order value and line amount)
104760000000       if v@tax = 1;
104770000000      /end-free
104780000000     C                   z-add     linv04        odltxa
104790000000     C                   add       linv04        v@txam
104800000000      /free
104810000000       endif;
104820000000       //
104830000000       if v@tax = 2;
104840000000      /end-free
104850000000     C                   z-add     linv04        odotxa
104860000000     C                   add       linv04        v@otxa
104870000000      /free
104880000000       endif;
104890000000       //
104900000000       //* if qty ordered = qty shipped move in line amount
104910000000       if odqtor = odqtsh;
104920000000         odotxa = odltxa;
104930000000      /end-free
104940000000     C                   add       odltxa        v@otxa
104950000000      /free
104960000000         v@tax = 1;
104970000000         leavesr;
104980000000       endif;
104990000000       //
105000000000       //* get out of subroutine if tax cals are done
105010000000      /end-free
105020000000     C                   add       1             v@tax
105030000000      /free
105040000000       if v@tax <= 2;
105050000000      /end-free
105060000000     C                   goto      retax
105070000000      /free
105080000000       endif;
105090000000       //
105100000000       v@tax = 1;
105110000000       leavesr;
105120000000       //
105130000000       //* update for special charges
105140000000       //---------------------------*
105150000000      /end-free
105160000000     C     spch1         tag
105170000000      //---------------------------*
105180000000     C                   z-add     linv04        odltxa
105190000000     C                   add       linv04        v@txam
105200000000     C                   z-add     linv04        odotxa
105210000000     C                   add       linv04        v@otxa
105220000000      /free
105230000000       leavesr;
105240000000       //
105250000000       endsr;
105260000000       //*************************************************** $intax
105270000000       begsr $intax;
105280000000       //
105290000000       //* initialize tax fields for vertex
105300000000       // jurisdiction data
105310000000       ljur01 = *zeros;
105320000000       ljur02 = *blank;
105330000000       ljur04 = *blank;
105340000000       ljur06 = *blank;
105350000000       //
105360000000       // invoice data
105370000000       linv01 = *blanks;
105380000000       linv02 = *zeros;
105390000000       linv03 = *zeros;
105400000000       linv04 = *zeros;
105410000000       linv05 = *zeros;
105420000000       linv06 = *blank;
105430000000       //
105440000000       // customer data
105450000000       lcus01 = *blanks;
105460000000       lcus02 = *blanks;
105470000000       lcus03 = *blanks;
105480000000       lcus04 = *blanks;
105490000000       //
105500000000       // company data
105510000000       lcom01 = *blanks;
105520000000       lcom02 = *blanks;
105530000000       lcom03 = *blanks;
105540000000       lcom04 = *blanks;
105550000000       lcom05 = *blanks;
105560000000       lcom06 = *blanks;
105570000000       lcom07 = *blanks;
105580000000       lcom08 = *zeros;
105590000000       lcom09 = *blanks;
105600000000       //
105610000000       // transaction data
105620000000       ltrn01 = *blank;
105630000000       ltrn02 = *blank;
105640000000       ltrn03 = *zeros;
105650000000       ltrn04 = *blanks;
105660000000       ltrn05 = *blanks;
105670000000       ltrn06 = *blank;
105680000000       ltrn07 = *zero;
105690000000       //
105700000000       // product data
105710000000       lpro01 = *blanks;
105720000000       lpro02 = *blank;
105730000000       lpro03 = *blank;
105740000000       lpro04 = *blank;
105750000000       lpro05 = *blank;
105760000000       lpro06 = *blank;
105770000000       lpro07 = *zero;
105780000000       lpro08 = *zero;
105790000000       lpro09 = *blank;
105800000000       lpro10 = *blank;
105810000000       lpro11 = *blank;
105820000000       lpro12 = *blank;
105830000000       //
105840000000       // state data
105850000000       lsta01 = *zero;
105860000000       lsta02 = *zero;
105870000000       lsta03 = *blank;
105880000000       lsta04 = *zero;
105890000000       lsta05 = *zero;
105900000000       lsta06 = *blank;
105910000000       lsta07 = *blank;
105920000000       lsta08 = *zero;
105930000000       lsta09 = *blank;
105940000000       // county data
105950000000       lcou01 = *zero;
105960000000       lcou02 = *zero;
105970000000       lcou03 = *blank;
105980000000       lcou04 = *zero;
105990000000       lcou05 = *zero;
106000000000       lcou06 = *blank;
106010000000       lcou07 = *blank;
106020000000       lcou08 = *zero;
106030000000       lcou09 = *blank;
106040000000       // city data
106050000000       lcit01 = *zero;
106060000000       lcit02 = *zero;
106070000000       lcit03 = *blank;
106080000000       lcit04 = *zero;
106090000000       lcit05 = *zero;
106100000000       lcit06 = *blank;
106110000000       lcit07 = *blank;
106120000000       lcit08 = *zero;
106130000000       lcit09 = *blank;
106140000000       // district data
106150000000       ldis01 = *zero;
106160000000       ldis02 = *zero;
106170000000       ldis03 = *blank;
106180000000       ldis04 = *zero;
106190000000       ldis05 = *zero;
106200000000       ldis06 = *blank;
106210000000       ldis07 = *blank;
106220000000       ldis08 = *zero;
106230000000       ldis09 = *blank;
106240000000       ldis10 = *blank;
106250000000       //
106260000000       // intra-state data
106270000000       lspe01 = *zero;
106280000000       lspe02 = *zero;
106290000000       lspe03 = *zero;
106300000000       lspe04 = *blanks;
106310000000       lspe05 = *blanks;
106320000000       lspe06 = *zero;
106330000000       lspe07 = *zero;
106340000000       lspe08 = *zero;
106350000000       lspe09 = *blanks;
106360000000       lspe10 = *blanks;
106370000000       lspe11 = *zero;
106380000000       lspe12 = *zero;
106390000000       lspe13 = *zero;
106400000000       lspe14 = *blanks;
106410000000       lspe15 = *blanks;
106420000000       lspe16 = *zero;
106430000000       //
106440000000       // parm area for sub if geocodes not passed
106450000000       lactc = *blanks;
106460000000       lshto = *blanks;
106470000000       lshtzp = *blanks;
106480000000       lshtct = *blanks;
106490000000       lshtco = *blanks;
106500000000       lshtji = *blanks;
106510000000       lfill1 = *blanks;
106520000000       lshrc = *blanks;
106530000000       lshfr = *blanks;
106540000000       lsfrzp = *blanks;
106550000000       lsfrct = *blanks;
106560000000       lsfrco = *blanks;
106570000000       lsfrji = *blanks;
106580000000       lfill2 = *blanks;
106590000000       lsfrrt = *blanks;
106600000000       lorst = *blanks;
106610000000       lorzp = *blanks;
106620000000       lorct = *blanks;
106630000000       lorco = *blanks;
106640000000       lorji = *blanks;
106650000000       lfill3 = *blanks;
106660000000       lorrtc = *blanks;
106670000000       lstor = *blanks;
106680000000       lretc = *blanks;
106690000000       lfill4 = *blanks;
106700000000       //
106710000000       endsr;
106720000000       //******************************************************** $ic001
106730000000       begsr $ic001;
106740000000       // call the currency conversion sub-program
106750000000       //
106760000000       // set program call flag
106770000000       ic001 = 'Y';
106780000000       @prtcc = ohrtcc;
106790000000       @prtdt = ohrtdt;
106800000000       //
106810000000       // move to alpha array
106820000000       ota = *blanks;
106830000000       ina = *blanks;
106840000000       if @pshdn <> 'Y';
106850000000         for @x = 1 to @pnovl;
106860000000           @@numb = inn(@x);
106870000000           ina(@x) = @@alph;
106880000000         endfor;
106890000000       endif;
106900000000       //
106910000000       // call subprogram
106920000000       IC000 ( @pshdn : @plcur : @pcltp :
106930000000       @pcurr : @pexch : @prtcc : @prtdt :
106940000000       @pexrt : @pnovl : ina : len : err : ota );
106950000000       //
106960000000       // move to numeric array
106970000000       if @pshdn <> 'Y';
106980000000         otn = *zeros;
106990000000         for @x = 1 to @pnovl;
107000000000           @@alph = ota(@x);
107010000000           otn(@x) = @@numb;
107020000000         endfor;
107030000000       endif;
107040000000       //
107050000000       endsr;
107060000000       //****************************************************************
107070000000       begsr $gtadt;
107080000000       //****************************************************************
107090000000       //
107100000000       if wpc(x) <> 0;
107110000000         // get appropiate net due date
107120000000         if prxcd <> 'Y';
107130000000           gdatep = %editc(netdtx:'X');
107140000000           jdayp = '000000000';
107150000000           XADAT ( jdayp : gdatep : shtdnp );
107160000000           //
107170000000      /end-free
107180000000     C                   move      jdayp         jday#
107190000000     C                   add       wdy(x)        jday#
107200000000      /free
107210000000       //
107220000000           gdatep = '00000000';
107230000000           jdayp = %editc(jday#:'X');
107240000000           XADAT ( jdayp : gdatep : shtdnp );
107250000000           //
107260000000      /end-free
107270000000     C                   move      gdatep        @ntdte
107280000000      /free
107290000000         else;
107300000000           nxprdt = netdtx;
107310000000           exsr $gtprx;
107320000000           @ntdte = nxprdt;
107330000000         endif;
107340000000         //
107350000000         //
107360000000         // get appropiate cash discount date
107370000000         if *in17 = *on;
107380000000           if prxcd <> 'Y';
107390000000             gdatep = %editc(duedtx:'X');
107400000000             jdayp = '000000000';
107410000000             XADAT ( jdayp : gdatep : shtdnp );
107420000000             //
107430000000      /end-free
107440000000     C                   move      jdayp         jday#
107450000000     C                   add       wdy(x)        jday#
107460000000      /free
107470000000       //
107480000000             gdatep = '00000000';
107490000000             jdayp = %editc(jday#:'X');
107500000000             XADAT ( jdayp : gdatep : shtdnp );
107510000000             //
107520000000      /end-free
107530000000     C                   move      gdatep        @cdsdt
107540000000      /free
107550000000           else;
107560000000             nxprdt = duedtx;
107570000000             exsr $gtprx;
107580000000             @cdsdt = nxprdt;
107590000000           endif;
107600000000           //
107610000000         else;
107620000000           @cdsdt = duedtx;
107630000000         endif;
107640000000       endif;
107650000000       //
107660000000       endsr;
107670000000       //*************************************************************** $gtprx
107680000000       // $gtprx - calculate the next split prox date
107690000000       //
107700000000       begsr $gtprx;
107710000000       //
107720000000       wkpmn = nxpmn;
107730000000      /end-free
107740000000     C                   add       wdy(x)        wkpmn
107750000000      /free
107760000000       dow wkpmn > 12;
107770000000      /end-free
107780000000     C     wkpmn         sub       12            wkpmn
107790000000     C                   add       1             nxpyr
107800000000      /free
107810000000       enddo;
107820000000      /end-free
107830000000     C                   z-add     wkpmn         nxpmn
107840000000      /free
107850000000       //
107860000000       // get century for next prox date
107870000000       compny = 0;
107880000000       applic = 'XA';
107890000000       ctlnm = '@CENTRY';
107900000000       chain ctlkey orctl;
107910000000       *in90 = not %found;
107920000000       if *in90 = *off;
107930000000         except relctl;
107940000000       endif;
107950000000       if nxpyr > 50;
107960000000         nxpcc = curcc;
107970000000       else;
107980000000         nxpcc = nxtcc;
107990000000       endif;
108000000000       //
108010000000       // check to see if this is a leap year
108020000000      /end-free
108030000000     C     nxpyr         div       4             leapyr
108040000000     C                   mvr                     leapyr
108050000000      /free
108060000000       //
108070000000       m = nxpmn;
108080000000       if leapyr = 0;
108090000000         if nxpdy > dys(m);
108100000000           nxpdy = dys(m);
108110000000         endif;
108120000000       else;
108130000000         if nxpdy > dyx(m);
108140000000           nxpdy = dyx(m);
108150000000         endif;
108160000000       endif;
108170000000       //
108180000000       endsr;
108190000000       //****************************************************************
108200000000       begsr $d@t1;
108210000000       //****************************************************************
108220000000       // manipulates date formats
108230000000       //
108240000000       // flip mdy to ymd
108250000000       //
108260000000       if datfmt = '1';
108270000000         fl@1 = y@r;
108280000000         fl@2 = m@n;
108290000000         fl@3 = d@y;
108300000000       else;
108310000000         // flip mdy to dmy
108320000000         if datfmt = '3';
108330000000           fl@1 = d@y;
108340000000           fl@2 = m@n;
108350000000           fl@3 = y@r;
108360000000         else;
108370000000           // move mdy to mdy
108380000000           d@t2 = d@t1;
108390000000         endif;
108400000000       endif;
108410000000       //
108420000000       endsr;
108430000000       //****************************************************************
108440000000       begsr $d@t2;
108450000000       //****************************************************************
108460000000       // manipulates date formats
108470000000       //
108480000000       // flip ymd to mdy
108490000000       //
108500000000       if datfmt = '1';
108510000000         y@r = fl@1;
108520000000         m@n = fl@2;
108530000000         d@y = fl@3;
108540000000       else;
108550000000         // flip dmy to mdy
108560000000         if datfmt = '3';
108570000000           d@y = fl@1;
108580000000           m@n = fl@2;
108590000000           y@r = fl@3;
108600000000         else;
108610000000           // move mdy to mdy
108620000000           d@t1 = d@t2;
108630000000         endif;
108640000000       endif;
108650000000       //
108660000000       endsr;
108670000000       //-----------------------------------------------------------------
108680000000       //****************************************************************
108690000000       begsr $adrsq;
108700000000       //****************************************************************
108710000000       //* this subroutine expects the following input information:
108720000000       //* @@zpps = zip/postal code
108730000000       //* @@stpv = state/province
108740000000       //* @@city = city
108750000000       //* if there is not enough room to fit all three on
108760000000       //* one address line, the subrouting will fill a second
108770000000       //* address line with the last field in the sequence.
108780000000       //* there is the potential that up to 3 address lines will
108790000000       //* be filled.
108800000000       //
108810000000       //* move the retrieval of country information
108820000000       //* to before the building of bill-to address
108830000000       //
108840000000       //* sequence address layout
108850000000       @@lin2 = 'N';
108860000000       @@totl = *zeros;
108870000000      /end-free
108880000000     C                   movea     *all' '       ad1
108890000000     C                   movea     *all' '       ad2
108900000000     C                   movea     *all' '       ad3
108910000000      /free
108920000000       z = *zeros;
108930000000       y = *zeros;
108940000000       //
108950000000       if adrseq = '2';
108960000000         //
108970000000         //* move zip/postal code first
108980000000      /end-free
108990000000     C                   movea     @@zpps        ad1(1)
109000000000      /free
109010000000       //
109020000000       //* determine last position zip/postal is in
109030000000         z = 34;
109040000000         dow z > 0;
109050000000           if ad1(z) <> *blanks;
109060000000             leave;
109070000000           endif;
109080000000      /end-free
109090000000     C                   sub       1             z
109100000000      /free
109110000000         enddo;
109120000000         //
109130000000         //* move city second, leave a space
109140000000      /end-free
109150000000     C                   add       2             z
109160000000     C                   movea     @@city        ad1(z)
109170000000      /free
109180000000       //
109190000000       //* determine last position city is in
109200000000         z = 34;
109210000000         dow z > 0;
109220000000           if ad1(z) <> *blanks;
109230000000             leave;
109240000000           endif;
109250000000      /end-free
109260000000     C                   sub       1             z
109270000000      /free
109280000000         enddo;
109290000000         //
109300000000         //* determine how large state/province is.  if the
109310000000         //* addition of it is larger than 34 spaces, go to
109320000000         //* next line.
109330000000      /end-free
109340000000     C                   movea     @@stpv        spr(1)
109350000000      /free
109360000000         y = 30;
109370000000         dow y > 0;
109380000000           if spr(y) <> *blanks;
109390000000             leave;
109400000000           endif;
109410000000      /end-free
109420000000     C                   sub       1             y
109430000000      /free
109440000000         enddo;
109450000000         //
109460000000         //* leave 2 spaces when determining if line fits
109470000000      /end-free
109480000000     C                   add       3             z
109490000000     C     y             add       z             @@totl
109500000000      /free
109510000000         if @@totl > 34;
109520000000      /end-free
109530000000     C                   movea     @@stpv        ad2(1)
109540000000      /free
109550000000         else;
109560000000      /end-free
109570000000     C                   sub       2             z
109580000000     C                   movea     ','           ad1(z)
109590000000     C                   add       2             z
109600000000     C                   movea     @@stpv        ad1(z)
109610000000      /free
109620000000         endif;
109630000000         //
109640000000         leavesr;
109650000000       endif;
109660000000       //
109670000000       //* address sequence '1'
109680000000       //
109690000000       //* move city first
109700000000      /end-free
109710000000     C                   movea     @@city        ad1(1)
109720000000      /free
109730000000       //
109740000000       //* determine last position city is in
109750000000       z = 34;
109760000000       dow z > 0;
109770000000         if ad1(z) <> *blanks;
109780000000           leave;
109790000000         endif;
109800000000      /end-free
109810000000     C                   sub       1             z
109820000000      /free
109830000000       enddo;
109840000000       //
109850000000       //* determine how large state/province is. if the
109860000000       //* addition of it is larger than 34 spaces, go to
109870000000       //* next line.
109880000000      /end-free
109890000000     C                   movea     @@stpv        spr(1)
109900000000      /free
109910000000       y = 30;
109920000000       dow y > 0;
109930000000         if spr(y) <> *blanks;
109940000000           leave;
109950000000         endif;
109960000000      /end-free
109970000000     C                   sub       1             y
109980000000      /free
109990000000       enddo;
110000000000       //
110010000000       //* leave 2 spaces when determining if line fits
110020000000      /end-free
110030000000     C                   add       3             z
110040000000     C     y             add       z             @@totl
110050000000      /free
110060000000       if @@totl > 34;
110070000000      /end-free
110080000000     C                   movea     @@stpv        ad2(1)
110090000000      /free
110100000000         @@lin2 = 'Y';
110110000000       else;
110120000000      /end-free
110130000000     C                   sub       2             z
110140000000     C                   movea     ','           ad1(z)
110150000000     C                   add       2             z
110160000000     C                   movea     @@stpv        ad1(z)
110170000000      /free
110180000000       endif;
110190000000       //
110200000000       //  ** line 2 has not yet been filled **
110210000000       //* determine last position state/province is in
110220000000       if @@lin2 <> 'Y';
110230000000         z = 34;
110240000000         dow z > 0;
110250000000           if ad1(z) <> *blanks;
110260000000             leave;
110270000000           endif;
110280000000      /end-free
110290000000     C                   sub       1             z
110300000000      /free
110310000000         enddo;
110320000000         //
110330000000         //* determine how large zip/postal code is. if the
110340000000         //* addition of it is larger than 34 spaces, go to
110350000000         //* next line.
110360000000      /end-free
110370000000     C                   movea     @@zpps        zpc(1)
110380000000      /free
110390000000         y = 10;
110400000000         dow y > 0;
110410000000           if zpc(y) <> *blanks;
110420000000             leave;
110430000000           endif;
110440000000      /end-free
110450000000     C                   sub       1             y
110460000000      /free
110470000000         enddo;
110480000000         //
110490000000         //* leave 1 spaces when determining if line fits
110500000000      /end-free
110510000000     C                   add       2             z
110520000000     C     y             add       z             @@totl
110530000000      /free
110540000000         if @@totl > 34;
110550000000      /end-free
110560000000     C                   movea     @@zpps        ad2(1)
110570000000      /free
110580000000         else;
110590000000      /end-free
110600000000     C                   movea     @@zpps        ad1(z)
110610000000      /free
110620000000         endif;
110630000000       endif;
110640000000       //
110650000000       //  ** line 2 has already begun being filled **
110660000000       //* determine last position state/province is in
110670000000       if @@lin2 = 'Y';
110680000000         z = 34;
110690000000         dow z > 0;
110700000000           if ad2(z) <> *blanks;
110710000000             leave;
110720000000           endif;
110730000000      /end-free
110740000000     C                   sub       1             z
110750000000      /free
110760000000         enddo;
110770000000         //
110780000000         //* determine how large zip/postal code is. if the
110790000000         //* addition of it is larger than 34 spaces, go to
110800000000         //* next line.
110810000000      /end-free
110820000000     C                   movea     @@zpps        zpc(1)
110830000000      /free
110840000000         y = 10;
110850000000         dow y > 0;
110860000000           if zpc(y) <> *blanks;
110870000000             leave;
110880000000           endif;
110890000000      /end-free
110900000000     C                   sub       1             y
110910000000      /free
110920000000         enddo;
110930000000         //
110940000000         //* leave 1 space  when determining if line fits
110950000000      /end-free
110960000000     C                   add       2             z
110970000000     C     y             add       z             @@totl
110980000000      /free
110990000000         if @@totl > 34;
111000000000      /end-free
111010000000     C                   movea     @@zpps        ad3(1)
111020000000      /free
111030000000         else;
111040000000      /end-free
111050000000     C                   movea     @@zpps        ad2(z)
111060000000      /free
111070000000         endif;
111080000000         //
111090000000       endif;
111100000000       //
111110000000       endsr;
111120000000       //-----------------------------------------------------------------
111130000000       // added this subroutine
111140000000       //****************************************************** $oea10
111150000000       // call the order activity update sub-program
111160000000       begsr $oea10;
111170000000       //
111180000000       @oea10 = 'Y';
111190000000       //
111200000000       OEA100 ( p#shdn : p#cono : p#orno :
111210000000       p#orgn : p#pror : p#oacd : p#ntes );
111220000000       //
111230000000       endsr;
111240000000       //********************************************************* $email
111250000000       begsr $email;
111260000000       //
111270000000       if *in86 = *off;
111280000000         if @apin3 <> 'Y';
111290000000           open apprtin3;
111300000000           @apin3 = 'Y';
111310000000         endif;
111320000000       else;
111330000000         if @apin4 <> 'Y';
111340000000           open apprtin4;
111350000000           @apin4 = 'Y';
111360000000         endif;
111370000000       endif;
111380000000       //
111390000000       // if displayed a mail server options, get values from mshed
111400000000       if ldctln <> *blanks;
111410000000         p1ctln = ldctln;
111420000000         if @emlop = 'Y';
111430000000      /end-free
111440000000     C                   movel     ldctln        @@ectl
111450000000      /free
111460000000           txt = *blanks;
111470000000           // retrieve email information from mshed file
111480000000           chain eh0key mshedr;
111490000000           *in90 = not %found;
111500000000           if *in90 = *off;
111510000000             p1toad = ehtoad;
111520000000             p1ccad = ehccad;
111530000000             p1bcca = ehbcca;
111540000000             p1subj = ehsubj;
111550000000             p1atnm = ehatnm;
111560000000             delete mshedr;
111570000000           endif;
111580000000           //
111590000000           chain eh0key msdet;
111600000000           *in90 = not %found;
111610000000           dow *in90 = *off;
111620000000             x = edsq03;
111630000000             txt(x) = edtext;
111640000000             delete msdetr;
111650000000             reade eh0key msdet;
111660000000             *in90 = %eof;
111670000000           enddo;
111680000000           p1bdy1 = bdy1;
111690000000           p1bdy2 = bdy2;
111700000000         endif;
111710000000       else;
111720000000         //
111730000000         // get customer/ship-to email addresses
111740000000         @@emin = *blanks;
111750000000         if ohshp# <> *blanks;
111760000000           chain sa0key addrr;
111770000000           *in90 = not %found;
111780000000           if *in90 = *off;
111790000000             @@emin = saemin;
111800000000           endif;
111810000000         endif;
111820000000         if @@emin = 'C';
111830000000           @@shp# = *blanks;
111840000000         else;
111850000000           @@shp# = ohshp#;
111860000000         endif;
111870000000         @@emgp = 'AP ';
111880050221         @@emad = *blanks;                                     // #*9e
111890050221         @@cprs = *blanks;                                     // #*9e
111900050221         @@pwyn = *blanks;                                     // #*9e
111910050221         @@pwrd = *blanks;                                     // #*9e
111920000000         chain ce0key csemlr;
111930000000         *in90 = not %found;
111940000000         if *in90 = *off;
111950000000           @@emad = ceemad;
111960000000           @@cprs = cecprs;
111970000000           @@pwyn = cepwyn;
111980000000           @@pwrd = cepwrd;
111990000000         else;
112000000000           @@emgp = '   ';
112010000000           chain ce0key csemlr;
112020000000           *in90 = not %found;
112030000000           if *in90 = *off;
112040000000             @@emad = ceemad;
112050000000             @@cprs = cecprs;
112060000000             @@pwyn = cepwyn;
112070000000             @@pwrd = cepwrd;
112080000000           endif;
112090000000         endif;
112100000000         //
112110000000         p1rtfg = *blanks;
112120000000         p1ques = *blanks;
112130000000         p1pmpt = 'N';
112140000000         p1ptct = *blanks;
112150000000         p1toad = @@emad;
112160000000         p1ccad = *blanks;
112170000000         p1bcca = *blanks;
112180000000         %subst(p1subj:1:7) = #invce;
112190000000         p1epty = 'L';
112200000000         p1tocm = @@cprs;
112210000000         p1topf = @@pwyn;
112220000000         p1pwrd = @@pwrd;
112230000000         %subst(p1atnm:1:7) = #invce;
112240000000         p1call = *blanks;
112250000000         //
112260000000         // retrieve email company custom form.
112270000000         //
112280000000         p1bdy1 = *blanks;
112290000000         p1bdy2 = *blanks;
112300000000         @@form = '2';
112310000000         @@cstm = 'X';
112320000000         chain em0key emldftsr;
112330000000         *in90 = not %found;
112340000000         if *in90 = *off;
112350000000           p1atnm = ematnm;
112360000000           p1subj = emsubj;
112370000000           p1bdy1 = embody;
112380000000           p1bdy2 = %subst(embody:246:245);
112390000000         endif;
112400000000         if @emlop = 'N';
112410000000           MS300 ( p1rtfg : p1ques : p1pmpt :
112420000000           p1ptct : p1toad : p1ccad : p1bcca :
112430000000           p1subj : p1epty : p1tocm : p1topf :
112440000000           p1pwrd : p1atnm : p1ctln : p1call :
112450000000           p1bdy1 : p1bdy2 );
112460000000         endif;
112470000000       endif;
112480000000       //
112490000000       endsr;
112500000000       //*************************************************** $retax
112510000000       // $retax - recalculate tax for non-vertex
112520000000       //
112530000000       begsr $retax;
112540000000       //
112550000000       //  retax if not reprinting from history
112560000000       if *in76 = *off
112570000000         and *in77 = *off;
112580000000         chain od0key orhedr;
112590000000         *in90 = not %found;
112600000000         if *in90 = *off;
112610000000           @worvl = ohorvl;
112620000000           // get taxbody
112630000000           if ohexcd = '0'
112640000000             or ohexcd = 'J';
112650000000             //
112660000000             compny = 0;
112670000000             applic = 'OE';
112680000000             %subst(ctlnm:1:1) = '#';
112690000000             %subst(ctlnm:2:6) = ohstxb;
112700000000             //
112710000000             chain(n) ctlkey orctl;
112720000000             *in90 = not %found;
112730000000             if *in90 = *on;
112740000000      /end-free
112750000000     C                   z-add     0             @htxpc
112760000000      /free
112770000000             endif;
112780000000             //
112790000000             svtxpc = ohtxpc;
112800000000             svtxam = ohtxam;
112810000000             if *in90 = *off;
112820000000      /end-free
112830000000     C     crateo        div       100           @htxpc
112840000000      /free
112850000000               ohtxpc = crateo;
112860000000               if txdato <> 0
112870000000                 and txdato <= today;
112880000000      /end-free
112890000000     C     nrateo        div       100           @htxpc
112900000000      /free
112910000000                 ohtxpc = nrateo;
112920000000               endif;
112930000000             endif;
112940000000             ohgtyn = gstyno;
112950000000             ohptyn = pstyno;
112960000000             if gstyno = 'Y'
112970000000               or pstyno = 'C';
112980000000               ohgtxp = cbsrto;
112990000000             else;
113000000000               ohgtxp = 0;
113010000000             endif;
113020000000             if pstyno = 'Y'
113030000000               or pstyno = 'C';
113040000000               ohptxp = clrt10;
113050000000             else;
113060000000               ohptxp = 0;
113070000000             endif;
113080000000           endif;
113090000000           if ohexcd > '0';
113100000000      /end-free
113110000000     C                   z-add     0             @htxpc
113120000000      /free
113130000000             ohtxpc = 0;
113140000000             svtxpc = 0;
113150000000           endif;
113160040724           //                                                     #*9a
113170040724           // use the tax percentage used during the POS order    #*9a
113180040724           if ohetus = 'POS*ORDR';                             // #*9a
113190040724             svtxpc = ohtxpc;                                  // #*9a
113200040724       //  #*9a - beg of add
113210040724      /end-free
113220040724     C                   goto      updorh
113230040724      /free
113240040724       //  #*9a - end of add
113250040724           endif;                                              // #*9a
113260000000           //
113270000000           // if tax percent has not changed, leave subroutine
113280000000      /end-free
113290000000     C     svtxpc        cabeq     ohtxpc        updorh
113300000000      //
113310000000      // trade discount
113320000000     C     ohtdpc        div(h)    100           work54
113330000000     C     work54        mult(h)   amstro        dainto
113340000000      //
113350000000      // calculate order totals (local)
113360000000     C     oritm$        add       ohscam        ohorvl
113370000000     C                   add       dainto        ohorvl
113380000000     C                   add       othor$        ohorvl
113390000000      /free
113400000000       //
113410000000       // use vertex for taxing if system option is 'y'
113420000000           if uvrtxo <> 'Y';
113430000000             //
113440000000             // reduce amount subject to tax by taxable trade disc
113450000000      /end-free
113460000000     C     trdtxo        mult(h)   work54        trdtxo
113470000000     C                   add       trdtxo        astxor
113480000000      /free
113490000000       //
113500000000             eval(h) ohtxam = @htxpc * ohastx;
113510000000             eval(h) txamor = @htxpc * astxor;
113520000000           endif;
113530000000           // call to recalc gst/pst header values
113540000000           if ugptxo = 'Y';
113550000000      /end-free
113560000000     C                   move      *all'0'       gtxa@
113570000000     C                   move      *all'0'       ptxa@
113580000000     C                   move      *all'0'       gtxa#
113590000000     C                   move      *all'0'       ptxa#
113600000000      /free
113610000000             if ohptyn = 'Y'
113620000000               or ohptyn = 'C'
113630000000               or ohgtyn = 'Y';
113640000000               if ohexcd = '0';
113650000000                 conoxx = %editc(ohcono:'X');
113660000000                 ornoxx = odorno;
113670000000                 orgnxx = %editc(wnorgn:'X');
113680000000                 exsr $gpstx;
113690000000                 // recalculate tax amount
113700000000      /end-free
113710000000     C                   move      gtxa@         @gtxa@
113720000000     C                   move      ptxa@         @ptxa@
113730000000     C                   move      gtxao@        @gtxao
113740000000     C                   move      ptxao@        @ptxao
113750000000      /free
113760000000                 ohgtxa = @gtxa@;
113770000000                 ohptxa = @ptxa@;
113780000000      /end-free
113790000000     C     @ptxa@        add       @gtxa@        ohtxam
113800000000     C     @gtxao        add       @ptxao        txamor
113810000000      /free
113820000000               endif;
113830000000             endif;
113840000000           endif;
113850000000      /end-free
113860000000     C                   add       txamor        ohorvl
113870000000     C     ohtxam        sub       svtxam        @@diff
113880000000     C                   add       @@diff        ohinam
113890000000      /free
113900000000           if ohupar = 'Y';
113910000000      /end-free
113920000000     C                   add       @@diff        oharc$
113930000000      /free
113940000000           endif;
113950000000           if iclive = 'Y';
113960000000             chain od0key icorhdr;
113970000000             *in90 = not %found;
113980000000             if *in90 = *off;
113990000000               svtxat = ohtxat;
114000000000               //
114010000000               // trade discount
114020000000      /end-free
114030000000     C     work54        mult(h)   tastro        dainot
114040000000      /free
114050000000               if ccdeco = '0';
114060000000      /end-free
114070000000     C                   z-add(h)  dainot        wrk150
114080000000     C                   z-add     wrk150        dainot
114090000000      /free
114100000000               endif;
114110000000               //
114120000000               // calculate order total (trading)
114130000000      /end-free
114140000000     C     oritmt        add       ohscat        ohorvt
114150000000     C                   add       dainot        ohorvt
114160000000     C                   add       othort        ohorvt
114170000000      /free
114180000000       //
114190000000       // use vertex for taxing if system option is 'y'
114200000000               if uvrtxo <> 'Y';
114210000000                 //
114220000000                 // reduce amount subject to tax by taxable trade disc
114230000000      /end-free
114240000000     C     trdxot        mult(h)   work54        trdxot
114250000000     C                   add       trdxot        astxot
114260000000      /free
114270000000       //
114280000000                 eval(h) ohtxat = @htxpc * ohastt;
114290000000                 eval(h) txamot = @htxpc * astxot;
114300000000               endif;
114310000000               //
114320000000               // recalculate tax amount
114330000000               if iclive = 'Y'
114340000000                 and ugptxo = 'Y'
114350000000                 and icopen = 'Y';
114360000000                 if ohptyn = 'Y'
114370000000                   or ohptyn = 'C'
114380000000                   or ohgtyn = 'Y';
114390000000      /end-free
114400000000     C                   move      gtxa#         @gtxat
114410000000     C                   move      ptxa#         @ptxat
114420000000     C                   move      gtxao#        gtxaot
114430000000     C                   move      ptxao#        ptxaot
114440000000     C                   z-add     @gtxat        ohgtxt
114450000000     C                   z-add     @ptxat        ohptxt
114460000000     C     @ptxat        add       @gtxat        ohtxat
114470000000     C     gtxaot        add       ptxaot        txamot
114480000000      /free
114490000000                 endif;
114500000000               endif;
114510000000               //
114520000000               // if no decimal for currency half adjust and
114530000000               // round amount
114540000000               if ccdeco = '0';
114550000000      /end-free
114560000000     C                   z-add     ohtxat        wrk140
114570000000     C                   z-add     wrk140        ohtxat
114580000000     C                   z-add     txamot        wrk140
114590000000     C                   z-add     wrk140        txamot
114600000000      /free
114610000000               endif;
114620000000      /end-free
114630000000     C                   add       txamot        ohorvt
114640000000     C     ohtxat        sub       svtxat        @@dift
114650000000     C                   add       @@dift        ohinat
114660000000      /free
114670000000               if ohupar = 'Y';
114680000000      /end-free
114690000000     C                   add       @@dift        oharct
114700000000      /free
114710000000               endif;
114720000000               //
114730000000               if uvrtxo = 'Y';
114740000000                 @ccurr = @dftcr;
114750000000                 chain(n) cm0ky1 iccsms;
114760000000                 *in90 = not %found;
114770000000                 if *in90 = *off;
114780000000                   @ccurr = cmcurr;
114790000000                 endif;
114800000000               endif;
114810000000               //
114820000000               // convert adjusted amount to customer's currency
114830000000               //   if not the same as order's currency.
114840000000               ohinac = ohinat;
114850000000               ohorvc = ohorvt;
114860000000               if ohcurr <> @ccurr;
114870000000                 if @ccurr = @dftcr;
114880000000                   ohinac = ohinam;
114890000000                   ohorvc = ohorvl;
114900000000                 else;
114910000000                   //* retrieve currency information
114920000000                   xxcom = *zeros;
114930000000                   xxapp = 'IC';
114940000000                   %subst(xxkey:1:4) = 'CURR';
114950000000                   %subst(xxkey:5:3) = cmcurr;
114960000000                   chain(n) ctlky orctl;
114970000000                   *in90 = not %found;
114980000000                   //
114990000000                   clear len;
115000000000                   clear err;
115010000000                   inn = *zeros;
115020000000                   inn(1) = ohinat;
115030000000                   inn(2) = ohorvt;
115040000000                   len(1) = '13,3';
115050000000                   len(2) = '13,3';
115060000000                   @pnovl = 2;
115070000000                   @pcltp = 'L';
115080000000                   @pcurr = ohcurr;
115090000000                   @plcur = cmcurr;
115100000000                   @pexch = *blanks;
115110000000                   @pexrt = *zeros;
115120000000                   exsr $ic001;
115130000000                   //
115140000000      /end-free
115150000000     C                   z-add(h)  otn(1)        ohinac
115160000000     C                   z-add(h)  otn(2)        ohorvc
115170000000      /free
115180000000                   if ccdeco = '0';
115190000000      /end-free
115200000000     C                   z-add(h)  otn(1)        wrk140
115210000000     C                   z-add     wrk140        ohinac
115220000000     C                   z-add(h)  otn(2)        wrk140
115230000000     C                   z-add     wrk140        ohorvc
115240000000      /free
115250000000                   endif;
115260000000                 endif;
115270000000               endif;
115280000000               //
115290000000               if iclive = 'Y'
115300000000                 and icopen = 'Y';
115310000000      /end-free
115320000000     C                   z-add     @gtxat        ohgtxt
115330000000     C                   z-add     @ptxat        ohptxt
115340000000      /free
115350000000               endif;
115360000000               //
115370000000               update icorhdr;
115380000000             endif;
115390000000           endif;
115400000000           //-----------------------
115410000000      /end-free
115420000000     C     updorh        tag
115430000000      /free
115440000000       //-----------------------
115450000000           update orhedr;
115460000000           //
115470000000           //  reset invoice number
115480000000           ohinno = invnrx;
115490000000           //
115500000000           //* update with open order value
115510000000           if @worvl <> ohorvl;
115520000000             chain cm0ky1 cusmsr;
115530000000             *in95 = not %found;
115540000000             if *in95 = *off;
115550000000      /end-free
115560000000     C                   add       @@diff        cmopor
115570000000      /free
115580000000               update cusmsr;
115590000000             endif;
115600000000             //
115610000000             //* update ic customer extension file
115620000000             if iclive = 'Y';
115630000000               chain cm0ky1 iccsmsr;
115640000000               *in95 = not %found;
115650000000      /end-free
115660000000     C                   add       @@dift        cmopot
115670000000      /free
115680000000               update iccsmsr;
115690000000             endif;
115700000000           endif;
115710000000           //
115720000000         endif;
115730000000       endif;
115740000000       //
115750000000       endsr;
115760000000       //************************************************************** $lot
115770000000       // get lot assignments and print - credits only
115780000000       //   - immediate returns processing
115790000000       //
115800000000       begsr $loti;
115810000000       //
115820000000       wllocx = *blanks;
115830000000       *in13 = *on;
115840000000       //
115850000000       dow *in60 = *off;
115860000000         //
115870000000         // if called from warehouse sort routine ($wmsrt)
115880000000         // (ind. 35 is on) stop after getting a location.
115890000000         //
115900000000         if *in35 = *on;
115910000000           wllocx = w9loca;
115920000000           leavesr;
115930000000         endif;
115940000000         //
115950000000         // check overflow
115960000000         if *inof = *on
115970000000           or *inoe = *on
115980000000           or *inob = *on
115990000000           or *inod = *on;
116000000000           exsr $prtof;
116010000000         endif;
116020000000         //
116030000000         // print lots
116040000000         if skpprt <> 'Y';
116050000000           except lota;
116060000000         endif;
116070000000         //
116080000000         reade w90pky oeimmr;
116090000000         *in60 = %eof;
116100000000       enddo;
116110000000       //
116120000000       endsr;
116130000000       //
116140000000       //************************************************************** $srnc
116150000000       // get serial number assignments and print
116160000000       //   - immediate returns processing
116170000000       //
116180000000       begsr $srni;
116190000000       //
116200000000       // get all assignments for the invoiced item
116210000000       dow *in60 = *off;
116220000000         wllocx = *blanks;
116230000000         sn = *blanks;
116240000000         sn1 = *blanks;
116250000000         sn2 = *blanks;
116260000000         l = 0;
116270000000         p = 1;
116280000000         //
116290000000      /end-free
116300000000     C     loopfi        tag
116310000000      /free
116320000000       //
116330000000         if crryon = 'Y';
116340000000           crryon = ' ';
116350000000           wllocx = *blanks;
116360000000           sn = *blanks;
116370000000           sn1 = *blanks;
116380000000           sn2 = *blanks;
116390000000           l = 1;
116400000000      /end-free
116410000000     C                   goto      carri
116420000000      /free
116430000000         endif;
116440000000         //
116450000000      /end-free
116460000000     C                   add       1             l
116470000000      /free
116480000000       //
116490000000       // if called from warehouse sort routine ($wmsrt)
116500000000       //=(ind. 35 is on) stop after getting a location.
116510000000       //
116520000000         if *in35 = *on;
116530000000           wllocx = w9loca;
116540000000           leavesr;
116550000000         endif;
116560000000         //
116570000000         fill = *blanks;
116580000000         w = 1;
116590000000         srn = *blanks;
116600000000      /end-free
116610000000     C                   movea     w9ltsr        srn
116620000000      //-------------------------------------
116630000000     C     carri         tag
116640000000      /free
116650000000       //-------------------------------------
116660000000       //
116670000000       // fill serial number print array routine
116680000000         dou w = 21;
116690000000           //
116700000000           sn1(l) = srn(w);
116710000000           //
116720000000           if srn(w) <> *blanks
116730000000             and fill = 'Y';
116740000000             fill = ' ';
116750000000           endif;
116760000000           //
116770000000           if srn(w) = *blanks;
116780000000             if fill = 'Y';
116790000000      /end-free
116800000000     C                   goto      filldi
116810000000      /free
116820000000             else;
116830000000               fill = 'Y';
116840000000             endif;
116850000000           endif;
116860000000           //
116870000000           if l < 70;
116880000000      /end-free
116890000000     C                   add       1             l
116900000000      /free
116910000000           else;
116920000000             readpe w90pky oeimmr;
116930000000             *in60 = %eof;
116940000000      /end-free
116950000000     C                   goto      filldi
116960000000      /free
116970000000           endif;
116980000000           //
116990000000      /end-free
117000000000     C                   add       1             w
117010000000      /free
117020000000         enddo;
117030000000         //
117040000000         if w = 21;
117050000000      /end-free
117060000000     C                   add       2             l
117070000000      /free
117080000000         endif;
117090000000         //
117100000000      /end-free
117110000000     C     filldi        tag
117120000000      /free
117130000000       //
117140000000         if l < 70;
117150000000      /end-free
117160000000     C                   movea     sn1           sn2
117170000000      /free
117180000000           reade w90pky oeimmr;
117190000000           *in60 = %eof;
117200000000           if *in60 = *off;
117210000000      /end-free
117220000000     C                   goto      loopfi
117230000000      /free
117240000000           endif;
117250000000         endif;
117260000000         //
117270000000         if fill = 'Y';
117280000000      /end-free
117290000000     C                   movea     sn1           sn2
117300000000     C                   goto      exiti
117310000000      /free
117320000000         endif;
117330000000         //
117340000000         if w >= 20;
117350000000      /end-free
117360000000     C                   movea     sn1           sn2
117370000000     C                   goto      exiti
117380000000      /free
117390000000         endif;
117400000000         //
117410000000      /end-free
117420000000     C                   add       1             w
117430000000      /free
117440000000       //
117450000000       // is there more to the serial number? if so, print
117460000000       // the rest on next line.
117470000000         if srn(w) = *blanks
117480000000           and w <> 21
117490000000           and fill <> 'Y';
117500000000           crryon = 'Y';
117510000000      /end-free
117520000000     C                   movea     sn1           sn2
117530000000     C                   goto      exiti
117540000000      /free
117550000000         endif;
117560000000         //
117570000000         if srn(w) = *blanks;
117580000000      /end-free
117590000000     C                   movea     sn1           sn2
117600000000     C                   goto      exiti
117610000000      /free
117620000000         endif;
117630000000         //
117640000000      /end-free
117650000000     C     exiti         tag
117660000000      /free
117670000000       //
117680000000       // if called from warehouse sort routine ($wmsrt)
117690000000       // (ind. 35 is on) get out.
117700000000       //
117710000000         if *in35 = *on;
117720000000           leavesr;
117730000000         endif;
117740000000         //
117750000000      /end-free
117760000000     C                   movea     sn2           sn
117770000000      /free
117780000000       //
117790000000       // check overflow
117800000000         if *inof = *on
117810000000           or *inoe = *on
117820000000           or *inob = *on
117830000000           or *inod = *on;
117840000000           exsr $prtof;
117850000000         endif;
117860000000         //
117870000000         // print serial numbers
117880000000         if skpprt <> 'Y';
117890000000           except srna;
117900000000         endif;
117910000000         //
117920000000         reade w90pky oeimmr;
117930000000         *in60 = %eof;
117940000000       enddo;
117950000000       //
117960000000       endsr;
117970000000       //*************************************************************** $bottm
117980000000       // $botcs - put out bottom of invoice for consolidated invoices
117990000000       //
118000000000       begsr $botcs;
118010000000       //
118020000000       *in26 = *on;
118030000000       //
118040000000       if umsg = 'Y';
118050000000         if *inof = *on
118060000000           or *inoe = *on
118070000000           or *inob = *on
118080000000           or *inod = *on;
118090000000           exsr $prtof;
118100000000         endif;
118110000000         if skpprt <> 'Y';
118120000000           if endcol = ' '
118130000000             or endcol = 'Y';
118140000000             except unvmg1;
118150000000           endif;
118160000000         endif;
118170000000         if *inof = *on
118180000000           or *inoe = *on
118190000000           or *inob = *on
118200000000           or *inod = *on;
118210000000           exsr $prtof;
118220000000         endif;
118230000000         if skpprt <> 'Y';
118240000000           if endcol = ' '
118250000000             or endcol = 'Y';
118260000000             except unvmg2;
118270000000           endif;
118280000000         endif;
118290000000         if *inof = *on
118300000000           or *inoe = *on
118310000000           or *inob = *on
118320000000           or *inod = *on;
118330000000           exsr $prtof;
118340000000         endif;
118350000000         if skpprt <> 'Y';
118360000000           if endcol = ' '
118370000000             or endcol = 'Y';
118380000000             except unvmg3;
118390000000           endif;
118400000000         endif;
118410000000       endif;
118420000000       if *inof = *on
118430000000         or *inoe = *on
118440000000         or *inob = *on
118450000000         or *inod = *on;
118460000000         exsr $prtof;
118470000000       endif;
118480000000       // only excpt out bottm1 if amtdue is not zero
118490000000       // and update ar equals 'no' and the order type
118500000000       // is not a return.
118510000000       if camtdu <> *zeros
118520000000         and updar <> 'N'
118530000000         and ctortp <> 'R'                                                      //             - add
118540000000         and @split <> 'Y';                                                     //             - add
118550000000         if skpprt <> 'Y';
118560000000           if endcol = ' '
118570000000             or endcol = 'Y';
118580000000             //
118590000000             //  moves date into correct format
118600000000             //
118610000000             d@t1 = cdate;
118620000000             exsr $d@t1;
118630000000             cdate = d@t2;
118640000000             d@t1 = ndate;
118650000000             exsr $d@t1;
118660000000             ndate = d@t2;
118670000000             except bottm1;
118680000000             d@t2 = cdate;
118690000000             exsr $d@t2;
118700000000             cdate = d@t1;
118710000000             d@t2 = ndate;
118720000000             exsr $d@t2;
118730000000             ndate = d@t1;
118740000000             //
118750000000           endif;
118760000000         endif;
118770000000         if *inof = *on
118780000000           or *inoe = *on
118790000000           or *inob = *on
118800000000           or *inod = *on;
118810000000           exsr $prtof;
118820000000         endif;
118830000000       endif;
118840000000       //
118850000000       //* if printing benchmark totals - translate.
118860000000       clear @@tdab;                                                            // tdatic
118870000000       clear @@feab;                                                            // featic
118880000000       clear @@cctb;                                                            // ccttic
118890000000       clear @@subb;                                                            // subtic
118900000000       clear @@txab;                                                            // txatic
118910000000       clear @@totb;                                                            // totlic
118920000000       clear @@dpab;                                                            // dpatic
118930000000       clear @@amnb;                                                            // amntic
118940000000       clear xxgtxb;                                                            // ctgttx
118950000000       clear xxptxb;                                                            // ctpttx
118960000000       clear xgtxtb;
118970000000       clear xptxtb;
118980000000       //
118990000000       if iclive = 'Y'
119000000000         and xxbttl = 'Y';
119010000000         //
119020000000         // do not convert if benchmark = local
119030000000         if bic000 = 'N';
119040000000           @@tdab = cttdam;
119050000000           @@feab = ctfeam;
119060000000           @@cctb = ctcnct;
119070000000           @@subb = csbtot;
119080000000           @@txab = cttaxm;
119090000000           @@totb = citotl;
119100000000           @@dpab = ctdpam;
119110000000           @@amnb = camtdu;
119120000000           @@gtxb = ctgttx;
119130000000           @@ptxb = ctpttx;
119140000000           xgtxtb = ctgttx;
119150000000           xptxtb = ctpttx;
119160000000         endif;
119170000000         //
119180000000         // if ic live order curr *ne local curr
119190000000         //   and benchmark *ne local curr
119200000000         if bic000 = 'Y';
119210000000           clear len;
119220000000           clear err;
119230000000           inn = *zeros;
119240000000           if *in75 = *on;
119250000000      /end-free
119260000000     C                   z-add     tdatic        inn(1)
119270000000     C                   z-add     featic        inn(2)
119280000000     C                   z-add     ccttic        inn(3)
119290000000     C                   z-add     subtic        inn(4)
119300000000     C                   z-add     txatic        inn(5)
119310000000     C                   z-add     totlic        inn(6)
119320000000      /free
119330000000             inn(7) = dpatic;
119340000000             @pnovl = 7;
119350000000           else;
119360000000             inn(1) = cttdam;
119370000000             inn(2) = ctfeam;
119380000000             inn(3) = ctcnct;
119390000000             inn(4) = csbtot;
119400000000             inn(5) = cttaxm;
119410000000             inn(6) = citotl;
119420000000             inn(7) = ctdpam;
119430000000             @pnovl = 7;
119440000000           endif;
119450000000           len(1) = '15,5';
119460000000           len(2) = '15,5';
119470000000           len(3) = '15,5';
119480000000           len(4) = '15,5';
119490000000           len(5) = '15,5';
119500000000           len(6) = '15,5';
119510000000           len(7) = '15,5';
119520000000           @pexrt = *zeros;
119530000000           @plcur = ctcurr;
119540000000           @pcurr = xxovbm;
119550000000           @pexch = *blanks;
119560000000           @pcltp = 'T';
119570000000           p#shdn = 'N';
119580000000           exsr $ic001;
119590000000           //
119600000000      /end-free
119610000000     C                   z-add(h)  otn(1)        @@tdab
119620000000     C                   z-add(h)  otn(2)        @@feab
119630000000     C                   z-add(h)  otn(3)        @@cctb
119640000000     C                   z-add(h)  otn(4)        @@subb
119650000000     C                   z-add(h)  otn(5)        @@txab
119660000000     C                   z-add(h)  otn(6)        @@totb
119670000000     C                   z-add(h)  otn(7)        @@dpab
119680000000      /free
119690000000       //
119700000000       //* remaining fields
119710000000           clear len;
119720000000           clear err;
119730000000           inn = *zeros;
119740000000           if *in75 = *on;
119750000000      /end-free
119760000000     C                   z-add     amntic        inn(1)
119770000000      /free
119780000000             inn(2) = ctgttt;
119790000000             inn(3) = ctpttt;
119800000000             @pnovl = 3;
119810000000           else;
119820000000      /end-free
119830000000     C                   z-add     camtdu        inn(1)
119840000000      /free
119850000000             inn(2) = ctgttx;
119860000000             inn(3) = ctpttx;
119870000000             @pnovl = 3;
119880000000             len(2) = '15,5';
119890000000             len(3) = '15,5';
119900000000           endif;
119910000000           len(1) = '15,5';
119920000000           len(2) = '15,5';
119930000000           len(3) = '15,5';
119940000000           @pexrt = *zeros;
119950000000           @plcur = ctcurr;
119960000000           @pcurr = xxovbm;
119970000000           @pexch = *blanks;
119980000000           @pcltp = 'T';
119990000000           p#shdn = 'N';
120000000000           exsr $ic001;
120010000000           //
120020000000      /end-free
120030000000     C                   z-add     otn(1)        @@amnb
120040000000      /free
120050000000           if *in75 = *off;
120060000000             //
120070000000      /end-free
120080000000     C                   z-add(h)  otn(2)        @@gtxb
120090000000     C                   z-add(h)  otn(3)        @@ptxb
120100000000      /free
120110000000           else;
120120000000      /end-free
120130000000     C                   z-add(h)  otn(2)        xgtxtb
120140000000     C                   z-add(h)  otn(3)        xptxtb
120150000000      /free
120160000000           endif;
120170000000         endif;
120180000000       endif;
120190000000       //
120200000000       if skpprt <> 'Y';
120210000000         if endcol = ' '
120220000000           or endcol = 'Y';
120230000000           except bottom;
120240000000           //
120250000000           // close email printer files and update stat of email
120260000000           if *in29 = *on;
120270000000             if *in86 = *off;
120280000000               if @apin3 = 'Y';
120290000000                 close apprtin3;
120300000000               endif;
120310000000               @apin3 = *blanks;
120320000000               %subst(p1splf:1:8) = 'APPRTIN3';
120330000000             else;
120340000000               if @apin4 = 'Y';
120350000000                 close apprtin4;
120360000000               endif;
120370000000               @apin4 = *blanks;
120380000000               %subst(p1splf:1:8) = 'APPRTIN4';
120390000000             endif;
120400000000             p1mail = 'Y';
120410000000             p1prnt = 'N';
120420000000             if @emlop = 'N';
120430000000               MS310P ( p1splf : p1mail : p1prnt :
120440000000               p1ctln : p1hold );
120450000000               p1ctln = *blanks;
120460000000             endif;
120470000000           endif;
120480000000           //
120490000000         endif;
120500000000       endif;
120510000000       //
120520000000       *in26 = *off;
120530000000       //
120540000000       endsr;
120550000000       //
120560000000       // $ep110, $hold1, $hold3, $orhcc, $auamt, $auth1, &auth2,
120570000000       //******************************************************* $ep526  $bottm
120580000000       //  mark order for settlement
120590000000       //
120600000000       begsr $ep526;
120610000000       //
120620000000       mrkflg = ' ';
120630000000       //
120640000000       if *in76 = *off
120650000000         and *in77 = *off;
120660000000         //
120670000000         // get payment type info
120680000000         compny = ohcono;
120690000000         applic = 'OE';
120700000000         %subst(ctlnm:1:5) = 'PTYPE';
120710000000         %subst(ctlnm:6:2) = ohpytp;
120720000000         chain(n) ctlkey orctl;
120730000000         *in90 = not %found;
120740000000         //
120750000000         if eplive = 'Y'
120760000000           and usecc = 'Y';
120770000000           //
120780000000           oep526@ = 'Y';
120790000000           p@shdn = ' ';
120800000000           p9cono = %editc(ohcono:'X');
120810000000           p9orno = ohorno;
120820000000           p9orgn = %editc(ohorgn:'X');
120830000000           @today = %editc(today:'X');
120840000000           OEP526 ( p@shdn : p9cono : p9orno :
120850000000           p9orgn : mrkflg : @today );
120860000000           //
120870000000         endif;
120880000000         //
120890000000       endif;
120900000000       //
120910000000       endsr;
120920000000       //****************************************************** $opt01
120930000000       // retrieve forms@work options for print, fax and email.
120940000000       //
120950000000       begsr $opt01;
120960000000       //
120970000000       // open printer file apprtin2
120980000000       if ldblcd = *blanks;
120990000000         open apprtin2;
121000000000       else;
121010000000         if @once = *blanks;
121020000000           open apprtin2;
121030000000           @once = 'Y';
121040000000         endif;
121050000000       endif;
121060000000       //
121070000000       // clear api data structure
121080000000       clear @@api;
121090000000       //
121100000000       // check optio system options for email and fax.
121110000000       //
121120000000       *in68 = *on;
121130000000       *in69 = *on;
121140000000       @prtop = 'N';
121150000000       @faxop = 'N';
121160000000       @emlop = 'N';
121170000000       f@wflg = 'N';
121180000000       @@cono = *zeros;
121190000000       @@user = *blanks;
121200000000       @@doc# = '2';
121210000000       @@fxsv = *blanks;
121220000000       @@emsv = *blanks;
121230000000       chain fw0key fwoptr;
121240000000       *in91 = not %found;
121250000000       if *in91 = *off;
121260000000         f@wflg = 'Y';
121270000000         @faxop = fwfaxo;
121280000000         @emlop = fwemlo;
121290000000         @@fxsv = fwfxsv;
121300000000         @@emsv = fwemsv;
121310000000         //
121320000000         // check company level options
121330000000         @@cono = ldcomp;
121340000000         chain fw0key fwoptr;
121350000000         *in90 = not %found;
121360000000         if *in90 = *off;
121370000000           @@fxsv = fwfxsv;
121380000000           @@emsv = fwemsv;
121390000000         endif;
121400000000         //
121410000000         // check user lever options
121420000000         @@cono = *zeros;
121430000000         @@user = @user;
121440000000         chain fw0key fwoptr;
121450000000         *in90 = not %found;
121460000000         if *in90 = *off;
121470000000           @@fxsv = fwfxsv;
121480000000           @@emsv = fwemsv;
121490000000         endif;
121500000000         //
121510000000       endif;
121520000000       //
121530000000       endsr;
121540000000       //****************************************************** $opt02
121550000000       // build forms@work wheather to print, fax, or email.
121560000000       //
121570000000       begsr $opt02;
121580000000       //
121590000000       // print invoice?
121600000000       if *in31 = *on
121610000000         and f@wflg = 'Y';
121620000000         //
121630000000         // check forms@work output queue printer dest.
121640000000         @@outq = p@outq;
121650000000         chain fo0key fwoutr;
121660000000         *in90 = not %found;
121670000000         if *in90 = *off;
121680000000      /end-free
121690000000     C     'prt='        cat       fopntr:0      @@pntr
121700000000     C                   cat       '|':0         @@pntr
121710000000     C                   movel     @@pntr        @@api
121720000000      /free
121730000000           @prtop = 'Y';
121740000000           *in31 = *off;
121750000000         endif;
121760000000         //
121770000000       endif;
121780000000       // not faxing.
121790000000       if *in32 = *off
121800000000         and @faxop = 'Y';
121810000000         @faxop = 'N';
121820000000       endif;
121830000000       //
121840000000       // fax invoice?
121850000000       if *in32 = *on
121860000000         and @faxop = 'Y';
121870000000         //
121880000000         *in32 = *off;
121890040408
121900040408         //clear @@user;                             // #*8x - del
121910040408         //%subst(@@user:1:8) = user;                // #*8x - del
121920040408         //chain ys0key sectyr;                      // #*8x - del
121930040408         //*in90 = not %found;                       // #*8x - del
121940040408         //if *in90 = *off;                          // #*8x - del
121950040408         //  @@usnm = ysusnm;                        // #*8x - del
121960040408         //endif;                                    // #*8x - del
121970040408
121980040408         xausrtxp ( @user : @@usrname50 );           // #*8x - add
121990040408         @@usnm = %subst(@@usrname50:1:25);          // #*8x - add
122000040408
122010000000         //
122020000000         // setup faxing information for optio fax.
122030000000         ##intc = *blanks;
122040000000         ##fxpn = *blanks;
122050000000         @@conm = *blanks;
122060000000         @@cntc = *blanks;
122070000000         if *in37 = *on;
122080000000           ##intc = z$intc;
122090000000           ##fxpn = faxnbr;
122100000000           @@conm = z$conm;
122110000000           @@cntc = z$cntc;
122120000000         else;
122130000000           @@conm = ohcsnm;
122140000000           ##intc = @@fxcd;
122150000000           ##fxpn = @@fxpn;
122160000000           %subst(@@cntc:1:20) = @@cont;
122170000000         endif;
122180000000      /end-free
122190000000     C     'tin='        cat       ##intc:0      @@intc
122200000000     C                   cat       @@intc:0      @@api
122210000000     C     '|tfn='       cat       ##fxpn:0      @@fax#
122220000000     C                   cat       @@fax#:0      @@api
122230000000     C     '|tco='       cat       @@conm:0      @tcomp
122240000000     C                   cat       @tcomp:0      @@api
122250000000     C     '|tnm='       cat       @@cntc:0      @tname
122260000000     C                   cat       @tname:0      @@api
122270000000     C     '|fnm='       cat       @@usnm:0      @fname
122280000000     C                   cat       @fname:0      @@api
122290030602      // #*8l - beg chg
122300030602     C*del '|sub='       cat       #invce:0      @@subj
122310030602      /free
122320030603         @acono = %editc(ohcono:'X');
122330030603         @ainno = %editc(ohinno:'X');
122340030603         @@subj = '|sub=Inv-' + %trim(@acono) + '/' + %trim(@ainno);
122350030602      /end-free
122360030602      // #*8l - end chg
122370000000     C                   cat       @@subj:0      @@api
122380000000     C     '|fax='       cat       #fxtyp:0      @@fxtp
122390000000     C                   cat       @@fxtp:0      @@api
122400000000     C     #fxsvr        cat       @@fxsv:0      @faxsv
122410000000     C                   cat       @faxsv:0      @@api
122420000000     C     '|ntx='       cat       z$nte1:0      @@note
122430000000     C     @@note        cat       z$nte2:0      @note1
122440000000     C                   cat       @note1:0      @@api
122450000000     C                   cat       '|':0         @@api
122460000000      /free
122470000000       //
122480000000       endif;
122490000000       //
122500000000       // email invoice?
122510000000       //
122520000000       if ohemin = 'Y'
122530000000         and @emlop = 'Y';
122540000000         *in29 = *off;
122550000000         //
122560000000         //get default email from mail server options
122570000000         //
122580000000         @@apid = 'MS';
122590000000         @@rccd = 'MS';
122600000000         chain(n) cc1pky orct1r;
122610000000         *in90 = not %found;
122620000000         if *in90 = *off;
122630000000           xxdata = ccdata;
122640000000           @@efad = syseml;
122650000000         endif;
122660000000         //
122670000000         //get from email address from useml file.
122680000000         //
122690000000         chain @user useml;
122700000000         *in90 = not %found;
122710000000         if *in90 = *off;
122720000000           @@efad = ueemad;
122730000000         endif;
122740000000         //
122750000000      /end-free
122760000000     C     'eto='        cat       p1toad:0      @@eddr
122770000000     C                   cat       @@eddr:0      @@api
122780000000     C     '|ecc='       cat       p1ccad:0      @@ccad
122790000000     C                   cat       @@ccad:0      @@api
122800000000     C     '|ebcc='      cat       p1bcca:0      @@bcca
122810000000     C                   cat       @@bcca:0      @@api
122820000000     C     '|efrom='     cat       @@efad:0      @@fadd
122830000000     C                   cat       @@fadd:0      @@api
122840000000     C     #esevr        cat       @@emsv:0      @esevr
122850000000     C                   cat       @esevr:0      @@api
122860000000     C     #eatth        cat       p1atnm:0      @eatth
122870000000     C                   cat       '.pdf':0      @eatth
122880000000     C                   cat       @eatth:0      @@api
122890000000     C     #esubj        cat       p1subj:0      @esubj
122900000000     C                   cat       @esubj:0      @@api
122910000000     C                   cat       #ebody:0      @@api
122920000000     C                   cat       p1bdy1:0      @@api
122930000000     C                   cat       p1bdy2:0      @@api
122940000000     C                   cat       '|':0         @@api
122950000000      /free
122960000000       //
122970000000       endif;
122980000000       //
122990000000       // pass company number.
123000000000       //
123010000000       @@wrk2 = %editc(ohcono:'X');
123020000000      /end-free
123030000000     C     'comp='       cat       @@wrk2:0      @@comp
123040000000     C                   cat       @@comp:0      @@api
123050000000     C                   cat       '|':0         @@api
123060000000      /free
123070000000       //
123080000000       // not emailing.
123090000000       if ohemin = 'N'
123100000000         and @emlop = 'Y';
123110000000         @emlop = 'N';
123120000000       endif;
123130000000       //
123140000000       // not printing, faxing or emailing via optio.
123150000000       //
123160000000       if @prtop = 'N'
123170000000         and @faxop = 'N'
123180000000         and @emlop = 'N';
123190000000         *in68 = *off;
123200000000         *in69 = *off;
123210000000       endif;
123220000000       //
123230000000       endsr;
123240000000       //
123250000000       //
123260000000       //********************************************************* $csgn
123270000000       // check if order is a stock transfer order
123280000000       begsr $csgn;
123290000000       //
123300000000       xxortp = ohortp;
123310000000      /end-free
123320000000     C     ohcsor        cabne     'AT'          #csgn
123330000000      /free
123340000000       //
123350000000       // check if a stock transfer order is from a csgn warehouse
123360000000       oe526a@ = 'Y';
123370000000       p2whid = ohwhid;
123380000000       p2rsto = *blanks;
123390000000       OE526A ( p2shdn : p2whid : p2rsto );
123400000000       //
123410000000       // if so, flag as a return
123420000000       if p2rsto = 'R';
123430000000         xxortp = 'R';
123440000000       endif;
123450000000       //
123460030518      /end-free
123470000000     C     #csgn         endsr
123480000000      /free
123490000000       //******************************************************** $ic012
123500000000       // call revalue foreign invoices program
123510000000       begsr $ic012;
123520000000       //
123530000000       ic012@ = 'Y';
123540000000       IC012 ( @pshdn : @pcono : @porno :
123550000000       @porgn );
123560000000       //
123570000000       // get updated rate information from icorhd
123580000000       chain(n) od0key icorhdr;
123590000000       *in90 = not %found;
123600000000       //
123610000000       endsr;
123620040408       //
123630040408       // #*8y - added subroutine $dslot
123640040408       //******************************************************** $dslot
123650040408       // get drop shipment lot assignments and print
123660040408       //
123670040408       begsr $dslot;
123680040408       //
123690040408       // get all assignments for the invoiced item
123700040408       //
123710040408       setll odckey wmdl1r;
123720040408       reade odckey wmdl1r;
123730040408       dow not %eof(wmdl1);
123740040408       //
123750040408       // check overflow
123760040408         if *inof = *on
123770040408           or *inoe = *on
123780040408           or *inob = *on
123790040408           or *inod = *on;
123800040408           exsr $prtof;
123810040408         endif;
123820040408       //
123830040408       // print lots
123840040408         if skpprt <> 'Y';
123850040408           except dslot;
123860040408         endif;
123870040408       //
123880040408         reade odckey wmdl1r;
123890040408       enddo;
123900040408       //
123910040408       endsr;
123920040408       //
123930040408       // #*8y - added subroutine $dssrn
123940040408       //******************************************************** $dssrn
123950040408       // get drop shipment serial assignments and print
123960040408       //
123970040408       begsr $dssrn;
123980040408       //
123990040408       // get all assignments for the invoiced item
124000040408       //
124010040412       setll odckey wmdl1r;
124020040408       //
124030040408      /end-free
124040040413      //-------------------------------------
124050040408     C     loopds        tag
124060040413      //-------------------------------------
124070040408      /free
124080040408       //
124090040408       if crryon = 'Y';
124100040408         crryon = ' ';
124110040408         sn = *blanks;
124120040408         sn1 = *blanks;
124130040408         sn2 = *blanks;
124140040408         l = 1;
124150040408      /end-free
124160040408     C                   goto      carryd
124170040408      /free
124180040408       endif;
124190040408       //
124200040408       sn = *blanks;
124210040408       sn1 = *blanks;
124220040408       sn2 = *blanks;
124230040408       l = 0;
124240040408       p = 1;
124250040408       //
124260040408      /end-free
124270040413      //-------------------------------------
124280040408     C     loopfd        tag
124290040413      //-------------------------------------
124300040408      /free
124310040408       l = l + 1;
124320040408       //
124330040408       *in60 = *off;
124340040408       reade odckey wmdl1r;                                                     // eof
124350040408       *in60 = %eof;                                                            // eof
124360040408       if *in60 = *on;
124370040408      /end-free
124380040408     C                   goto      exitds
124390040408      /free
124400040408       endif;
124410040408       //
124420040408       fill = *blanks;
124430040408       w = 1;
124440040408       srn = *blanks;
124450040408      /end-free
124460040408     C                   movea     lzltsr        srn
124470040408      //-------------------------------------
124480040408     C     carryd        tag
124490040413      //-------------------------------------
124500040408      /free
124510040408       //
124520040408       // fill serial number print array routine
124530040408       dou w = 21;
124540040408         //
124550040408         sn1(l) = srn(w);
124560040408         //
124570040408         if srn(w) <> *blanks
124580040408           and fill = 'Y';
124590040408           fill = ' ';
124600040408         endif;
124610040408         //
124620040408         if srn(w) = *blanks;
124630040408           if fill = 'Y';
124640040408      /end-free
124650040408     C                   goto      fillds
124660040408      /free
124670040408           else;
124680040408             fill = 'Y';
124690040408           endif;
124700040408         endif;
124710040408         //
124720040408         if l < 70;
124730040408           l = l + 1;
124740040408         else;
124750040408      /end-free
124760040408     C                   goto      fillds
124770040408      /free
124780040408         endif;
124790040408         //
124800040408         w = w + 1;
124810040408       enddo;
124820040408       //
124830040408       if w = 21;
124840040408         l = l + 2;
124850040408       endif;
124860040408       //
124870040408      /end-free
124880040413      //-------------------------------------
124890040408     C     fillds        tag
124900040413      //-------------------------------------
124910040408      /free
124920040408       //
124930040408       if l < 70;
124940040408      /end-free
124950040408     C                   movea     sn1           sn2
124960040408     C                   goto      loopfd
124970040408      /free
124980040408       endif;
124990040408       //
125000040408       if fill = 'Y';
125010040408      /end-free
125020040408     C                   movea     sn1           sn2
125030040408     C                   goto      exitds
125040040408      /free
125050040408       endif;
125060040408       //
125070040408       if w >= 20;
125080040408      /end-free
125090040408     C                   movea     sn1           sn2
125100040408     C                   goto      exitds
125110040408      /free
125120040408       endif;
125130040408       //
125140040408       w = w + 1;
125150040408       //
125160040408       // is there more to the serial number? if so, print
125170040408       // the rest on next line.
125180040408       if srn(w) = *blanks
125190040408         and w <> 21
125200040408         and fill <> 'Y';
125210040408         crryon = 'Y';
125220040408      /end-free
125230040408     C                   movea     sn1           sn2
125240040408     C                   goto      exitds
125250040408      /free
125260040408       endif;
125270040408       //
125280040408       if srn(w) = *blanks;
125290040408      /end-free
125300040408     C                   movea     sn1           sn2
125310040408     C                   goto      exitds
125320040408      /free
125330040408       endif;
125340040408       readpe odckey wmdl1r;
125350040408       *in60 = %eof;
125360040408       //
125370040408      /end-free
125380040413      //-------------------------------------
125390040408     C     exitds        tag
125400040413      //-------------------------------------
125410040408      /free
125420040408       //
125430040408       // if called from warehouse sort routine ($wmsrt)
125440040413       // (ind. 35 is on) get out
125450040408       //
125460040408       if *in35 = *on;
125470040408         leavesr;
125480040408       endif;
125490040408       //
125500040408      /end-free
125510040408     C                   movea     sn2           sn
125520040408      /free
125530040408       //
125540040408       // check overflow
125550040408       if *inof = *on
125560040408         or *inoe = *on
125570040408         or *inob = *on
125580040408         or *inod = *on;
125590040408         exsr $prtof;
125600040408       endif;
125610040408       //
125620040408       // print serial numbers
125630040408       if skpprt <> 'Y';
125640040408         except dssrn;
125650040408       endif;
125660040408       //
125670040408       if *in60 = *off;
125680040408      /end-free
125690040408     C                   goto      loopds
125700040408      /free
125710040408       endif;
125720040408       //
125730040408       endsr;
125740040614       //****************************************************************
125750040614       // #*8? - Subroutine added
125760040614       //******************************************************** $xmlout
125770040614       // sumbit xml invioce
125780040614       begsr $xmlout;
125790040614       //
125800040614       // check if the user selected to send the invoice via xml
125810040614       @@apid = 'OE';
125820040614       @@gid6 = ohorno;
125830040614       @@hssq = 0;
125840040614       // XML invoice
125850040614       @@dcid = 'INV';
125860040614       chain gw0key gwout;
125870040614       if %found;
125880040614       // update the record as pending
125890040614         gostas = 'P';
125900040614      /end-free
125910040614     C     udate         mult      10000.01      date6
125920040614      /free
125930040614         gosbdt = date6;
125940040614         if gosbdt > 500000;
125950040614           gosbcc = 19;
125960040614         else;
125970040614           gosbcc = 20;
125980040614         endif;
125990040614         tim_chr = %char(%time():*HMS0);
126000040614         gosbtm = tim_num;
126010040614         update gwoutr;
126020040614       // get subscriber record
126030040614         chain gc0key gwcus;
126040040614         if not %found;
126050040614           chain gcpkey gwcus;
126060040614         endif;
126070040614         if %found;
126080040614           @xsubs = gcsubs;
126090040614           @xpass = gcpwrd;
126100040614           @xcono = %editc(ohcono:'X');
126110040614           @xorno = ohorno;
126120040614           @xorgn = %editc(ohorgn:'X');
126130040614           @xhssq = *all'0';
126140040614           @xcsno = %editc(ohcsno:'X');
126150040614           @xjobq = gcjobq;
126160040614           if gcstin = 0;
126170040614             @xstrt = '*CURRENT';
126180040614           else;
126190040614             @xstrt = %editw(gcstin:'  :  :  ');
126200040614             if %subst(@xstrt:1:1) = ' ';
126210040614               %subst(@xstrt:1:1) = '0';
126220040614             endif;
126230040614           endif;
126240040614           GW730P ( @xsubs : @xpass : @xcono : @xorno : @xorgn :
126250040614           @xhssq : @xcsno : @xjobq : @xstrt);
126260040614         endif;
126270040614       endif;
126280040614       //
126290040614       endsr;
126300040614       //
126310050301
126320050301       // #*9g - Beg of Add
126330050301       //*************************************************
126340050301       // Check if object exists
126350050301       begsr $chkobject;
126360050301
126370050301       xpflag = '1';
126380050301       // make sure object exists
126390050301       TPCKOBJP ( xpgmp : xlibp : xtypp :
126400050301       xpflag );
126410050301       // object exists if xpflag is still a '1'
126420050301
126430050301       endsr;
126440050301       // #*9g - End of Add
126450050301
126460000000       //
126470000000       //****************************************************************
126480000000       //  control file create record
126490000000      /end-free
126500000000     Oorctl     eadd         addctl
126510000000     O                       ctlkey              11
126520000000     O                                           13 'O#'
126530000000     O                                           26 '00001000'
126540000000     Oorctl     e            relctl                                               *
126550000000      //
126560000000     O          e            updctl
126570000000     O                       nxti#               26
126580000000     O          e            upctl2
126590000000     O                       rtvlog             151
126600000000      //
126610000000     Oorctl     e            updtrm
126620000000     O                                           49 'Y'
126630000000     Oorctl     e            updalw
126640000000     O                       alwchg              77
126650000000      //----------------------------------------------------------------
126660000000      // invoice
126670000000      //----------------------------------------------------------------
126680000000     Oapprtinv  e    31      headin         1 01
126690000000     O         and     n86
126700000000     O                       @trmsg              40
126710000000     O                    n24ttldsc              63
126720050526      //#*9i - beg of add
126730050706     O                                           80 'Page:'
126740050526     O                       page1         z     85
126750050526      //#*9i - end of add
126760000000     O          e    31      headin         1 03
126770000000     O         and     n86
126780000000     O               24 51n42                    66 '** CREDIT MEMO **'
126790000000     O               42                          65 '** CONSOLIDATED **'
126800000000      //*      e  113   31      headin
126810000000     O          e    31      headin         1 12
126820000000     O         and     n86
126830000000     O                    n24                     8 'Bill To:'
126840000000     O                 n26 42ohcono              11
126850000000     O                 n26 42                    12 '/'
126860000000     O                 n26 42oharcs              23
126870000000     O                  26 42ctcono              11
126880000000     O                  26 42                    12 '/'
126890000000     O                  26 42ctarcs              23
126900000000     O                    n24                    44 'Ship To:'
126910000000     O                    n24                    85 'Invoice'
126920000000     O          e    31      headin         1
126930000000     O         and     n86
126940000000      //
126950000000     O              n24n26   sld(1)              41
126960000000     O              n24n26   shp(1)              77
126970000000     O              n24n26   ohinno        z     85
126980000000     O               24n26   sld(1)              39
126990000000     O               24n26   shp(1)              77
127000000000     O               24n26   ohinno        z     85
127010000000      //
127020000000     O              n24 26   csl(1)              41
127030000000     O              n24 26   csh(1)              77
127040000000     O              n24 26   ctinno        z     85
127050000000     O               24 26   csl(1)              39
127060000000     O               24 26   csh(1)              77
127070000000     O               24 26   ctinno        z     85
127080000000     O          e    31      headin         1
127090000000     O         and     n86
127100000000      //
127110000000     O              n24n26   sld(2)              41
127120000000     O               24n26   sld(2)              39
127130000000     O              n24n26   shp(2)              77
127140000000     O               24n26   shp(2)              77
127150000000      //
127160000000     O              n24 26   csl(2)              41
127170000000     O               24 26   csl(2)              39
127180000000     O              n24 26   csh(2)              77
127190000000     O               24 26   csh(2)              77
127200000000     O          e    31      headin         1
127210000000     O         and     n86
127220000000     O              n24n26   sld(3)              41
127230000000     O               24n26   sld(3)              39
127240000000     O              n24n26   shp(3)              77
127250000000     O               24n26   shp(3)              77
127260000000      //
127270000000     O              n24 26   csl(3)              41
127280000000     O               24 26   csl(3)              39
127290000000     O              n24 26   csh(3)              77
127300000000     O               24 26   csh(3)              77
127310000000     O                    n24                    86 'Date/Time'
127320000000     O          e    31      headin         1
127330000000     O         and     n86
127340000000      //
127350000000     O              n24n26   sld(4)              41
127360000000     O               24n26   sld(4)              39
127370000000     O              n24n26   shp(4)              77
127380000000     O               24n26   shp(4)              77
127390000000     O              n24n26   invdto              86 '0  /  /  '
127400000000     O               24n26   invdto              86 '0  /  /  '
127410000000      //
127420000000     O              n24 26   csl(4)              41
127430000000     O               24 26   csl(4)              39
127440000000     O              n24 26   csh(4)              77
127450000000     O               24 26   csh(4)              77
127460000000     O              n24 26   ctivdt              86 '0  /  /  '
127470000000     O               24 26   ctivdt              86 '0  /  /  '
127480000000     O          e    31      headin         1
127490000000     O         and     n86
127500000000      //
127510000000     O              n24n26   sld(5)              41
127520000000     O               24n26   sld(5)              39
127530000000     O              n24n26   shp(5)              77
127540000000     O               24n26   shp(5)              77
127550000000      //
127560000000     O              n24 26   csl(5)              41
127570000000     O               24 26   csl(5)              39
127580000000     O              n24 26   csh(5)              77
127590000000     O               24 26   csh(5)              77
127600000000     O                       @@time              86 '  :  :  '
127610000000     O          e    31      headin         1
127620000000     O         and     n86
127630000000     O              n24n26   sld(6)              41
127640000000     O               24n26   sld(6)              39
127650000000     O              n24n26   shp(6)              77
127660000000     O               24n26   shp(6)              77
127670000000      //
127680000000     O              n24 26   csl(6)              41
127690000000     O               24 26   csl(6)              39
127700000000     O              n24 26   csh(6)              77
127710000000     O               24 26   csh(6)              77
127720000000     O          e    31      headin         0
127730000000     O         and     n86
127740000000     O              n24   n42                    10 'Co/Cust No'
127750000000     O              n24   n42                    22 'Order No'
127760000000     O              n24   n42                    38 'Customer PO #'
127770000000     O              n24   n42                    49 'Ter'
127780000000     O              n24   n42                    55 'Sls#'
127790000000     O                  76n77                    85 '*REPRINT*'
127800000000     O                     77                    85 '*REPRINT FROM HISTORY*'
127810000000     O          e    31      headin         1
127820000000     O         and     n86
127830000000     O              n42   n24                    10 '__________'
127840000000     O              n42   n24                    22 '________'
127850000000     O              n42   n24                    38 '_____________'
127860000000     O              n42   n24                    49 '___'
127870000000     O              n42   n24                    55 '____'
127880000000     O          e    31      headin         2
127890000000     O         and     n86
127900000000     O              n42      comcus              13 '  /          '
127910000000     O              n42      ohorno              19
127920000000     O              n42                          20 '/'
127930000000     O              n42      ohorgn              22
127940000000     O              n42   n24ohcspo              45
127950000000     O              n42   n24ohtert              49
127960000000     O              n42   n24ohsls1        z     55
127970000000     O              n42   n24ohnote              86
127980000000     O              n42    24ohcspo              45
127990000000     O              n42    24ohtert              49
128000000000     O              n42    24ohsls1        z     55
128010000000     O              n42    24ohnote              86
128020000000     O          e    31      headin         1
128030000000     O         and     n86
128040000000     O              n42   n24                     8 'Ship Via'
128050000000     O              n42      ohspin              31
128060000000      //
128070000000     O                    n24                    38 'Terms'
128080000000     O                 n26 15ohcdsp        4     46
128090000000     O                  26 15ctcdsp        4     46
128100000000     O                     15                    47 '%'
128110000000     O                 n26   terms               68
128120000000     O                  26   ctterm              68
128130000000     O              n42   n24                    74 'Ref#'
128140000000     O              n42      ohorrf              82
128150000000     O          e    31      headin         1
128160000000     O         and     n86
128170000000      //
128180000000     O                    n24                     8 'Pay Type'
128190000000     O              n26      paydsc              41
128200000000     O               26      ctpayd              41
128210000000     O                 n24n22                    47 'CC#'
128220000000     O              n26   n22@wcrcd              66
128230000000     O               26   n22ctcrcd              66
128240000000     O                 n24n22                    74 'Exp '
128250000000     O              n26   n22ohexpd              81 '  /  '
128260000000     O               26   n22ctexpd              81 '  /  '
128270000000      //
128280000000     O          e    31      headin         1
128290000000     O         and  n24n86
128300000000     O                    n24dshm                85
128310000000      //
128320000000     O          e    31      headin         1
128330000000     O         and  n24n86
128340000000     O                    n24                    12 'Item Number/'
128350000000     O                    n24                    23 'Description'
128360000000     O                    n24                    31 'U/M'
128370000000     O                    n24                    41 'Ordered'
128380000000     O                    n24                    53 'Shipped'
128390000000     O                    n24                    70 'Sell Price'
128400000000     O                    n24                    84 'Total'
128410000000     O          e    31      headin         1
128420000000     O         and     n86
128430000000     O                    n24dshm                85
128440000000      //
128450000000     O          e    31n66   headin         1
128460050414      // #*9h begin of change
128470050414      // O         and     n86
128480050414     O         and     n86n42
128490050414      // #*9h end of change
128500000000     O                                           16 'FOB Description:'
128510000000     O              n89n26   @cfobd              48
128520000000     O               89n26   @tfobd              48
128530000000     O                  26   ctfobd              48
128540000000     O          e    31 71   headin         1
128550000000     O         and     n86
128560000000     O                                           14 'Tax Invoice - '
128570000000     O                       @txlin              55
128580000000     O          e    31 72   headin         1
128590000000     O         and  n71n86
128600000000     O                                           14 'Tax Invoice - '
128610000000     O                       @txlin              55
128620000000     O          e    31 42   cuscom      1  1
128630000000     O         and     n86
128640000000     O               42      cocmtx              68
128650000000     O          e    31 42   crdmem      1  1
128660000000     O         and     n86
128670000000     O                                           17 '** CREDIT MEMO **'
128680000000     O          e    31 42   conhd1      1  1
128690000000     O         and     n86
128700000000     O                                            9 'Order No:'
128710000000     O                       ohorno              15
128720000000     O                                           16 '/'
128730000000     O              n12      ohorgn              18
128740000000     O               12      cxrlgn              18
128750000000     O                                           34 'Customer PO #:'
128760000000     O                       ohcspo              57
128770000000     O                                           62 'Ter:'
128780000000     O                       ohtert              66
128790000000     O                                           72 'Sls#:'
128800000000     O                       ohsls1        z     78
128810000000     O          e    31 42   conhd2         1
128820000000     O         and     n86
128830000000     O                                            9 'Ship Via:'
128840000000     O                       ohspin              32
128850000000     O                                           37 'Ref#:'
128860000000     O                       ohorrf              44
128870000000     O                       ohnote              77
128880000000     O          e    31 42   concrd         1
128890000000     O         and     n86
128900000000     O                                           47 'CC#'
128910000000     O                       @wcrcd              66
128920000000     O                                           74 'Exp '
128930000000     O                       ohexpd              81 '  /  '
128940000000     O          e    31 42   consld         1
128950000000     O         and     n86
128960000000     O                                            8 'Sold To:'
128970000000     O                       ohcono              11
128980000000     O                                           13 '/'
128990000000     O                       ohcsno              23
129000000000     O                       @@csnm              55
129010000000     O          e    31 42   consh1         1
129020000000     O         and     n86
129030000000     O                                            8 'Ship To:'
129040000000     O                       sh(1)               44
129050000000     O          e    31 42   consh2         1
129060000000     O         and     n86
129070000000     O                       sh(2)               44
129080000000     O          e    31 42   consh3         1
129090000000     O         and     n86
129100000000     O                       sh(3)               44
129110000000     O          e    31 42   consh4         1
129120000000     O         and     n86
129130000000     O                       sh(4)               44
129140000000     O          e    31 42   consh5
129150000000     O         and     n86
129160000000     O                       sh(5)               44
129170000000     O          e    31 42   consh6
129180000000     O         and     n86
129190000000     O                       sh(6)               44
129200000000     O          e    31 42   consh7
129210000000     O         and     n86
129220000000     O                       sh(7)               44
129230000000     O          e    31 42   consh8
129240000000     O         and     n86
129250000000     O                       sh(8)               44
129260050414      // #*9h begin of add
129270050414     O          e    31 42n86fobdes         1
129280050414     O                                           16 'FOB Description:'
129290050414     O                       @tfobd              48
129300050414      // #*9h end of add
129310000000      //
129320000000     O          e    31 71   detlin      1  1
129330000000     O         and     n86
129340000000      //*
129350000000     O          e    31   n57detlin      1  1
129360000000     O         and     n86
129370000000     O              n65      oditno              27
129380000000     O               65      odorit              27
129390000000     O                       odunms              31
129400000000     O                       odqtor              43 '      0.   -'
129410000000     O                       odqtsh              55 '      0.   -'
129420000000     O                    n75@@aslp              67 '     0.     '
129430000000     O                     75@@aspt              68 '      0.     '
129440000000     O                     50                    86 'T'
129450000000     O                    n75@@prum              71
129460000000     O                     75@@prum              72
129470000000     O          e    31      detlin         1
129480000000     O         and     n86
129490031216      // #*8r - Beg of Chg
129500031216     O***                    oditd1              31
129510031216     O                       oditd1              33
129520031216      // #*8r - End of Chg
129530000000     O                 n75n23                    43 'B/O'
129540000000     O                 n75n23odboqt              55 '      0.   -'
129550000000     O                 n75n25odexwt              68 '      0.    -'
129560000000     O                 n75n25                    74 'C Wgt'
129570000000     O                     75odlnat              82 '            0.  -'
129580000000     O                  70n75odlnam              82 ' ,   ,  0.  -'
129590000000     O                 n70   odlnam              85 ' ,   ,  0.  -'
129600000000     O                  70   @@symo              85
129610000000     O          e    31      dsc2           1
129620000000     O         and     n86
129630031216      // #*8r - Beg of Chg
129640031216     O***                    oditd2              31
129650031216     O                       oditd2              33
129660031216      // #*8r - End of Chg
129670000000     O                  75n23                    43 'B/O'
129680000000     O                  75n23odboqt              55 '      0.   -'
129690000000     O                  75n25odexwt              68 '      0.    -'
129700000000     O                  75n25                    74 'C Wgt'
129710000000     O          e    31      extic          1
129720000000     O         and     n86
129730000000     O                       incmtx              62
129740000000     O          e    31    56detln1         1
129750000000     O         and     n86
129760000000     O                 n65 57oditno              27
129770000000     O                  65 57odorit              27
129780031216      // #*8r - Beg of Chg
129790031216     O***                 n57                    22 'Customer Ordering U/M:'
129800031216     O                    n57                    24 'Customer Ordering U/M:'
129810031216      // #*8r - End of Chg
129820000000     O                    n57                    27 '('
129830000000     O                       odcoum              31
129840000000     O                       coqtor              43 '      0.   -'
129850000000     O                       coqtsh              55 '      0.   -'
129860000000     O                    n57                    57 ')'
129870000000     O                 n75 57@@aslp              67 '     0.     '
129880000000     O                  75 57@@aspt              68 '      0.     '
129890000000     O                  50 57                    85 'T'
129900000000     O                 n75 57@@prum              70
129910000000     O                  75 57@@prum              71
129920000000     O          e    31      msds           1
129930000000     O         and     n86
129940000000     O                                           14 '** MSDS **'
129950000000     O          e    31      orgitm         1
129960000000     O         and     n86
129970031216      // #*8r - Beg of Chg
129980031216     O***                    odorit              27
129990031216     O                       odorit              29
130000031216      // #*8r - End of Chg
130010000000     O          e    31      spcl        1  2
130020000000     O         and     n86
130030000000     O                       oditd1              31
130040000000     O                       oditd2              62
130050000000     O              n75      odlnam              84 ' ,   ,  0.  -'
130060000000     O               75      odlnat              84 '  ,   ,   ,  0.  -'
130070000000     O                     50                    85 'T'
130080000000     O          e    31      msge           1
130090000000     O         and     n86
130100000000     O                       oditd1              31
130110000000     O                       oditd2              62
130120000000      // header for component detail
130130000000     O          e    31      cnsist         1
130140000000     O         and     n86
130150000000     O                                           15 'CONSISTING OF:'
130160000000      // detail component information
130170000000     O          e    31      cdet           1
130180000000     O         and     n86
130190000000     O                       bccmit              29
130200000000     O                       bcqtpr        k     55
130210000000     O                                           56 '*'
130220000000     O                       bccmum              70
130230000000     O          e    31n07   cdet           1
130240000000     O         and     n86
130250000000     O                       imitd1              33
130260000000     O          e    45n07n46cdet           1
130270000000     O         and     n86
130280000000     O         and   31
130290000000     O                       imitd2              33
130300000000     O          e    55 31   cdet           1
130310000000     O         and     n86
130320000000     O                                           14 '** MSDS **'
130330000000     O          e    31      endmsg         2
130340000000     O         and     n86
130350000000     O                                           44 '* END *'
130360000000      // lot's
130370000000     O          e    31      lota           1
130380000000     O         and     n86
130390000000     O                                           10 'LOT/QTY:'
130400000000     O              n13      wnltsr              33
130410000000     O              n13      wnstqt              55 '      0.   -'
130420000000     O               13      w9ltsr              33
130430000000     O               13      w9stqt              55 '      0.   -'
130440040408      // #*8y - begin add
130450040408      // drop ship lots
130460040408     O          e    31      dslot          1
130470040408     O         and     n86
130480040408     O                                           10 'LOT/QTY:'
130490040408     O                       lzltsr              33
130500040408     O                       lzstqt              55 '      0.   -'
130510040408      // #*8y - end add
130520000000      // serial number's
130530000000     O          e    31      srna           1
130540000000     O         and     n86
130550000000     O                                            5 'SN:'
130560000000     O                       sn                  80
130570040408      // #*8y - begin add
130580040408     O          e    31      dssrn          1
130590040408     O         and     n86
130600040408     O                                            5 'SN:'
130610040408     O                       sn                  80
130620040408      // #*8y - end add
130630000000     O          e    31      smsg           1
130640000000     O         and     n86
130650000000     O                    n09msgtxt              64
130660000000     O                     09                    55 '-MESSAGE TEXT MISSING-'
130670000000     O          e    31      contin         1 59
130680000000     O         and     n86
130690000000     O                                           85 '* CONTINUED *'
130700000000     O          e    31n42   bottm1      1  1
130710000000     O         and     n86
130720000000     O               17n70   ohcdam              17 '  ,   , $0.  '
130730000000     O               17n75 70ohcdam              17 ' ,   ,  0.  '
130740000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
130750000000     O               17 70   @@symo              21
130760000000     O               17      msg(1)              48
130770000000     O               17   n14                    58 'WITHIN TERMS'
130780000000     O               17    14cdate               57 '0  /  /  '
130790000000     O              n17                          48 'INVOICE DUE:'
130800000000     O              n17      ndate               57 '0  /  /  '
130810000000     O          e    31 42   bottm1      1  1
130820000000     O         and     n86
130830000000     O               17n70   ctcdam              17 '    ,   , $0.  '
130840000000     O               17n75 70ctcdam              17 '   ,   ,  0.  '
130850000000     O               17 75   ctcdat              17 '  ,   ,   ,  0.  '
130860000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
130870000000     O               17 70   @@symo              21
130880000000     O               17      msg(1)              48
130890000000     O               17   n14                    58 'WITHIN TERMS'
130900000000     O               17    14cdate               57 '0  /  /  '
130910000000     O              n17                          48 'INVOICE DUE:'
130920000000     O              n17      ndate               57 '0  /  /  '
130930000000     O          e    31      boxlin         1
130940000000     O         and     n86
130950000000     O                       boxhd               12
130960000000     O                       box(1)              19
130970000000     O                       box(2)              26
130980000000     O                       box(3)              33
130990000000     O                       box(4)              40
131000000000     O                       box(5)              47
131010000000     O                       box(6)              54
131020000000     O                       box(7)              61
131030000000     O                       box(8)              68
131040000000     O          e    31      splthd      2  1
131050000000     O         and     n86
131060000000     O                    n17                    20 '********************'
131070000000     O                    n17                    40 ' INVOICE PAYMENT INF'
131080000000     O                    n17                    60 'ORMATION ***********'
131090000000     O                    n17                    70 '**********'
131100000000     O                     17                    20 '********************'
131110000000     O                     17                    40 '******** INVOICE PAY'
131120000000     O                     17                    60 'MENT INFORMATION ***'
131130000000     O                     17                    80 '********************'
131140000000     O                     17                    85 '*****'
131150000000     O          e    31      splthd         1
131160000000     O         and     n86
131170000000     O                    n17                    20 '**  INV NO. DUE DATE'
131180000000     O                  48n17                    41 '            DEPOSIT '
131190000000     O                    n17                    70 'INVOICE AMOUNT DUE **'
131200000000     O                     17                    20 'INV NO.  DUE DATE   '
131210000000     O                  48 17                    38 '  DEPOSIT         '
131220000000     O                     17                    56 'INVOICE AMOUNT DUE'
131230000000     O                     17                    60 ' CSH'
131240000000     O                     17                    80 ' DSC DT  CASH DISC  '
131250000000     O          e    31      spltdt         1
131260000000     O         and     n86
131270000000     O                    n17                     2 '**'
131280000000     O                    n17@@inno        z     11
131290000000     O                    n17ntdtex              20 '0  /  /  '
131300000000     O               47n75n17wkdpam        j     41
131310000000     O               47 75n17wkdpat        j     41
131320000000     O                    n17@@amd$        j     63
131330000000     O                  70n17@@symo              67
131340000000     O                    n17                    70 '**'
131350000000     O                     17@@inno        z      8
131360000000     O                     17ntdtex              17 '0  /  /  '
131370000000     O               47n75 17wkdpam        j     32
131380000000     O               47 75 17wkdpat        j     32
131390000000     O                     17@@amd$        j     52
131400000000     O                  70 17@@symo              56
131410000000     O                     17cdsdtx              65 '0  /  /  '
131420000000     O                     17@@cds$        j     85
131430000000     O          e    31      spltbt         2
131440000000     O         and     n86
131450000000     O                    n17                    20 '********************'
131460000000     O                    n17                    40 '********************'
131470000000     O                    n17                    60 '********************'
131480000000     O                    n17                    70 '**********'
131490000000     O                     17                    20 '********************'
131500000000     O                     17                    40 '********************'
131510000000     O                     17                    60 '********************'
131520000000     O                     17                    80 '********************'
131530000000     O                     17                    85 '*****'
131540000000     O          e    31      unvmg1      3  1
131550000000     O         and     n86
131560000000     O                       unvm(1)             64
131570000000     O          e    31      unvmg2         1
131580000000     O         and     n86
131590000000     O                       unvm(2)             64
131600000000     O          e    31      unvmg3         2
131610000000     O         and     n86
131620000000     O                       unvm(3)             64
131630000000     O          e    31      hazmsg         1
131640000000     O         and     n86
131650000000     O                                           35 'HAZMAT SHIPPING PAPERS'
131660000000     O          e    31n42   bottom         1 55
131670000000     O         and     n86
131680000000     O               20                          58 'TRADE DISCOUNT:'
131690000000     O               20   n70ohtdam        k     85
131700000000     O               20n75 70ohtdam        k     82
131710000000     O               20 75   ohtdat        k     82
131720000000     O          e    31 42   bottom         1 55
131730000000     O         and     n86
131740000000     O               20                          58 'TRADE DISCOUNT:'
131750000000     O               20   n70cttdam        k     85
131760000000     O               20n75 70cttdam        k     82
131770000000     O               20 75   tdatic        k     82
131780000000     O          e    31n42   bottom         1
131790000000     O         and     n86
131800000000     O               18                          58 'FEDERAL EXCISE TAX:'
131810000000     O               18   n70ohfeam        k     85
131820000000     O               18n75 70ohfeam        k     82
131830000000     O               18 75   ohfeat        k     82
131840000000     O          e    31 42   bottom         1
131850000000     O         and     n86
131860000000     O               18                          58 'FEDERAL EXCISE TAX:'
131870000000     O               18   n70ctfeam        k     85
131880000000     O               18n75 70ctfeam        k     82
131890000000     O               18 75   featic        k     82
131900000000     O          e    31n42   bottom         1
131910000000     O         and     n86
131920000000     O               19                          58 'CONTAINER CHARGE:'
131930000000     O               19   n70ohcnct        k     85
131940000000     O               19n75 70ohcnct        k     82
131950000000     O               19 75   ohcctt        k     82
131960000000     O          e    31 42   bottom         1
131970000000     O         and     n86
131980000000     O               19                          58 'CONTAINER CHARGE:'
131990000000     O               19   n70ctcnct        k     85
132000000000     O               19n75 70ctcnct        k     82
132010000000     O               19 75   ccttic        k     82
132020000000     O          e    31n42   bottom      1  1
132030000000     O         and     n86
132040000000     O                                           58 'SUBTOTAL:'
132050000000     O                    n70subtot        k     85
132060000000     O              n75    70subtot        k     82
132070000000     O               75      icsubt        k     82
132080000000     O          e    31 42   bottom      1  1
132090000000     O         and     n86
132100000000     O                                           58 'SUBTOTAL:'
132110000000     O                    n70csbtot        k     85
132120000000     O              n75    70csbtot        k     82
132130000000     O               75      subtic        k     82
132140000000     O                  70   @@symo              85
132150000000     O          e    31n71n72bottom         1
132160000000     O         and  n42
132170000000     O         and     n86
132180000000     O               21                          58 'SALES TAX:'
132190000000     O               21   n70ohtxam        k     85
132200000000     O               21n75 70ohtxam        k     82
132210000000     O               21 75   ohtxat        k     82
132220000000     O          e    31n71n72bottom         1
132230000000     O         and   42
132240000000     O         and     n86
132250000000     O               21                          58 'SALES TAX:'
132260000000     O               21   n70cttaxm        k     85
132270000000     O               21n75 70cttaxm        k     82
132280000000     O               21 75   txatic        k     82
132290000000     O          e    31 71n42bottom         1
132300000000     O         and     n86
132310000000     O               21    73                    18 'GST REGISTRATION #'
132320000000     O               21    73gstr#o              34
132330000000     O               21                          58 'GST:'
132340000000     O               21n75n70ohgtxa        k     85
132350000000     O               21n75 70ohgtxa        k     82
132360000000     O               21 75n70ohgtxt        k     82
132370000000     O               21 75 70ohgtxt        k     82
132380000000     O          e    31 71 42bottom         1
132390000000     O         and     n86
132400000000     O               21    73                    18 'GST REGISTRATION #'
132410000000     O               21    73gstr#o              34
132420000000     O               21                          58 'GST:'
132430000000     O               21n75n70ctgttx        k     85
132440000000     O               21 75n70ctgttt        k     85
132450000000     O               21n75 70ctgttx        k     82
132460000000     O               21 75 70ctgttt        k     82
132470000000     O          e    31 72n42bottom         1
132480000000     O         and     n86
132490000000     O               21                          58 'PST:'
132500000000     O               21n75n70ohptxa        k     85
132510000000     O               21n75 70ohptxa        k     82
132520000000     O               21 75n70ohptxt        k     82
132530000000     O               21 75 70ohptxt        k     82
132540000000     O          e    31 72 42bottom         1
132550000000     O         and     n86
132560000000     O               21                          58 'PST:'
132570000000     O               21n75n70ctpttx        k     85
132580000000     O               21 75n70ctpttt        k     85
132590000000     O               21n75 70ctpttx        k     82
132600000000     O               21 75 70ctpttt        k     82
132610000000     O          e    31n42   bottom         1
132620000000     O         and     n86
132630000000     O                                           58 'TOTAL:'
132640000000     O                    n70itotal        k     85
132650000000     O                 n75 70itotal        k     82
132660000000     O                  75   ictotl        k     82
132670000000     O                  70   @@symo              85
132680000000     O          e    31 42   bottom         1
132690000000     O         and     n86
132700000000     O                                           58 'TOTAL:'
132710000000     O                    n70citotl        k     85
132720000000     O                 n75 70citotl        k     82
132730000000     O                  75   totlic        k     82
132740000000     O                  70   @@symo              85
132750000000     O          e    31n72n42bottom      1  1
132760000000     O         and     n86
132770000000     O                                           58 'DEPOSIT:'
132780000000     O                    n70ohdpam        k     85
132790000000     O                 n75 70ohdpam        k     82
132800000000     O                  75   ohdpat        k     82
132810000000     O          e    31n72 42bottom      1  1
132820000000     O         and     n86
132830000000     O                                           58 'DEPOSIT:'
132840000000     O                    n70ctdpam        k     85
132850000000     O                 n75 70ctdpam        k     82
132860000000     O                  75   dpatic        k     82
132870000000     O          e    31 72n42bottom      1  1
132880000000     O         and     n86
132890000000     O                                           58 'DEPOSIT:'
132900000000     O                    n70ohdpam        k     85
132910000000     O                 n75 70ohdpam        k     82
132920000000     O                  75   ohdpat        k     82
132930000000     O          e    31 72 42bottom         1
132940000000     O         and     n86
132950000000     O                                           58 'DEPOSIT:'
132960000000     O                    n70ctdpam        k     85
132970000000     O                 n75 70ctdpam        k     82
132980000000     O                  75   dpatic        k     82
132990000000      //
133000000000     O          e    31n42   bottom         1
133010000000     O         and     n86
133020000000     O                                           58 'AMT DUE:'
133030000000     O                    n70amtdue        j     85
133040000000     O              n75 70   amtdue        j     82
133050000000     O               75      icamnt        j     82
133060000000     O                  70   @@symo              85
133070000000     O          e    31 42   bottom         1
133080000000     O         and     n86
133090000000     O                                           58 'AMT DUE:'
133100000000     O                    n70camtdu        j     85
133110000000     O              n75 70   camtdu        j     82
133120000000     O               75      amntic        j     82
133130000000     O                  70   @@symo              85
133140000000      //
133150000000     Oapprtin3  e    29      headin         1 02
133160000000     O         and     n86
133170000000     O                       @trmsg              40
133180000000     O                       ttldsc              63
133190050526      //#*9i - beg of add
133200050527     O                                           80 'Page:'
133210050526     O                       page2         z     85
133220050526      //#*9i - end of add
133230000000     O          e    29      headin         1 04
133240000000     O         and     n86
133250000000     O                  51n42                    66 '** CREDIT MEMO **'
133260000000     O               42                          65 '** CONSOLIDATED **'
133270000000     O          e    29      headin         1 13
133280000000     O         and     n86
133290000000     O                                            8 'Bill To:'
133300000000     O              n26    42ohcono              11
133310000000     O              n26    42                    12 '/'
133320000000     O              n26    42oharcs              23
133330000000      //
133340000000     O               26    42ctcono              11
133350000000     O               26    42                    12 '/'
133360000000     O               26    42ctarcs              23
133370000000     O                                           44 'Ship To:'
133380000000     O                                           85 'Invoice'
133390000000     O          e    29      headin         1
133400000000     O         and     n86
133410000000     O              n26      sld(1)              41
133420000000     O              n26      shp(1)              77
133430000000     O              n26      ohinno        z     85
133440000000     O              n26      sld(1)              39
133450000000     O              n26      shp(1)              77
133460000000     O              n26      ohinno        z     85
133470000000      //
133480000000     O               26      csl(1)              41
133490000000     O               26      csh(1)              77
133500000000     O               26      ctinno        z     85
133510000000     O               26      csl(1)              39
133520000000     O               26      csh(1)              77
133530000000     O               26      ctinno        z     85
133540000000     O          e    29      headin         1
133550000000     O         and     n86
133560000000     O              n26      sld(2)              41
133570000000     O              n26      sld(2)              39
133580000000     O              n26      shp(2)              77
133590000000     O              n26      shp(2)              77
133600000000      //
133610000000     O               26      csl(2)              41
133620000000     O               26      csl(2)              39
133630000000     O               26      csh(2)              77
133640000000     O               26      csh(2)              77
133650000000     O          e    29      headin         1
133660000000     O         and     n86
133670000000     O              n26      sld(3)              41
133680000000     O              n26      sld(3)              39
133690000000     O              n26      shp(3)              77
133700000000     O              n26      shp(3)              77
133710000000      //
133720000000     O               26      csl(3)              41
133730000000     O               26      csl(3)              39
133740000000     O               26      csh(3)              77
133750000000     O               26      csh(3)              77
133760000000     O                                           86 'Date/Time'
133770000000     O          e    29      headin         1
133780000000     O         and     n86
133790000000     O              n26      sld(4)              41
133800000000     O              n26      sld(4)              39
133810000000     O              n26      shp(4)              77
133820000000     O              n26      shp(4)              77
133830000000     O              n26      invdto              86 '0  /  /  '
133840000000     O              n26      invdto              86 '0  /  /  '
133850000000      //
133860000000     O               26      csl(4)              41
133870000000     O               26      csl(4)              39
133880000000     O               26      csh(4)              77
133890000000     O               26      csh(4)              77
133900000000     O               26      ctivdt              86 '0  /  /  '
133910000000     O               26      ctivdt              86 '0  /  /  '
133920000000     O          e    29      headin         1
133930000000     O         and     n86
133940000000     O              n26      sld(5)              41
133950000000     O              n26      sld(5)              39
133960000000     O              n26      shp(5)              77
133970000000     O              n26      shp(5)              77
133980000000      //
133990000000     O               26      csl(5)              41
134000000000     O               26      csl(5)              39
134010000000     O               26      csh(5)              77
134020000000     O               26      csh(5)              77
134030000000     O                       @@time              86 '  :  :  '
134040000000     O          e    29      headin         1
134050000000     O         and     n86
134060000000     O              n26      sld(6)              41
134070000000     O              n26      sld(6)              39
134080000000     O              n26      shp(6)              77
134090000000     O              n26      shp(6)              77
134100000000      //
134110000000     O               26      csl(6)              41
134120000000     O               26      csl(6)              39
134130000000     O               26      csh(6)              77
134140000000     O               26      csh(6)              77
134150000000     O          e    29      headin         1
134160000000     O         and     n86
134170000000     O                    n42                    10 'Co/Cust No'
134180000000     O                    n42                    22 'Order No'
134190000000     O                    n42                    38 'Customer PO #'
134200000000     O                    n42                    49 'Ter'
134210000000     O                    n42                    55 'Sls#'
134220000000     O                  76n77                    85 '*REPRINT*'
134230000000     O                     77                    85 '*REPRINT FROM HISTORY*'
134240000000     O          e    29      headin         1
134250000000     O         and     n86
134260000000     O              n42                          10 '----------'
134270000000     O              n42                          22 '--------'
134280000000     O              n42                          38 '-------------'
134290000000     O              n42                          49 '---'
134300000000     O              n42                          55 '----'
134310000000     O          e    29      headin         2
134320000000     O         and     n86
134330000000     O              n42      comcus              13 '  /          '
134340000000     O              n42      ohorno              19
134350000000     O              n42                          20 '/'
134360000000     O              n42      ohorgn              22
134370000000     O              n42      ohcspo              45
134380000000     O              n42      ohtert              49
134390000000     O              n42      ohsls1        z     55
134400000000     O              n42      ohnote              86
134410000000     O          e    29      headin         1
134420000000     O         and     n86
134430000000     O              n42                           8 'Ship Via'
134440000000     O              n42      ohspin              31
134450000000      //
134460000000     O                                           38 'Terms'
134470000000     O                 n26 15ohcdsp        4     46
134480000000     O                  26 15ctcdsp        4     46
134490000000     O                     15                    47 '%'
134500000000     O                 n26   terms               68
134510000000     O                  26   ctterm              68
134520000000     O              n42                          74 'Ref#'
134530000000     O              n42      ohorrf              82
134540000000     O          e    29      headin         1
134550000000     O         and     n86
134560000000      //
134570000000     O                                            8 'Pay Type'
134580000000     O              n26      paydsc              41
134590000000     O               26      ctpayd              41
134600000000     O                    n22                    47 'CC#'
134610000000     O              n26   n22@wcrcd              66
134620000000     O               26   n22ctcrcd              66
134630000000     O                    n22                    74 'Exp '
134640000000     O              n26   n22ohexpd              81 '  /  '
134650000000     O               26   n22ctexpd              81 '  /  '
134660000000     O          e    29      headin         1
134670000000     O         and     n86
134680000000     O                       dshm                85
134690000000     O          e    29      headin         1
134700000000     O         and     n86
134710000000     O                                           12 'Item Number/'
134720000000     O                                           23 'Description'
134730000000     O                                           31 'U/M'
134740000000     O                                           41 'Ordered'
134750000000     O                                           53 'Shipped'
134760000000     O                                           70 'Sell Price'
134770000000     O                                           84 'Total'
134780000000     O          e    29      headin         1
134790000000     O         and     n86
134800000000     O                       dshm                85
134810000000     O          e    29n66   headin         1
134820050414      // #*9h begin of change
134830050414      // O         and     n86
134840050414     O         and     n86n42
134850050414      // #*9h end of change
134860000000     O                                           16 'FOB Description:'
134870000000     O              n26n89   @cfobd              48
134880000000     O              n26 89   @tfobd              48
134890000000      //
134900000000     O               26      ctfobd              48
134910000000     O          e    29 71   headin         1
134920000000     O         and     n86
134930000000     O                                           14 'Tax Invoice - '
134940000000     O                       @txlin              55
134950000000     O          e    29 72   headin         1
134960000000     O         and  n71n86
134970000000     O                                           14 'Tax Invoice - '
134980000000     O                       @txlin              55
134990000000     O          e    29 42   cuscom      1  1
135000000000     O         and     n86
135010000000     O               42      cocmtx              68
135020000000     O          e    29 42   crdmem      1  1
135030000000     O         and     n86
135040000000     O                                           17 '** CREDIT MEMO **'
135050000000     O          e    29 42   conhd1      1  1
135060000000     O         and     n86
135070000000     O                                            9 'Order No:'
135080000000     O                       ohorno              15
135090000000     O                                           16 '/'
135100000000     O              n12      ohorgn              18
135110000000     O               12      cxrlgn              18
135120000000     O                                           34 'Customer PO #:'
135130000000     O                       ohcspo              57
135140000000     O                                           62 'Ter:'
135150000000     O                       ohtert              66
135160000000     O                                           72 'Sls#:'
135170000000     O                       ohsls1        z     78
135180000000     O          e    29 42   conhd2         1
135190000000     O         and     n86
135200000000     O                                            9 'Ship Via:'
135210000000     O                       ohspin              32
135220000000     O                                           37 'Ref#:'
135230000000     O                       ohorrf              44
135240000000     O                       ohnote              77
135250000000     O          e    29 42   concrd         1
135260000000     O         and     n86
135270000000     O                                           47 'CC#'
135280000000     O                       @wcrcd              66
135290000000     O                                           74 'Exp '
135300000000     O                       ohexpd              81 '  /  '
135310000000     O          e    29 42   consld         1
135320000000     O         and     n86
135330000000     O                                            8 'Sold To:'
135340000000     O                       ohcono              11
135350000000     O                                           13 '/'
135360000000     O                       ohcsno              23
135370000000     O                       @@csnm              55
135380000000     O          e    29 42   consh1         1
135390000000     O         and     n86
135400000000     O                                            8 'Ship To:'
135410000000     O                       sh(1)               44
135420000000     O          e    29 42   consh2         1
135430000000     O         and     n86
135440000000     O                       sh(2)               44
135450000000     O          e    29 42   consh3         1
135460000000     O         and     n86
135470000000     O                       sh(3)               44
135480000000     O          e    29 42   consh4         1
135490000000     O         and     n86
135500000000     O                       sh(4)               44
135510000000     O          e    29 42   consh5
135520000000     O         and     n86
135530000000     O                       sh(5)               44
135540000000     O          e    29 42   consh6
135550000000     O         and     n86
135560000000     O                       sh(6)               44
135570000000     O          e    29 42   consh7
135580000000     O         and     n86
135590000000     O                       sh(7)               44
135600000000     O          e    29 42   consh8
135610000000     O         and     n86
135620000000     O                       sh(8)               44
135630000000     O          e    29   n57detlin      1  1
135640000000     O         and     n86
135650000000     O              n65      oditno              27
135660000000     O               65      odorit              27
135670000000     O                       odunms              31
135680000000     O                       odqtor              43 '      0.   -'
135690000000     O                       odqtsh              55 '      0.   -'
135700000000     O                    n75@@aslp              67 '     0.     '
135710000000     O                     75@@aspt              68 '      0.     '
135720000000     O                     50                    86 'T'
135730000000     O                    n75@@prum              71
135740000000     O                     75@@prum              72
135750000000     O          e    29      detlin         1
135760000000     O         and     n86
135770031216      // #*8r - Beg of Chg
135780031216     O***                    oditd1              31
135790031216     O                       oditd1              33
135800031216      // #*8r - End of Chg
135810000000     O                 n75n23                    43 'B/O'
135820000000     O                 n75n23odboqt              55 '      0.   -'
135830000000     O                 n75n25odexwt              68 '      0.    -'
135840000000     O                 n75n25                    74 'C Wgt'
135850000000     O                     75odlnat              82 '            0.  -'
135860000000     O                    n75odlnam              82 ' ,   ,  0.  -'
135870000000     O                  70   @@symo              85
135880000000     O          e    29      dsc2           1
135890000000     O         and     n86
135900031216      // #*8r - Beg of Chg
135910031216     O***                    oditd2              31
135920031216     O                       oditd2              33
135930031216      // #*8r - End of Chg
135940000000     O                  75n23                    43 'B/O'
135950000000     O                  75n23odboqt              55 '      0.   -'
135960000000     O                  75n25odexwt              68 '      0.    -'
135970000000     O                  75n25                    74 'C Wgt'
135980000000     O          e    29      extic          1
135990000000     O         and     n86
136000000000     O                       incmtx              62
136010000000     O          e    29    56detln1         1
136020000000     O         and     n86
136030000000     O                 n65 57oditno              27
136040000000     O                  65 57odorit              27
136050031216      // #*8r - Beg of Chg
136060031216     O***                 n57                    22 'Customer Ordering U/M:'
136070031216     O                    n57                    24 'Customer Ordering U/M:'
136080031216      // #*8r - End of Chg
136090000000     O                    n57                    27 '('
136100000000     O                       odcoum              31
136110000000     O                       coqtor              43 '      0.   -'
136120000000     O                       coqtsh              55 '      0.   -'
136130000000     O                    n57                    57 ')'
136140000000     O                 n75 57@@aslp              67 '     0.     '
136150000000     O                  75 57@@aspt              68 '      0.     '
136160000000     O                  50 57                    85 'T'
136170000000     O                 n75 57@@prum              70
136180000000     O                  75 57@@prum              71
136190000000     O          e    29      msds           1
136200000000     O         and     n86
136210000000     O                                           14 '** MSDS **'
136220000000     O          e    29      orgitm         1
136230000000     O         and     n86
136240031216      // #*8r - Beg of Chg
136250031216     O***                    odorit              27
136260031216     O                       odorit              29
136270031216      // #*8r - End of Chg
136280000000     O          e    29      spcl        1  2
136290000000     O         and     n86
136300000000     O                       oditd1              31
136310000000     O                       oditd2              62
136320000000     O              n75      odlnam              84 ' ,   ,  0.  -'
136330000000     O               75      odlnat              84 '  ,   ,   ,  0.  -'
136340000000     O                     50                    85 'T'
136350000000     O          e    29      msge           1
136360000000     O         and     n86
136370000000     O                       oditd1              31
136380000000     O                       oditd2              62
136390000000      // header for component detail
136400000000     O          e    29      cnsist         1
136410000000     O         and     n86
136420000000     O                                           15 'CONSISTING OF:'
136430000000      // detail component information
136440000000     O          e    29      cdet           1
136450000000     O         and     n86
136460000000     O                       bccmit              29
136470000000     O                       bcqtpr        k     55
136480000000     O                                           56 '*'
136490000000     O                       bccmum              70
136500000000     O          e    29n07   cdet           1
136510000000     O         and     n86
136520000000     O                       imitd1              33
136530000000     O          e    45n07n46cdet           1
136540000000     O         and     n86
136550000000     O         and   29
136560000000     O                       imitd2              33
136570000000     O          e    55 29   cdet           1
136580000000     O         and     n86
136590000000     O                                           14 '** MSDS **'
136600000000     O          e    29      endmsg         2
136610000000     O         and     n86
136620000000     O                                           44 '* END *'
136630000000      // lot's
136640000000     O          e    29      lota           1
136650000000     O         and     n86
136660000000     O                                           10 'LOT/QTY:'
136670000000     O              n13      wnltsr              33
136680000000     O              n13      wnstqt              55 '      0.   -'
136690000000     O               13      w9ltsr              33
136700000000     O               13      w9stqt              55 '      0.   -'
136710040408      // #*8y - begin add
136720040408      // drop ship lots
136730040408     O          e    29      dslot          1
136740040408     O         and     n86
136750040408     O                                           10 'LOT/QTY:'
136760040408     O                       lzltsr              33
136770040408     O                       lzstqt              55 '      0.   -'
136780040408      // #*8y - end add
136790000000      // serial number's
136800000000     O          e    29      srna           1
136810000000     O         and     n86
136820000000     O                                            5 'SN:'
136830000000     O                       sn                  80
136840040408      // #*8y - begin add
136850040408     O          e    29      dssrn          1
136860040408     O         and     n86
136870040408     O                                            5 'SN:'
136880040408     O                       sn                  80
136890040408      // #*8y - end add
136900000000     O          e    29      smsg           1
136910000000     O         and     n86
136920000000     O                    n09msgtxt              64
136930000000     O                     09                    55 '-MESSAGE TEXT MISSING-'
136940000000     O          e    29      contin         1 59
136950000000     O         and     n86
136960000000     O                                           85 '* CONTINUED *'
136970000000     O          e    29n42   bottm1      1  1
136980000000     O         and     n86
136990000000     O               17n70   ohcdam              17 '  ,   , $0.  '
137000000000     O               17n75 70ohcdam              17 ' ,   ,  0.  '
137010000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
137020000000     O               17 70   @@symo              21
137030000000     O               17      msg(1)              48
137040000000     O               17   n14                    58 'WITHIN TERMS'
137050000000     O               17    14cdate               57 '0  /  /  '
137060000000     O              n17                          48 'INVOICE DUE:'
137070000000     O              n17      ndate               57 '0  /  /  '
137080000000     O          e    29 42   bottm1      1  1
137090000000     O         and     n86
137100000000     O               17n70   ctcdam              17 '    ,   , $0.  '
137110000000     O               17n75 70ctcdam              17 '   ,   ,  0.  '
137120000000     O               17 75   ctcdat              17 '  ,   ,   ,  0.  '
137130000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
137140000000     O               17 70   @@symo              21
137150000000     O               17      msg(1)              48
137160000000     O               17   n14                    58 'WITHIN TERMS'
137170000000     O               17    14cdate               57 '0  /  /  '
137180000000     O              n17                          48 'INVOICE DUE:'
137190000000     O              n17      ndate               57 '0  /  /  '
137200000000     O          e    29      boxlin         1
137210000000     O         and     n86
137220000000     O                       boxhd               12
137230000000     O                       box(1)              19
137240000000     O                       box(2)              26
137250000000     O                       box(3)              33
137260000000     O                       box(4)              40
137270000000     O                       box(5)              47
137280000000     O                       box(6)              54
137290000000     O                       box(7)              61
137300000000     O                       box(8)              68
137310000000     O          e    29      splthd      2  1
137320000000     O         and     n86
137330000000     O                    n17                    20 '********************'
137340000000     O                    n17                    40 ' INVOICE PAYMENT INF'
137350000000     O                    n17                    60 'ORMATION ***********'
137360000000     O                    n17                    70 '**********'
137370000000     O                     17                    20 '********************'
137380000000     O                     17                    40 '******** INVOICE PAY'
137390000000     O                     17                    60 'MENT INFORMATION ***'
137400000000     O                     17                    80 '********************'
137410000000     O                     17                    85 '*****'
137420000000     O          e    29      splthd         1
137430000000     O         and     n86
137440000000     O                    n17                    20 '**  INV NO. DUE DATE'
137450000000     O                  48n17                    41 '            DEPOSIT '
137460000000     O                    n17                    70 'INVOICE AMOUNT DUE **'
137470000000     O                     17                    20 'INV NO.  DUE DATE   '
137480000000     O                  48 17                    38 '  DEPOSIT         '
137490000000     O                     17                    56 'INVOICE AMOUNT DUE'
137500000000     O                     17                    60 ' CSH'
137510000000     O                     17                    80 ' DSC DT  CASH DISC  '
137520000000     O          e    29      spltdt         1
137530000000     O         and     n86
137540000000     O                    n17                     2 '**'
137550000000     O                    n17@@inno        z     11
137560000000     O                    n17ntdtex              20 '0  /  /  '
137570000000     O               47n75n17wkdpam        j     41
137580000000     O               47 75n17wkdpat        j     41
137590000000     O                    n17@@amd$        j     63
137600000000     O                  70n17@@symo              67
137610000000     O                    n17                    70 '**'
137620000000     O                     17@@inno        z      8
137630000000     O                     17ntdtex              17 '0  /  /  '
137640000000     O               47n75 17wkdpam        j     32
137650000000     O               47 75 17wkdpat        j     32
137660000000     O                     17@@amd$        j     52
137670000000     O                  70 17@@symo              56
137680000000     O                     17cdsdtx              65 '0  /  /  '
137690000000     O                     17@@cds$        j     85
137700000000     O          e    29      spltbt         2
137710000000     O         and     n86
137720000000     O                    n17                    20 '********************'
137730000000     O                    n17                    40 '********************'
137740000000     O                    n17                    60 '********************'
137750000000     O                    n17                    70 '**********'
137760000000     O                     17                    20 '********************'
137770000000     O                     17                    40 '********************'
137780000000     O                     17                    60 '********************'
137790000000     O                     17                    80 '********************'
137800000000     O                     17                    85 '*****'
137810000000     O          e    29      unvmg1      3  1
137820000000     O         and     n86
137830000000     O                       unvm(1)             64
137840000000     O          e    29      unvmg2         1
137850000000     O         and     n86
137860000000     O                       unvm(2)             64
137870000000     O          e    29      unvmg3         2
137880000000     O         and     n86
137890000000     O                       unvm(3)             64
137900000000     O          e    29      hazmsg         1
137910000000     O         and     n86
137920000000     O                                           35 'HAZMAT SHIPPING PAPERS'
137930000000     O          e    29n42   bottom         1 55
137940000000     O         and     n86
137950000000     O               20                          59 'TRADE DISCOUNT:'
137960000000     O               20   n70ohtdam        k     85
137970000000     O               20n75 70ohtdam        k     82
137980000000     O               20 75   ohtdat        k     82
137990000000     O          e    29 42   bottom         1 55
138000000000     O         and     n86
138010000000     O               20                          59 'TRADE DISCOUNT:'
138020000000     O               20   n70cttdam        k     85
138030000000     O               20n75 70cttdam        k     82
138040000000     O               20 75   tdatic        k     82
138050000000     O          e    29n42   bottom         1
138060000000     O         and     n86
138070000000     O               18                          59 'FEDERAL EXCISE TAX:'
138080000000     O               18   n70ohfeam        k     85
138090000000     O               18n75 70ohfeam        k     82
138100000000     O               18 75   ohfeat        k     82
138110000000     O          e    29 42   bottom         1
138120000000     O         and     n86
138130000000     O               18                          59 'FEDERAL EXCISE TAX:'
138140000000     O               18   n70ctfeam        k     85
138150000000     O               18n75 70ctfeam        k     82
138160000000     O               18 75   featic        k     82
138170000000     O          e    29n42   bottom         1
138180000000     O         and     n86
138190000000     O               19                          59 'CONTAINER CHARGE:'
138200000000     O               19   n70ohcnct        k     85
138210000000     O               19n75 70ohcnct        k     82
138220000000     O               19 75   ohcctt        k     82
138230000000     O          e    29 42   bottom         1
138240000000     O         and     n86
138250000000     O               19                          59 'CONTAINER CHARGE:'
138260000000     O               19   n70ctcnct        k     85
138270000000     O               19n75 70ctcnct        k     82
138280000000     O               19 75   ccttic        k     82
138290000000     O          e    29n42   bottom      1  1
138300000000     O         and     n86
138310000000     O                                           59 'SUBTOTAL:'
138320000000     O                    n70subtot        k     85
138330000000     O              n75    70subtot        k     82
138340000000     O               75      icsubt        k     82
138350000000     O          e    29 42   bottom      1  1
138360000000     O         and     n86
138370000000     O                                           59 'SUBTOTAL:'
138380000000     O                    n70csbtot        k     85
138390000000     O              n75    70csbtot        k     82
138400000000     O               75      subtic        k     82
138410000000     O                  70   @@symo              85
138420000000     O          e    29n71n72bottom         1
138430000000     O         and  n42
138440000000     O         and     n86
138450000000     O               21                          59 'SALES TAX:'
138460000000     O               21   n70ohtxam        k     85
138470000000     O               21n75 70ohtxam        k     82
138480000000     O               21 75   ohtxat        k     82
138490000000     O          e    29n71n72bottom         1
138500000000     O         and   42
138510000000     O         and     n86
138520000000     O               21                          59 'SALES TAX:'
138530000000     O               21   n70cttaxm        k     85
138540000000     O               21n75 70cttaxm        k     82
138550000000     O               21 75   txatic        k     82
138560000000     O          e    29 71n42bottom         1
138570000000     O         and     n86
138580000000     O               21    73                    18 'GST REGISTRATION #'
138590000000     O               21    73gstr#o              34
138600000000     O               21                          59 'GST:'
138610000000     O               21n75n70ohgtxa        k     85
138620000000     O               21n75 70ohgtxa        k     82
138630000000     O               21 75n70ohgtxt        k     85
138640000000     O               21 75 70ohgtxt        k     82
138650000000     O          e    29 71 42bottom         1
138660000000     O         and     n86
138670000000     O               21    73                    18 'GST REGISTRATION #'
138680000000     O               21    73gstr#o              34
138690000000     O               21                          59 'GST:'
138700000000     O               21n75n70ctgttx        k     85
138710000000     O               21n75 70ctgttx        k     82
138720000000     O               21 75n70ctgttt        k     85
138730000000     O               21 75 70ctgttt        k     82
138740000000     O          e    29 72n42bottom         1
138750000000     O         and     n86
138760000000     O               21                          59 'PST:'
138770000000     O               21n75n70ohptxa        k     85
138780000000     O               21n75 70ohptxa        k     82
138790000000     O               21 75n70ohptxt        k     85
138800000000     O               21 75 70ohptxt        k     82
138810000000     O          e    29 72 42bottom         1
138820000000     O         and     n86
138830000000     O               21                          59 'PST:'
138840000000     O               21n75n70ctpttx        k     85
138850000000     O               21n75 70ctpttx        k     82
138860000000     O               21 75n70ctpttt        k     85
138870000000     O               21 75 70ctpttt        k     82
138880000000     O          e    29n42   bottom         1
138890000000     O         and     n86
138900000000     O                                           59 'TOTAL:'
138910000000     O                    n70itotal        k     85
138920000000     O                 n75 70itotal        k     82
138930000000     O                  75   ictotl        k     82
138940000000     O                  70   @@symo              85
138950000000     O          e    29 42   bottom         1
138960000000     O         and     n86
138970000000     O                                           59 'TOTAL:'
138980000000     O                    n70citotl        k     85
138990000000     O                 n75 70citotl        k     82
139000000000     O                  75   totlic        k     82
139010000000     O                  70   @@symo              85
139020000000     O          e    29n72n42bottom      1  1
139030000000     O         and     n86
139040000000     O                                           59 'DEPOSIT:'
139050000000     O                    n70ohdpam        k     85
139060000000     O                 n75 70ohdpam        k     82
139070000000     O                  75   ohdpat        k     82
139080000000     O          e    29n72 42bottom      1  1
139090000000     O         and     n86
139100000000     O                                           59 'DEPOSIT:'
139110000000     O                    n70ctdpam        k     85
139120000000     O                 n75 70ctdpam        k     82
139130000000     O                  75   dpatic        k     82
139140000000     O          e    29 72n42bottom      1  1
139150000000     O         and     n86
139160000000     O                                           59 'DEPOSIT:'
139170000000     O                    n70ohdpam        k     85
139180000000     O                 n75 70ohdpam        k     82
139190000000     O                  75   ohdpat        k     82
139200000000     O          e    29 72 42bottom         1
139210000000     O         and     n86
139220000000     O                                           59 'DEPOSIT:'
139230000000     O                    n70ctdpam        k     85
139240000000     O                 n75 70ctdpam        k     82
139250000000     O                  75   dpatic        k     82
139260000000     O          e    29n42   bottom         1
139270000000     O         and     n86
139280000000     O                                           59 'AMT DUE:'
139290000000     O                    n70amtdue        j     85
139300000000     O              n75 70   amtdue        j     82
139310000000     O               75      icamnt        j     82
139320000000     O                  70   @@symo              85
139330000000     O          e    29 42   bottom         1
139340000000     O         and     n86
139350000000     O                                           59 'AMT DUE:'
139360000000     O                    n70camtdu        j     85
139370000000     O              n75 70   camtdu        j     82
139380000000     O               75      amntic        j     82
139390000000     O                  70   @@symo              85
139400000000      //----------------------------------------------------------------
139410000000      // invoice manifest
139420000000      //----------------------------------------------------------------
139430000000     Oapprtimf  e            headmf         2 03
139440000000     O         and     n86
139450000000     O                                            4 'Date'
139460000000     O                       ud@te               13 '0  /  /  '
139470000000     O                                           50 'INVOICE MANIFEST'
139480000000     O                                           75 'Page'
139490000000     O                       page          z     80
139500000000     O          e            headmf         2
139510000000     O         and     n86
139520000000     O                                           42 'Route:'
139530000000     O                       ohrout              47
139540000000     O          e            headmf         1
139550000000     O         and     n86
139560000000     O                       dshm                85
139570000000     O          e            headmf         1
139580000000     O         and     n86
139590000000     O                                            4 'Stop'
139600000000     O                                           10 'Order'
139610000000     O                                           17 'Name'
139620000000     O                                           49 'Items'
139630000000     O                                           61 'Total'
139640000000     O                                           70 'Typ'
139650000000     O                                           80 'Signature'
139660000000     O          e            headmf         2
139670000000     O         and     n86
139680000000     O                       dshm                85
139690000000     O          e            detlmf         2
139700000000     O         and     n86
139710000000     O                       ohstop        z      3
139720000000     O                       ohorno               9
139730000000     O                                           10 '/'
139740000000     O                       ohorgn              12
139750000000     O                       ohcsnm              43
139760000000     O                       ohnoit        z     49
139770000000     O              n75      ohinam        4     63
139780000000     O               75      ohinat        4     63
139790000000     O               70      @@symo              67
139800000000     O                       ohpytp              70
139810000000     O                                           85 '______________'
139820000000      //
139830000000      //----------------------------------------------------------------
139840000000      // fax invoice
139850000000      //----------------------------------------------------------------
139860000000      //* cover sheet
139870000000     Oapfaxinv  e    32      coverp         1 01
139880000000     O         and     n86
139890000000     O                                            3 '*FN'
139900000000     O                 n37   @@fxpn              23
139910000000     O                  37   faxnbr              23
139920000000     O                                           27 '*FC'
139930000000     O                 n37   ohcsnm              57
139940000000     O                  37   z$conm              57
139950000000     O               39                          61 '*IN'
139960000000     O               39 37   z$intc              64
139970000000     O               39n37   @@fxcd              64
139980000000     O               38n37   @bl83               83
139990000000     O               38n37                        3 '*FD'
140000000000     O               38n37   ohnknm              13
140010000000     O          e    32n38   coverp         1
140020000000     O         and     n86
140030000000     O                                            3 '*FI'
140040000000     O                 n37   @@cont              23
140050000000     O                  37   z$cntc              33
140060000000     O          e    32 34   coverp         1
140070000000     O         and     n86
140080000000     O                                            3 '*CN'
140090000000     O                       z$nte1              83
140100000000     O          e    32 34   coverp         1
140110000000     O         and     n86
140120000000     O                                            3 '*CN'
140130000000     O                       z$nte2              83
140140000000     O          e    32 33   coverp         1
140150000000     O         and     n86
140160000000     O                       xxcvrs              13
140170000000     O          e    32      coverp         1
140180000000     O         and     n86
140190000000     O                                            3 '*UP'
140200000000     O                       faxusr              13
140210000000     O          e    32 43   coverp         1
140220000000     O         and     n86
140230000000     O                                            3 '*PY'
140240000000     O                       z$fxpy               5
140250000000      //* body of invoice
140260000000     O          e    32      headin         1 01
140270000000     O         and     n86
140280000000     O                  30   xxfaxf              14
140290000000     O                     36ttldsc              63
140300050706      //#*9i - beg of add
140310050706     O                                           77 'Page:'
140320050706     O                       page3         z     82
140330050706      //#*9i - end of add
140340000000     O          e    32      headin         1 03
140350000000     O         and     n86
140360000000     O               24 51n42                    66 '** CREDIT MEMO **'
140370000000     O               42                          65 '** CONSOLIDATED **'
140380000000     O          e    32      headin         1 13
140390000000     O         and     n86
140400000000     O                 n24 36                     8 'Bill To:'
140410000000     O              n26    42ohcono              11
140420000000     O              n26    42                    12 '/'
140430000000     O              n26    42oharcs              23
140440000000      //
140450000000     O               26    42ctcono              11
140460000000     O               26    42                    12 '/'
140470000000     O               26    42ctarcs              23
140480000000     O                 n24 36                    41 'Ship To:'
140490000000     O                 n24 36                    82 'Invoice'
140500000000     O          e    32      headin         1
140510000000     O         and     n86
140520000000     O              n24n26   sld(1)              38
140530000000     O              n24n26   shp(1)              74
140540000000     O              n24n26   ohinno        z     82
140550000000     O               24n26   sld(1)              38
140560000000     O               24n26   shp(1)              74
140570000000     O               24n26   ohinno        z     82
140580000000      //
140590000000     O                  26   csl(1)              38
140600000000     O                  26   csh(1)              74
140610000000     O                  26   ctinno        z     82
140620000000     O          e    32      headin         1
140630000000     O         and     n86
140640000000     O              n24n26   sld(2)              38
140650000000     O               24n26   sld(2)              38
140660000000     O              n24n26   shp(2)              74
140670000000     O               24n26   shp(2)              74
140680000000      //
140690000000     O                  26   csl(2)              38
140700000000     O                  26   csh(2)              74
140710000000     O          e    32      headin         1
140720000000     O         and     n86
140730000000     O              n24n26   sld(3)              38
140740000000     O               24n26   sld(3)              38
140750000000     O              n24n26   shp(3)              74
140760000000     O               24n26   shp(3)              74
140770000000      //
140780000000     O                  26   csl(3)              38
140790000000     O                  26   csh(3)              74
140800000000     O                     36                    83 'Date/Time'
140810000000     O          e    32      headin         1
140820000000     O         and     n86
140830000000     O              n24n26   sld(4)              38
140840000000     O               24n26   sld(4)              38
140850000000     O              n24n26   shp(4)              74
140860000000     O               24n26   shp(4)              74
140870000000     O              n24n26   invdto              83 '0  /  /  '
140880000000     O               24n26   invdto              83 '0  /  /  '
140890000000      //
140900000000     O                  26   csl(4)              38
140910000000     O                  26   csh(4)              74
140920000000     O                  26   ctivdt              83 '0  /  /  '
140930000000     O          e    32      headin         1
140940000000     O         and     n86
140950000000     O              n24n26   sld(5)              38
140960000000     O               24n26   sld(5)              38
140970000000     O              n24n26   shp(5)              74
140980000000     O               24n26   shp(5)              74
140990000000      //
141000000000     O                  26   csl(5)              38
141010000000     O                  26   csh(5)              74
141020000000     O                       @@time              83 '  :  :  '
141030000000     O          e    32      headin         1
141040000000     O         and     n86
141050000000     O              n24n26   sld(6)              38
141060000000     O               24n26   sld(6)              38
141070000000     O              n24n26   shp(6)              74
141080000000     O               24n26   shp(6)              74
141090000000      //
141100000000     O                  26   csl(6)              38
141110000000     O                  26   csh(6)              74
141120000000     O          e    32      headin         0
141130000000     O         and     n86
141140000000     O              n24   n42                    10 'Co/Cust No'
141150000000     O              n24   n42                    22 'Order No'
141160000000     O              n24   n42                    38 'Customer PO #'
141170000000     O              n24   n42                    49 'Ter'
141180000000     O              n24   n42                    55 'Sls#'
141190000000     O                  76n77                    83 '*REPRINT*'
141200000000     O                     77                    83 '*REPRINT FROM HISTORY*'
141210000000     O          e    32      headin         1
141220000000     O         and     n86
141230000000     O              n42   n24                    10 '__________'
141240000000     O              n42   n24                    22 '________'
141250000000     O              n42   n24                    38 '_____________'
141260000000     O              n42   n24                    49 '___'
141270000000     O              n42   n24                    55 '____'
141280000000     O          e    32      headin         1
141290000000     O         and     n86
141300000000     O              n42      comcus              13 '  /          '
141310000000     O              n42      ohorno              19
141320000000     O              n42                          20 '/'
141330000000     O              n42      ohorgn              22
141340000000     O              n42   n24ohcspo              45
141350000000     O              n42   n24ohtert              49
141360000000     O              n42   n24ohsls1        z     55
141370000000     O              n42    24cspo@               45
141380000000     O              n42    24ohtert              49
141390000000     O              n42    24ohsls1        z     55
141400000000     O          e    32      headin         1
141410000000     O         and     n86
141420000000     O              n42   n24ohnote              82
141430000000     O              n42    24ohnote              82
141440000000     O          e    32      headin         1
141450000000     O         and     n86
141460000000     O              n42   n24                     8 'Ship Via'
141470000000     O              n42      ohspin              31
141480000000     O               36   n24                    38 'Terms'
141490000000     O              n26    15ohcdsp        4     46
141500000000     O               26    15ctcdsp        4     46
141510000000     O                     15                    47 '%'
141520000000     O              n26      terms               68
141530000000     O               26      ctterm              68
141540000000     O              n42   n24                    74 'Ref#'
141550000000     O              n42      ohorrf              82
141560000000     O          e    32      headin         1
141570000000     O         and     n86
141580000000     O                     36                     8 'Pay Type'
141590000000     O              n26      paydsc              41
141600000000     O               26      ctpayd              41
141610000000     O                  36n22                    47 'CC#'
141620000000     O              n26   n22@wcrcd              66
141630000000     O               26   n22ctcrcd              66
141640000000     O                  36n22                    74 'Exp '
141650000000     O              n26   n22ohexpd              81 '  /  '
141660000000     O               26   n22ctexpd              81 '  /  '
141670000000     O          e    32      headin         1
141680000000     O         and     n86
141690000000     O                     36dsh@                83
141700000000     O          e    32      headin         1
141710000000     O         and     n86
141720000000     O                     36                    12 'Item Number/'
141730000000     O                     36                    23 'Description'
141740000000     O                     36                    30 'U/M'
141750000000     O                     36                    40 'Ordered'
141760000000     O                     36                    52 'Shipped'
141770000000     O                     36                    69 'Sell Price'
141780000000     O                     36                    82 'Total'
141790000000     O          e    32      headin         1
141800000000     O         and     n86
141810000000     O                     36dsh@                83
141820000000      //       e  1     32n86   headin
141830000000     O          e    32n86n66headin         1
141840050414      // #*9h begin of add
141850050414     O         and     n42
141860050414      // #*9h end of add
141870000000     O                                           16 'FOB Description:'
141880000000     O              n26n89   @cfobd              48
141890000000     O              n26 89   @tfobd              48
141900000000     O               26      ctfobd              48
141910000000     O          e    32 71   headin         1
141920000000     O         and     n86
141930000000     O                                           14 'Tax Invoice - '
141940000000     O                       @txlin              55
141950000000     O          e    32 72   headin         1
141960000000     O         and  n71n86
141970000000     O                                           14 'Tax Invoice - '
141980000000     O                       @txlin              55
141990000000     O          e    32 42   cuscom      1  1
142000000000     O         and     n86
142010000000     O               42      cocmtx              68
142020000000     O          e    32 42   crdmem      1  1
142030000000     O         and     n86
142040000000     O                                           17 '** CREDIT MEMO **'
142050000000     O          e    32 42   conhd1      1  1
142060000000     O         and     n86
142070000000     O                                            9 'Order No:'
142080000000     O                       ohorno              15
142090000000     O                                           16 '/'
142100000000     O              n12      ohorgn              18
142110000000     O               12      cxrlgn              18
142120000000     O                                           34 'Customer PO #:'
142130000000     O                       ohcspo              57
142140000000     O                                           62 'Ter:'
142150000000     O                       ohtert              66
142160000000     O                                           72 'Sls#:'
142170000000     O                       ohsls1        z     78
142180000000     O          e    32 42   conhd2         1
142190000000     O         and     n86
142200000000     O                                            9 'Ship Via:'
142210000000     O                       ohspin              32
142220000000     O                                           37 'Ref#:'
142230000000     O                       ohorrf              44
142240000000     O                       ohnote              77
142250000000     O          e    32 42   concrd         1
142260000000     O         and     n86
142270000000     O                                           47 'CC#'
142280000000     O                       @wcrcd              66
142290000000     O                                           74 'Exp '
142300000000     O                       ohexpd              81 '  /  '
142310000000     O          e    32 42   consld         1
142320000000     O         and     n86
142330000000     O                       ohcono               2
142340000000     O                                            3 '/'
142350000000     O                       ohcsno              13
142360000000     O                       ohcsnm              45
142370000000     O          e    32 42   consld         1
142380000000     O         and     n86
142390000000     O                                            8 'Sold To:'
142400000000     O                       ohcono              11
142410000000     O                                           13 '/'
142420000000     O                       ohcsno              23
142430000000     O                       ohcsnm              55
142440000000     O          e    32 42   consh1         1
142450000000     O         and     n86
142460000000     O                                            8 'Ship To:'
142470000000     O                       shp(1)              44
142480000000     O          e    32 42   consh2         1
142490000000     O         and     n86
142500000000     O                       shp(2)              44
142510000000     O          e    32 42   consh3         1
142520000000     O         and     n86
142530000000     O                       shp(3)              44
142540000000     O          e    32 42   consh4         1
142550000000     O         and     n86
142560000000     O                       shp(4)              44
142570000000     O          e    32 42   consh5         1
142580000000     O         and     n86
142590000000     O                       shp(5)              44
142600000000     O          e    32 42   consh6         1
142610000000     O         and     n86
142620000000     O                       shp(6)              44
142630000000     O          e    32 42   consh7         1
142640000000     O         and     n86
142650000000     O                       shp(7)              44
142660000000     O          e    32 42   consh8         1
142670000000     O         and     n86
142680000000     O                       shp(8)              44
142690000000      //
142700000000     O          e    32 71   detlin      1  1
142710000000     O         and     n86
142720000000     O          e    32   n57detlin      1  1
142730000000     O         and     n86
142740000000     O              n65      oditno              27
142750000000     O               65      odorit              27
142760000000     O                       odunms              30
142770000000     O                       odqtor              42 '      0.   -'
142780000000     O                       odqtsh              54 '      0.   -'
142790000000     O              n75      @@aslp              67 '     0.     '
142800000000     O               75      @@aspt              68 '      0.     '
142810000000     O                     50                    83 'T'
142820000000     O                    n75@@prum              70
142830000000     O                     75@@prum              72
142840000000     O          e    32      detlin         1
142850000000     O         and     n86
142860031216      // #*8r - Beg of Chg
142870031216     O***                    oditd1              31
142880031216     O                       oditd1              33
142890031216      // #*8r - End of Chg
142900000000     O                 n75n23                    43 'B/O'
142910000000     O                 n75n23odboqt              55 '      0.   -'
142920000000     O                 n75n25odexwt              68 '      0.    -'
142930000000     O                 n75n25                    74 'C Wgt'
142940000000     O              n75      odlnam              82 '    ,  0.  -'
142950000000     O               75      odlnat              82 '          0.  -'
142960000000     O          e    32      dsc2           1
142970000000     O         and     n86
142980031216      // #*8r - Beg of Chg
142990031216     O***                    oditd2              31
143000031216     O                       oditd2              33
143010031216      // #*8r - End of Chg
143020000000     O                  75n23                    43 'B/O'
143030000000     O                  75n23odboqt              55 '      0.   -'
143040000000     O                  75n25odexwt              68 '      0.    -'
143050000000     O                  75n25                    74 'C Wgt'
143060050414      // #*9h begin of add
143070050414     O          e    32 42n86fobdes         1
143080050414     O                                           16 'FOB Description:'
143090050414     O                       @tfobd              48
143100050414      // #*9h end of add
143110000000     O          e    32      extic          1
143120000000     O         and     n86
143130000000     O                       incmtx              62
143140000000     O          e    32    56detln1         1
143150000000     O         and     n86
143160000000     O                 n65 57oditno              27
143170000000     O                  65 57odorit              27
143180031216      // #*8r - Beg of Chg
143190031216     O***                 n57                    22 'Customer Ordering U/M:'
143200031216     O                    n57                    24 'Customer Ordering U/M:'
143210031216      // #*8r - End of Chg
143220000000     O                    n57                    27 '('
143230000000     O                       odcoum              30
143240000000     O                       coqtor              42 '      0.   -'
143250000000     O                       coqtsh              54 '      0.   -'
143260000000     O                    n57                    56 ')'
143270000000     O                 n75 57@@aslp              67 '     0.     '
143280000000     O                  75 57@@aspt              68 '      0.     '
143290000000     O                  50 57                    83 'T'
143300000000     O                 n75 57@@prum              69
143310000000     O                  75 57@@prum              70
143320000000     O          e    32      msds           1
143330000000     O         and     n86
143340000000     O                                           14 '** MSDS **'
143350000000     O          e    32      orgitm         1
143360000000     O         and     n86
143370031216      // #*8r - Beg of Chg
143380031216     O***                    odorit              27
143390031216     O                       odorit              29
143400031216      // #*8r - End of Chg
143410000000     O          e    32      spcl        1  2
143420000000     O         and     n86
143430000000     O                       oditd1              31
143440000000     O                       oditd2              62
143450000000     O                 n75   odlnam              82 ' ,   ,  0.  -'
143460000000     O                  75   odlnat              82 '     ,   ,  0.  -'
143470000000     O                     50                    83 'T'
143480000000     O          e    32      msge           1
143490000000     O         and     n86
143500000000     O                       oditd1              31
143510000000     O                       oditd2              62
143520000000      // header for component detail
143530000000     O          e    32      cnsist         1
143540000000     O         and     n86
143550000000     O                                           15 'CONSISTING OF:'
143560000000      // detail component information
143570000000     O          e    32      cdet           1
143580000000     O         and     n86
143590000000     O                       bccmit              29
143600000000     O                       bcqtpr        k     55
143610000000     O                                           56 '*'
143620000000     O                       bccmum              70
143630000000     O          e    32n07   cdet           1
143640000000     O         and     n86
143650000000     O                       imitd1              33
143660000000     O          e    45n07n46cdet           1
143670000000     O         and     n86
143680000000     O         and   32
143690000000     O                       imitd2              33
143700000000     O          e    32 55   cdet           1
143710000000     O         and     n86
143720000000     O                                           14 '** MSDS **'
143730000000     O          e    32      endmsg         2
143740000000     O         and     n86
143750000000     O                                           44 '* END *'
143760000000      // lot's
143770000000     O          e    32      lota           1
143780000000     O         and     n86
143790000000     O                                           10 'LOT/QTY:'
143800000000     O              n13      wnltsr              33
143810000000     O              n13      wnstqt              55 '      0.   -'
143820000000     O               13      w9ltsr              33
143830000000     O               13      w9stqt              55 '      0.   -'
143840040408      // #*8y - begin add
143850040408      // drop ship lots
143860040408     O          e    32      dslot          1
143870040408     O         and     n86
143880040408     O                                           10 'LOT/QTY:'
143890040408     O                       lzltsr              33
143900040408     O                       lzstqt              55 '      0.   -'
143910040408      // #*8y - end add
143920000000      // serial number's
143930000000     O          e    32      srna           1
143940000000     O         and     n86
143950000000     O                                            5 'SN:'
143960000000     O                       sn                  80
143970040408      // #*8y - begin add
143980040408     O          e    32      dssrn          1
143990040408     O         and     n86
144000040408     O                                            5 'SN:'
144010040408     O                       sn                  80
144020040408      // #*8y - end add
144030000000     O          e    32      smsg           1
144040000000     O         and     n86
144050000000     O                    n09msgtxt              64
144060000000     O                     09                    55 '-MESSAGE TEXT MISSING-'
144070000000     O          e    32      contin         1
144080000000     O         and     n86
144090000000     O                                           82 '* CONTINUED *'
144100000000     O          e    32n42   bottm1      1  1
144110000000     O         and     n86
144120000000     O               17n70   ohcdam              17 '  ,   , $0.  '
144130000000     O               17n75 70ohcdam              17 ' ,   ,  0.  '
144140000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
144150000000     O               17 70   @@symo              21
144160000000     O               17      msg(1)              48
144170000000     O               17   n14                    58 'WITHIN TERMS'
144180000000     O               17    14cdate               57 '0  /  /  '
144190000000     O              n17                          48 'INVOICE DUE:'
144200000000     O              n17      ndate               57 '0  /  /  '
144210000000     O          e    32    42bottm1      1  1
144220000000     O         and     n86
144230000000     O               17n70   ctcdam              17 '    ,   , $0.  '
144240000000     O               17n75 70ctcdam              17 '   ,   ,  0.  '
144250000000     O               17 75   ctcdat              17 '  ,   ,   ,  0.  '
144260000000     O               17 70   @@symo              21
144270000000     O               17      msg(1)              48
144280000000     O               17   n14                    58 'WITHIN TERMS'
144290000000     O               17    14cdate               57 '0  /  /  '
144300000000     O              n17                          48 'INVOICE DUE:'
144310000000     O              n17      ndate               57 '0  /  /  '
144320000000     O          e    32      boxlin         1
144330000000     O         and     n86
144340000000     O                       boxhd               12
144350000000     O                       box(1)              19
144360000000     O                       box(2)              26
144370000000     O                       box(3)              33
144380000000     O                       box(4)              40
144390000000     O                       box(5)              47
144400000000     O                       box(6)              54
144410000000     O                       box(7)              61
144420000000     O                       box(8)              68
144430000000     O          e    32      splthd      2  1
144440000000     O         and     n86
144450000000     O                    n17                    20 '********************'
144460000000     O                    n17                    40 ' INVOICE PAYMENT INF'
144470000000     O                    n17                    60 'ORMATION ***********'
144480000000     O                    n17                    70 '**********'
144490000000     O                     17                    20 '********************'
144500000000     O                     17                    40 '******* INVOICE PAYM'
144510000000     O                     17                    60 'ENT INFORMATION ****'
144520000000     O                     17                    80 '********************'
144530000000     O                     17                    83 '***'
144540000000     O          e    32      splthd         1
144550000000     O         and     n86
144560000000     O                    n17                    20 '**  INV NO. DUE DATE'
144570000000     O                  48n17                    41 '            DEPOSIT '
144580000000     O                    n17                    70 'INVOICE AMOUNT DUE **'
144590000000     O                     17                    20 'INV NO.  DUE DATE   '
144600000000     O                  48 17                    38 '  DEPOSIT        '
144610000000     O                     17                    56 'INVOICE AMOUNT DUE'
144620000000     O                     17                    60 ' CSH'
144630000000     O                     17                    80 ' DSC DT  CASH DISC  '
144640000000     O          e    32      spltdt         1
144650000000     O         and     n86
144660000000     O                    n17                     2 '**'
144670000000     O                    n17@@inno        z     11
144680000000     O                    n17ntdtex              20 '0  /  /  '
144690000000     O               47n75n17wkdpam        j     41
144700000000     O               47 75n17wkdpat        j     41
144710000000     O                    n17@@amd$        j     63
144720000000     O                  70n17@@symo              67
144730000000     O                    n17                    70 '**'
144740000000     O                     17@@inno        z      8
144750000000     O                     17ntdtex              17 '0  /  /  '
144760000000     O               47n75 17wkdpam        j     32
144770000000     O               47 75 17wkdpat        j     32
144780000000     O                     17@@amd$        j     52
144790000000     O                  70 17@@symo              56
144800000000     O                     17cdsdtx              65 '0  /  /  '
144810000000     O                     17@@cds$        j     83
144820000000     O          e    32      spltbt         2
144830000000     O         and     n86
144840000000     O                    n17                    20 '********************'
144850000000     O                    n17                    40 '********************'
144860000000     O                    n17                    60 '********************'
144870000000     O                    n17                    70 '**********'
144880000000     O                     17                    20 '********************'
144890000000     O                     17                    40 '********************'
144900000000     O                     17                    60 '********************'
144910000000     O                     17                    80 '********************'
144920000000     O                     17                    83 '***'
144930000000     O          e    32      unvmg1      3  1
144940000000     O         and     n86
144950000000     O                       unvm(1)             64
144960000000     O          e    32      unvmg2         1
144970000000     O         and     n86
144980000000     O                       unvm(2)             64
144990000000     O          e    32      unvmg3         2
145000000000     O         and     n86
145010000000     O                       unvm(3)             64
145020000000     O          e    32      hazmsg         1
145030000000     O         and     n86
145040000000     O                                           35 'HAZMAT SHIPPING PAPERS'
145050000000     O          e    32n42   bottom         1 55
145060000000     O         and     n86
145070000000     O               20                          57 'TRADE DISCOUNT:'
145080000000     O               20n75   ohtdam        k     80
145090000000     O               20 75   ohtdam        k     80
145100000000     O          e    32 42   bottom         1 55
145110000000     O         and     n86
145120000000     O               20                          57 'TRADE DISCOUNT:'
145130000000     O               20   n70cttdam        k     80
145140000000     O               20n75 70cttdam        k     80
145150000000     O               20 75   tdatic        k     80
145160000000     O          e    32n42   bottom         1
145170000000     O         and     n86
145180000000     O               18                          57 'FEDERAL EXCISE TAX:'
145190000000     O               18n75   ohfeam        k     80
145200000000     O               18 75   ohfeam        k     80
145210000000     O          e    32 42   bottom         1
145220000000     O         and     n86
145230000000     O               18                          57 'FEDERAL EXCISE TAX:'
145240000000     O               18   n70ctfeam        k     80
145250000000     O               18n75 70ctfeam        k     80
145260000000     O               18 75   featic        k     80
145270000000     O          e    32n42   bottom         1
145280000000     O         and     n86
145290000000     O               19                          57 'CONTAINER CHARGE:'
145300000000     O               19n75   ohcnct        k     80
145310000000     O               19 75   ohcctt        k     80
145320000000     O          e    32 42   bottom         1
145330000000     O         and     n86
145340000000     O               19                          57 'CONTAINER CHARGE:'
145350000000     O               19   n70ctcnct        k     80
145360000000     O               19n75 70ctcnct        k     80
145370000000     O               19 75   ccttic        k     80
145380000000     O          e    32n42   bottom      1  1
145390000000     O         and     n86
145400000000     O                                           57 'SUBTOTAL:'
145410000000     O              n75      subtot        k     80
145420000000     O               75      icsubt        k     80
145430000000     O                  70   @@symo              83
145440000000     O          e    32 42   bottom      1  1
145450000000     O         and     n86
145460000000     O                                           57 'SUBTOTAL:'
145470000000     O                    n70csbtot        k     80
145480000000     O              n75    70csbtot        k     80
145490000000     O               75      subtic        k     80
145500000000     O                  70   @@symo              83
145510000000     O          e    32n71n72bottom         1
145520000000     O         and   42
145530000000     O         and     n86
145540000000     O               21                          57 'SALES TAX:'
145550000000     O               21   n70cttaxm        k     80
145560000000     O               21n75 70cttaxm        k     80
145570000000     O               21 75   txatic        k     80
145580000000     O          e    32n71n72bottom         1
145590000000     O         and  n42
145600000000     O         and     n86
145610000000     O               21                          57 'SALES TAX:'
145620000000     O               21n75   ohtxam        k     80
145630000000     O               21 75   ohtxat        k     80
145640000000     O          e    32 71n42bottom         1
145650000000     O         and     n86
145660000000     O               21    73                    18 'GST REGISTRATION #'
145670000000     O               21    73gstr#o              34
145680000000     O               21                          57 'GST:'
145690000000     O               21n75   ohgtxa        k     80
145700000000     O               21 75   ohgtxt        k     80
145710000000     O          e    32 71 42bottom         1
145720000000     O         and     n86
145730000000     O               21    73                    18 'GST REGISTRATION #'
145740000000     O               21    73gstr#o              34
145750000000     O               21                          57 'GST:'
145760000000     O               21   n75ctgttx        k     80
145770000000     O               21    75ctgttt        k     80
145780000000     O          e    32 72n42bottom         1
145790000000     O         and     n86
145800000000     O               21                          57 'PST:'
145810000000     O               21n75   ohptxa        k     80
145820000000     O               21 75   ohptxt        k     80
145830000000     O          e    32 72 42bottom         1
145840000000     O         and     n86
145850000000     O               21                          57 'PST:'
145860000000     O               21   n75ctpttx        k     80
145870000000     O               21    75ctpttt        k     80
145880000000     O          e    32n42   bottom         1
145890000000     O         and     n86
145900000000     O                                           57 'TOTAL:'
145910000000     O              n75      itotal        k     80
145920000000     O               75      ictotl        k     80
145930000000     O                  70   @@symo              83
145940000000     O          e    32 42   bottom         1
145950000000     O         and     n86
145960000000     O                                           57 'TOTAL:'
145970000000     O                    n70citotl        k     80
145980000000     O                 n75 70citotl        k     80
145990000000     O                  75   totlic        k     80
146000000000     O                  70   @@symo              83
146010000000     O          e    32n72n42bottom      1  1
146020000000     O         and     n86
146030000000     O                                           57 'DEPOSIT:'
146040000000     O                 n75   ohdpam        k     80
146050000000     O                  75   ohdpam        k     80
146060000000     O          e    32 72n42bottom         1
146070000000     O         and     n86
146080000000     O                                           57 'DEPOSIT:'
146090000000     O                 n75   ohdpam        k     80
146100000000     O                  75   ohdpam        k     80
146110000000     O          e    32n72 42bottom      1  1
146120000000     O         and     n86
146130000000     O                                           57 'DEPOSIT:'
146140000000     O                    n70ctdpam        k     80
146150000000     O                 n75 70ctdpam        k     80
146160000000     O                  75   dpatic        k     80
146170000000     O          e    32n42   bottom         1
146180000000     O         and     n86
146190000000     O                                           57 'AMT DUE:'
146200000000     O                 n75   amtdue        j     80
146210000000     O                  75   icamnt        j     80
146220000000     O                  70   @@symo              83
146230000000     O          e    32 42   bottom         1
146240000000     O         and     n86
146250000000      //                                  61 'amt due:'
146260000000     O                                           57 'AMT DUE:'
146270000000     O                    n70camtdu        j     80
146280000000     O              n75 70   camtdu        j     80
146290000000     O               75      amntic        j     80
146300000000     O                  70   @@symo              83
146310000000      //----------------------------------------------------------------
146320000000      // invoice
146330000000      //----------------------------------------------------------------
146340000000     Oapprtinv  e    31      headin         1 01
146350000000     O         and      86
146360000000     O                       @trmsg              40
146370000000     O                    n24ttldsc              63
146380050526      //#*9i - beg of add
146390050527     O                                           76 'Page:'
146400050526     O                       page4         z     81
146410050526      //#*9i - end of add
146420000000     O          e    31      headin         1 02
146430000000     O         and      86
146440000000     O               24 51n42                    66 '** CREDIT MEMO **'
146450000000     O               42                          65 '** CONSOLIDATED **'
146460000000     O          e    31      headin         1 12
146470000000     O         and      86
146480000000     O                    n24                     8 'Bill To:'
146490000000     O              n26    42ohcono              11
146500000000     O              n26    42                    12 '/'
146510000000     O              n26    42oharcs              23
146520000000      //
146530000000     O               26    42ctcono              11
146540000000     O               26    42                    12 '/'
146550000000     O               26    42ctarcs              23
146560000000     O                    n24                    46 'Ship To:'
146570000000     O                    n24                    81 'Invoice'
146580000000     O          e    31      headin         1
146590000000     O         and      86
146600000000     O              n26      sld(1)              39
146610000000     O              n26      shp(1)              75
146620000000     O              n26      ohinno        z     81
146630000000      //
146640000000     O               26      csl(1)              39
146650000000     O               26      csh(1)              75
146660000000     O               26      ctinno        z     81
146670000000     O          e    31      headin         1
146680000000     O         and      86
146690000000     O              n26      sld(2)              39
146700000000     O              n26      shp(2)              75
146710000000      //
146720000000     O               26      csl(2)              39
146730000000     O               26      csh(2)              75
146740000000     O          e    31      headin         1
146750000000     O         and      86
146760000000     O              n26      sld(3)              39
146770000000     O              n26      shp(3)              75
146780000000      //
146790000000     O               26      csl(3)              39
146800000000     O               26      csh(3)              75
146810000000     O                    n24                    81 'Date/Time'
146820000000     O          e    31      headin         1
146830000000     O         and      86
146840000000     O              n26      sld(4)              39
146850000000     O              n26      shp(4)              75
146860000000     O              n26      invdto              81 '0  /  /  '
146870000000      //
146880000000     O               26      csl(4)              39
146890000000     O               26      csh(4)              75
146900000000     O               26      ctivdt              81 '0  /  /  '
146910000000     O          e    31      headin         1
146920000000     O         and      86
146930000000     O                 n26   sld(5)              39
146940000000     O                 n26   shp(5)              75
146950000000      //
146960000000     O                  26   csl(5)              39
146970000000     O                  26   csh(5)              75
146980000000     O                       @@time              81 '  :  :  '
146990000000     O          e    31      headin         1
147000000000     O         and      86
147010000000     O              n26      sld(6)              39
147020000000     O              n26      shp(6)              75
147030000000      //
147040000000     O               26      csl(6)              39
147050000000     O               26      csh(6)              75
147060000000      //
147070000000     O          e    31      headin         1
147080000000     O         and      86
147090000000     O              n26      sld(7)              39
147100000000     O              n26      shp(7)              75
147110000000      //
147120000000     O               26      csl(7)              39
147130000000     O               26      csh(7)              75
147140000000      //
147150000000     O          e    31      headin         1
147160000000     O         and      86
147170000000     O              n26      sld(8)              39
147180000000     O              n26      shp(8)              75
147190000000      //
147200000000     O               26      csl(8)              39
147210000000     O               26      csh(8)              75
147220000000      //
147230000000     O          e    31      headin         1
147240000000     O         and      86
147250000000     O              n26      sld(9)              39
147260000000     O              n26      shp(9)              75
147270000000      //
147280000000     O               26      csl(9)              39
147290000000     O               26      csh(9)              75
147300000000      //
147310000000     O          e    31      headin      1  1
147320000000     O         and      86
147330000000     O              n24   n42                    10 'Co/Cust No'
147340000000     O              n24   n42                    22 'Order No'
147350000000     O              n24   n42                    38 'Customer PO #'
147360000000     O              n24   n42                    49 'Ter'
147370000000     O              n24   n42                    55 'Sls#'
147380000000     O                  76n77                    81 '*REPRINT*'
147390000000     O                     77                    81 '*REPRINT FROM HISTORY*'
147400000000     O          e    31n24   headin         1
147410000000     O         and      86
147420000000     O              n42   n24                    10 '__________'
147430000000     O              n42   n24                    22 '________'
147440000000     O              n42   n24                    38 '_____________'
147450000000     O              n42   n24                    49 '___'
147460000000     O              n42   n24                    55 '____'
147470000000     O          e    31      headin         1
147480000000     O         and      86
147490000000     O              n42      comcus              13 '  /          '
147500000000     O              n42      ohorno              19
147510000000     O              n42                          20 '/'
147520000000     O              n42      ohorgn              22
147530000000     O              n42      cspo@               43
147540000000     O              n42      ohtert              49
147550000000     O              n42      ohsls1        z     55
147560000000     O          e    31      headin         1
147570000000     O         and      86
147580000000     O              n42      ohnote              81
147590000000     O          e    31      headin         1
147600000000     O         and      86
147610000000     O              n42   n24                     8 'Ship Via'
147620000000     O              n42    24ohspin              27
147630000000     O              n42   n24ohspin              31
147640000000      //
147650000000     O                    n24                    45 'Terms'
147660000000     O              n26    15ohcdsp        4     46
147670000000     O               26    15ctcdsp        4     46
147680000000     O                     15                    47 '%'
147690000000     O              n26      terms               68
147700000000     O               26      ctterm              68
147710000000     O              n42   n24                    74 'Ref#'
147720000000     O              n42      ohorrf              81
147730000000     O          e    31      headin         1
147740000000     O         and      86
147750000000     O                    n24                     8 'Pay Type'
147760000000     O              n26      paydsc              41
147770000000     O               26      ctpayd              41
147780000000     O                 n24n22                    47 'CC#'
147790000000     O              n26   n22@wcrcd              66
147800000000     O               26   n22ctcrcd              66
147810000000     O                 n24n22                    74 'Exp '
147820000000     O              n26   n22ohexpd              81 '  /  '
147830000000     O               26   n22ctexpd              81 '  /  '
147840000000     O          e    31      headin         1
147850000000     O         and      86
147860000000     O                    n24dshm2               82
147870000000     O          e    31      headin         1
147880000000     O         and      86
147890000000     O                    n24                    12 'Item Number/'
147900000000     O                    n24                    23 'Description'
147910000000     O                    n24                    31 'U/M'
147920000000     O                    n24                    41 'Ordered'
147930000000     O                    n24                    53 'Shipped'
147940000000     O                    n24                    70 'Sell Price'
147950000000     O                    n24                    78 'Total'
147960000000     O          e    31      headin         1
147970000000     O         and      86
147980000000     O                    n24dshm2               82
147990000000      //
148000000000     O          e    31n66   headin         1
148010050414      // #*9h begin of change
148020050414      // O         and      86
148030050414     O         and      86n42
148040050414      // #*9h end of change
148050000000     O                                           16 'FOB Description:'
148060000000     O              n26n89   @cfobd              48
148070000000     O              n26 89   @tfobd              48
148080000000     O               26      ctfobd              48
148090000000     O          e    31 71   headin         1
148100000000     O         and      86
148110000000     O                                           14 'Tax Invoice - '
148120000000     O                       @txlin              55
148130000000     O          e    31 72   headin         1
148140000000     O         and  n71 86
148150000000     O                                           14 'Tax Invoice - '
148160000000     O                       @txlin              55
148170000000     O          e    31 42   cuscom      1  1
148180000000     O         and      86
148190000000     O               42      cocmtx              68
148200000000     O          e    31 42   crdmem      1  1
148210000000     O         and      86
148220000000     O                                           17 '** CREDIT MEMO **'
148230000000     O          e    31 42   conhd1      1  1
148240000000     O         and      86
148250000000     O                                            9 'Order No:'
148260000000     O                       ohorno              15
148270000000     O                                           16 '/'
148280000000     O              n12      ohorgn              18
148290000000     O               12      cxrlgn              18
148300000000     O                                           34 'Customer PO #:'
148310000000     O                       ohcspo              57
148320000000     O                                           62 'Ter:'
148330000000     O                       ohtert              66
148340000000     O                                           72 'Sls#:'
148350000000     O                       ohsls1        z     78
148360000000     O          e    31 42   conhd2         1
148370000000     O         and      86
148380000000     O                                            9 'Ship Via:'
148390000000     O                       ohspin              32
148400000000     O                                           37 'Ref#:'
148410000000     O                       ohorrf              44
148420000000     O                       ohnote              77
148430000000     O          e    31 42   concrd         1
148440000000     O         and      86
148450000000     O                                           47 'CC#'
148460000000     O                       @wcrcd              66
148470000000     O                                           74 'Exp '
148480000000     O                       ohexpd              81 '  /  '
148490000000     O          e    31 42   consld         1
148500000000     O         and      86
148510000000     O                                            8 'Sold To:'
148520000000     O                       ohcono              11
148530000000     O                                           13 '/'
148540000000     O                       ohcsno              23
148550000000     O                       @@csnm              55
148560000000     O          e    31 42   consh1         1
148570000000     O         and      86
148580000000     O                                            8 'Ship To:'
148590000000     O                       sh(1)               44
148600000000     O          e    31 42   consh2         1
148610000000     O         and      86
148620000000     O                       sh(2)               44
148630000000     O          e    31 42   consh3         1
148640000000     O         and      86
148650000000     O                       sh(3)               44
148660000000     O          e    31 42   consh4         1
148670000000     O         and      86
148680000000     O                       sh(4)               44
148690000000     O          e    31 42   consh5         1
148700000000     O         and      86
148710000000     O                       sh(5)               44
148720000000     O          e    31 42   consh6         1
148730000000     O         and      86
148740000000     O                       sh(6)               44
148750000000     O          e    31 42   consh7         1
148760000000     O         and      86
148770000000     O                       sh(7)               44
148780000000     O          e    31 42   consh8         1
148790000000     O         and      86
148800000000     O                       sh(8)               44
148810000000     O          e    31 42   consh9         1
148820000000     O         and      86
148830000000     O                       sh(9)               44
148840050414      // #*9h begin of add
148850050414     O          e    31 42 86fobdes         1
148860050414     O                                           16 'FOB Description:'
148870050414     O                       @tfobd              48
148880050414      // #*9h end of add
148890000000      //
148900000000     O          e    31 71   detlin      1  1
148910000000     O         and      86
148920000000     O          e    31   n57detlin      1  1
148930000000     O         and      86
148940000000     O              n65      oditno              27
148950000000     O               65      odorit              27
148960000000     O                       odunms              31
148970000000     O                       odqtor              43 '      0.   -'
148980000000     O                       odqtsh              55 '      0.   -'
148990000000     O                    n75@@aslp              68 '     0.     '
149000000000     O                     75@@aspt              68 '      0.     '
149010000000     O                    n75@@prum              72
149020000000     O                     75@@prum              72
149030000000     O                     50                    81 'T'
149040000000     O          e    31      detlin         1
149050000000     O         and      86
149060031216      // #*8r - Beg of Chg
149070031216     O***                    oditd1              31
149080031216     O                       oditd1              33
149090031216      // #*8r - End of Chg
149100000000     O                 n75n23                    43 'B/O'
149110000000     O                 n75n23odboqt              55 '      0.   -'
149120000000     O                 n75n25odexwt              68 '      0.    -'
149130000000     O                 n75n25                    74 'C Wgt'
149140000000     O                     75odlnat              77 '            0.  -'
149150000000     O                  70n75odlnam              77 ' ,   ,  0.  -'
149160000000     O                 n70   odlnam              81 ' ,   ,  0.  -'
149170000000     O                  70   @@symo              81
149180000000     O          e    31      dsc2           1
149190000000     O         and      86
149200031216      // #*8r - Beg of Chg
149210031216     O***                    oditd2              31
149220031216     O                       oditd2              33
149230031216      // #*8r - End of Chg
149240000000     O                  75n23                    43 'B/O'
149250000000     O                  75n23odboqt              55 '      0.   -'
149260000000     O                  75n25odexwt              68 '      0.    -'
149270000000     O                  75n25                    74 'C Wgt'
149280000000     O          e    31      extic          1
149290000000     O         and      86
149300000000     O                       incmtx              62
149310000000     O          e    31    56detln1         1
149320000000     O         and      86
149330000000     O                 n65 57oditno              27
149340000000     O                  65 57odorit              27
149350031216      // #*8r - Beg of Chg
149360031216     O***                 n57                    22 'Customer Ordering U/M:'
149370031216     O                    n57                    24 'Customer Ordering U/M:'
149380031216      // #*8r - End of Chg
149390000000     O                    n57                    27 '('
149400000000     O                       odcoum              31
149410000000     O                       coqtor              43 '      0.   -'
149420000000     O                       coqtsh              55 '      0.   -'
149430000000     O                    n57                    57 ')'
149440000000     O                 n75 57@@aslp              67 '     0.     '
149450000000     O                  75 57@@aspt              68 '      0.     '
149460000000     O                 n75 57@@prum              70
149470000000     O                  75 57@@prum              71
149480000000     O                  50 57                    81 'T'
149490000000     O          e    31      msds           1
149500000000     O         and      86
149510000000     O                                           14 '** MSDS **'
149520000000     O          e    31      orgitm         1
149530000000     O         and      86
149540031216      // #*8r - Beg of Chg
149550031216     O***                    odorit              27
149560031216     O                       odorit              29
149570031216      // #*8r - End of Chg
149580000000     O          e    31      spcl        1  2
149590000000     O         and      86
149600000000     O                       oditd1              31
149610000000     O                       oditd2              62
149620000000     O              n75      odlnam              78 ' ,   ,  0.  -'
149630000000     O               75      odlnat              78 '  ,   ,   ,  0.  -'
149640000000     O                     50                    81 'T'
149650000000     O          e    31      msge           1
149660000000     O         and      86
149670000000     O                       oditd1              31
149680000000     O                       oditd2              62
149690000000      // header for component detail
149700000000     O          e    31      cnsist         1
149710000000     O         and      86
149720000000     O                                           15 'CONSISTING OF:'
149730000000      // detail component information
149740000000     O          e    31      cdet           1
149750000000     O         and      86
149760000000     O                       bccmit              29
149770000000     O                       bcqtpr        k     55
149780000000     O                                           56 '*'
149790000000     O                       bccmum              70
149800000000     O          e    31n07   cdet           1
149810000000     O         and      86
149820000000     O                       imitd1              33
149830000000     O          e    45n07n46cdet           1
149840000000     O         and   31
149850000000     O         and      86
149860000000     O                       imitd2              33
149870000000     O          e    55 31   cdet           1
149880000000     O         and      86
149890000000     O                                           14 '** MSDS **'
149900000000     O          e    31      endmsg         2
149910000000     O         and      86
149920000000     O                                           44 '* END *'
149930000000      // lot's
149940000000     O          e    31      lota           1
149950000000     O         and      86
149960000000     O                                           10 'LOT/QTY:'
149970000000     O              n13      wnltsr              33
149980000000     O              n13      wnstqt              55 '      0.   -'
149990000000     O               13      w9ltsr              33
150000000000     O               13      w9stqt              55 '      0.   -'
150010040408      // #*8y - begin add
150020040408      // drop ship lots
150030040408     O          e    31      dslot          1
150040040408     O         and      86
150050040408     O                                           10 'LOT/QTY:'
150060040408     O                       lzltsr              33
150070040408     O                       lzstqt              55 '      0.   -'
150080040408      // #*8y - end add
150090000000      // serial number's
150100000000     O          e    31      srna           1
150110000000     O         and      86
150120000000     O                                            5 'SN:'
150130000000     O                       sn                  80
150140040408      // #*8y - begin add
150150040408     O          e    31      dssrn          1
150160040408     O         and      86
150170040408     O                                            5 'SN:'
150180040408     O                       sn                  80
150190040408      // #*8y - end add
150200000000     O          e    31      smsg           1
150210000000     O         and      86
150220000000     O                    n09msgtxt              64
150230000000     O                     09                    55 '-MESSAGE TEXT MISSING-'
150240000000     O          e    31      contin         1 59
150250000000     O         and      86
150260000000     O                                           81 '* CONTINUED *'
150270000000     O          e    31n42   bottm1      1  1
150280000000     O         and      86
150290000000     O               17n70   ohcdam              17 '  ,   , $0.  '
150300000000     O               17n75 70ohcdam              17 ' ,   ,  0.  '
150310000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
150320000000     O               17 70   @@symo              21
150330000000     O               17      msg(1)              48
150340000000     O               17   n14                    58 'WITHIN TERMS'
150350000000     O               17    14cdate               57 '0  /  /  '
150360000000     O              n17                          48 'INVOICE DUE:'
150370000000     O              n17      ndate               57 '0  /  /  '
150380000000     O          e    31 42   bottm1      1  1
150390000000     O         and      86
150400000000     O               17n70   ctcdam              17 '    ,   , $0.  '
150410000000     O               17n75 70ctcdam              17 '   ,   ,  0.  '
150420000000     O               17 75   ctcdat              17 '  ,   ,   ,  0.  '
150430000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
150440000000     O               17 70   @@symo              21
150450000000     O               17      msg(1)              48
150460000000     O               17   n14                    58 'WITHIN TERMS'
150470000000     O               17    14cdate               57 '0  /  /  '
150480000000     O              n17                          48 'INVOICE DUE:'
150490000000     O              n17      ndate               57 '0  /  /  '
150500000000     O          e    31      boxlin         1
150510000000     O         and      86
150520000000     O                       boxhd               12
150530000000     O                       box(1)              19
150540000000     O                       box(2)              26
150550000000     O                       box(3)              33
150560000000     O                       box(4)              40
150570000000     O                       box(5)              47
150580000000     O                       box(6)              54
150590000000     O                       box(7)              61
150600000000     O                       box(8)              68
150610000000     O          e    31      splthd      2  1
150620000000     O         and      86
150630000000     O                    n17                    20 '********************'
150640000000     O                    n17                    40 ' INVOICE PAYMENT INF'
150650000000     O                    n17                    60 'ORMATION ***********'
150660000000     O                    n17                    70 '**********'
150670000000     O                     17                    20 '********************'
150680000000     O                     17                    40 '******** INVOICE PAY'
150690000000     O                     17                    60 'MENT INFORMATION ***'
150700000000     O                     17                    80 '********************'
150710000000     O                     17                    81 '*'
150720000000     O          e    31      splthd         1
150730000000     O         and      86
150740000000     O                    n17                    20 '**  INV NO. DUE DATE'
150750000000     O                  48n17                    41 '            DEPOSIT '
150760000000     O                    n17                    70 'INVOICE AMOUNT DUE **'
150770000000     O                     17                    20 'INV NO.  DUE DATE   '
150780000000     O                  48 17                    29 '  DEPOSIT'
150790000000     O                     17                    55 'INVOICE AMOUNT DUE '
150800000000     O                     17                    60 'CSH '
150810000000     O                     17                    80 'DSC DT   CASH DISC  '
150820000000     O          e    31      spltdt         1
150830000000     O         and      86
150840000000     O                    n17                     2 '**'
150850000000     O                    n17@@inno        z     11
150860000000     O                    n17ntdtex              20 '0  /  /  '
150870000000     O               47n75n17wkdpam        j     41
150880000000     O               47 75n17wkdpat        j     41
150890000000     O                    n17@@amd$        j     63
150900000000     O                  70n17@@symo              67
150910000000     O                    n17                    70 '**'
150920000000     O                     17@@inno        z      8
150930000000     O                     17ntdtex              17 '0  /  /  '
150940000000     O               47 17n75wkdpam        j     30
150950000000     O               47 17 75wkf2dp        j     30
150960000000     O                     17@@amd$        j     50
150970000000     O                  70 17@@symo              54
150980000000     O                     17cdsdtx              63 '0  /  /  '
150990000000     O                     17@@cds$        j     81
151000000000     O          e    31      spltbt         2
151010000000     O         and      86
151020000000     O                    n17                    20 '********************'
151030000000     O                    n17                    40 '********************'
151040000000     O                    n17                    60 '********************'
151050000000     O                    n17                    70 '**********'
151060000000     O                     17                    20 '********************'
151070000000     O                     17                    40 '********************'
151080000000     O                     17                    60 '********************'
151090000000     O                     17                    80 '********************'
151100000000     O                     17                    81 '*'
151110000000     O          e    31      unvmg1      3  1
151120000000     O         and      86
151130000000     O                       unvm(1)             64
151140000000     O          e    31      unvmg2         1
151150000000     O         and      86
151160000000     O                       unvm(2)             64
151170000000     O          e    31      unvmg3         2
151180000000     O         and      86
151190000000     O                       unvm(3)             64
151200000000     O          e    31      hazmsg         1
151210000000     O         and      86
151220000000     O                                           35 'HAZMAT SHIPPING PAPERS'
151230030820     O          e    31 71   bottom         1 55                                #*8n
151240030820     O         and      86                                                      #*8n
151250030820     O               21    73                    18 'GST REGISTRATION #'        #*8n
151260030820     O               21    73gstr#o              34                             #*8n
151270030820      //        e    31n42   bottom         1 55                                #*8n
151280030820     O          e    31n42   bottom         1                                   #*8n
151290000000     O         and      86
151300000000     O               20                          56 'TRADE DISCOUNT:'
151310000000     O               20   n70ohtdam        k     81
151320000000     O               20n75 70ohtdam        k     78
151330000000     O               20 75   ohtdat        k     78
151340000000     O               20 44                       15 'TRADE DISCOUNT:'
151350000000     O               20 44   xxtdab        k     36
151360000000     O          e    31 42   bottom         1 55
151370000000     O         and      86
151380000000     O               20                          56 'TRADE DISCOUNT:'
151390000000     O               20   n70cttdam        k     81
151400000000     O               20n75 70cttdam        k     78
151410000000     O               20 75   tdatic        k     78
151420000000     O               20 44                       15 'TRADE DISCOUNT:'
151430000000     O               20 44   @@tdab        k     36
151440000000     O          e    31n42   bottom         1
151450000000     O         and      86
151460000000     O               18                          56 'FEDERAL EXCISE TAX:'
151470000000     O               18   n70ohfeam        k     81
151480000000     O               18n75 70ohfeam        k     78
151490000000     O               18 75   ohfeat        k     78
151500000000     O               18 44                       15 'FED EXCISE TAX:'
151510000000     O               18 44   xxfeab        k     36
151520000000     O          e    31 42   bottom         1
151530000000     O         and      86
151540000000     O               18                          56 'FEDERAL EXCISE TAX:'
151550000000     O               18   n70ctfeam        k     81
151560000000     O               18n75 70ctfeam        k     78
151570000000     O               18 75   featic        k     78
151580000000     O               18 44                       15 'FED EXCISE TAX:'
151590000000     O               18 44   @@feab        k     36
151600000000     O          e    31n42   bottom         1
151610000000     O         and      86
151620000000     O               19                          55 'CONTAINER CHARGE:'
151630000000     O               19   n70ohcnct        k     81
151640000000     O               19n75 70ohcnct        k     78
151650000000     O               19 75   ohcctt        k     78
151660000000     O               19    44                    15 'CONTAINER CHG:'
151670000000     O               19    44xxcctb        k     36
151680000000     O          e    31 42   bottom         1
151690000000     O         and      86
151700000000     O               19                          55 'CONTAINER CHARGE:'
151710000000     O               19   n70ctcnct        k     81
151720000000     O               19n75 70ctcnct        k     78
151730000000     O               19 75   ccttic        k     78
151740000000     O               19    44                    15 'CONTAINER CHG:'
151750000000     O               19    44@@cctb        k     36
151760000000     O          e    31n42   bottom      1  1
151770000000     O         and      86
151780000000     O                                           55 'SUBTOTAL:'
151790000000     O                    n70subtot        k     81
151800000000     O              n75    70subtot        k     78
151810000000     O               75      icsubt        k     78
151820000000     O                     44                    15 'SUBTOTAL:'
151830000000     O                     44xxsubb        k     36
151840000000     O          e    31 42   bottom      1  1
151850000000     O         and      86
151860000000     O                                           55 'SUBTOTAL:'
151870000000     O                    n70csbtot        k     81
151880000000     O              n75    70csbtot        k     78
151890000000     O               75      subtic        k     78
151900000000     O                  70   @@symo              81
151910000000     O                     44                    15 'SUBTOTAL:'
151920000000     O                     44@@subb        k     36
151930000000     O                     44@@symb              39
151940000000     O          e    31n71n72bottom         1
151950000000     O         and  n42
151960000000     O         and      86
151970000000     O               21                          55 'SALES TAX:'
151980000000     O               21   n70ohtxam        k     81
151990000000     O               21n75 70ohtxam        k     78
152000000000     O               21 75   ohtxat        k     78
152010000000     O               21    44                    15 'SALES TAX:'
152020000000     O               21    44xxtxab        k     36
152030000000     O          e    31n71n72bottom         1
152040000000     O         and   42
152050000000     O         and      86
152060000000     O               21                          55 'SALES TAX:'
152070000000     O               21   n70cttaxm        k     81
152080000000     O               21n75 70cttaxm        k     78
152090000000     O               21 75   txatic        k     78
152100000000     O               21    44                    15 'SALES TAX:'
152110000000     O               21    44@@txab        k     36
152120000000     O          e    31 71n42bottom         1
152130000000     O         and      86
152140030820      //             21    73                    18 'GST REGISTRATION #'        #*8n
152150030820      //             21    73gstr#o              34                             #*8n
152160000000     O               21                          55 'GST:'
152170000000     O               21n75n70ohgtxa        k     78
152180000000     O               21n75 70ohgtxa        k     78
152190000000     O               21 75n70ohgtxt        k     78
152200000000     O               21 75 70ohgtxt        k     78
152210000000     O               21 44                       15 'GST:'
152220000000     O               21 44n75xxgtxb        k     36
152230000000     O               21 44 75@gtxtb        k     36
152240000000     O          e    31 71 42bottom         1
152250000000     O         and      86
152260030820      //             21    73                    18 'GST REGISTRATION #'        #*8n
152270030820      //             21    73gstr#o              34                             #*8n
152280000000     O               21                          55 'GST:'
152290000000     O               21n75n70ctgttx        k     78
152300000000     O               21n75 70ctgttx        k     78
152310000000     O               21 75n70ctgttt        k     78
152320000000     O               21 75 70ctgttt        k     78
152330000000     O               21 44                       15 'GST:'
152340000000     O               21 44n75@@gtxb        k     36
152350000000     O               21 44 75xgtxtb        k     36
152360000000     O          e    31 72n42bottom         1
152370000000     O         and      86
152380000000     O               21                          55 'PST:'
152390000000     O               21n75n70ohptxa        k     81
152400000000     O               21n75 70ohptxa        k     78
152410000000     O               21 75n70ohptxt        k     81
152420000000     O               21 75 70ohptxt        k     78
152430000000     O               21 44                       15 'PST:'
152440000000     O               21 44n75xxptxb        k     36
152450000000     O               21 44 75@ptxtb        k     36
152460000000     O          e    31 72 42bottom         1
152470000000     O         and      86
152480000000     O               21                          55 'PST:'
152490000000     O               21n75n70ctpttx        k     81
152500000000     O               21n75 70ctpttx        k     78
152510000000     O               21 75n70ctpttt        k     81
152520000000     O               21 75 70ctpttt        k     78
152530000000     O               21 44                       15 'PST:'
152540000000     O               21 44n75@@ptxb        k     36
152550000000     O               21 44 75xptxtb        k     36
152560000000     O          e    31n42   bottom         1
152570000000     O         and      86
152580000000     O                                           55 'TOTAL:'
152590000000     O                    n70itotal        k     81
152600000000     O                 n75 70itotal        k     78
152610000000     O                  75   ictotl        k     78
152620000000     O                  70   @@symo              81
152630000000     O                     44                    15 'TOTAL:'
152640000000     O                     44xxtotb        k     36
152650000000     O                     44@@symb              39
152660000000     O          e    31 42   bottom         1
152670000000     O         and      86
152680000000     O                                           55 'TOTAL:'
152690000000     O                    n70citotl        k     81
152700000000     O                 n75 70citotl        k     78
152710000000     O                  75   totlic        k     78
152720000000     O                  70   @@symo              81
152730000000     O                     44                    15 'TOTAL:'
152740000000     O                     44xxtotb        k     36
152750000000     O                     44@@symb              39
152760000000     O          e    31n72n42bottom      1  1
152770000000     O         and      86
152780000000     O                                           55 'DEPOSIT:'
152790000000     O                    n70ohdpam        k     81
152800000000     O                 n75 70ohdpam        k     78
152810000000     O                  75   ohdpat        k     78
152820000000     O                     44                    15 'DEPOSIT:'
152830000000     O                     44xxdpab        k     36
152840000000     O          e    31n72 42bottom      1  1
152850000000     O         and      86
152860000000     O                                           55 'DEPOSIT:'
152870000000     O                    n70ctdpam        k     81
152880000000     O                 n75 70ctdpam        k     78
152890000000     O                  75   dpatic        k     78
152900000000     O                     44                    15 'DEPOSIT:'
152910000000     O                     44@@dpab        k     36
152920000000     O          e    31 72n42bottom      1  1
152930000000     O         and      86
152940000000     O                                           55 'DEPOSIT:'
152950000000     O                    n70ohdpam        k     81
152960000000     O                 n75 70ohdpam        k     78
152970000000     O                  75   ohdpat        k     78
152980000000     O                     44                    15 'DEPOSIT:'
152990000000     O                     44xxdpab        k     36
153000000000     O          e    31 72 42bottom         1
153010000000     O         and      86
153020000000     O                                           55 'DEPOSIT:'
153030000000     O                    n70ctdpam        k     81
153040000000     O                 n75 70ctdpam        k     78
153050000000     O                  75   dpatic        k     78
153060000000     O                     44                    15 'DEPOSIT:'
153070000000     O                     44@@dpab        k     36
153080000000     O          e    31n42   bottom         1
153090000000     O         and      86
153100000000     O                                           55 'AMT DUE:'
153110000000     O                    n70amtdue        j     81
153120000000     O              n75 70   amtdue        j     78
153130000000     O               75      icamnt        j     78
153140000000     O                  70   @@symo              81
153150000000     O                     44                    15 'AMT DUE:'
153160000000     O                     44xxamnb        k     36
153170000000     O                     44@@symb              39
153180000000     O          e    31 42   bottom         1
153190000000     O         and      86
153200000000     O                                           55 'AMT DUE:'
153210000000     O                    n70camtdu        j     81
153220000000     O              n75 70   camtdu        j     78
153230000000     O               75      amntic        j     78
153240000000     O                  70   @@symo              81
153250000000     O                     44                    15 'AMT DUE:'
153260000000     O                     44@@amnb        k     36
153270000000     O                     44@@symb              39
153280000000      //
153290000000     Oapprtin4  e    29      headin         1 02
153300000000     O         and      86
153310000000     O                       @trmsg              40
153320000000     O                       ttldsc              63
153330050526      //#*9i - beg of add
153340050527     O                                           77 'Page:'
153350050526     O                       page5         z     82
153360050526      //#*9i - end of add
153370000000     O          e    29      headin         1 04
153380000000     O         and      86
153390000000     O                  51n42                    66 '** CREDIT MEMO **'
153400000000     O               42                          65 '** CONSOLIDATED **'
153410000000     O          e    29      headin         1 13
153420000000     O         and      86
153430000000     O                                            8 'Bill To:'
153440000000     O              n26    42ohcono              11
153450000000     O              n26    42                    12 '/'
153460000000     O              n26    42oharcs              23
153470000000      //
153480000000     O               26    42ctcono              11
153490000000     O               26    42                    12 '/'
153500000000     O               26    42ctarcs              23
153510000000     O                                           46 'Ship To:'
153520000000     O                                           82 'Invoice'
153530000000     O          e    29      headin         1
153540000000     O         and      86
153550000000     O              n26      sld(1)              38
153560000000     O              n26      shp(1)              74
153570000000     O              n26      ohinno        z     82
153580000000      //
153590000000     O               26      csl(1)              38
153600000000     O               26      csh(1)              74
153610000000     O               26      ctinno        z     82
153620000000     O          e    29      headin         1
153630000000     O         and      86
153640000000     O              n26      sld(2)              38
153650000000     O              n26      shp(2)              74
153660000000      //
153670000000     O               26      csl(2)              38
153680000000     O               26      csh(2)              74
153690000000     O          e    29      headin         1
153700000000     O         and      86
153710000000     O              n26      sld(3)              38
153720000000     O              n26      shp(3)              74
153730000000      //
153740000000     O               26      csl(3)              38
153750000000     O               26      csh(3)              74
153760000000     O                                           82 'Date/Time'
153770000000     O          e    29      headin         1
153780000000     O         and      86
153790000000     O              n26      sld(4)              38
153800000000     O              n26      shp(4)              74
153810000000     O              n26      invdto              82 '0  /  /  '
153820000000      //
153830000000     O               26      csl(4)              38
153840000000     O               26      csh(4)              74
153850000000     O               26      ctivdt              82 '0  /  /  '
153860000000     O          e    29      headin         1
153870000000     O         and      86
153880000000     O              n26      sld(5)              38
153890000000     O              n26      shp(5)              74
153900000000      //
153910000000     O               26      csl(5)              38
153920000000     O               26      csh(5)              74
153930000000     O                       @@time              82 '  :  :  '
153940000000     O          e    29      headin         1
153950000000     O         and      86
153960000000     O              n26      sld(6)              38
153970000000     O              n26      shp(6)              74
153980000000      //
153990000000     O               26      csl(6)              38
154000000000     O               26      csh(6)              74
154010000000      //
154020000000     O          e    29      headin         1
154030000000     O         and      86
154040000000     O              n26      sld(7)              38
154050000000     O              n26      shp(7)              74
154060000000      //
154070000000     O               26      csl(7)              38
154080000000     O               26      csh(7)              74
154090000000      //
154100000000     O          e    29      headin         1
154110000000     O         and      86
154120000000     O              n26      sld(8)              38
154130000000     O              n26      shp(8)              74
154140000000      //
154150000000     O               26      csl(8)              38
154160000000     O               26      csh(8)              74
154170000000      //
154180000000     O          e    29      headin         1
154190000000     O         and      86
154200000000     O              n26      sld(9)              38
154210000000     O              n26      shp(9)              74
154220000000      //
154230000000     O               26      csl(9)              38
154240000000     O               26      csh(9)              74
154250000000      //
154260000000     O          e    29      headin         1
154270000000     O         and      86
154280000000     O                    n42                    10 'Co/Cust No'
154290000000     O                    n42                    22 'Order No'
154300000000     O                    n42                    38 'Customer PO #'
154310000000     O                    n42                    49 'Ter'
154320000000     O                    n42                    55 'Sls#'
154330000000     O                  76n77                    82 '*REPRINT*'
154340000000     O                     77                    82 '*REPRINT FROM HISTORY*'
154350000000     O          e    29      headin         1
154360000000     O         and      86
154370000000     O              n42                          10 '----------'
154380000000     O              n42                          22 '--------'
154390000000     O              n42                          38 '-------------'
154400000000     O              n42                          49 '---'
154410000000     O              n42                          55 '----'
154420000000     O          e    29      headin         1
154430000000     O         and      86
154440000000     O              n42      comcus              13 '  /          '
154450000000     O              n42      ohorno              19
154460000000     O              n42                          20 '/'
154470000000     O              n42      ohorgn              22
154480000000     O              n42      cspo@               43
154490000000     O              n42      ohtert              49
154500000000     O              n42      ohsls1        z     55
154510000000     O          e    29      headin         1
154520000000     O         and      86
154530000000     O              n42      ohnote              82
154540000000     O          e    29      headin         1
154550000000     O         and      86
154560000000     O              n42                           8 'Ship Via'
154570000000     O              n42      ohspin              31
154580000000     O                                           38 'Terms'
154590000000     O              n26    15ohcdsp        4     46
154600000000     O               26    15ctcdsp        4     46
154610000000     O                     15                    47 '%'
154620000000     O              n26      terms               68
154630000000     O               26      ctterm              68
154640000000     O              n42                          74 'Ref#'
154650000000     O              n42      ohorrf              82
154660000000     O          e    29      headin         1
154670000000     O         and      86
154680000000     O                                            8 'Pay Type'
154690000000     O              n26      paydsc              41
154700000000     O               26      ctpayd              41
154710000000     O                    n22                    47 'CC#'
154720000000     O              n26   n22@wcrcd              66
154730000000     O               26   n22ctcrcd              66
154740000000     O                    n22                    74 'Exp '
154750000000     O              n26   n22ohexpd              81 '  /  '
154760000000     O               26   n22ctexpd              81 '  /  '
154770000000      //
154780000000     O          e    29      headin         1
154790000000     O         and      86
154800000000     O                       dshm2               82
154810000000     O          e    29      headin         1
154820000000     O         and      86
154830000000     O                                           12 'Item Number/'
154840000000     O                                           23 'Description'
154850000000     O                                           31 'U/M'
154860000000     O                                           41 'Ordered'
154870000000     O                                           53 'Shipped'
154880000000     O                                           70 'Sell Price'
154890000000     O                                           82 'Total'
154900000000     O          e    29      headin         1
154910000000     O         and      86
154920000000     O                       dshm2               82
154930000000      //
154940000000     O          e    29n66   headin         1
154950050414      // #*9h begin of change
154960050414      // O         and      86
154970050414     O         and      86n42
154980050414      // #*9h end of change
154990000000     O                                           16 'FOB Description:'
155000000000     O              n26n89   @cfobd              48
155010000000     O              n26 89   @tfobd              48
155020000000     O               26      ctfobd              48
155030000000     O          e    29 71   headin         1
155040000000     O         and      86
155050000000     O                                           14 'Tax Invoice - '
155060000000     O                       @txlin              55
155070000000     O          e    29 72   headin         1
155080000000     O         and  n71 86
155090000000     O                                           14 'Tax Invoice - '
155100000000     O                       @txlin              55
155110000000     O          e    29 42   cuscom      1  1
155120000000     O         and      86
155130000000     O               42      cocmtx              68
155140000000     O          e    29 42   crdmem      1  1
155150000000     O         and      86
155160000000     O                                           17 '** CREDIT MEMO **'
155170000000     O          e    29 42   conhd1      1  1
155180000000     O         and      86
155190000000     O                                            9 'Order No:'
155200000000     O                       ohorno              15
155210000000     O                                           16 '/'
155220000000     O              n12      ohorgn              18
155230000000     O               12      cxrlgn              18
155240000000     O                                           34 'Customer PO #:'
155250000000     O                       ohcspo              57
155260000000     O                                           62 'Ter:'
155270000000     O                       ohtert              66
155280000000     O                                           72 'Sls#:'
155290000000     O                       ohsls1        z     78
155300000000     O          e    29 42   conhd2         1
155310000000     O         and      86
155320000000     O                                            9 'Ship Via:'
155330000000     O                       ohspin              32
155340000000     O                                           37 'Ref#:'
155350000000     O                       ohorrf              44
155360000000     O                       ohnote              77
155370000000     O          e    29 42   concrd         1
155380000000     O         and      86
155390000000     O                                           47 'CC#'
155400000000     O                       @wcrcd              66
155410000000     O                                           74 'Exp '
155420000000     O                       ohexpd              81 '  /  '
155430000000     O          e    29 42   consld         1
155440000000     O         and      86
155450000000     O                                            8 'Sold To:'
155460000000     O                       ohcono              11
155470000000     O                                           13 '/'
155480000000     O                       ohcsno              23
155490000000     O                       @@csnm              55
155500000000     O          e    29 42   consh1         1
155510000000     O         and      86
155520000000     O                                            8 'Ship To:'
155530000000     O                       sh(1)               44
155540000000     O          e    29 42   consh2         1
155550000000     O         and      86
155560000000     O                       sh(2)               44
155570000000     O          e    29 42   consh3         1
155580000000     O         and      86
155590000000     O                       sh(3)               44
155600000000     O          e    29 42   consh4         1
155610000000     O         and      86
155620000000     O                       sh(4)               44
155630000000     O          e    29 42   consh5
155640000000     O         and      86
155650000000     O                       sh(5)               44
155660000000     O          e    29 42   consh6
155670000000     O         and      86
155680000000     O                       sh(6)               44
155690000000     O          e    29 42   consh7
155700000000     O         and      86
155710000000     O                       sh(7)               44
155720000000     O          e    29 42   consh8
155730000000     O         and      86
155740000000     O                       sh(8)               44
155750000000     O          e    29 42   consh9
155760000000     O         and      86
155770000000     O                       sh(9)               44
155780050414      // #*9h begin of add
155790050414     O          e    29 42 86fobdes         1
155800050414     O                                           16 'FOB Description:'
155810050414     O                       @tfobd              48
155820050414      // #*9h end of add
155830000000     O          e    29   n57detlin      1  1
155840000000     O         and      86
155850000000     O              n65      oditno              27
155860000000     O               65      odorit              27
155870000000     O                       odunms              31
155880000000     O                       odqtor              43 '      0.   -'
155890000000     O                       odqtsh              55 '      0.   -'
155900000000     O                    n75@@aslp              68 '     0.     '
155910000000     O                     75@@aspt              68 '      0.     '
155920000000     O                    n75@@prum              72
155930000000     O                     75@@prum              72
155940000000     O                     50                    82 'T'
155950000000     O          e    29      detlin         1
155960000000     O         and      86
155970031216      // #*8r - Beg of Chg
155980031216     O***                    oditd1              31
155990031216     O                       oditd1              33
156000031216      // #*8r - End of Chg
156010000000     O                 n75n23                    43 'B/O'
156020000000     O                 n75n23odboqt              55 '      0.   -'
156030000000     O                 n75n25odexwt              68 '      0.    -'
156040000000     O                 n75n25                    74 'C Wgt'
156050000000     O                     75odlnat              79 '            0.  -'
156060000000     O                    n75odlnam              79 ' ,   ,  0.  -'
156070000000     O                  70   @@symo              82
156080000000     O          e    29      dsc2           1
156090000000     O         and      86
156100031216      // #*8r - Beg of Chg
156110031216     O***                    oditd2              31
156120031216     O                       oditd2              33
156130031216      // #*8r - End of Chg
156140000000     O                  75n23                    43 'B/O'
156150000000     O                  75n23odboqt              55 '      0.   -'
156160000000     O                  75n25odexwt              68 '      0.    -'
156170000000     O                  75n25                    74 'C Wgt'
156180000000     O          e    29      extic          1
156190000000     O         and      86
156200000000     O                       incmtx              62
156210000000     O          e    29    56detln1         1
156220000000     O         and      86
156230000000     O                 n65 57oditno              27
156240000000     O                  65 57odorit              27
156250031216      // #*8r - Beg of Chg
156260031216     O***                 n57                    22 'Customer Ordering U/M:'
156270031216     O                    n57                    24 'Customer Ordering U/M:'
156280031216      // #*8r - End of Chg
156290000000     O                    n57                    27 '('
156300000000     O                       odcoum              31
156310000000     O                       coqtor              43 '      0.   -'
156320000000     O                       coqtsh              55 '      0.   -'
156330000000     O                    n57                    57 ')'
156340000000     O                 n75 57@@aslp              67 '     0.     '
156350000000     O                  75 57@@aspt              68 '      0.     '
156360000000     O                 n75 57@@prum              70
156370000000     O                  75 57@@prum              71
156380000000     O                  50 57                    82 'T'
156390000000     O          e    29      msds           1
156400000000     O         and      86
156410000000     O                                           14 '** MSDS **'
156420000000     O          e    29      orgitm         1
156430000000     O         and      86
156440031216      // #*8r - Beg of Chg
156450031216     O***                    odorit              27
156460031216     O                       odorit              29
156470031216      // #*8r - End of Chg
156480000000     O          e    29      spcl        1  2
156490000000     O         and      86
156500000000     O                       oditd1              31
156510000000     O                       oditd2              62
156520000000     O              n75      odlnam              81 ' ,   ,  0.  -'
156530000000     O               75      odlnat              81 '  ,   ,   ,  0.  -'
156540000000     O                     50                    82 'T'
156550000000     O          e    29      msge           1
156560000000     O         and      86
156570000000     O                       oditd1              31
156580000000     O                       oditd2              62
156590000000      // header for component detail
156600000000     O          e    29      cnsist         1
156610000000     O         and      86
156620000000     O                                           15 'CONSISTING OF:'
156630000000      // detail component information
156640000000     O          e    29      cdet           1
156650000000     O         and      86
156660000000     O                       bccmit              29
156670000000     O                       bcqtpr        k     55
156680000000     O                                           56 '*'
156690000000     O                       bccmum              70
156700000000     O          e    29n07   cdet           1
156710000000     O         and      86
156720000000     O                       imitd1              33
156730000000     O          e    45n07n46cdet           1
156740000000     O         and   29
156750000000     O         and      86
156760000000     O                       imitd2              33
156770000000     O          e    55 29   cdet           1
156780000000     O         and      86
156790000000     O                                           14 '** MSDS **'
156800000000     O          e    29      endmsg         2
156810000000     O         and      86
156820000000     O                                           44 '* END *'
156830000000      // lot's
156840000000     O          e    29      lota           1
156850000000     O         and      86
156860000000     O                                           10 'LOT/QTY:'
156870000000     O              n13      wnltsr              33
156880000000     O              n13      wnstqt              55 '      0.   -'
156890000000     O               13      w9ltsr              33
156900000000     O               13      w9stqt              55 '      0.   -'
156910040408      // #*8y - begin add
156920040408      // drop ship lots
156930040408     O          e    29      dslot          1
156940040408     O         and      86
156950040408     O                                           10 'LOT/QTY:'
156960040408     O                       lzltsr              33
156970040408     O                       lzstqt              55 '      0.   -'
156980040408      // #*8y - end add
156990000000      // serial number's
157000000000     O          e    29      srna           1
157010000000     O         and      86
157020000000     O                                            5 'SN:'
157030000000     O                       sn                  80
157040040408      // #*8y - begin add
157050040408     O          e    29      dssrn          1
157060040408     O         and      86
157070040408     O                                            5 'SN:'
157080040408     O                       sn                  80
157090040408      // #*8y - end add
157100000000     O          e    29      smsg           1
157110000000     O         and      86
157120000000     O                    n09msgtxt              64
157130000000     O                     09                    55 '-MESSAGE TEXT MISSING-'
157140000000     O          e    29      contin         1 59
157150000000     O         and      86
157160000000     O                                           82 '* CONTINUED *'
157170000000     O          e    29n42   bottm1      1  1
157180000000     O         and      86
157190000000     O               17n70   ohcdam              17 '  ,   , $0.  '
157200000000     O               17n75 70ohcdam              17 ' ,   ,  0.  '
157210000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
157220000000     O               17 70   @@symo              21
157230000000     O               17      msg(1)              48
157240000000     O               17   n14                    58 'WITHIN TERMS'
157250000000     O               17    14cdate               57 '0  /  /  '
157260000000     O              n17                          48 'INVOICE DUE:'
157270000000     O              n17      ndate               57 '0  /  /  '
157280000000     O          e    29 42   bottm1      1  1
157290000000     O         and      86
157300000000     O               17n70   ctcdam              17 '    ,   , $0.  '
157310000000     O               17n75 70ctcdam              17 '   ,   ,  0.  '
157320000000     O               17 75   ctcdat              17 '  ,   ,   ,  0.  '
157330000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
157340000000     O               17 70   @@symo              21
157350000000     O               17      msg(1)              48
157360000000     O               17   n14                    58 'WITHIN TERMS'
157370000000     O               17    14cdate               57 '0  /  /  '
157380000000     O              n17                          48 'INVOICE DUE:'
157390000000     O              n17      ndate               57 '0  /  /  '
157400000000     O          e    29      boxlin         1
157410000000     O         and      86
157420000000     O                       boxhd               12
157430000000     O                       box(1)              19
157440000000     O                       box(2)              26
157450000000     O                       box(3)              33
157460000000     O                       box(4)              40
157470000000     O                       box(5)              47
157480000000     O                       box(6)              54
157490000000     O                       box(7)              61
157500000000     O                       box(8)              68
157510000000     O          e    29      splthd      2  1
157520000000     O         and      86
157530000000     O                    n17                    20 '********************'
157540000000     O                    n17                    40 ' INVOICE PAYMENT INF'
157550000000     O                    n17                    60 'ORMATION ***********'
157560000000     O                    n17                    70 '**********'
157570000000     O                     17                    20 '********************'
157580000000     O                     17                    40 '******** INVOICE PAY'
157590000000     O                     17                    60 'MENT INFORMATION ***'
157600000000     O                     17                    80 '********************'
157610000000     O                     17                    81 '*'
157620000000     O          e    29      splthd         1
157630000000     O         and      86
157640000000     O                    n17                    20 '**  INV NO. DUE DATE'
157650000000     O                  48n17                    41 '            DEPOSIT '
157660000000     O                    n17                    70 'INVOICE AMOUNT DUE **'
157670000000     O                     17                    20 'INV NO.  DUE DATE   '
157680000000     O                  48 17                    29 '  DEPOSIT'
157690000000     O                     17                    55 'INVOICE AMOUNT DUE '
157700000000     O                     17                    60 'CSH '
157710000000     O                     17                    80 'DSC DT   CASH DISC  '
157720000000     O          e    29      spltdt         1
157730000000     O         and      86
157740000000     O                    n17                     2 '**'
157750000000     O                    n17@@inno        z     11
157760000000     O                    n17ntdtex              20 '0  /  /  '
157770000000     O               47n17n75wkdpam        j     41
157780000000     O               47n17 75wkdpat        j     41
157790000000     O                    n17@@amd$        j     63
157800000000     O                  70n17@@symo              67
157810000000     O                    n17                    70 '**'
157820000000     O                     17@@inno        z      8
157830000000     O                     17ntdtex              17 '0  /  /  '
157840000000     O               47 17n75wkdpam        j     30
157850000000     O               47 17 75wkf2dp        j     30
157860000000     O                     17@@amd$        j     50
157870000000     O                  70 17@@symo              54
157880000000     O                     17cdsdtx              63 '0  /  /  '
157890000000     O                     17@@cds$        j     81
157900000000     O          e    29      spltbt         2
157910000000     O         and      86
157920000000     O                    n17                    20 '********************'
157930000000     O                    n17                    40 '********************'
157940000000     O                    n17                    60 '********************'
157950000000     O                    n17                    70 '**********'
157960000000     O                     17                    20 '********************'
157970000000     O                     17                    40 '********************'
157980000000     O                     17                    60 '********************'
157990000000     O                     17                    80 '********************'
158000000000     O                     17                    81 '*'
158010000000     O          e    29      unvmg1      3  1
158020000000     O         and      86
158030000000     O                       unvm(1)             64
158040000000     O          e    29      unvmg2         1
158050000000     O         and      86
158060000000     O                       unvm(2)             64
158070000000     O          e    29      unvmg3         2
158080000000     O         and      86
158090000000     O                       unvm(3)             64
158100000000     O          e    29      hazmsg         1
158110000000     O         and      86
158120000000     O                                           35 'HAZMAT SHIPPING PAPERS'
158130030820     O          e    29 71   bottom         1 55                                #*8n
158140030820     O         and      86                                                      #*8n
158150030820     O               21    73                    18 'GST REGISTRATION #'        #*8n
158160030820     O               21    73gstr#o              34                             #*8n
158170030820      //        e    29n42   bottom         1 55                                #*8n
158180030820     O          e    29n42   bottom         1                                   #*8n
158190000000     O         and      86
158200000000     O               20                          56 'TRADE DISCOUNT:'
158210000000     O               20   n70ohtdam        k     82
158220000000     O               20n75 70ohtdam        k     79
158230000000     O               20 75   ohtdat        k     79
158240000000     O               20                          14 'TRADE DISCOUNT'
158250000000     O               20 44   xxtdab        k     35
158260000000     O          e    29 42   bottom         1 55
158270000000     O         and      86
158280000000     O               20                          56 'TRADE DISCOUNT:'
158290000000     O               20   n70cttdam        k     82
158300000000     O               20n75 70cttdam        k     79
158310000000     O               20 75   tdatic        k     79
158320000000     O               20 44                       14 'TRADE DISCOUNT'
158330000000     O               20 44   @@tdab        k     35
158340000000     O          e    29n42   bottom         1
158350000000     O         and      86
158360000000     O               18                          56 'FEDERAL EXCISE TAX:'
158370000000     O               18   n70ohfeam        k     82
158380000000     O               18n75 70ohfeam        k     79
158390000000     O               18 75   ohfeat        k     79
158400000000     O               18 44                       14 'FED EXCISE TAX'
158410000000     O               18 44   xxfeab        k     35
158420000000     O          e    29 42   bottom         1
158430000000     O         and      86
158440000000     O               18                          56 'FEDERAL EXCISE TAX:'
158450000000     O               18   n70ctfeam        k     82
158460000000     O               18n75 70ctfeam        k     79
158470000000     O               18 75   featic        k     79
158480000000     O               18 44                       14 'FED EXCISE TAX'
158490000000     O               18 44   @@feab        k     35
158500000000     O          e    29n42   bottom         1
158510000000     O         and      86
158520000000     O               19                          56 'CONTAINER CHARGE:'
158530000000     O               19   n70ohcnct        k     82
158540000000     O               19n75 70ohcnct        k     79
158550000000     O               19 75   ohcctt        k     79
158560000000     O               19    44                    14 'CONTAINER CHG'
158570000000     O               19    44xxcctb        k     35
158580000000     O          e    29 42   bottom         1
158590000000     O         and      86
158600000000     O               19                          56 'CONTAINER CHARGE:'
158610000000     O               19   n70ctcnct        k     82
158620000000     O               19n75 70ctcnct        k     79
158630000000     O               19 75   ccttic        k     79
158640000000     O               19    44                    14 'CONTAINER CHG'
158650000000     O               19    44@@cctb        k     35
158660000000     O          e    29n42   bottom      1  1
158670000000     O         and      86
158680000000     O                                           56 'SUBTOTAL:'
158690000000     O                    n70subtot        k     82
158700000000     O              n75    70subtot        k     79
158710000000     O               75      icsubt        k     79
158720000000     O                     44                    14 'SUBTOTAL'
158730000000     O                     44xxsubb        k     35
158740000000     O          e    29 42   bottom      1  1
158750000000     O         and      86
158760000000     O                                           56 'SUBTOTAL:'
158770000000     O                    n70csbtot        k     82
158780000000     O              n75    70csbtot        k     79
158790000000     O               75      subtic        k     79
158800000000     O                  70   @@symo              82
158810000000     O                     44                    14 'SUBTOTAL'
158820000000     O                     44@@subb        k     35
158830000000     O                     44@@symb              38
158840000000     O          e    29n71n72bottom         1
158850000000     O         and  n42
158860000000     O         and      86
158870000000     O               21                          56 'SALES TAX:'
158880000000     O               21   n70ohtxam        k     82
158890000000     O               21n75 70ohtxam        k     79
158900000000     O               21 75   ohtxat        k     79
158910000000     O               21    44                    14 'SALES TAX'
158920000000     O               21    44xxtxab        k     35
158930000000     O          e    29n71n72bottom         1
158940000000     O         and   42
158950000000     O         and      86
158960000000     O               21                          56 'SALES TAX:'
158970000000     O               21   n70cttaxm        k     82
158980000000     O               21n75 70cttaxm        k     79
158990000000     O               21 75   txatic        k     79
159000000000     O               21    44                    14 'SALES TAX'
159010000000     O               21    44@@txab        k     35
159020000000     O          e    29 71n42bottom         1
159030000000     O         and      86
159040030820      //             21    73                    18 'GST REGISTRATION #'        #*8n
159050030820      //             21    73gstr#o              34                             #*8n
159060000000     O               21                          56 'GST:'
159070000000     O               21n75n70ohgtxa        k     79
159080000000     O               21n75 70ohgtxa        k     79
159090000000     O               21 75n70ohgtxt        k     79
159100000000     O               21 75 70ohgtxt        k     79
159110000000     O               21 44                       14 'GST:'
159120000000     O               21 44n75xxgtxb        k     35
159130000000     O               21 44 75@gtxtb        k     35
159140000000     O               21 44   xxgtxb              35
159150000000     O          e    29 71 42bottom         1
159160000000     O         and      86
159170030820      //             21    73                    18 'GST REGISTRATION #'        #*8n
159180030820      //             21    73gstr#o              34                             #*8n
159190000000     O               21                          56 'GST:'
159200000000     O               21n75n70ctgttx        k     79
159210000000     O               21n75 70ctgttx        k     79
159220000000     O               21 75n70ctgttt        k     79
159230000000     O               21 75 70ctgttt        k     79
159240000000     O               21 44                       13 'GST:'
159250000000     O               21 44n75@@gtxb              35
159260000000     O               21 44 75xgtxtb              35
159270000000     O          e    29 72n42bottom         1
159280000000     O         and      86
159290000000     O               21                          56 'PST:'
159300000000     O               21n75n70ohptxa        k     82
159310000000     O               21n75 70ohptxa        k     79
159320000000     O               21 75n70ohptxt        k     82
159330000000     O               21 75 70ohptxt        k     79
159340000000     O               21 44                       14 'PST:'
159350000000     O               21 44n75xxptxb        k     35
159360000000     O               21 44 75@ptxtb        k     35
159370000000     O          e    29 72 42bottom         1
159380000000     O         and      86
159390000000     O               21                          56 'PST:'
159400000000     O               21n75n70ctpttx        k     82
159410000000     O               21n75 70ctpttx        k     79
159420000000     O               21 75n70ctpttt        k     82
159430000000     O               21 75 70ctpttt        k     79
159440000000     O               21 44                       14 'PST:'
159450000000     O               21 44n75@@ptxb              35
159460000000     O               21 44 75xptxtb              35
159470000000     O          e    29n42   bottom         1
159480000000     O         and      86
159490000000     O                                           56 'TOTAL:'
159500000000     O                    n70itotal        k     82
159510000000     O                 n75 70itotal        k     79
159520000000     O                  75   ictotl        k     79
159530000000     O                  70   @@symo              82
159540000000     O                     44                    14 'TOTAL:'
159550000000     O                     44xxtotb        k     35
159560000000     O                     44@@symb              38
159570000000     O          e    29 42   bottom         1
159580000000     O         and      86
159590000000     O                                           56 'TOTAL:'
159600000000     O                    n70citotl        k     82
159610000000     O                 n75 70citotl        k     79
159620000000     O                  75   totlic        k     79
159630000000     O                  70   @@symo              82
159640000000     O                     44                    14 'TOTAL:'
159650000000     O                     44xxtotb        k     35
159660000000     O                     44@@symb              37
159670000000     O          e    29n72n42bottom      1  1
159680000000     O         and      86
159690000000     O                                           56 'DEPOSIT:'
159700000000     O                    n70ohdpam        k     82
159710000000     O                 n75 70ohdpam        k     79
159720000000     O                  75   ohdpat        k     79
159730000000     O                     44                    14 'DEPOSIT:'
159740000000     O                     44xxdpab        k     35
159750000000     O          e    29n72 42bottom      1  1
159760000000     O         and      86
159770000000     O                                           56 'DEPOSIT:'
159780000000     O                    n70ctdpam        k     82
159790000000     O                 n75 70ctdpam        k     79
159800000000     O                  75   dpatic        k     79
159810000000     O                     44                    14 'DEPOSIT:'
159820000000     O                     44@@dpab        k     35
159830000000     O          e    29 72n42bottom      1  1
159840000000     O         and      86
159850000000     O                                           56 'DEPOSIT:'
159860000000     O                    n70ohdpam        k     82
159870000000     O                 n75 70ohdpam        k     79
159880000000     O                  75   ohdpat        k     79
159890000000     O                     44                    14 'DEPOSIT:'
159900000000     O                     44xxdpab        k     35
159910000000     O          e    29 72 42bottom         1
159920000000     O         and      86
159930000000     O                                           56 'DEPOSIT:'
159940000000     O                    n70ctdpam        k     82
159950000000     O                 n75 70ctdpam        k     79
159960000000     O                  75   dpatic        k     79
159970000000     O                     44                    14 'DEPOSIT:'
159980000000     O                     44@@dpab        k     35
159990000000     O          e    29n42   bottom         1
160000000000     O         and      86
160010000000     O                                           56 'AMT DUE:'
160020000000     O                    n70amtdue        j     82
160030000000     O              n75 70   amtdue        j     79
160040000000     O               75      icamnt        j     79
160050000000     O                  70   @@symo              82
160060000000     O                     44                    14 'AMT DUE:'
160070000000     O                     44xxamnb        k     35
160080000000     O                     44@@symb              38
160090000000     O          e    29 42   bottom         1
160100000000     O         and      86
160110000000     O                                           56 'AMT DUE:'
160120000000     O                    n70camtdu        j     82
160130000000     O              n75 70   camtdu        j     79
160140000000     O               75      amntic        j     79
160150000000     O                  70   @@symo              82
160160000000     O                     44                    14 'AMT DUE:'
160170000000     O                     44@@amnb        k     35
160180000000     O                     44@@symb              38
160190000000      //----------------------------------------------------------------
160200000000      // invoice manifest
160210000000      //----------------------------------------------------------------
160220000000     Oapprtmf2  e            headmf         2 03
160230000000     O         and      86
160240000000     O                                            4 'Date'
160250000000     O                       ud@te               13 '0  /  /  '
160260000000     O                                           50 'INVOICE MANIFEST'
160270000000     O                                           75 'Page'
160280000000     O                       page          z     80
160290000000     O          e            headmf         2
160300000000     O         and      86
160310000000     O                                           42 'Route:'
160320000000     O                       ohrout              47
160330000000     O          e            headmf         1
160340000000     O         and      86
160350000000     O                       dshm2               82
160360000000     O          e            headmf         1
160370000000     O         and      86
160380000000     O                                            4 'Stop'
160390000000     O                                           10 'Order'
160400000000     O                                           17 'Name'
160410000000     O                                           49 'Items'
160420000000     O                                           61 'Total'
160430000000     O                                           70 'Typ'
160440000000     O                                           80 'Signature'
160450000000     O          e            headmf         2
160460000000     O         and      86
160470000000     O                       dshm2               82
160480000000     O          e            detlmf         2
160490000000     O         and      86
160500000000     O                       ohstop        z      3
160510000000     O                       ohorno               9
160520000000     O                                           10 '/'
160530000000     O                       ohorgn              12
160540000000     O                       ohcsnm              43
160550000000     O                       ohnoit        z     49
160560000000     O              n75      ohinam        4     63
160570000000     O               75      ohinat        4     63
160580000000     O               70      @@symo              67
160590000000     O                       ohpytp              70
160600000000     O                                           82 '___________'
160610000000      //
160620000000      //----------------------------------------------------------------
160630000000      // fax invoice
160640000000      //----------------------------------------------------------------
160650000000      //* cover sheet
160660000000     Oapfaxin2  e    32      coverp         1 01
160670000000     O         and      86
160680000000     O                                            3 '*FN'
160690000000     O                 n37   @@fxpn              23
160700000000     O                  37   faxnbr              23
160710000000     O                                           27 '*FC'
160720000000     O                 n37   ohcsnm              57
160730000000     O                  37   z$conm              57
160740000000     O               39                          61 '*IN'
160750000000     O               39 37   z$intc              64
160760000000     O               39n37   @@fxcd              64
160770000000     O               38n37   @bl83               83
160780000000     O               38n37                        3 '*FD'
160790000000     O               38n37   ohnknm              13
160800000000     O          e    32n38   coverp         1
160810000000     O         and      86
160820000000     O                                            3 '*FI'
160830000000     O                 n37   @@cont              23
160840000000     O                  37   z$cntc              33
160850000000     O          e    32 34   coverp         1
160860000000     O         and      86
160870000000     O                                            3 '*CN'
160880000000     O                       z$nte1              83
160890000000     O          e    32 34   coverp         1
160900000000     O         and      86
160910000000     O                                            3 '*CN'
160920000000     O                       z$nte2              83
160930000000     O          e    32 33   coverp         1
160940000000     O         and      86
160950000000     O                       xxcvrs              13
160960000000     O          e    32      coverp         1
160970000000     O         and      86
160980000000     O                                            3 '*UP'
160990000000     O                       faxusr              13
161000000000     O          e    32 43   coverp         1
161010000000     O         and      86
161020000000     O                                            3 '*PY'
161030000000     O                       z$fxpy               5
161040000000     O          e    32      headin         1 01
161050000000     O         and      86
161060000000     O                  30   xxfaxf              14
161070000000     O                     36ttldsc              63
161080050706      //#*9i - beg of add
161090050706     O                                           75 'Page:'
161100050706     O                       page6         z     80
161110050706      //#*9i - end of add
161120000000     O          e    32      headin         1 03
161130000000     O         and      86
161140000000     O               24 51n42                    66 '** CREDIT MEMO **'
161150000000     O               42                          65 '** CONSOLIDATED **'
161160000000     O          e    32      headin         1 12
161170000000     O         and      86
161180000000     O                 n24 36                     8 'Bill To:'
161190000000     O              n26    42ohcono              11
161200000000     O              n26    42                    12 '/'
161210000000     O              n26    42oharcs              23
161220000000      //
161230000000     O               26    42ctcono              11
161240000000     O               26    42                    12 '/'
161250000000     O               26    42ctarcs              23
161260000000     O                 n24 36                    41 'Ship To:'
161270000000     O                 n24 36                    80 'Invoice'
161280000000     O          e    32      headin         1
161290000000     O         and      86
161300000000     O              n24n26   sld(1)              34
161310000000     O              n24n26   shp(1)              70
161320000000     O              n24n26   ohinno        z     80
161330000000     O               24n26   sld(1)              34
161340000000     O               24n26   shp(1)              70
161350000000     O               24n26   ohinno        z     80
161360000000      //
161370000000     O                  26   csl(1)              34
161380000000     O                  26   csh(1)              70
161390000000     O                  26   ctinno        z     80
161400000000     O          e    32      headin         1
161410000000     O         and      86
161420000000     O              n24n26   sld(2)              34
161430000000     O               24n26   sld(2)              34
161440000000     O              n24n26   shp(2)              70
161450000000     O               24n26   shp(2)              70
161460000000      //
161470000000     O                  26   csl(2)              34
161480000000     O                  26   csh(2)              70
161490000000     O          e    32      headin         1
161500000000     O         and      86
161510000000     O              n24n26   sld(3)              34
161520000000     O               24n26   sld(3)              34
161530000000     O              n24n26   shp(3)              70
161540000000     O               24n26   shp(3)              70
161550000000      //
161560000000     O                  26   csl(3)              34
161570000000     O                  26   csh(3)              70
161580000000     O                     36                    80 'Date/Time'
161590000000     O          e    32      headin         1
161600000000     O         and      86
161610000000     O              n24n26   sld(4)              34
161620000000     O               24n26   sld(4)              34
161630000000     O              n24n26   shp(4)              70
161640000000     O               24n26   shp(4)              70
161650000000     O              n24n26   invdto              80 '0  /  /  '
161660000000     O               24n26   invdto              80 '0  /  /  '
161670000000      //
161680000000     O                  26   csl(4)              34
161690000000     O                  26   csh(4)              70
161700000000     O                  26   ctivdt              80 '0  /  /  '
161710000000     O          e    32      headin         1
161720000000     O         and      86
161730000000     O              n24n26   sld(5)              34
161740000000     O               24n26   sld(5)              34
161750000000     O              n24n26   shp(5)              70
161760000000     O               24n26   shp(5)              70
161770000000      //
161780000000     O                  26   csl(5)              34
161790000000     O                  26   csh(5)              70
161800000000     O                       @@time              80 '  :  :  '
161810000000     O          e    32      headin         1
161820000000     O         and      86
161830000000     O              n24n26   sld(6)              34
161840000000     O               24n26   sld(6)              34
161850000000     O              n24n26   shp(6)              70
161860000000     O               24n26   shp(6)              70
161870000000      //
161880000000     O                  26   csl(6)              34
161890000000     O                  26   csh(6)              70
161900000000     O          e    32      headin         1
161910000000     O         and      86
161920000000     O              n24n26   sld(7)              34
161930000000     O               24n26   sld(7)              34
161940000000     O              n24n26   shp(7)              70
161950000000     O               24n26   shp(7)              70
161960000000      //
161970000000     O                  26   csl(7)              34
161980000000     O                  26   csh(7)              70
161990000000     O          e    32      headin         1
162000000000     O         and      86
162010000000     O              n24n26   sld(8)              34
162020000000     O               24n26   sld(8)              34
162030000000     O              n24n26   shp(8)              70
162040000000     O               24n26   shp(8)              70
162050000000      //
162060000000     O                  26   csl(8)              34
162070000000     O                  26   csh(8)              70
162080000000     O          e    32      headin         1
162090000000     O         and      86
162100000000     O              n24n26   sld(9)              34
162110000000     O               24n26   sld(9)              34
162120000000     O              n24n26   shp(9)              70
162130000000     O               24n26   shp(9)              70
162140000000      //
162150000000     O                  26   csl(9)              34
162160000000     O                  26   csh(9)              70
162170000000     O          e    32      headin         1
162180000000     O         and      86
162190000000     O          e    32      headin      1  1
162200000000     O         and      86
162210000000     O              n24   n42                    10 'Co/Cust No'
162220000000     O              n24   n42                    22 'Order No'
162230000000     O              n24   n42                    38 'Customer PO #'
162240000000     O              n24   n42                    49 'Ter'
162250000000     O              n24   n42                    55 'Sls#'
162260000000     O                  76n77                    80 '*REPRINT*'
162270000000     O                     77                    80 '*REPRINT FROM HISTORY*'
162280000000     O          e    32      headin         1
162290000000     O         and      86
162300000000     O              n42   n24                    10 '__________'
162310000000     O              n42   n24                    22 '________'
162320000000     O              n42   n24                    38 '_____________'
162330000000     O              n42   n24                    49 '___'
162340000000     O              n42   n24                    55 '____'
162350000000     O          e    32      headin         1
162360000000     O         and      86
162370000000     O              n42      comcus              13 '  /          '
162380000000     O              n42      ohorno              19
162390000000     O              n42                          20 '/'
162400000000     O              n42      ohorgn              22
162410000000     O              n42   n24ohcspo              45
162420000000     O              n42   n24ohtert              49
162430000000     O              n42   n24ohsls1        z     55
162440000000     O              n42    24cspo@               45
162450000000     O              n42    24ohtert              49
162460000000     O              n42    24ohsls1        z     55
162470000000     O          e    32      headin         1
162480000000     O         and      86
162490000000     O              n42   n24ohnote              80
162500000000     O              n42    24ohnote              80
162510000000     O          e    32      headin         1
162520000000     O         and      86
162530000000     O              n42   n24                     8 'Ship Via'
162540000000     O              n42      ohspin              31
162550000000     O                     36                    38 'Terms'
162560000000      //
162570000000     O              n26    15ohcdsp        4     46
162580000000     O               26    15ctcdsp        4     46
162590000000     O                     15                    47 '%'
162600000000     O              n26      terms               68
162610000000     O               26      ctterm              68
162620000000     O              n42   n24                    72 'Ref#'
162630000000     O              n42      ohorrf              80
162640000000     O          e    32      headin         1
162650000000     O         and      86
162660000000     O                     36                     8 'Pay Type'
162670000000     O              n26      paydsc              41
162680000000     O               26      ctpayd              41
162690000000     O                  36n22                    47 'CC#'
162700000000     O              n26   n22@wcrcd              66
162710000000     O               26   n22ctcrcd              66
162720000000     O                  36n22                    74 'Exp '
162730000000     O              n26   n22ohexpd              81 '  /  '
162740000000     O               26   n22ctexpd              81 '  /  '
162750000000     O          e    32      headin         1
162760000000     O         and      86
162770000000     O                     36dshm2               82
162780000000     O          e    32      headin         1
162790000000     O         and      86
162800000000     O                     36                    12 'Item Number/'
162810000000     O                     36                    23 'Description'
162820000000     O                     36                    30 'U/M'
162830000000     O                     36                    40 'Ordered'
162840000000     O                     36                    52 'Shipped'
162850000000     O                     36                    69 'Sell Price'
162860000000     O                     36                    80 'Total'
162870000000     O          e    32      headin         1
162880000000     O         and      86
162890000000     O                     36dshm2               82
162900000000     O          e    32n66   headin         1
162910050414      // #*9h begin of change
162920050414      // O         and      86
162930050414     O         and      86n42
162940050414      // #*9h end of change
162950000000     O                                           16 'FOB Description:'
162960000000     O              n26n89   @cfobd              48
162970000000     O              n26 89   @tfobd              48
162980000000     O               26      ctfobd              48
162990000000     O          e    32 71   headin         1
163000000000     O         and      86
163010000000     O                                           14 'Tax Invoice - '
163020000000     O                       @txlin              55
163030000000     O          e    32 72   headin         1
163040000000     O         and  n71 86
163050000000     O                                           14 'Tax Invoice - '
163060000000     O                       @txlin              55
163070000000     O          e    32 42   cuscom      1  1
163080000000     O         and      86
163090000000     O               42      cocmtx              68
163100000000     O          e    32 42   crdmem      1  1
163110000000     O         and      86
163120000000     O                                           17 '** CREDIT MEMO **'
163130000000     O          e    32 42   conhd1      1  1
163140000000     O         and      86
163150000000     O                                            9 'Order No:'
163160000000     O                       ohorno              15
163170000000     O                                           16 '/'
163180000000     O              n12      ohorgn              18
163190000000     O               12      cxrlgn              18
163200000000     O                                           34 'Customer PO #:'
163210000000     O                       ohcspo              57
163220000000     O                                           62 'Ter:'
163230000000     O                       ohtert              66
163240000000     O                                           72 'Sls#:'
163250000000     O                       ohsls1        z     78
163260000000     O          e    32 42   conhd2         1
163270000000     O         and      86
163280000000     O                                            9 'Ship Via:'
163290000000     O                       ohspin              32
163300000000     O                                           37 'Ref#:'
163310000000     O                       ohorrf              44
163320000000     O                       ohnote              77
163330000000     O          e    32 42   concrd         1
163340000000     O         and      86
163350000000     O                                           47 'CC#'
163360000000     O                       @wcrcd              66
163370000000     O                                           74 'Exp '
163380000000     O                       ohexpd              81 '  /  '
163390000000     O          e    32 42   consld         1
163400000000     O         and      86
163410000000     O                       ohcono               2
163420000000     O                                            3 '/'
163430000000     O                       ohcsno              13
163440000000     O                       ohcsnm              45
163450000000     O          e    32 42   consld         1
163460000000     O         and      86
163470000000     O                                            8 'Sold To:'
163480000000     O                       ohcono              11
163490000000     O                                           13 '/'
163500000000     O                       ohcsno              23
163510000000     O                       ohcsnm              55
163520000000     O          e    32 42   consh1         1
163530000000     O         and      86
163540000000     O                                            8 'Ship To:'
163550000000     O                       shp(1)              44
163560000000     O          e    32 42   consh2         1
163570000000     O         and      86
163580000000     O                       shp(2)              44
163590000000     O          e    32 42   consh3         1
163600000000     O         and      86
163610000000     O                       shp(3)              44
163620000000     O          e    32 42   consh4         1
163630000000     O         and      86
163640000000     O                       shp(4)              44
163650000000     O          e    32 42   consh5         1
163660000000     O         and      86
163670000000     O                       shp(5)              44
163680000000     O          e    32 42   consh6         1
163690000000     O         and      86
163700000000     O                       shp(6)              44
163710000000     O          e    32 42   consh7         1
163720000000     O         and      86
163730000000     O                       shp(7)              44
163740000000     O          e    32 42   consh8         1
163750000000     O         and      86
163760000000     O                       shp(8)              44
163770050414      // #*9h begin of add
163780050414     O          e    32 42 86fobdes         1
163790050414     O                                           16 'FOB Description:'
163800050414     O                       @tfobd              48
163810050414      // #*9h end of add
163820000000      //
163830000000     O          e    32 71   detlin      1  1
163840000000     O         and      86
163850000000     O          e    32   n57detlin      1  1
163860000000     O         and      86
163870000000     O              n65      oditno              27
163880000000     O               65      odorit              27
163890000000     O                       odunms              30
163900000000     O                       odqtor              42 '      0.   -'
163910000000     O                       odqtsh              54 '      0.   -'
163920000000     O              n75      @@aslp              66 '     0.     '
163930000000     O               75      @@aspt              67 '      0.     '
163940000000     O                     50                    80 'T'
163950000000     O                    n75@@prum              70
163960000000     O                     75@@prum              71
163970000000     O          e    32      detlin         1
163980000000     O         and      86
163990031216      // #*8r - Beg of Chg
164000031216     O***                    oditd1              31
164010031216     O                       oditd1              33
164020031216      // #*8r - End of Chg
164030000000     O                 n75n23                    43 'B/O'
164040000000     O                 n75n23odboqt              55 '      0.   -'
164050000000     O                 n75n25odexwt              68 '      0.    -'
164060000000     O                 n75n25                    74 'C Wgt'
164070000000     O              n75      odlnam              80 '    ,  0.  -'
164080000000     O               75      odlnat              80 '          0.  -'
164090000000     O          e    32      dsc2           1
164100000000     O         and      86
164110031216      // #*8r - Beg of Chg
164120031216     O***                    oditd2              31
164130031216     O                       oditd2              33
164140031216      // #*8r - End of Chg
164150000000     O                  75n23                    43 'B/O'
164160000000     O                  75n23odboqt              55 '      0.   -'
164170000000     O                  75n25odexwt              68 '      0.    -'
164180000000     O                  75n25                    74 'C Wgt'
164190000000     O          e    32      extic          1
164200000000     O         and      86
164210000000     O                       incmtx              62
164220000000     O          e    32    56detln1         1
164230000000     O         and      86
164240000000     O                 n65 57oditno              27
164250000000     O                  65 57odorit              27
164260031216      // #*8r - Beg of Chg
164270031216     O***                 n57                    22 'Customer Ordering U/M:'
164280031216     O                    n57                    24 'Customer Ordering U/M:'
164290031216      // #*8r - End of Chg
164300000000     O                    n57                    27 '('
164310000000     O                       odcoum              30
164320000000     O                       coqtor              42 '      0.   -'
164330000000     O                       coqtsh              54 '      0.   -'
164340000000     O                    n57                    56 ')'
164350000000     O                 n75 57@@aslp              66 '     0.     '
164360000000     O                  75 57@@aspt              67 '      0.     '
164370000000     O                  50 57                    80 'T'
164380000000     O                 n75 57@@prum              69
164390000000     O                  75 57@@prum              70
164400000000     O          e    32      msds           1
164410000000     O         and      86
164420000000     O                                           14 '** MSDS **'
164430000000     O          e    32      orgitm         1
164440000000     O         and      86
164450031216      // #*8r - Beg of Chg
164460031216     O***                    odorit              27
164470031216     O                       odorit              29
164480031216      // #*8r - End of Chg
164490000000     O          e    32      spcl        1  2
164500000000     O         and      86
164510000000     O                       oditd1              31
164520000000     O                       oditd2              62
164530000000     O                 n75   odlnam              78 ' ,   ,  0.  -'
164540000000     O                  75   odlnat              78 '     ,   ,  0.  -'
164550000000     O                     50                    80 'T'
164560000000     O          e    32      msge           1
164570000000     O         and      86
164580000000     O                       oditd1              31
164590000000     O                       oditd2              62
164600000000     O          e    32      cnsist         1
164610000000     O         and      86
164620000000     O                                           15 'CONSISTING OF:'
164630000000      // detail component information
164640000000     O          e    32      cdet           1
164650000000     O         and      86
164660000000     O                       bccmit              29
164670000000     O                       bcqtpr        k     55
164680000000     O                                           56 '*'
164690000000     O                       bccmum              70
164700000000     O          e    32n07   cdet           1
164710000000     O         and      86
164720000000     O                       imitd1              33
164730000000     O          e    45n07n46cdet           1
164740000000     O         and      86
164750000000     O         and   32
164760000000     O                       imitd2              33
164770000000     O          e    32 55   cdet           1
164780000000     O         and      86
164790000000     O                                           14 '** MSDS **'
164800000000     O          e    32      endmsg         2
164810000000     O         and      86
164820000000     O                                           44 '* END *'
164830000000      // lot's
164840000000     O          e    32      lota           1
164850000000     O         and      86
164860000000     O                                           10 'LOT/QTY:'
164870000000     O              n13      wnltsr              33
164880000000     O              n13      wnstqt              55 '      0.   -'
164890000000     O               13      w9ltsr              33
164900000000     O               13      w9stqt              55 '      0.   -'
164910040408      // #*8y - begin add
164920040408      // drop ship lots
164930040408     O          e    32      dslot          1
164940040408     O         and      86
164950040408     O                                           10 'LOT/QTY:'
164960040408     O                       lzltsr              33
164970040408     O                       lzstqt              55 '      0.   -'
164980040408      // #*8y - end add
164990000000      // serial number's
165000000000     O          e    32      srna           1
165010000000     O         and      86
165020000000     O                                            5 'SN:'
165030000000     O                       sn                  80
165040040408      // #*8y - begin add
165050040408     O          e    32      dssrn          1
165060040408     O         and      86
165070040408     O                                            5 'SN:'
165080040408     O                       sn                  80
165090040408      // #*8y - end add
165100000000     O          e    32      smsg           1
165110000000     O         and      86
165120000000     O                    n09msgtxt              64
165130000000     O                     09                    55 '-MESSAGE TEXT MISSING-'
165140000000     O          e    32      contin         1 59
165150000000     O         and      86
165160000000     O                                           80 '* CONTINUED *'
165170000000     O          e    32n42   bottm1      1  1
165180000000     O         and      86
165190000000     O               17n70   ohcdam              17 '  ,   , $0.  '
165200000000     O               17n75 70ohcdam              17 ' ,   ,  0.  '
165210000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
165220000000     O               17 70   @@symo              21
165230000000     O               17      msg(1)              48
165240000000     O               17   n14                    58 'WITHIN TERMS'
165250000000     O               17    14cdate               57 '0  /  /  '
165260000000     O              n17                          48 'INVOICE DUE:'
165270000000     O              n17      ndate               57 '0  /  /  '
165280000000     O          e    32    42bottm1      1  1
165290000000     O         and      86
165300000000     O               17n70   ctcdam              17 '    ,   , $0.  '
165310000000     O               17n75 70ctcdam              17 '   ,   ,  0.  '
165320000000     O               17 75   ctcdat              17 '  ,   ,   ,  0.  '
165330000000     O               17 70   @@symo              21
165340000000     O               17      msg(1)              48
165350000000     O               17   n14                    58 'WITHIN TERMS'
165360000000     O               17    14cdate               57 '0  /  /  '
165370000000     O              n17                          48 'INVOICE DUE:'
165380000000     O              n17      ndate               57 '0  /  /  '
165390000000     O          e    32      boxlin         1
165400000000     O         and      86
165410000000     O                       boxhd               12
165420000000     O                       box(1)              19
165430000000     O                       box(2)              26
165440000000     O                       box(3)              33
165450000000     O                       box(4)              40
165460000000     O                       box(5)              47
165470000000     O                       box(6)              54
165480000000     O                       box(7)              61
165490000000     O                       box(8)              68
165500000000     O          e    32      splthd      2  1
165510000000     O         and      86
165520000000     O                    n17                    20 '********************'
165530000000     O                    n17                    40 ' INVOICE PAYMENT INF'
165540000000     O                    n17                    60 'ORMATION ***********'
165550000000     O                    n17                    70 '**********'
165560000000     O                     17                    20 '********************'
165570000000     O                     17                    40 '******* INVOICE PAYM'
165580000000     O                     17                    60 'ENT INFORMATION ****'
165590000000     O                     17                    80 '********************'
165600000000     O                     17                    81 '*'
165610000000     O          e    32      splthd         1
165620000000     O         and      86
165630000000     O                    n17                    20 '**  INV NO. DUE DATE'
165640000000     O                  48n17                    41 '            DEPOSIT '
165650000000     O                    n17                    70 'INVOICE AMOUNT DUE **'
165660000000     O                     17                    20 'INV NO.  DUE DATE   '
165670000000     O                  48 17                    29 '  DEPOSIT'
165680000000     O                     17                    55 'INVOICE AMOUNT DUE '
165690000000     O                     17                    60 'CSH '
165700000000     O                     17                    80 'DSC DT   CASH DISC  '
165710000000     O          e    32      spltdt         1
165720000000     O         and      86
165730000000     O                    n17                     2 '**'
165740000000     O                    n17@@inno        z     11
165750000000     O                    n17ntdtex              20 '0  /  /  '
165760000000     O               47n17n75wkdpam        j     41
165770000000     O               47n17 75wkdpat        j     41
165780000000     O                    n17@@amd$        j     63
165790000000     O                  70n17@@symo              67
165800000000     O                    n17                    70 '**'
165810000000     O                     17@@inno        z      8
165820000000     O                     17ntdtex              17 '0  /  /  '
165830000000     O               47 17n75wkdpam        j     30
165840000000     O               47 17 75wkf2dp        j     30
165850000000     O                     17@@amd$        j     50
165860000000     O                  70 17@@symo              56
165870000000     O                     17cdsdtx              63 '0  /  /  '
165880000000     O                     17@@cds$        j     81
165890000000     O          e    32      spltbt         2
165900000000     O         and      86
165910000000     O                    n17                    20 '********************'
165920000000     O                    n17                    40 '********************'
165930000000     O                    n17                    60 '********************'
165940000000     O                    n17                    70 '**********'
165950000000     O                     17                    20 '********************'
165960000000     O                     17                    40 '********************'
165970000000     O                     17                    60 '********************'
165980000000     O                     17                    80 '********************'
165990000000     O                     17                    81 '*'
166000000000     O          e    32      unvmg1      3  1
166010000000     O         and      86
166020000000     O                       unvm(1)             64
166030000000     O          e    32      unvmg2         1
166040000000     O         and      86
166050000000     O                       unvm(2)             64
166060000000     O          e    32      unvmg3         2
166070000000     O         and      86
166080000000     O                       unvm(3)             64
166090000000     O          e    32      hazmsg         1
166100000000     O         and      86
166110000000     O                                           35 'HAZMAT SHIPPING PAPERS'
166120030820     O          e    32 71   bottom         1 55                                #*8n
166130030820     O         and      86                                                      #*8n
166140030820     O               21    73                    18 'GST REGISTRATION #'        #*8n
166150030820     O               21    73gstr#o              34                             #*8n
166160030820      //        e    32n42   bottom         1 55                                #*8n
166170030820     O          e    32n42   bottom         1                                   #*8n
166180000000     O         and      86
166190000000     O               20                          56 'TRADE DISCOUNT:'
166200000000     O               20n75   ohtdam        k     76
166210000000     O               20 75   ohtdam        k     76
166220000000     O               20                          14 'TRADE DISCOUNT'
166230000000     O               20 44   xxtdab        k     35
166240000000     O          e    32 42   bottom         1 55
166250000000     O         and      86
166260000000     O               20                          56 'TRADE DISCOUNT:'
166270000000     O               20   n70cttdam        k     76
166280000000     O               20n75 70cttdam        k     76
166290000000     O               20 75   tdatic        k     76
166300000000     O               20 44                       14 'TRADE DISCOUNT'
166310000000     O               20 44   @@tdab        k     35
166320000000     O          e    32n42   bottom         1
166330000000     O         and      86
166340000000     O               18                          56 'FEDERAL EXCISE TAX:'
166350000000     O               18n75   ohfeam        k     76
166360000000     O               18 75   ohfeam        k     76
166370000000     O               18 44                       14 'FED EXCISE TAX'
166380000000     O               18 44   xxfeab        k     35
166390000000     O          e    32 42   bottom         1
166400000000     O         and      86
166410000000     O               18                          56 'FEDERAL EXCISE TAX:'
166420000000     O               18   n70ctfeam        k     76
166430000000     O               18n75 70ctfeam        k     76
166440000000     O               18 75   featic        k     76
166450000000     O               18 44                       14 'FED EXCISE TAX'
166460000000     O               18 44   @@feab        k     35
166470000000     O          e    32n42   bottom         1
166480000000     O         and      86
166490000000     O               19                          56 'CONTAINER CHARGE:'
166500000000     O               19n75   ohcnct        k     76
166510000000     O               19 75   ohcctt        k     76
166520000000     O               19    44                    14 'CONTAINER CHG'
166530000000     O               19    44xxcctb        k     35
166540000000     O          e    32 42   bottom         1
166550000000     O         and      86
166560000000     O               19                          56 'CONTAINER CHARGE:'
166570000000     O               19   n70ctcnct        k     76
166580000000     O               19n75 70ctcnct        k     76
166590000000     O               19 75   ccttic        k     76
166600000000     O               19    44                    14 'CONTAINER CHG'
166610000000     O               19    44@@cctb        k     35
166620000000     O          e    32n42   bottom      1  1
166630000000     O         and      86
166640000000     O                                           56 'SUBTOTAL:'
166650000000     O              n75      subtot        k     76
166660000000     O               75      icsubt        k     76
166670000000     O                  70   @@symo              80
166680000000     O                     44                    14 'SUBTOTAL'
166690000000     O                     44xxsubb        k     35
166700000000     O                     44@@symb              38
166710000000     O          e    32 42   bottom      1  1
166720000000     O         and      86
166730000000     O                                           56 'SUBTOTAL:'
166740000000     O                    n70csbtot        k     76
166750000000     O              n75    70csbtot        k     76
166760000000     O               75      subtic        k     76
166770000000     O                  70   @@symo              80
166780000000     O                     44                    14 'SUBTOTAL'
166790000000     O                     44@@subb        k     35
166800000000     O                     44@@symb              38
166810000000     O          e    32n71n72bottom         1
166820000000     O         and      86
166830000000     O         and   42
166840000000     O               21                          56 'SALES TAX:'
166850000000     O               21   n70cttaxm        k     76
166860000000     O               21n75 70cttaxm        k     76
166870000000     O               21 75   txatic        k     76
166880000000     O               21    44                    14 'SALES TAX'
166890000000     O               21    44@@txab        k     35
166900000000     O          e    32n71n72bottom         1
166910000000     O         and      86
166920000000     O         and  n42
166930000000     O               21                          56 'SALES TAX:'
166940000000     O               21n75   ohtxam        k     76
166950000000     O               21 75   ohtxat        k     76
166960000000     O               21    44                    14 'SALES TAX'
166970000000     O               21    44xxtxab        k     35
166980000000     O          e    32 71n42bottom         1
166990000000     O         and      86
167000030820      //             21    73                    18 'GST REGISTRATION #'        #*8n
167010030820      //             21    73gstr#o              34                             #*8n
167020000000     O               21                          56 'GST:'
167030000000     O               21n75   ohgtxa        k     76
167040000000     O               21 75   ohgtxt        k     76
167050000000     O               21 44                       14 'GST:'
167060000000     O               21 44n75xxgtxb        k     35
167070000000     O               21 44 75@gtxtb        k     35
167080000000     O          e    32 71 42bottom         1
167090000000     O         and      86
167100030820      //             21    73                    18 'GST REGISTRATION #'        #*8n
167110030820      //             21    73gstr#o              34                             #*8n
167120000000     O               21                          56 'GST:'
167130000000     O               21n75   ctgttx        k     76
167140000000     O               21 75   ctgttt        k     76
167150000000     O               21 44                       13 'GST:'
167160000000     O               21 44n75@@gtxb              35
167170000000     O               21 44 75xgtxtb              35
167180000000     O          e    32 72n42bottom         1
167190000000     O         and      86
167200000000     O               21                          56 'PST:'
167210000000     O               21n75   ohptxa        k     76
167220000000     O               21 75   ohptxt        k     76
167230000000     O               21 44                       14 'PST:'
167240000000     O               21 44n75xxptxb        k     35
167250000000     O               21 44 75@ptxtb        k     35
167260000000     O          e    32 72 42bottom         1
167270000000     O         and      86
167280000000     O               21                          56 'PST:'
167290000000     O               21n75   ctpttx        k     76
167300000000     O               21 75   ctpttt        k     76
167310000000     O               21 44                       14 'PST:'
167320000000     O               21 44n75@@ptxb              35
167330000000     O               21 44 75xptxtb              35
167340000000     O          e    32n42   bottom         1
167350000000     O         and      86
167360000000     O                                           56 'TOTAL:'
167370000000     O              n75      itotal        k     76
167380000000     O               75      ictotl        k     76
167390000000     O                  70   @@symo              80
167400000000     O                     44                    14 'TOTAL:'
167410000000     O                     44xxtotb        k     35
167420000000     O                     44@@symb              38
167430000000     O          e    32 42   bottom         1
167440000000     O         and      86
167450000000     O                                           56 'TOTAL:'
167460000000     O                    n70citotl        k     76
167470000000     O                 n75 70citotl        k     76
167480000000     O                  75   totlic        k     76
167490000000     O                  70   @@symo              80
167500000000     O                     44                    14 'TOTAL:'
167510000000     O                     44xxtotb        k     35
167520000000     O                     44@@symb              37
167530000000     O          e    32n72n42bottom      1  1
167540000000     O         and      86
167550000000     O                                           56 'DEPOSIT:'
167560000000     O                 n75   ohdpam        k     76
167570000000     O                  75   ohdpam        k     76
167580000000     O          e    32 72n42bottom         1
167590000000     O         and      86
167600000000     O                                           56 'DEPOSIT:'
167610000000     O                 n75   ohdpam        k     76
167620000000     O                  75   ohdpat        k     76
167630000000     O                     44                    14 'DEPOSIT:'
167640000000     O                     44xxdpab        k     35
167650000000     O          e    32n72 42bottom      1  1
167660000000     O         and      86
167670000000     O                                           56 'DEPOSIT:'
167680000000     O                    n70ctdpam        k     76
167690000000     O                 n75 70ctdpam        k     76
167700000000     O                  75   dpatic        k     76
167710000000     O                     44                    14 'DEPOSIT:'
167720000000     O                     44@@dpab        k     35
167730000000     O          e    32n42   bottom         1
167740000000     O         and      86
167750000000     O                                           56 'AMT DUE:'
167760000000     O                 n75   amtdue        j     76
167770000000     O                  75   icamnt        j     76
167780000000     O                  70   @@symo              80
167790000000     O                     44                    14 'AMT DUE:'
167800000000     O                     44xxamnb        k     35
167810000000     O                     44@@symb              38
167820000000     O          e    32 42   bottom         1
167830000000     O         and      86
167840000000     O                                           56 'AMT DUE:'
167850000000     O                    n70camtdu        j     76
167860000000     O              n75 70   camtdu        j     76
167870000000     O               75      amntic        j     76
167880000000     O                  70   @@symo              80
167890000000     O                     44                    14 'AMT DUE:'
167900000000     O                     44@@amnb        k     35
167910000000     O                     44@@symb              38
167920000000      // optio invoice
167930000000     Oapprtin2  e       68   headin         1
167940000000     O                       @1api              116
167950000000     O          e       68   headin         1
167960000000     O                       @2api              132
167970000000     O          e       68   headin         1
167980000000     O                       @3api              132
167990000000     O          e       68   headin         1
168000000000     O                       @4api              132
168010000000     O          e       68   headin         1
168020000000     O                       @5api              132
168030000000     O          e       68   headin         1
168040000000     O                       @6api              132
168050000000     O          e       68   headin         1
168060000000     O                       @7api              132
168070000000     O          e       68   headin         1
168080000000     O                       @8api              132
168090000000     O          e       68   headin         1
168100000000     O                       @9api              132
168110000000     O          e       69   headin         1 10
168120000000     O                       @trmsg              40
168130000000     O                       ttldsc              63
168140000000     O          e       69   headin         1 12
168150000000     O                  51n42                    63 '** CREDIT MEMO **'
168160000000     O               42                          64 '** CONSOLIDATED **'
168170000000     O          e    69      headin         1 22
168180000000     O                                            8 'Bill To:'
168190000000     O                 n26 42ohcono              11
168200000000     O                 n26 42                    12 '/'
168210000000     O                 n26 42oharcs              23
168220000000     O                  26 42ctcono              11
168230000000     O                  26 42                    12 '/'
168240000000     O                  26 42ctarcs              23
168250000000     O                                           44 'Ship To:'
168260000000     O                                           85 'Invoice'
168270000000     O                 n26   ohinno        z     85
168280000000     O                  26   ctinno        z     85
168290000000      //
168300000000     O          e    69      headin         1
168310000000     O                 n26   sld(1)              41
168320000000     O                 n26   shp(1)              77
168330000000     O                  26   csl(1)              41
168340000000     O                  26   csh(1)              77
168350000000      //
168360000000     O          e    69      headin         1
168370000000     O                 n26   sld(2)              41
168380000000     O                 n26   shp(2)              77
168390000000     O                  26   csl(2)              41
168400000000     O                  26   csh(2)              77
168410000000     O                                           86 'Date/Time'
168420000000      //
168430000000     O          e    69      headin         1
168440000000     O                 n26   sld(3)              41
168450000000     O                 n26   shp(3)              77
168460000000     O                 n26   invdto              86 '0  /  /  '
168470000000     O                  26   csl(3)              41
168480000000     O                  26   csh(3)              77
168490000000     O                  26   ctivdt              86 '0  /  /  '
168500000000      //
168510000000     O          e    69      headin         1
168520000000     O                 n26   sld(4)              41
168530000000     O                 n26   shp(4)              77
168540000000     O                  26   csl(4)              41
168550000000     O                  26   csh(4)              77
168560000000      //
168570000000     O          e    69      headin         1
168580000000     O                 n26   sld(5)              41
168590000000     O                 n26   shp(5)              77
168600000000     O                  26   csl(5)              41
168610000000     O                  26   csh(5)              77
168620000000      //
168630000000     O          e    69      headin         1
168640000000     O                 n26   sld(6)              41
168650000000     O                 n26   shp(6)              77
168660000000     O                  26   csl(6)              41
168670000000     O                  26   csh(6)              77
168680000000     O                       @@time              86 '  :  :  '
168690000000      //
168700000000     O          e    69      headin         0
168710000000     O                    n42                    10 'Co/Cust No'
168720000000     O                    n42                    22 'Order No'
168730000000     O                    n42                    38 'Customer PO #'
168740000000     O                    n42                    49 'Ter'
168750000000     O                    n42                    55 'Sls#'
168760000000     O                  76n77                    85 '*REPRINT*'
168770000000     O                     77                    85 '*REPRINT FROM HISTORY*'
168780000000     O          e    69      headin         1
168790000000     O              n42                          10 ' '
168800000000     O          e    69      headin         1
168810000000     O              n42      comcus              13 '  /          '
168820000000     O              n42      ohorno              19
168830000000     O              n42                          20 '/'
168840000000     O              n42      ohorgn              22
168850000000     O              n42      ohcspo              45
168860000000     O              n42      ohtert              51
168870000000     O              n42      ohsls1        z     57
168880000000     O          e    69      headin         1
168890000000     O              n42      ohnote              81
168900000000     O          e    69      headin         1
168910000000     O              n42                           8 'Ship Via'
168920000000     O              n42      ohspin              31
168930000000     O                                           38 'Terms'
168940000000     O                 n26 15ohcdsp        4     44
168950000000     O                  26 15ctcdsp        4     44
168960000000     O                     15                    45 '%'
168970000000     O                 n26   terms               68
168980000000     O                  26   ctterm              68
168990000000     O              n42                          74 'Ref#'
169000000000     O              n42      ohorrf              81
169010000000     O          e    69      headin         1
169020000000     O                                            8 'Pay Type'
169030000000     O              n26      paydsc              41
169040000000     O               26      ctpayd              41
169050000000     O                    n22                    47 'CC#'
169060000000     O              n26   n22@wcrcd              66
169070000000     O               26   n22ctcrcd              66
169080000000     O                    n22                    74 'Exp '
169090000000     O              n26   n22ohexpd              81 '  /  '
169100000000     O               26   n22ctexpd              81 '  /  '
169110000000      //
169120000000     O          e    69      headin         1
169130000000     O                    n24dshm                85
169140000000      //
169150000000     O          e    69      headin         1
169160000000     O                                           12 'Item Number/'
169170000000     O                                           23 'Description'
169180000000     O                                           31 'U/M'
169190000000     O                                           41 'Ordered'
169200000000     O                                           53 'Shipped'
169210000000     O                                           70 'Sell Price'
169220000000     O                                           84 'Total'
169230000000     O          e    69      headin         1
169240000000     O                       dshm                85
169250000000     O          e    69n66   headin         1
169260050414      // #*9h begin of add
169270050414     O         and  n42
169280050414      // #*9h end of add
169290000000     O                                           16 'FOB Description:'
169300000000     O              n89n26   @cfobd              48
169310000000     O               89n26   @tfobd              48
169320000000     O                  26   ctfobd              48
169330000000     O                                          132 'P'
169340000000     O          e    69 71   headin         1
169350000000     O                                           14 'Tax Invoice - '
169360000000     O                       @txlin              55
169370000000     O                                          132 'P'
169380000000     O          e    69 72   headin         1
169390000000     O         and  n71
169400000000     O                                           14 'Tax Invoice - '
169410000000     O                       @txlin              55
169420000000     O          e    69 42   cuscom      1  1
169430000000     O               42      cocmtx              68
169440000000     O                                          132 'P'
169450000000     O          e    69 42   crdmem      1  1
169460000000     O                                           17 '** CREDIT MEMO **'
169470000000     O                                          132 'P'
169480000000     O          e    69 42   conhd1      1  1
169490000000     O                                            9 'Order No:'
169500000000     O                       ohorno              15
169510000000     O                                           16 '/'
169520000000     O              n12      ohorgn              18
169530000000     O               12      cxrlgn              18
169540000000     O                                           34 'Customer PO #:'
169550000000     O                       ohcspo              57
169560000000     O                                           62 'Ter:'
169570000000     O                       ohtert              66
169580000000     O                                           72 'Sls#:'
169590000000     O                       ohsls1        z     78
169600000000     O                                          132 'P'
169610000000     O          e    69 42   conhd2         1
169620000000     O                                            9 'Ship Via:'
169630000000     O                       ohspin              32
169640000000     O                                           37 'Ref#:'
169650000000     O                       ohorrf              44
169660000000     O                       ohnote              77
169670000000     O                                          132 'C'
169680000000     O          e    69 42   concrd         1
169690000000     O                                           47 'CC#'
169700000000     O                       @wcrcd              66
169710000000     O                                           74 'Exp '
169720000000     O                       ohexpd              81 '  /  '
169730000000     O          e    69 42   consld         1
169740000000     O                                            8 'Sold To:'
169750000000     O                       ohcono              11
169760000000     O                                           13 '/'
169770000000     O                       ohcsno              23
169780000000     O                       @@csnm              55
169790000000     O                                          132 'C'
169800000000     O          e    69 42   consh1         1
169810000000     O                                            8 'Ship To:'
169820000000     O                       sh(1)               44
169830000000     O                                          132 'P'
169840000000     O          e    69 42   consh2         1
169850000000     O                                          132 'C'
169860000000     O                       sh(2)               44
169870000000     O          e    69 42   consh3         1
169880000000     O                       sh(3)               44
169890000000     O                                          132 'C'
169900000000     O          e    69 42   consh4         1
169910000000     O                       sh(4)               44
169920000000     O                                          132 'C'
169930000000     O          e    69 42   consh5
169940000000     O                       sh(5)               44
169950000000     O                                          132 'C'
169960000000     O          e    69 42   consh6
169970000000     O                       sh(6)               44
169980000000     O                                          132 'C'
169990000000     O          e    69 42   consh7
170000000000     O                       sh(7)               44
170010000000     O                                          132 'C'
170020000000     O          e    69 42   consh8
170030000000     O                       sh(8)               44
170040000000     O                                          132 'C'
170050000000     O          e    69   n57detlin      1  1
170060000000     O              n65      oditno              27
170070000000     O               65      odorit              27
170080000000     O                       odunms              31
170090000000     O                       odqtor              43 '      0.   -'
170100000000     O                       odqtsh              55 '      0.   -'
170110000000     O                    n75@@aslp              67 '     0.     '
170120000000     O                     75@@aspt              68 '      0.     '
170130000000     O                     50                    86 'T'
170140000000     O                    n75@@prum              71
170150000000     O                     75@@prum              72
170160000000     O                                          132 'P'
170170000000     O          e    69      detlin         1
170180031216      // #*8r - Beg of Chg
170190031216     O***                    oditd1              31
170200031216     O                       oditd1              33
170210031216      // #*8r - End of Chg
170220000000     O                 n75n23                    43 'B/O'
170230000000     O                 n75n23odboqt              55 '      0.   -'
170240000000     O                 n75n25odexwt              68 '      0.    -'
170250000000     O                 n75n25                    74 'C Wgt'
170260000000     O                     75odlnat              82 '            0.  -'
170270000000     O                  70n75odlnam              82 ' ,   ,  0.  -'
170280000000     O                 n70   odlnam              85 ' ,   ,  0.  -'
170290000000     O                  70   @@symo              85
170300000000     O                                          132 'C'
170310000000     O          e    69      dsc2           1
170320031216      // #*8r - Beg of Chg
170330031216     O***                    oditd2              31
170340031216     O                       oditd2              33
170350031216      // #*8r - Beg of Chg
170360000000     O                  75n23                    43 'B/O'
170370000000     O                  75n23odboqt              55 '      0.   -'
170380000000     O                  75n25odexwt              68 '      0.    -'
170390000000     O                  75n25                    74 'C Wgt'
170400000000     O                                          132 'C'
170410050414      // #*9h begin of add
170420050414     O          e    69 42   fobdes         1
170430050414     O                                           16 'FOB Description:'
170440050414     O                       @tfobd              48
170450050414     O                                          132 'C'
170460050414      // #*9h end of add
170470000000     O          e    69      extic          1
170480000000     O                       incmtx              62
170490000000     O                                          132 'P'
170500000000     O          e    69    56detln1         1
170510000000     O                 n65 57oditno              27
170520000000     O                  65 57odorit              27
170530031216      // #*8r - Beg of Chg
170540031216     O***                 n57                    22 'Customer Ordering U/M:'
170550031216     O                    n57                    24 'Customer Ordering U/M:'
170560031216      // #*8r - End of Chg
170570000000     O                    n57                    27 '('
170580000000     O                       odcoum              31
170590000000     O                       coqtor              43 '      0.   -'
170600000000     O                       coqtsh              55 '      0.   -'
170610000000     O                    n57                    57 ')'
170620000000     O                 n75 57@@aslp              67 '     0.     '
170630000000     O                  75 57@@aspt              68 '      0.     '
170640000000     O                  50 57                    85 'T'
170650000000     O                 n75 57@@prum              70
170660000000     O                  75 57@@prum              71
170670000000     O                                          132 'C'
170680000000     O          e    69      msds           1
170690000000     O                                           14 '** MSDS **'
170700000000     O                                          132 'C'
170710000000     O          e    69      orgitm         1
170720031216      // #*8r - Beg of Chg
170730031216     O***                    odorit              27
170740031216     O                       odorit              29
170750031216      // #*8r - End of Chg
170760000000     O                                          132 'C'
170770000000     O          e    69      spcl        1  2
170780000000     O                       oditd1              31
170790000000     O                       oditd2              62
170800000000     O              n75      odlnam              84 ' ,   ,  0.  -'
170810000000     O               75      odlnat              84 '  ,   ,   ,  0.  -'
170820000000     O                     50                    85 'T'
170830000000     O                                          132 'C'
170840000000     O          e    69      msge           1
170850000000     O                       oditd1              31
170860000000     O                       oditd2              62
170870000000     O                                          132 'C'
170880000000      // header for component detail
170890000000     O          e    69      cnsist         1
170900000000     O                                           15 'CONSISTING OF:'
170910000000     O                                          132 'P'
170920000000      // detail component information
170930000000     O          e    69      cdet           1
170940000000     O                       bccmit              29
170950000000     O                       bcqtpr        k     55
170960000000     O                                           56 '*'
170970000000     O                       bccmum              70
170980000000     O                                          132 'C'
170990000000     O          e    69n07   cdet           1
171000000000     O                       imitd1              33
171010000000     O                                          132 'C'
171020000000     O          e    45n07n46cdet           1
171030000000     O         and   69
171040000000     O                       imitd2              33
171050000000     O                                          132 'C'
171060000000     O          e    69 55   cdet           1
171070000000     O                                           14 '** MSDS **'
171080000000     O                                          132 'C'
171090000000     O          e    69      endmsg         2
171100000000     O                                           44 '* END *'
171110000000     O                                          132 'C'
171120000000      // lot's
171130000000     O          e    69      lota           1
171140000000     O                                           10 'LOT/QTY:'
171150000000     O              n13      wnltsr              33
171160000000     O              n13      wnstqt              55 '      0.   -'
171170000000     O               13      w9ltsr              33
171180000000     O               13      w9stqt              55 '      0.   -'
171190000000     O                                          132 'C'
171200040408      // #*8y - begin add
171210040408      // drop ship lots
171220040408     O          e    69      dslot          1
171230040408     O                                           10 'LOT/QTY:'
171240040408     O                       lzltsr              33
171250040408     O                       lzstqt              55 '      0.   -'
171260040429     O                                          132 'C'
171270040408      // #*8y - end add
171280000000      // serial number's
171290000000     O          e    69      srna           1
171300000000     O                                            5 'SN:'
171310000000     O                       sn                  80
171320040429     O                                          132 'C'
171330040408      // #*8y - begin add
171340040408     O          e    69      dssrn          1
171350040408     O                                            5 'SN:'
171360040408     O                       sn                  80
171370040429     O                                          132 'C'
171380040408      // #*8y - end add
171390000000     O          e    69      smsg           1
171400000000     O                    n09msgtxt              64
171410000000     O                     09                    55 '-MESSAGE TEXT MISSING-'
171420000000     O                                          132 'P'
171430000000     O          e    69      contin         1 59
171440000000     O                                           85 '* CONTINUED *'
171450000000     O                                          132 'F'
171460000000     O          e    69n42   bottm1      1  1
171470000000     O               17n70   ohcdam              17 '  ,   , $0.  '
171480000000     O               17n75 70ohcdam              17 ' ,   ,  0.  '
171490000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
171500000000     O               17 70   @@symo              21
171510000000     O               17      msg(1)              48
171520000000     O               17   n14                    58 'WITHIN TERMS'
171530000000     O               17    14cdate               57 '0  /  /  '
171540000000     O              n17                          48 'INVOICE DUE:'
171550000000     O              n17      ndate               57 '0  /  /  '
171560000000     O                                          132 'P'
171570000000     O          e    69 42   bottm1      1  1
171580000000     O               17n70   ctcdam              17 '    ,   , $0.  '
171590000000     O               17n75 70ctcdam              17 '   ,   ,  0.  '
171600000000     O               17 75   ctcdat              17 '  ,   ,   ,  0.  '
171610000000     O               17 75   ohcdat              17 '  ,   ,   ,  0.  '
171620000000     O               17 70   @@symo              21
171630000000     O               17      msg(1)              48
171640000000     O               17   n14                    58 'WITHIN TERMS'
171650000000     O               17    14cdate               57 '0  /  /  '
171660000000     O              n17                          48 'INVOICE DUE:'
171670000000     O              n17      ndate               57 '0  /  /  '
171680000000     O                                          132 'P'
171690000000     O          e    69      boxlin         1
171700000000     O                       boxhd               12
171710000000     O                       box(1)              19
171720000000     O                       box(2)              26
171730000000     O                       box(3)              33
171740000000     O                       box(4)              40
171750000000     O                       box(5)              47
171760000000     O                       box(6)              54
171770000000     O                       box(7)              61
171780000000     O                       box(8)              68
171790000000     O                                          132 'P'
171800000000     O          e    69      splthd      2  1
171810000000     O                    n17                    20 '********************'
171820000000     O                    n17                    40 ' INVOICE PAYMENT INF'
171830000000     O                    n17                    60 'ORMATION ***********'
171840000000     O                    n17                    70 '**********'
171850000000     O                     17                    20 '********************'
171860000000     O                     17                    40 '******** INVOICE PAY'
171870000000     O                     17                    60 'MENT INFORMATION ***'
171880000000     O                     17                    80 '********************'
171890000000     O                     17                    85 '*****'
171900000000     O                                          132 'P'
171910000000     O          e    69      splthd         1
171920000000     O                    n17                    20 '**  INV NO. DUE DATE'
171930000000     O                  48n17                    41 '            DEPOSIT '
171940000000     O                    n17                    70 'INVOICE AMOUNT DUE **'
171950000000     O                     17                    20 'INV NO.  DUE DATE   '
171960000000     O                  48 17                    38 '  DEPOSIT         '
171970000000     O                     17                    56 'INVOICE AMOUNT DUE'
171980000000     O                     17                    60 ' CSH'
171990000000     O                     17                    80 ' DSC DT  CASH DISC  '
172000000000     O                                          132 'C'
172010000000     O          e    69      spltdt         1
172020000000     O                    n17                     2 '**'
172030000000     O                    n17@@inno        z     11
172040000000     O                    n17ntdtex              20 '0  /  /  '
172050000000     O               47n75n17wkdpam        j     41
172060000000     O               47 75n17wkdpat        j     41
172070000000     O                    n17@@amd$        j     63
172080000000     O                  70n17@@symo              67
172090000000     O                    n17                    70 '**'
172100000000     O                     17@@inno        z      8
172110000000     O                     17ntdtex              17 '0  /  /  '
172120000000     O               47n75 17wkdpam        j     32
172130000000     O               47 75 17wkdpat        j     32
172140000000     O                     17@@amd$        j     52
172150000000     O                  70 17@@symo              56
172160000000     O                     17cdsdtx              65 '0  /  /  '
172170000000     O                     17@@cds$        j     85
172180000000     O                                          132 'C'
172190000000     O          e    69      spltbt         2
172200000000     O                    n17                    20 '********************'
172210000000     O                    n17                    40 '********************'
172220000000     O                    n17                    60 '********************'
172230000000     O                    n17                    70 '**********'
172240000000     O                     17                    20 '********************'
172250000000     O                     17                    40 '********************'
172260000000     O                     17                    60 '********************'
172270000000     O                     17                    80 '********************'
172280000000     O                     17                    85 '*****'
172290000000     O                                          132 'C'
172300000000     O          e    69      unvmg1      3  1
172310000000     O                       unvm(1)             64
172320000000     O                                          132 'P'
172330000000     O          e    69      unvmg2         1
172340000000     O                       unvm(2)             64
172350000000     O                                          132 'C'
172360000000     O          e    69      unvmg3         2
172370000000     O                                          132 'C'
172380000000     O                       unvm(3)             64
172390000000     O                                          132 'C'
172400000000     O          e    69      hazmsg         1
172410000000     O                                           35 'HAZMAT SHIPPING PAPERS'
172420000000     O                                          132 'P'
172430000000     O          e    69n42   bottom         1 57
172440000000     O               20                          59 'TRADE DISCOUNT:'
172450000000     O               20   n70ohtdam        k     85
172460000000     O               20n75 70ohtdam        k     82
172470000000     O               20 75   ohtdat        k     82
172480000000     O                                          132 'F'
172490000000     O          e    69 42   bottom         1 57
172500000000     O               20                          59 'TRADE DISCOUNT:'
172510000000     O               20   n70cttdam        k     85
172520000000     O               20n75 70cttdam        k     82
172530000000     O               20 75   tdatic        k     82
172540000000     O                                          132 'F'
172550000000     O          e    69n42   bottom         1
172560000000     O               18                          59 'FEDERAL EXCISE TAX:'
172570000000     O               18   n70ohfeam        k     85
172580000000     O               18n75 70ohfeam        k     82
172590000000     O               18 75   ohfeat        k     82
172600000000     O                                          132 'F'
172610000000     O          e    69 42   bottom         1
172620000000     O               18                          59 'FEDERAL EXCISE TAX:'
172630000000     O               18   n70ctfeam        k     85
172640000000     O               18n75 70ctfeam        k     82
172650000000     O               18 75   featic        k     82
172660000000     O                                          132 'F'
172670000000     O          e    69n42   bottom         1
172680000000     O               19                          59 'CONTAINER CHARGE:'
172690000000     O               19   n70ohcnct        k     85
172700000000     O               19n75 70ohcnct        k     82
172710000000     O               19 75   ohcctt        k     82
172720000000     O                                          132 'F'
172730000000     O          e    69 42   bottom         1
172740000000     O               19                          59 'CONTAINER CHARGE:'
172750000000     O               19   n70ctcnct        k     85
172760000000     O               19n75 70ctcnct        k     82
172770000000     O               19 75   ccttic        k     82
172780000000     O                                          132 'F'
172790000000     O          e    69n42   bottom      1  1
172800000000     O                                           59 'SUBTOTAL:'
172810000000     O                    n70subtot        k     85
172820000000     O              n75    70subtot        k     82
172830000000     O               75      icsubt        k     82
172840000000     O                                          132 'F'
172850000000     O          e    69 42   bottom      1  1
172860000000     O                                           59 'SUBTOTAL:'
172870000000     O                    n70csbtot        k     85
172880000000     O              n75    70csbtot        k     82
172890000000     O               75      subtic        k     82
172900000000     O                  70   @@symo              85
172910000000     O                                          132 'F'
172920000000     O          e    69n71n72bottom         1
172930000000     O         and  n42
172940000000     O               21                          59 'SALES TAX:'
172950000000     O               21   n70ohtxam        k     85
172960000000     O               21n75 70ohtxam        k     82
172970000000     O               21 75   ohtxat        k     82
172980000000     O                                          132 'F'
172990000000     O          e    69n71n72bottom         1
173000000000     O         and   42
173010000000     O               21                          59 'SALES TAX:'
173020000000     O               21   n70cttaxm        k     85
173030000000     O               21n75 70cttaxm        k     82
173040000000     O               21 75   txatic        k     82
173050000000     O                                          132 'F'
173060000000     O          e    69 71n42bottom         1
173070000000     O               21    73                    18 'GST REGISTRATION #'
173080000000     O               21    73gstr#o              34
173090000000     O               21                          59 'GST:'
173100000000     O               21n75n70ohgtxa        k     85
173110000000     O               21n75 70ohgtxa        k     82
173120000000     O               21 75n70ohgtxt        k     82
173130000000     O               21 75 70ohgtxt        k     82
173140000000     O                                          132 'F'
173150000000     O          e    69 71 42bottom         1
173160000000     O               21    73                    18 'GST REGISTRATION #'
173170000000     O               21    73gstr#o              34
173180000000     O               21                          59 'GST:'
173190000000     O               21n75n70ctgttx        k     85
173200000000     O               21 75n70ctgttt        k     85
173210000000     O               21n75 70ctgttx        k     82
173220000000     O               21 75 70ctgttt        k     82
173230000000     O                                          132 'F'
173240000000     O          e    69 72n42bottom         1
173250000000     O               21                          59 'PST:'
173260000000     O               21n75n70ohptxa        k     85
173270000000     O               21n75 70ohptxa        k     82
173280000000     O               21 75n70ohptxt        k     82
173290000000     O               21 75 70ohptxt        k     82
173300000000     O                                          132 'F'
173310000000     O          e    69 72 42bottom         1
173320000000     O               21                          59 'PST:'
173330000000     O               21n75n70ctpttx        k     85
173340000000     O               21 75n70ctpttt        k     85
173350000000     O               21n75 70ctpttx        k     82
173360000000     O               21 75 70ctpttt        k     82
173370000000     O                                          132 'F'
173380000000     O          e    69n42   bottom         1 66
173390000000     O                                           59 'TOTAL:'
173400000000     O                    n70itotal        k     85
173410000000     O                 n75 70itotal        k     82
173420000000     O                  75   ictotl        k     82
173430000000     O                  70   @@symo              85
173440000000     O                                          132 'F'
173450000000     O          e    69 42   bottom         1 66
173460000000     O                                           59 'TOTAL:'
173470000000     O                    n70citotl        k     85
173480000000     O                 n75 70citotl        k     82
173490000000     O                  75   totlic        k     82
173500000000     O                  70   @@symo              85
173510000000     O                                          132 'F'
173520000000     O          e    69n72n42bottom      1  1
173530000000     O                                           59 'DEPOSIT:'
173540000000     O                    n70ohdpam        k     85
173550000000     O                 n75 70ohdpam        k     82
173560000000     O                  75   ohdpat        k     82
173570000000     O                                          132 'F'
173580000000     O          e    69n72 42bottom      1  1
173590000000     O                                           59 'DEPOSIT:'
173600000000     O                    n70ctdpam        k     85
173610000000     O                 n75 70ctdpam        k     82
173620000000     O                  75   dpatic        k     82
173630000000     O                                          132 'F'
173640000000     O          e    69 72n42bottom      1  1
173650000000     O                                           58 'DEPOSIT:'
173660000000     O                    n70ohdpam        k     85
173670000000     O                 n75 70ohdpam        k     82
173680000000     O                  75   ohdpat        k     82
173690000000     O                                          132 'F'
173700000000     O          e    69 72 42bottom         1
173710000000     O                                           59 'DEPOSIT:'
173720000000     O                    n70ctdpam        k     85
173730000000     O                 n75 70ctdpam        k     82
173740000000     O                  75   dpatic        k     82
173750000000     O                                          132 'F'
173760000000      //
173770000000     O          e    69n42   bottom         1
173780000000     O                                           59 'AMT DUE:'
173790000000     O                    n70amtdue        j     85
173800000000     O              n75 70   amtdue        j     82
173810000000     O               75      icamnt        j     82
173820000000     O                  70   @@symo              85
173830000000     O                                          132 'F'
173840000000     O          e    69 42   bottom         1
173850000000     O                                           59 'AMT DUE:'
173860000000     O                    n70camtdu        j     85
173870000000     O              n75 70   camtdu        j     82
173880000000     O               75      amntic        j     82
173890000000     O                  70   @@symo              85
173900000000     O                                          132 'F'
173910000000**    MSGS
173920000000MAY BE DEDUCTED IF PAID BY
173930000000** DYS
173940000000312931303130313130313031
173950000000** DYX               DAYS/MONTH NON LEAP YEAR   *> A
173960000000312831303130313130313031
