000100000000
000200000000     h  dftactgrp(*no) bnddir('APLUS') actgrp('EVNLCH') main(LiftOff)
000300000000     h  option(*srcstmt)
000400000000
000500000000     d  firedby        pr              n                                        fired by
000600000000     d    pgmnam                     10    value                                program name
000700000000     d    iostm1                     10    value options(*nopass)               i/o statement
000800000000     d    iostm2                     10    value options(*nopass)               i/o statement
000900000000     d    iostm3                     10    value options(*nopass)               i/o statement
001000000000     d    iostm4                     10    value options(*nopass)               i/o statement
001100000000     d    iostm5                     10    value options(*nopass)               i/o statement
001200000000
001300000000     d  LiftOff        pr                  extpgm('EVNLCH')
001400000000     d    Buffer                           likeds(bufdefn)
001500000000     d    BufferLen                  10i 0
001600000000
001700000000     d  BufDefn      e ds                  extname(trgbuf)                      buffer defnition
001800000000
001900000000
002000000000
002100000000     p  LiftOff        b
002200000000
002300000000     fevnmstl1  if   e           k disk                                         event master
002400000000
002500000000     d  evnhnd         pr                  extpgm(emprog)                       event handler
002600000000     d    bufdta                           likeds(BufDefn)                      trigger buffer data
002700000000
002800000000     d  LiftOff        pi
002900000000     d    Buffer                           likeds(BufDefn)
003000000000     d    BufferLen                  10i 0
003100000000
003200000000     d  k_evnmstl1   e ds                  extname(evnmstl1:*key) qualified     key to evnmstl1
003300000000     d  r_evnmstl1   e ds                  extname(evnmstl1:*input)             evnmstl1 record
003400000000     d  trgbuf         ds                  likeds(BufDefn) based(bufptr)        trigger buffer
003500000000
003600000000      /free
003700000000
003800000000       bufptr = %addr(Buffer);                                               // align trig buffer
003900000000
004000000000       k_evnmstl1.emfile = trgbuf.filnam;                                    // file name key
004100000000       k_evnmstl1.emevnt = trgbuf.trgevn;                                    // trigger event key
004200000000
004300000000       setll %kds(k_evnmstl1:2) evnmst;                                      // find first event
004400000000
004500000000       if %equal(evnmstl1);                                                  // if events exist
004600000000
004700000000         dou %eof(evnmstl1);                                                 // until no more events
004800000000           reade %kds(k_evnmstl1:2) evnmst r_evnmstl1;                       // read next events
004900000000
005000000000           if not %eof(evnmstl1);                                            // if not end of events
005100000000
005200000000             if emenbl = '1';                                                // if enabled
005300000000
005400000000               if emfire = *blanks
005500000000               or emstmt = *blanks and firedby(emfire)
005600000000               or emstmt > *blanks and firedby(emfire:emstmt);               // if fired by program
005700000000                 evnhnd(Buffer);                                             // run event handler
005800000000               endif;                                                        // if fired by program
005900000000
006000000000             endif;                                                          // if enabled
006100000000           endif;                                                            // if not end of events
006200000000         enddo;                                                              // until no more events
006300000000       endif;                                                                // if events exist
006400000000
006500000000      /end-free
006600000000
006700000000     p  LiftOff        e
006800000000
