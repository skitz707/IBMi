000100000000/******************************************************************************/
000200000000/*                                                                            */
000300000000/*  GEMKO INFORMATION GROUP                                                   */
000400000000/*                                                                            */
000500000000/*  NAME:  CONUPDC                                                            */
000600000000/*  TYPE:  C/L PROGRAM                                                        */
000700000000/*  DESC:  CONTRACT PRICE MASS UPDATE                                         */
000800000000/*                                                                            */
000900000000/******************************************************************************/
001000000000/*                                                                            */
001100000000             PGM
001200000000/*                                                                            */
001300000000             DCLF       FILE(CONUPDFM)
001400000000/*                                                                            */
001500000000             DCL        VAR(&SYSMDY) TYPE(*CHAR) LEN(6)
001600000000             DCL        VAR(&SYSCYM) TYPE(*CHAR) LEN(8)
001700000000             DCL        VAR(&WKSTDT) TYPE(*CHAR) LEN(8)
001800000000             DCL        VAR(&WKEXDT) TYPE(*CHAR) LEN(8)
001900000000             DCL        VAR(&WKDIFD) TYPE(*DEC)  LEN(15 5)
002000000000             DCL        VAR(&WKDIFP) TYPE(*DEC)  LEN(15 5)
002100000000             DCL        VAR(&WKRUPD) TYPE(*DEC)  LEN(15 5)
002200000000/*                                                                            */
002300000000             DCL        VAR(&XA200_SHD) TYPE(*CHAR) LEN(1)
002400000000             DCL        VAR(&XA200_LIN) TYPE(*DEC)  LEN(2)
002500000000             DCL        VAR(&XA200_NAM) TYPE(*CHAR) LEN(10)
002600000000             DCL        VAR(&XA200_COM) TYPE(*DEC)  LEN(2)
002700000000             DCL        VAR(&XA200_SBK) TYPE(*CHAR) LEN(5)
002800000000             DCL        VAR(&XA200_RTV) TYPE(*CHAR) LEN(6)
002900000000/*                                                                            */
003000000000             RTVJOBA    USER(&F1USRP)
003100000000/*                                                                            */
003200000000             RTVSYSVAL  SYSVAL(QDATE) RTNVAR(&SYSMDY)
003300000000/*                                                                            */
003400000000             CVTDAT     DATE(&SYSMDY) TOVAR(&SYSCYM) FROMFMT(*MDY) +
003500000000                          TOFMT(*YYMD) TOSEP(*NONE)
003600000000/*                                                                            */
003700000000             CHGVAR     VAR(&F1PROG) VALUE(CONUPDC)
003800000000/*                                                                            */
003900000000/*  PROMPT FOR PROCESSING PARAMETERS (SEARCH AVAILABLE ON CERTAIN FIELDS)     */
004000000000/*                                                                            */
004100000000 PROMPT:     SNDRCVF    RCDFMT(CONUPDF1)
004200000000/*                                                                            */
004300000000             IF         COND(&IN03) THEN(GOTO CMDLBL(EXIT))
004400000000/*                                                                            */
004500000000/*  SEARCH FOR ITEM CLASS                                                     */
004600000000/*                                                                            */
004700000000             IF         COND(&F1ITCL *EQ '? ' *OR &F1ITCL *EQ ' ?') +
004800000000                          THEN(DO)
004900000000/*                                                                            */
005000000000                        CHGVAR     VAR(&XA200_SHD) VALUE(' ')
005100000000                        CHGVAR     VAR(&XA200_LIN) VALUE(10)
005200000000                        CHGVAR     VAR(&XA200_NAM) VALUE('ITCL')
005300000000                        CHGVAR     VAR(&XA200_COM) VALUE(0)
005400000000                        CHGVAR     VAR(&XA200_SBK) VALUE('     ')
005500000000                        CHGVAR     VAR(&XA200_RTV) VALUE('      ')
005600000000/*                                                                            */
005700000000                        CALL       PGM(XA200) PARM(&XA200_SHD &XA200_LIN +
005800000000                          &XA200_NAM &XA200_COM &XA200_SBK +
005900000000                          &XA200_RTV)
006000000000/*                                                                            */
006100000000                        IF         COND(&XA200_RTV *GT '      ') THEN(CHGVAR +
006200000000                          VAR(&F1ITCL) VALUE(&XA200_RTV))
006300000000/*                                                                            */
006400000000                        GOTO       CMDLBL(PROMPT)
006500000000/*                                                                            */
006600000000                        ENDDO
006700000000/*                                                                            */
006800000000/*  SEARCH FOR ITEM SUBCLASS                                                  */
006900000000/*                                                                            */
007000000000             IF         COND(&F1ITSC *EQ '? ' *OR &F1ITSC *EQ ' ?') +
007100000000                          THEN(DO)
007200000000/*                                                                            */
007300000000                        CHGVAR     VAR(&XA200_SHD) VALUE(' ')
007400000000                        CHGVAR     VAR(&XA200_LIN) VALUE(10)
007500000000                        CHGVAR     VAR(&XA200_NAM) VALUE('ITSC')
007600000000                        CHGVAR     VAR(&XA200_COM) VALUE(0)
007700000000                        CHGVAR     VAR(&XA200_SBK) VALUE(&F1ITCL)
007800000000                        CHGVAR     VAR(&XA200_RTV) VALUE('      ')
007900000000/*                                                                            */
008000000000                        CALL       PGM(XA200) PARM(&XA200_SHD &XA200_LIN +
008100000000                          &XA200_NAM &XA200_COM &XA200_SBK +
008200000000                          &XA200_RTV)
008300000000/*                                                                            */
008400000000                        IF         COND(&XA200_RTV *GT '      ') THEN(CHGVAR +
008500000000                          VAR(&F1ITSC) VALUE(&XA200_RTV))
008600000000/*                                                                            */
008700000000                        GOTO       CMDLBL(PROMPT)
008800000000/*                                                                            */
008900000000                        ENDDO
009000000000/*                                                                            */
009100000000/*  VALIDATE ITEM CLASS                                                       */
009200000000/*                                                                            */
009300000000             IF         COND(&F1ITCL *LE '  ') THEN(DO)
009400000000                        CHGVAR     VAR(&IN78) VALUE('1')
009500000000                        GOTO       CMDLBL(PROMPT)
009600000000                        ENDDO
009700000000/*                                                                            */
009800000000/*  VALIDATE ITEM SUBCLASS                                                    */
009900000000/*                                                                            */
010000000000             IF         COND(&F1ITSC *LT '  ') THEN(DO)
010100000000                        CHGVAR     VAR(&IN77) VALUE('1')
010200000000                        GOTO       CMDLBL(PROMPT)
010300000000                        ENDDO
010400000000/*                                                                            */
010500000000/*  VALIDATE CUSTOMER PRICE CHANGE CODE                                       */
010600000000/*                                                                            */
010700000000             IF         COND(&F1CPCC *NE '1' *AND &F1CPCC *NE '2' +
010800000000                          *AND &F1CPCC *NE '3' *AND &F1CPCC *NE +
010900000000                          '9') THEN(DO)
011000000000                        CHGVAR     VAR(&IN76) VALUE('1')
011100000000                        GOTO       CMDLBL(PROMPT)
011200000000                        ENDDO
011300000000/*                                                                            */
011400000000/*  VALIDATE PRICE DIFFERENCE                                                 */
011500000000/*                                                                            */
011600000000             IF         COND(&F1DIFD *NE 0 *AND &F1DIFP *NE 0) THEN(DO)
011700000000                        CHGVAR     VAR(&IN75) VALUE('1')
011800000000                        GOTO       CMDLBL(PROMPT)
011900000000                        ENDDO
012000000000/*                                                                            */
012100000000/*  VALIDATE START DATE                                                       */
012200000000/*                                                                            */
012300000000             IF         COND(&F1STDT *EQ '      ' *OR &F1STDT *EQ +
012400000000                          '000000') THEN(CHGVAR VAR(&WKSTDT) +
012500000000                          VALUE('        '))
012600000000/*                                                                            */
012700000000             ELSE       CMD(DO)
012800000000/*                                                                            */
012900000000             CVTDAT     DATE(&F1STDT) TOVAR(&WKSTDT) FROMFMT(*MDY) +
013000000000                          TOFMT(*YYMD) TOSEP(*NONE)
013100000000/*                                                                            */
013200000000             MONMSG     MSGID(CPF0000) EXEC(DO)
013300000000                        CHGVAR     VAR(&IN74) VALUE('1')
013400000000                        GOTO       CMDLBL(PROMPT)
013500000000                        ENDDO
013600000000/*                                                                            */
013700000000             ENDDO
013800000000/*                                                                            */
013900000000/*  VALIDATE EXPIRATION DATE                                                  */
014000000000/*                                                                            */
014100000000             CVTDAT     DATE(&F1EXDT) TOVAR(&WKEXDT) FROMFMT(*MDY) +
014200000000                          TOFMT(*YYMD) TOSEP(*NONE)
014300000000/*                                                                            */
014400000000             MONMSG     MSGID(CPF0000) EXEC(DO)
014500000000                        CHGVAR     VAR(&IN73) VALUE('1')
014600000000                        GOTO       CMDLBL(PROMPT)
014700000000                        ENDDO
014800000000/*                                                                            */
014900000000             IF         COND(&WKSTDT *GT &WKEXDT) THEN(DO)
015000000000                        CHGVAR     VAR(&IN73) VALUE('1')
015100000000                        GOTO       CMDLBL(PROMPT)
015200000000                        ENDDO
015300000000/*                                                                            */
015400000000/*  UPDATE CONTRACT RECORDS                                                   */
015500000000/*                                                                            */
015600000000             CHGVAR     VAR(&WKDIFD) VALUE(&F1DIFD)
015700000000             CHGVAR     VAR(&WKDIFP) VALUE(&F1DIFP)
015800000000             CHGVAR     VAR(&WKRUPD) VALUE(0)
015900000000/*                                                                            */
016000000000             CALL       PGM(CONUPD) PARM(&F1CPCC &F1ITCL &F1ITSC +
016100000000                          &WKDIFD &WKDIFP &WKSTDT &WKEXDT &WKRUPD)
016200000000/*                                                                            */
016300000000/*  REFRESH SCREEN AND REPROMPT                                               */
016400000000/*                                                                            */
016500000000             CHGVAR     VAR(&FSITCL) VALUE(&F1ITCL)
016600000000             CHGVAR     VAR(&FSITSC) VALUE(&F1ITSC)
016700000000             CHGVAR     VAR(&FSCPCC) VALUE(&F1CPCC)
016800000000             CHGVAR     VAR(&FSDIFD) VALUE(&F1DIFD)
016900000000             CHGVAR     VAR(&FSDIFP) VALUE(&F1DIFP)
017000000000             CHGVAR     VAR(&FSRUPD) VALUE(&WKRUPD)
017100000000/*                                                                            */
017200000000             IF         COND(&F1STDT *GT '000000') THEN(CVTDAT +
017300000000                          DATE(&F1STDT) TOVAR(&FSSTDT) +
017400000000                          FROMFMT(*MDY) TOFMT(*USA))
017500000000/*                                                                            */
017600000000             ELSE       CMD(CHGVAR VAR(&FSSTDT) VALUE('          '))
017700000000/*                                                                            */
017800000000             IF         COND(&F1EXDT *GT '000000') THEN(CVTDAT +
017900000000                          DATE(&F1EXDT) TOVAR(&FSEXDT) +
018000000000                          FROMFMT(*MDY) TOFMT(*USA))
018100000000/*                                                                            */
018200000000             ELSE       CMD(CHGVAR VAR(&FSEXDT) VALUE('          '))
018300000000/*                                                                            */
018400000000             CHGVAR     VAR(&F1ITCL) VALUE('  ')
018500000000             CHGVAR     VAR(&F1ITSC) VALUE('  ')
018600000000             CHGVAR     VAR(&F1CPCC) VALUE(' ')
018700000000             CHGVAR     VAR(&F1DIFD) VALUE(0)
018800000000             CHGVAR     VAR(&F1DIFP) VALUE(0)
018900000000             CHGVAR     VAR(&F1STDT) VALUE('      ')
019000000000             CHGVAR     VAR(&F1EXDT) VALUE('      ')
019100000000/*                                                                            */
019200000000             GOTO       CMDLBL(PROMPT)
019300000000/*                                                                            */
019400000000 EXIT:       ENDPGM
019500000000/*                                                                            */
019600000000/******************************************************************************/
