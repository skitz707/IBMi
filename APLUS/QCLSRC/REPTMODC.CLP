000100000000/******************************************************************************/
000200000000/*                                                                            */
000300000000/*  GEMKO INFORMATION GROUP                                                   */
000400000000/*                                                                            */
000500000000/*  NAME:  REPTMODC                                                           */
000600000000/*  TYPE:  C/L PROGRAM                                                        */
000700000000/*  DESC:  EXTERNALIZED REPORT MODS                                           */
000800000000/*                                                                            */
000900000000/*  NOTE:  THIS PROGRAM COPIES SPOOLED FILE DATA TO A PHYSICAL FILE, AND      */
001000000000/*         CALLS THE SPECIFIED PROGRAM TO APPLY MODIFICATIONS.  IT THEN       */
001100000000/*         CONVERTS BACK TO SPOOLED FILE FORMAT                               */
001200000000/*                                                                            */
001300000000/******************************************************************************/
001400000000
001500000000             PGM        PARM(&FILNAM &JOBNAM &USRPRF &JOBNUM &FILNUM +
001600000000                          &PGMNAM &PGMLIB &QUENAM &QUELIB &USRDTA)
001700000000
001800000000             DCL        VAR(&FILNAM) TYPE(*CHAR) LEN(10)
001900000000             DCL        VAR(&JOBNAM) TYPE(*CHAR) LEN(10)
002000000000             DCL        VAR(&USRPRF) TYPE(*CHAR) LEN(10)
002100000000             DCL        VAR(&JOBNUM) TYPE(*CHAR) LEN(6)
002200000000             DCL        VAR(&FILNUM) TYPE(*CHAR) LEN(4)
002300000000             DCL        VAR(&PGMNAM) TYPE(*CHAR) LEN(10)
002400000000             DCL        VAR(&PGMLIB) TYPE(*CHAR) LEN(10)
002500000000             DCL        VAR(&QUENAM) TYPE(*CHAR) LEN(10)
002600000000             DCL        VAR(&QUELIB) TYPE(*CHAR) LEN(10)
002700000000             DCL        VAR(&USRDTA) TYPE(*CHAR) LEN(10)
002800000000
002900000000             CRTPF      FILE(QTEMP/SPLDTA) RCDLEN(199) SIZE(*NOMAX)
003000000000
003100000000                        MONMSG     MSGID(CPF0000) EXEC(CLRPFM +
003200000000                          FILE(QTEMP/SPLDTA))
003300000000
003400000000 NXTTRY:     CPYSPLF    FILE(&FILNAM) TOFILE(QTEMP/SPLDTA) +
003500000000                          JOB(&JOBNUM/&USRPRF/&JOBNAM) +
003600000000                          SPLNBR(&FILNUM) MBROPT(*ADD) CTLCHAR(*FCFC)
003700000000
003800000000             /* JUST IN CASE SPOOL FILE IS STILL BEING CREATED */
003900000000
004000000000             MONMSG     MSGID(CPF3482) EXEC(DO)
004100000000                        DLYJOB     DLY(5)
004200000000                        GOTO       CMDLBL(NXTTRY)
004300000000                        ENDDO
004400000000
004500000000             DLTSPLF    FILE(&FILNAM) JOB(&JOBNUM/&USRPRF/&JOBNAM) +
004600000000                          SPLNBR(&FILNUM)
004700000000
004800000000                        MONMSG     MSGID(CPF0000)
004900000000
005000000000             OVRDBF     FILE(SPLDTA) TOFILE(QTEMP/SPLDTA)
005100000000
005200000000             CALL       PGM(&PGMLIB/&PGMNAM)
005300000000
005400000000             CRTPRTF    FILE(QTEMP/&FILNAM) PAGESIZE(66 198) +
005500000000                          CPI(15) OVRFLW(63) CTLCHAR(*FCFC)
005600000000
005700000000                        MONMSG     MSGID(CPF0000)
005800000000
005900000000             OVRPRTF    FILE(&FILNAM) TOFILE(QTEMP/&FILNAM) +
006000000000                          OUTQ(&QUELIB/&QUENAM) USRDTA(' ')
006100000000
006200000000             CPYF       FROMFILE(QTEMP/SPLDTA) TOFILE(QTEMP/&FILNAM) +
006300000000                          MBROPT(*ADD) FMTOPT(*NOCHK)
006400000000
006500000000                        MONMSG     MSGID(CPF0000)
006600000000
006700000000 EXIT:       ENDPGM
006800000000
