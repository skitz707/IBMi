000100000000     H**********************************************************************************************
000200000000     H*
000300000000     H*  GEMKO INFORMATION GROUP
000400000000     H*
000500000000     H*  NAME:  OETOOL
000600000000     H*  TYPE:  RPG/4 MODULE
000700000000     H*  DESC:  ORDER ENTRY TOOLS *SRVPGM
000800000000     H*
000900000000     H*  NOTE:  THIS MODULE CONTAINS PROCEDURES BASED ON APLUS ORDER ENTRY
001000000000     H*
001100000000     H**********************************************************************************************
001200000000
001300000000     h  nomain bnddir('APLUS')
001400000000
001500000000     d/copy qcpysrc,oegetctl                                                    o/e get control data
001600000000
001700000000     p**********************************************************************************************
001800000000     p*
001900000000     p* get control info
002000000000     p*
002100000000     p* this procecure returns the specified portion of control data from orctl
002200000000     p*
002300000000     p* note that the optional start and end position represent a subset of the
002400000000     p*   entire record, not just field ccdata
002500000000
002600000000     p  oegetctl       b                   export                               o/e get control data
002700000000
002800000000     d  oegetctl       pi           256    varying                              o/e get control data
002900000000     d    cmpnum                      2s 0 value                                company number
003000000000     d    applid                      2    value                                application i/d
003100000000     d    ctlkey                      7    value                                control key
003200000000     d    strpos                      3s 0 value options(*nopass)               start posn in record
003300000000     d    endpos                      3s 0 value options(*nopass)               end posn in record
003400000000
003500000000     d  ordctl       e ds                  extname(orctl) inz                   order control recd
003600000000
003700000000      /free
003800000000
003900000000       exec sql select * into :ordctl from orctl
004000000000           where cccono = :cmpnum and ccapid = :applid and ccctlk = :ctlkey;
004100000000
004200000000       if sqlcod <> *zeros;                                                  // if sql error
004300000000         return *blanks;                                                     // return nothing
004400000000       elseif %parms = 5 and strpos > *zeros and endpos > strpos;            // or start & end posn
004500000000         return %subst(ordctl:strpos:(1 + endpos - strpos));                 // return portion
004600000000       elseif %parms = 4 and strpos > *zeros;                                // or just start posn
004700000000         return %subst(ordctl:strpos:1);                                     // return that position
004800000000       elseif %parms = 3;                                                    // or just key
004900000000         return ccdata;                                                      // return data portion
005000000000       endif;                                                                // if sql error
005100000000
005200000000      /end-free
005300000000
005400000000     p  oegetctl       e                                                        o/e get control data
005500000000
005600000000     p**********************************************************************************************
