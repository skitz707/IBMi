000100000000
000200000000     h nomain
000300000000
000400000000     fspldta    if   f  199        disk    usropn                               spool file as data
000500000000
000600000000     d  splfmaxcol     pr             3P 0                                      spool file max cols
000700000000
000800000000     ispldta    ns  01                                                          spool file as data
000900000000     i                                  2  199  print_area                      printable area
001000000000
001100000000     ***********************************************************************************************
001200000000
001300000000     p  splfmaxcol     b                   export                               spool file max cols
001400000000
001500000000     d  splfmaxcol     pi             3P 0                                      spool file max cols
001600000000
001700000000     d  cur_length     s              3P 0                                      cur spool line leng
001800000000     d  max_length     s              3P 0 inz                                  max spool line leng
001900000000
002000000000      /free
002100000000
002200000000       open spldta;                                                          // open spool file
002300000000
002400000000       dou %eof(spldta);                                                     // until end of splf
002500000000         read spldta;                                                        // read next splf line
002600000000
002700000000         if %eof(spldta);                                                    // if end of file
002800000000           return max_length;                                                // return to caller
002900000000
003000000000         else;                                                               // splf line read
003100000000
003200000000           cur_length = %len(%trimr(print_area));                            // cur spool line leng
003300000000
003400000000           if cur_length > max_length;                                       // if curr line longer
003500000000              max_length = cur_length;                                       // roll to max length
003600000000           endif;                                                            // if curr line longer
003700000000
003800000000         endif;                                                              // if end of file
003900000000       enddo;                                                                // until end of splf
004000000000
004100000000       close spldta;                                                         // open spool file
004200000000
004300000000      /end-free
004400000000
004500000000     p  splfmaxcol     e                                                        spool file max cols
004600000000
