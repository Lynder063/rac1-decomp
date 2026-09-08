.align 3
nonmatching func_0023CD10, 0x18

glabel func_0023CD10
    /* 13DC90 0023CD10 0500023C */  lui        $2, (0x50000 >> 16)
    /* 13DC94 0023CD14 21208200 */  addu       $4, $4, $2
    /* 13DC98 0023CD18 080082AC */  sw         $2, (0x50008 & 0xFFFF)($4)
    /* 13DC9C 0023CD1C 040080AC */  sw         $0, (0x50004 & 0xFFFF)($4)
    /* 13DCA0 0023CD20 0800E003 */  jr         $31
    /* 13DCA4 0023CD24 000080AC */   sw        $0, (0x50000 & 0xFFFF)($4)
endlabel func_0023CD10
