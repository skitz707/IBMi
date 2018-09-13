000100000000
000200000000      * NOTE:  THE OPTIONAL START AND END POSITIONS REPRESENT A SEGMENT OF THE
000300000000      *        ENTIRE ORDER CONTROL RECORD, NOT JUST FIELD CCDATA. IF ONLY A
000400000000      *        STARTING POSITION IS SPECIFIED, A SINGLE CHARACTER IS RETURNED.
000500000000      *        IF ONLY THE KEY IS PROVIDED, FIELD CCDATA IS RETURNED.
000600000000      *
000700000000      *        FOR EXAMPLE:
000800000000      *
000900000000      *          IF OEGETCTL( 10 : 'XA' : 'COMNAME' : 59) = 'Y';
001000000000      *
001100000000      *            ...WOULD TEST IF THE O/E TO A/R INTERFACE IS ACTIVE FOR COMPANY 10,
001200000000      *               PER THE COMPANY NAMES RECORD IN ORCTL.
001300000000      *
001400000000      *          PRTCAR = OEGETCTL( 0 : 'OE' : ('CC' + OHCACD) : 14 : 43);
001500000000      *
001600000000      *            ...WOULD SET FIELD PRTCAR EQUAL TO THE NAME ASSOCIATED WITH THE
001700000000      *               CARRIER CODE IN FIELD OHCACD.
001800000000      *
001900000000      *          CARDTA = OEGETCTL( 0 : 'OE' : ('CC' + OHCACD));
002000000000      *
002100000000      *            ...WOULD SET FIELD CARDTA EQUAL TO THE ENTIRE CONTENTS OF FIELD
002200000000      *               CCDATA FROM THE MATCHING CARRIER RECORD IN ORCTL.
002300000000      *
002400000000
002500000000     d  oegetctl       pr           256    varying                              o/e get control data
002600000000     d    cmpnum                      2s 0 value                                company number
002700000000     d    applid                      2    value                                application i/d
002800000000     d    ctlkey                      7    value                                control key
002900000000     d    strpos                      3s 0 value options(*nopass)               start posn in record
003000000000     d    endpos                      3s 0 value options(*nopass)               end posn in record
003100000000
