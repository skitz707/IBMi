000100080111     h option(*srcstmt) debug
000200080122
000300080122     d epoch_date      s              8f
000400080122     d float8          s              8f
000500080122     d timestamp       s               z
000600080122     d tstamp          s            255a   varying
000700080122     d pict            s            255a   varying inz('YYYY-MM-DD')
000800080122
000900080122     d qusec           s             12a
001000080122     d CEESECS         pr                  extproc('CEESECS') opdesc
001100080122     d                              255a   varying
001200080122     d                              255a   varying
001300080122     d                                8f
001400080122     d                               12a
001500080122
001600080122      /free
001700080122        timestamp      = %date();
001800080122        tstamp         = %char(timestamp);
001900080122        callp CEESECS(tstamp:pict:float8:qusec);
002000080122
002100080122        dsply float8;
002200080122
002300080122        *inlr = *on;
002400080122
002500080122      /end-free
