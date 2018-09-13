000100000000
000200000000      /copy qcpysrc,hcontrol
000300000000
000400000000     far201m01fmcf   e             workstn                                      mods window
000500000000
000600000000     c     *entry        plist                                                  entry parameters
000700000000     c                   parm                    cmpnum            2 0          company number
000800000000     c                   parm                    cusnum           10 0          coustomer number
000900000000
001000000000      /free
001100000000
001200000000       exec sql
001300000000         select cxemad, cxwsad into :f1emad, :f1wsad from cusmsext
001400000000           where cxcono = :cmpnum and cxcsno = :cusnum;                      // retrieve window data
001500000000
001600000000       exfmt ar201m01f1;                                                     // display mods window
001700000000
001800000000       *inlr = *on;
001900000000
002000000000      /end-free
002100000000
