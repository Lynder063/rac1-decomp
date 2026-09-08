.align 3
nonmatching func_00123BA0, 0x90

glabel func_00123BA0
    /* 24B20 00123BA0 0020023C */  lui        $v0, (0x20000004 >> 16)
    /* 24B24 00123BA4 25208200 */  or         $a0, $a0, $v0
    /* 24B28 00123BA8 0000828C */  lw         $v0, (0x20000000 & 0xFFFF)($a0)
    /* 24B2C 00123BAC 0F004050 */  beql       $v0, $zero, .L00123BEC
    /* 24B30 00123BB0 0400828C */   lw        $v0, (0x20000004 & 0xFFFF)($a0)
    /* 24B34 00123BB4 0800868C */  lw         $a2, (0x20000008 & 0xFFFF)($a0)
    /* 24B38 00123BB8 0B004018 */  blez       $v0, .L00123BE8
    /* 24B3C 00123BBC 2D280000 */   daddu     $a1, $zero, $zero
    /* 24B40 00123BC0 10008724 */  addiu      $a3, $a0, %lo(D_20000010)
    /* 24B44 00123BC4 00000000 */  nop
.align 2
  .L00123BC8:
    /* 24B48 00123BC8 2110E500 */  addu       $v0, $a3, $a1
    /* 24B4C 00123BCC 00004390 */  lbu        $v1, 0x0($v0)
    /* 24B50 00123BD0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 24B54 00123BD4 0000C3A0 */  sb         $v1, 0x0($a2)
    /* 24B58 00123BD8 0000828C */  lw         $v0, (0x20000000 & 0xFFFF)($a0)
    /* 24B5C 00123BDC 2A10A200 */  slt        $v0, $a1, $v0
    /* 24B60 00123BE0 F9FF4014 */  bnez       $v0, .L00123BC8
    /* 24B64 00123BE4 0100C624 */   addiu     $a2, $a2, 0x1
.align 2
  .L00123BE8:
    /* 24B68 00123BE8 0400828C */  lw         $v0, (0x20000004 & 0xFFFF)($a0)
.align 2
  .L00123BEC:
    /* 24B6C 00123BEC 0E004010 */  beqz       $v0, .L00123C28
    /* 24B70 00123BF0 00000000 */   nop
    /* 24B74 00123BF4 0C00868C */  lw         $a2, (0x2000000C & 0xFFFF)($a0)
    /* 24B78 00123BF8 0B004018 */  blez       $v0, .L00123C28
    /* 24B7C 00123BFC 2D280000 */   daddu     $a1, $zero, $zero
    /* 24B80 00123C00 50008724 */  addiu      $a3, $a0, %lo(D_20000050)
    /* 24B84 00123C04 00000000 */  nop
.align 2
  .L00123C08:
    /* 24B88 00123C08 2110E500 */  addu       $v0, $a3, $a1
    /* 24B8C 00123C0C 00004390 */  lbu        $v1, 0x0($v0)
    /* 24B90 00123C10 0100A524 */  addiu      $a1, $a1, 0x1
    /* 24B94 00123C14 0000C3A0 */  sb         $v1, 0x0($a2)
    /* 24B98 00123C18 0400828C */  lw         $v0, (0x20000004 & 0xFFFF)($a0)
    /* 24B9C 00123C1C 2A10A200 */  slt        $v0, $a1, $v0
    /* 24BA0 00123C20 F9FF4014 */  bnez       $v0, .L00123C08
    /* 24BA4 00123C24 0100C624 */   addiu     $a2, $a2, 0x1
.align 2
  .L00123C28:
    /* 24BA8 00123C28 0800E003 */  jr         $ra
    /* 24BAC 00123C2C 00000000 */   nop
endlabel func_00123BA0
