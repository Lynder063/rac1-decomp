.align 3
nonmatching func_0011B090, 0x1C

glabel func_0011B090
    /* 1C010 0011B090 1000838C */  lw         $v1, 0x10($a0)
    /* 1C014 0011B094 FFFF023C */  lui        $v0, (0xFFFFFFFE >> 16)
    /* 1C018 0011B098 FEFF4234 */  ori        $v0, $v0, (0xFFFFFFFE & 0xFFFF)
    /* 1C01C 0011B09C 180080AC */  sw         $zero, 0x18($a0)
    /* 1C020 0011B0A0 24186200 */  and        $v1, $v1, $v0
    /* 1C024 0011B0A4 0800E003 */  jr         $ra
    /* 1C028 0011B0A8 100083AC */   sw        $v1, 0x10($a0)
endlabel func_0011B090
    /* 1C02C 0011B0AC 00000000 */  nop
