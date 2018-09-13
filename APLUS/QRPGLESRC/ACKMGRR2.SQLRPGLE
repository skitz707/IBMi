000100090921
000200090921      *  ADDPFTRG FILE(MSHED)
000300090921      *           TRGTIME(*BEFORE)
000400090921      *           TRGEVENT(*INSERT)
000500090921      *           PGM(ACKMGRR2)
000600090921      *           TRG(ACKMGRR2I)
000700090921      *           ALWREPCHG(*YES)
000800090921
000900090921      /copy qcpysrc,hctlmain
001000090921
001100090921     d  imgbef       e ds                  extname(mshed) qualified based(bptr) image before
001200090921     d  imgaft       e ds                  extname(mshed) qualified based(aptr) image after
001300090921     d  stddoc         c                   const('/home/terms.pdf')             standard document
001400090921     d  attdir         c                   const('/msattch')                    attachment dir
001500090921     d  squote         c                   const(x'7D')                         single quote
001600090921     d  attpth         s            128    varying                              attachment path
001700090921
001800090921     d                uds
001900090921     d  ldford               259    263
002000090921     d  ldemad               431    494
002100090921     d  ldfrom               531    594
002200090921     d  ldcspo               595    616
002300090921
002400090921      /copy qcpysrc,firedby
002500090921      /copy qcpysrc,runoscmd
002600090921      /copy qcpysrc,trigheader
002700090921
002800090921      /free
002900090921
003000090921       monitor;
003100090921
003200090921         if %subst(imgaft.ehsubj:1:3) = 'Ack';
003300090921
003400090921           if firedby('ACKMGRR1');
003500090921
003600090921             if ldfrom > *blanks;
003700090921               imgaft.ehfrad = ldfrom;
003800090921               exec sql insert into msdet (edectl, edsq03, edtext)
003900090921                 values(:imgaft.ehectl, 3, :ldfrom);
004000090921             endif;
004100090921
004200090921             if ldemad > *blanks;
004300090921               imgaft.ehtoad = ldemad;
004400090921             endif;
004500090921
004600090921             if ldcspo > *blanks;
004700090921               imgaft.ehsubj = %trim(imgaft.ehsubj) + ', P/O # ' + ldcspo;
004800090921             endif;
004900090921
005000090921             if ldford > *blanks;
005100090921               imgaft.ehsubj = %trim(imgaft.ehsubj) + ', RJS # ' + ldford;
005200090921             endif;
005300090921
005400090921           endif;
005500090921
005600090921           cmdstr = 'CPY OBJ(' + squote + stddoc + squote + ') TOOBJ(' +
005700090921             squote + attdir + '/C' + %trim(%editc(imgaft.ehectl:'X')) +
005800090921             '.PDF' + squote + ') REPLACE(*YES)';
005900090921
006000090921           runoscmd(cmdstr:cmdlen);
006100090921
006200090921         endif;
006300090921
006400090921       on-error *all;
006500090921
006600090921       endmon;
006700090921
006800090921       *inlr = *on;
006900090921
007000090921      /end-free
007100090921
