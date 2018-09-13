000100000000     H**********************************************************************************************
000200000000     H*
000300000000     H*  GEMKO INFORMATION GROUP
000400000000     H*
000500000000     H*  NAME:  CONUPD
000600000000     H*  TYPE:  RPG PROGRAM
000700000000     H*  NAME:  CONTRACT PRICE MASS UPDATE
000800000000     H*
000900000000     H**********************************************************************************************
001000000000     F*
001100000000     FCONTR     UP   E           K DISK                                         CONTRACT MASTER
001200000000     FCUSMS     IF   E           K DISK                                         CUSTOMER MASTER
001300000000     FITMST     IF   E           K DISK                                         ITEM MASTER
001400000000     FCONUPDP1  O    E             PRINTER INFDS(P1INFO)                        AUDIT REPORT
001500000000     D*
001600000000     D  P1INFO         DS                                                       PRINTER FILE INFO
001700000000     D  P1OVER               188    189B 0                                      OVERFLOW LINE
001800000000     D  P1LINE               367    368B 0                                      CURRENT PRINT LINE
001900000000     D*
002000000000     D                SDS                                                       PROGRAM STATUS
002100000000     D  P1PROG           *PROC                                                  PROGRAM NAME
002200000000     D  P1USRP               254    263                                         USER PROFILE
002300000000     D*
002400000000     D  P1LEFT         S                   LIKE(P1LINE)                         LINES LEFT ON PAGE
002500000000     D  USSTDT         S               D   DATFMT(*USA)                         USA START DATE
002600000000     D  USEXDT         S               D   DATFMT(*USA)                         USA EXPIRATION DATE
002700000000     D  USLMDT         S               D   DATFMT(*USA)                         USA LAST MAINT DATE
002800000000     D  WKLMDT         S              8S 0                                      CYMD LAST MAINT DATE
002900000000     D*
003000000000     D  OKBYCUST       S               N                                        OK BY CUST CRITERIA
003100000000     D  OKBYITEM       S               N                                        OK BY ITEM CRITERIA
003200000000     I*
003300000000     ICONTRR                                                                    CONTRACT MASTER
003400000000     I                                          CPCONO        L3                COMPANY NUMBER
003500000000     I                                          CPCNNR        L3                CONTRACT NUMBER
003600000000     I                                          CPCUSC        L2                CUSTOMER CODE
003700000000     I                                          CPCSID        L2                CUSTOMER I/D
003800000000     I                                          CPITCD        L1                ITEM CODE
003900000000     I                                          CPITNO        L1                ITEM NUMBER
004000000000     C*
004100000000     C*  ON A BREAK IN CUSTOMER, RETRIEVE CUSTOMER MASTER AND QUALIFY BASED ON CUSTOMER VALUES.
004200000000     C*
004300000000     C                   IF        *INL2                                        IF BREAK IN CUST
004400000000     C*
004500000000     C                   EVAL      CMCONO = CPCONO                              COMPANY NUMBER
004600000000     C                   EVAL      CMCSNO = %INT(CPCSID)                        CUSTOMER NUMBER
004700000000     C*
004800000000     C     K_CUSMS       CHAIN     CUSMSR                                       SEARCH CUSMS
004900000000     C*
005000000000     C                   EVAL      OKBYCUST = %FOUND(CUSMS) AND                 VALIDATE BY CUST
005100000000     C                               (CMUS5B = WKCPCC OR WKCPCC = *BLANKS)      ..AND PRICE CHG CODE
005200000000     C*
005300000000     C                   ENDIF                                                  IF BREAK IN CUST
005400000000     C*
005500000000     C*  ON A BREAK IN ITEM, RETRIEVE ITEM MASTER AND QUALIFY BASED ON ITEM VALUES.
005600000000     C*
005700000000     C                   IF        *INL1                                        IF BREAK IN ITEM
005800000000     C*
005900000000     C                   EVAL      IMITNO = CPITNO                              ITEM NUMBER
006000000000     C*
006100000000     C     K_ITMST       CHAIN     CUSMSR                                       SEARCH CUSMS
006200000000     C*
006300000000     C                   EVAL      OKBYITEM = %FOUND(ITMST) AND                 VALIDATE BY ITEM
006400000000     C                               (IMITCL = WKITCL OR WKITCL = '**') AND     ..AND ITEM CLASS
006500000000     C                               (IMITSC = WKITSC OR WKITSC = '**')         ..AND ITEM SUBCLASS
006600000000     C*
006700000000     C                   ENDIF                                                  IF BREAK IN ITEM
006800000000     C*
006900000000     C*  ON EACH CYCLE, UPDATE THE MATCHING CONTRACT MASTER RECORD WITH THE SPECIFIED NEW PRICE
007000000000     C*  AND DATE RANGE.  WRITE AN ENTRY TO THE MAINTENANCE AUDIT REPORT.
007100000000     C*
007200000000     C                   IF        OKBYCUST AND OKBYITEM AND                    IF OK BY CUST/ITEM
007300000000     C                               %DATE(CPEXDT:*YMD) >= %DATE                ..AND NOT EXPIRED
007400000000     C*
007500000000     C                   EVAL      P1CONO      = CPCONO                         COMPANY NUMBER
007600000000     C                   EVAL      P1CSNO      = CMCSNO                         CUSTOMER NUMBER
007700000000     C                   EVAL      P1CSNM      = CMCSNM                         CUSTOMER NAME
007800000000     C                   EVAL      P1ITNO      = CPITNO                         ITEM NUMBER
007900000000     C                   EVAL      P1ITD1      = IMITD1                         ITEM DESCRIPTION
008000000000     C                   EVAL      P1NGPR_BEF  = CPNGPR                         NEGOT PRICE BEFORE
008100000000     C*
008200000000     C     *YMD          MOVE      CPSTDT        USSTDT                         USA START DATE
008300000000     C     *USA          MOVE      USSTDT        P1STDT_BEF                     START DATE BEFORE
008400000000     C*
008500000000     C     *YMD          MOVE      CPEXDT        USEXDT                         USA EXPIRATION DATE
008600000000     C     *USA          MOVE      USEXDT        P1EXDT_BEF                     EXPIR DATE BEFORE
008700000000     C*
008800000000     C                   IF        WKSTDT > *BLANKS                             IF START DATE CHG
008900000000     C                   MOVEL     WKSTDT        CPSTCC                         START CENTURY
009000000000     C                   MOVE      WKSTDT        CPSTDT                         START DATE
009100000000     C                   ENDIF                                                  IF START DATE CHG
009200000000     C*
009300000000     C                   IF        WKEXDT > *BLANKS                             IF EXPIRE DATE CHG
009400000000     C                   MOVEL     WKEXDT        CPEXCC                         EXPIRATION CENTURY
009500000000     C                   MOVE      WKEXDT        CPEXDT                         EXPIRATION DATE
009600000000     C                   ENDIF                                                  IF EXPIRE DATE CHG
009700000000     C*
009800000000     C     *YMD          MOVE      CPSTDT        USSTDT                         USA START DATE
009900000000     C     *USA          MOVE      USSTDT        P1STDT_AFT                     START DATE AFTER
010000000000     C*
010100000000     C     *YMD          MOVE      CPEXDT        USEXDT                         USA EXPIRATION DATE
010200000000     C     *USA          MOVE      USEXDT        P1EXDT_AFT                     EXPIR DATE AFTER
010300000000     C*
010400000000     C                   TIME                    USLMDT                         USA LAST MAINT DATE
010500000000     C     *ISO          MOVE      USLMDT        WKLMDT                         CYMD LAST MAINT DATE
010600000000     C                   MOVEL     WKLMDT        CPLMCC                         LAST MAINT CENTURY
010700000000     C                   MOVE      WKLMDT        CPLMDT                         LAST MAINT DATE
010800000000     C*
010900000000     C                   IF        WKDIFD <> *ZEROS                             IF DIFF IN DOLLARS
011000000000     C                   EVAL      CPNGPR  = CPNGPR + WKDIFD                    NEW NEGOT PRICE
011100000000     C                   ELSE                                                   DIFF IN PERCENT
011200000000     C                   EVAL(H)   CPNGPR  = CPNGPR + (CPNGPR * WKDIFP / 100)   NEW NEGOT PRICE
011300000000     C                   ENDIF                                                  IF DIFF IN DOLLARS
011400000000     C*
011500000000     C                   EVAL      P1NGPR_AFT = CPNGPR                          NEGOT PRICE AFTER
011600000000     C                   EVAL      WKRUPD     = WKRUPD + 1                      RECORDS UPDATED
011700000000     C                   EVAL      P1LEFT     = P1OVER - P1LINE                 LINES LEFT ON PAGE
011800000000     C*
011900000000     C                   MONITOR                                                MONITOR ERROR
012000000000     C                   UPDATE    CONTRR                                       UPDATE CONTRL1
012100000000     C                   ON-ERROR  *ALL                                         ON ALL ERRORS
012200000000     C                   EVAL      P1COMT_AFT = '** DUPLICATE KEY ERROR ' +     SHOW ERROR TEXT
012300000000     C                                          'NO UPDATE **'                  ..ON REPORT
012400000000     C                   ENDMON                                                 MONITOR ERROR
012500000000     C*
012600000000     C                   IF        P1LEFT < 4                                   IF NEAR PAGE END
012700000000     C                   WRITE     HEADER                                       NEW PAGE HEADER
012800000000     C                   ENDIF                                                  IF NEAR PAGE END
012900000000     C*
013000000000     C                   WRITE     DETAIL                                       AUDIT REPORT DETAIL
013100000000     C                   CLEAR                   DETAIL                         CLEAR ALL FIELDS
013200000000     C*
013300000000     C                   ENDIF                                                  IF OK BY CUST/ITEM
013400000000     C*
013500000000     C*  ON LAST CYCLE, PRINT TOTAL RECORDS UPDATED
013600000000     C*
013700000000     CLR                 IF        WKRUPD = *ZEROS                              IF NO RECDS UPDATED
013800000000     CLR                 EVAL      P1LINE = P1OVER                              FORCE PAGE HEADERS
013900000000     CLR                 ENDIF                                                  IF NO RECDS UPDATED
014000000000     C*
014100000000     CLR                 EVAL      P1RUPD = WKRUPD                              RECORDS UPDATED
014200000000     CLR                 EVAL      P1LEFT = P1OVER - P1LINE                     LINES LEFT ON PAGE
014300000000     C*
014400000000     CLR                 IF        P1LEFT < 4                                   IF NEAR PAGE END
014500000000     CLR                 WRITE     HEADER                                       NEW PAGE HEADER
014600000000     CLR                 ENDIF                                                  IF NEAR PAGE END
014700000000     C*
014800000000     CLR                 WRITE     TOTALS                                       REPORT TOTALS
014900000000     C*
015000000000     C**********************************************************************************************
015100000000     C*
015200000000     C*  INITIALIZATION
015300000000     C*
015400000000     C     *INZSR        BEGSR                                                  INITIALIZATION
015500000000     C*
015600000000     C     *ENTRY        PLIST                                                  ENTRY PARAMETERS
015700000000     C                   PARM                    WKCPCC            1            CUST PRC CHG CODE
015800000000     C                   PARM                    WKITCL            2            ITEM CLASS
015900000000     C                   PARM                    WKITSC            2            ITEM SUBCLASS
016000000000     C                   PARM                    WKDIFD           15 5          DIFFERENCE DOLLARS
016100000000     C                   PARM                    WKDIFP           15 5          DIFFERENCE PERCENT
016200000000     C                   PARM                    WKSTDT            8            START DATE
016300000000     C                   PARM                    WKEXDT            8            EXPIRATION DATE
016400000000     C                   PARM                    WKRUPD           15 5          RECORDS UPDATED
016500000000     C*
016600000000     C     K_CUSMS       KLIST                                                  KEY TO CUSMS
016700000000     C                   KFLD                    CMCONO                         COMPANY NUMBER
016800000000     C                   KFLD                    CMCSNO                         CUSTOMER NUMBER
016900000000     C*
017000000000     C     K_ITMST       KLIST                                                  KEY TO ITMST
017100000000     C                   KFLD                    IMITNO                         ITEM NUMBER
017200000000     C*
017300000000     C                   EVAL      P1ITCL = WKITCL + ' / ' + WKITSC             ITEM CLASS/SUBCLASS
017400000000     C                   EVAL      P1CPCC = WKCPCC                              CUST PRC CHG CODE
017500000000     C                   EVAL      P1LINE = P1OVER                              FORCE NEW PAGE
017600000000     C*
017700000000     C                   ENDSR                                                  INITIALIZATION
017800000000     C*
017900000000     C**********************************************************************************************
