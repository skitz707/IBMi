000100080111     h option(*srcstmt) debug
000200080108
000300080108
000400080108     d imgbef        e ds                  extname(orhed) based(bptr) qualified
000500080108     d imgaft        e ds                  extname(orhed) based(aptr) qualified
000600080108
000700080108
000800080108
000900080108     d/copy qrpglesrc,trigheader
001000080108
001100080108      /free
001200080108        if imgbef.ohorst <> '4' AND imgaft.ohorst = '4';
001300080111        exec sql INSERT INTO queue (ohorno, ohorgn, shptyp, is_new,
001400080111           whidnm, isprnt)
001500080111              VALUES (:imgaft.ohorno, :imgaft.ohorgn, :imgaft.ohcacd, '1',
001600080111                  :imgaft.ohwhid, '0');
001700080108        endif;
001800080108
001900080108        *inlr = *on;
002000080108
002100080108      /end-free
