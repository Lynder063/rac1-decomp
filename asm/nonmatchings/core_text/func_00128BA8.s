.align 3
nonmatching func_00128BA8, 0x7C

glabel func_00128BA8
    /* 29B28 00128BA8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 29B2C 00128BAC 0000B0FF */  sd         $s0, 0x0($sp)
    /* 29B30 00128BB0 2D808000 */  daddu      $s0, $a0, $zero
    /* 29B34 00128BB4 2000BFFF */  sd         $ra, 0x20($sp)
    /* 29B38 00128BB8 64A1040C */  jal        func_00128590
    /* 29B3C 00128BBC 1000B1FF */   sd        $s1, 0x10($sp)
    /* 29B40 00128BC0 0010023C */  lui        $v0, (0x10002020 >> 16)
    /* 29B44 00128BC4 20204234 */  ori        $v0, $v0, (0x10002020 & 0xFFFF)
    /* 29B48 00128BC8 0000438C */  lw         $v1, 0x0($v0)
    /* 29B4C 00128BCC 07006330 */  andi       $v1, $v1, 0x7
    /* 29B50 00128BD0 23180300 */  negu       $v1, $v1
    /* 29B54 00128BD4 07006530 */  andi       $a1, $v1, 0x7
    /* 29B58 00128BD8 0700A010 */  beqz       $a1, .L00128BF8
    /* 29B5C 00128BDC 01001124 */   addiu     $s1, $zero, 0x1
    /* 29B60 00128BE0 5AA2040C */  jal        func_00128968
    /* 29B64 00128BE4 2D200002 */   daddu     $a0, $s0, $zero
    /* 29B68 00128BE8 03000010 */  b          .L00128BF8
    /* 29B6C 00128BEC 01001124 */   addiu     $s1, $zero, 0x1
.align 2
  .L00128BF0:
    /* 29B70 00128BF0 5AA2040C */  jal        func_00128968
    /* 29B74 00128BF4 00000000 */   nop
.align 2
  .L00128BF8:
    /* 29B78 00128BF8 2D200002 */  daddu      $a0, $s0, $zero
    /* 29B7C 00128BFC 18A2040C */  jal        func_00128860
    /* 29B80 00128C00 18000524 */   addiu     $a1, $zero, 0x18
    /* 29B84 00128C04 2D200002 */  daddu      $a0, $s0, $zero
    /* 29B88 00128C08 F9FF5114 */  bne        $v0, $s1, .L00128BF0
    /* 29B8C 00128C0C 08000524 */   addiu     $a1, $zero, 0x8
    /* 29B90 00128C10 2000BFDF */  ld         $ra, 0x20($sp)
    /* 29B94 00128C14 1000B1DF */  ld         $s1, 0x10($sp)
    /* 29B98 00128C18 0000B0DF */  ld         $s0, 0x0($sp)
    /* 29B9C 00128C1C 0800E003 */  jr         $ra
    /* 29BA0 00128C20 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00128BA8
    /* 29BA4 00128C24 00000000 */  nop
