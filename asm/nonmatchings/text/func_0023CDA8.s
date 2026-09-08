.align 3
nonmatching func_0023CDA8, 0x48

glabel func_0023CDA8
    /* 13DD28 0023CDA8 0500023C */  lui        $2, (0x50004 >> 16)
    /* 13DD2C 0023CDAC 2D388000 */  daddu      $7, $4, $0
    /* 13DD30 0023CDB0 2130E200 */  addu       $6, $7, $2
    /* 13DD34 0023CDB4 0400C28C */  lw         $2, (0x50004 & 0xFFFF)($6)
    /* 13DD38 0023CDB8 0B004010 */  beqz       $2, .L0023CDE8
    /* 13DD3C 0023CDBC 00000000 */   nop
    /* 13DD40 0023CDC0 0000C38C */  lw         $3, (0x50000 & 0xFFFF)($6)
    /* 13DD44 0023CDC4 0800C48C */  lw         $4, (0x50008 & 0xFFFF)($6)
    /* 13DD48 0023CDC8 23186200 */  subu       $3, $3, $2
    /* 13DD4C 0023CDCC 21186400 */  addu       $3, $3, $4
    /* 13DD50 0023CDD0 01008050 */  beql       $4, $0, .L0023CDD8
    /* 13DD54 0023CDD4 CD010000 */   break     0, 7
.align 2
  .L0023CDD8:
    /* 13DD58 0023CDD8 1A006400 */  div        $0, $3, $4
    /* 13DD5C 0023CDDC 10100000 */  mfhi       $2
    /* 13DD60 0023CDE0 2110E200 */  addu       $2, $7, $2
    /* 13DD64 0023CDE4 0000A2AC */  sw         $2, 0x0($5)
.align 2
  .L0023CDE8:
    /* 13DD68 0023CDE8 0800E003 */  jr         $31
    /* 13DD6C 0023CDEC 0400C28C */   lw        $2, (0x50004 & 0xFFFF)($6)
endlabel func_0023CDA8
