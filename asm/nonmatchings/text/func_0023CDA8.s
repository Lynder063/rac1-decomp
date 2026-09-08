.align 3
nonmatching func_0023CDA8, 0x48

glabel func_0023CDA8
    /* 13DD28 0023CDA8 0500023C */  lui        $v0, (0x50004 >> 16)
    /* 13DD2C 0023CDAC 2D388000 */  daddu      $a3, $a0, $zero
    /* 13DD30 0023CDB0 2130E200 */  addu       $a2, $a3, $v0
    /* 13DD34 0023CDB4 0400C28C */  lw         $v0, (0x50004 & 0xFFFF)($a2)
    /* 13DD38 0023CDB8 0B004010 */  beqz       $v0, .L0023CDE8
    /* 13DD3C 0023CDBC 00000000 */   nop
    /* 13DD40 0023CDC0 0000C38C */  lw         $v1, (0x50000 & 0xFFFF)($a2)
    /* 13DD44 0023CDC4 0800C48C */  lw         $a0, (0x50008 & 0xFFFF)($a2)
    /* 13DD48 0023CDC8 23186200 */  subu       $v1, $v1, $v0
    /* 13DD4C 0023CDCC 21186400 */  addu       $v1, $v1, $a0
    /* 13DD50 0023CDD0 01008050 */  beql       $a0, $zero, .L0023CDD8
    /* 13DD54 0023CDD4 CD010000 */   break     0, 7
.align 2
  .L0023CDD8:
    /* 13DD58 0023CDD8 1A006400 */  div        $zero, $v1, $a0
    /* 13DD5C 0023CDDC 10100000 */  mfhi       $v0
    /* 13DD60 0023CDE0 2110E200 */  addu       $v0, $a3, $v0
    /* 13DD64 0023CDE4 0000A2AC */  sw         $v0, 0x0($a1)
.align 2
  .L0023CDE8:
    /* 13DD68 0023CDE8 0800E003 */  jr         $ra
    /* 13DD6C 0023CDEC 0400C28C */   lw        $v0, (0x50004 & 0xFFFF)($a2)
endlabel func_0023CDA8
