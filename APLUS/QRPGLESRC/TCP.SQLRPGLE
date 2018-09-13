000100000000
000200000000     ftcfill    if   e           k disk                                         tcp partial fill
000300000000
000400000000      **********************************************************************************************
000500000000
000600000000     p  getPartial     b                   export                               get partial fill qty
000700000000
000800000000     d  getPartial     pi             7  0                                      get partial fill qty
000900000000     d   gPcono                       2s 0 value                                company number
001000000000     d   gPorno                       5    value                                order number
001100000000     d   gPorgn                       2s 0 value                                order generation
001200000000     d   gPorsq                       5s 0 value                                line sequence number
001300000000
001400000000     d  PartialQty                    7  0 inz                                  partial fill qty
001500000000
001600000000     c/exec sql
001700000000     c+  select tffqt1 into :PartialQty from tcfill
001800000000     c+    where tfcono = :gPcono and tforno = :gPorno and
001900000000     c+          tforgn = :gPorgn and tforsq = :gPorsq
002000000000     c/end-exec
002100000000
002200000000     c                   return    PartialQty                                   return partial qty
002300000000
002400000000     p  getPartial     e                                                        get partial fill qty
002500000000
002600000000      **********************************************************************************************
002700000000
002800000000     p  getCoated      b                   export                               get coated items
002900000000
003000000000     d  getCoated      pi                  like(CoatedItems)                    get partial fill qty
003100000000     d   gCorit                      27    value                                orig uncoated item
003200000000
003300000000     d  CoatedItems    ds                  occurs(10) inz                       all coated items
003400000000     d   CoatedItem                        like(gCorit)                         coated item
003500000000
003600000000     c/exec sql
003700000000     c+  select mrrpit into :CoatedItems from imxrf where mrorit = :gCorit
003800000000     c/end-exec
003900000000
004000000000     c                   return    CoatedItems                                  return coated items
004100000000
004200000000     p  getCoated      e                                                        get coated items
004300000000
004400000000      **********************************************************************************************
004500030709
004600030709     p  getOrders      b                   export                               get open orders
004700030709
004800030709     d  getOrders      pi                                                       get open orders
004900030709     d   gOorit                      27    value                                orig uncoated item
005000030709     d   gOwhid                       2    value                                warehouse i/d
005100030709
005200030709     d  orddet       e ds                  extname(ordet)                       order detail
005300030709     d  ordhed       e ds                  extname(orhed)                       order header
005400030709
005500030709     d  OpenOrders     ds                  qualified                            all coated items
005600030709     d   OOdetl                            likeds(orddet)                       order detail
005700030709     d   OOhead                            likeds(ordhed)                       coated item
005800030709
005900030709     c/exec sql
006000030709     c+  select * from ordet left join orhed
006100030709     c+    on odcono = ohcono and odorno = ohorno and odorgn = ohorgn
006200030709     c+  where (oditno = :gOorit or oditno in
006300030709     c+    (select mrrpit from imxrf where mrorit = :gCorit))
006400030709     c+  and odwhid = :gOwhid
006500030709     c+  and odalcd = 'Y' and odboqt > 0 and odortp <> 'R' and odlitp = 'I'
006600030709     c/end-exec
006700030709
006800030709     c                   return    CoatedItems                                  return coated items
006900030709
007000030709     p  getCoated      e                                                        get coated items
007100030709
007200030709      **********************************************************************************************
