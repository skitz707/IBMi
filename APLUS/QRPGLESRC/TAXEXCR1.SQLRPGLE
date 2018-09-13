000100000000
000200000000     h/copy qcpysrc,hctlmain                                                    std control specs
000300000000
000400060414     ftaxexcl1  if   e           k disk    usropn                               tax body exceptions
000500060414
000600060414     d  imgbef       e ds                  extname(ordet) qualified based(bp)   image before
000700060414     d  imgaft       e ds                  extname(ordet) qualified based(ap)   image before
000800060414
000900060414     d  taxbod         s                   like(tetaxbod)                       tax body
001000060414     d  k_taxexcl1     ds                  likerec(taxexc)                      key to taxexcl1
001100060414
001200000000     d/copy qcpysrc,evnhdr                                                      event handler header
001300000000
001400000000      /free
001500000000
001600060414       exec sql select ifnull(ohtxbd, ' ') into :taxbod from orhed
001700060414         where ohcono = :imgaft.odcono and ohorno = :imgaft.odorno;          // get header tax body
001800060414
001900060414       k_taxexcl1.tetaxbod = imgaft.odtxbd
002000060414
002100060414
002200000000       *inlr = *on;                                                          // close all files
002300000000
002400000000      /end-free
002500000000
