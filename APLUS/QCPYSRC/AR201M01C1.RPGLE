000100000000     c*
000200000000     c*  A/R Inquiry (AR201) Mod 01
000300000000     c*  Insert immediately after EXFMT of format HEADER
000400000000     c*
000500000000     c                   if        not *inkc or *inkl                           if not F3 or F12
000600000000     c*
000700000000     c                   call      'AR201M01R1'                                 window program
000800000000     c                   parm      k5cono        cmpnum            2 0          company number
000900000000     c                   parm      k5csno        cusnum           10 0          coustomer number
001000000000     c*
001100000000     c                   endif                                                  if not F3 or F12
001200000000     c*
