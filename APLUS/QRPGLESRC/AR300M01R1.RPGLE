000100000000
000200000000      /copy qcpysrc,hctlmain
000300000000      /copy qcpysrc,pagegrid
000400000000
000500000000     d  ar300m01r1     pr                                                       entry parameters
000600000000     d    PagPtrX                      *   const                                pointer to grid
000700000000     d    NumPgs                     10i 0 const                                number of pages
000800000000
000900000000     d  ar300m01r1     pi                                                       entry parameters
001000000000     d    PagPtrX                      *   const                                pointer to grid
001100000000     d    NumPgs                     10i 0 const                                number of pages
001200000000
001300000000     d  trndat         s               d                                        transaction date
001400000000     d  lintyp         s              3                                         line type
001500000000     d  numinv         s              5  0                                      number of invoices
001600000000     d  avgdys         s              5  0                                      avg days receivables
001700000000     d  dystot         s              7  0                                      total days aged
001800000000
001900000000      /free
002000000000
002100000000       PagPtr = PagPtrX;
002200000000
002300000000       for PagIdx = 1 to NumPgs;                                             // for every page
002400000000
002500000000         for LinIdx = 1 to %elem(Pages.Lines);                               // for every line
002600000000
002700000000           lintyp = %subst(Pages(PagIdx).Lines(LinIdx):14:3);
002800000000
002900000000           if lintyp = 'INV' or lintyp = 'F/C';
003000000000
003100000000             monitor;
003200000000               trndat = %date(%subst(Pages(PagIdx).Lines(LinIdx):27:8):*mdy/);
003300000000             on-error *all;
003400000000             endmon;
003500000000
003600000000             numinv = numinv + 1;
003700000000             dystot = dystot + %diff(%date:trndat:*d);
003800000000
003900000000           endif;
004000000000
004100000000           if %scan('Customer Totals':Pages(PagIdx).Lines(LinIdx)) > *zeros;
004200000000
004300000000             if dystot <> *zeros;
004400000000
004500000000               avgdys = %inth(dystot/numinv);
004600000000
004700000000               %subst(Pages(PagIdx).Lines(LinIdx + 1):5:25) =
004800000000                 'Average Days Open:';
004900000000
005000000000               %subst(Pages(PagIdx).Lines(LinIdx + 1):47:6) =
005100000000                 %editc(avgdys:'1');
005200000000
005300000000             endif;
005400000000
005500000000             clear dystot;
005600000000             clear numinv;
005700000000
005800000000           endif;
005900000000         endfor;                                                             // for every line
006000000000       endfor;                                                               // for every page
006100000000
006200000000       *inlr = *on;                                                          // end of program
006300000000
006400000000      /end-free
006500000000
