.align 3
nonmatching func_0011B090, 0x1C

glabel func_0011B090
    /* 1C010 0011B090 1000838C */  lw         $3, 0x10($4)
    /* 1C014 0011B094 FFFF023C */  lui        $2, (0xFFFFFFFE >> 16)
    /* 1C018 0011B098 FEFF4234 */  ori        $2, $2, (0xFFFFFFFE & 0xFFFF)
    /* 1C01C 0011B09C 180080AC */  sw         $0, 0x18($4)
    /* 1C020 0011B0A0 24186200 */  and        $3, $3, $2
    /* 1C024 0011B0A4 0800E003 */  jr         $31
    /* 1C028 0011B0A8 100083AC */   sw        $3, 0x10($4)
endlabel func_0011B090
    /* 1C02C 0011B0AC 00000000 */  nop
