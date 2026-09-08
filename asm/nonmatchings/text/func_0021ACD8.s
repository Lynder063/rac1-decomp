.align 3
nonmatching func_0021ACD8, 0x90

glabel func_0021ACD8
    /* 11BC58 0021ACD8 1D00023C */  lui        $v0, %hi(D_001D5F70)
    /* 11BC5C 0021ACDC 705F4524 */  addiu      $a1, $v0, %lo(D_001D5F70)
    /* 11BC60 0021ACE0 2D304000 */  daddu      $a2, $v0, $zero
    /* 11BC64 0021ACE4 0400A38C */  lw         $v1, 0x4($a1)
    /* 11BC68 0021ACE8 4000628C */  lw         $v0, 0x40($v1)
    /* 11BC6C 0021ACEC 03004410 */  beq        $v0, $a0, .L0021ACFC
    /* 11BC70 0021ACF0 1400033C */   lui       $v1, %hi(D_0013CA40)
    /* 11BC74 0021ACF4 0800E003 */  jr         $ra
    /* 11BC78 0021ACF8 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0021ACFC:
    /* 11BC7C 0021ACFC 2D206000 */  daddu      $a0, $v1, $zero
    /* 11BC80 0021AD00 40CA6324 */  addiu      $v1, $v1, %lo(D_0013CA40)
    /* 11BC84 0021AD04 C401628C */  lw         $v0, 0x1C4($v1)
    /* 11BC88 0021AD08 000D4230 */  andi       $v0, $v0, 0xD00
    /* 11BC8C 0021AD0C 06004010 */  beqz       $v0, .L0021AD28
    /* 11BC90 0021AD10 40CA8324 */   addiu     $v1, $a0, %lo(D_0013CA40)
    /* 11BC94 0021AD14 2401A28C */  lw         $v0, 0x124($a1)
    /* 11BC98 0021AD18 04004054 */  bnel       $v0, $zero, .L0021AD2C
    /* 11BC9C 0021AD1C C401628C */   lw        $v0, 0x1C4($v1)
    /* 11BCA0 0021AD20 0800E003 */  jr         $ra
    /* 11BCA4 0021AD24 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0021AD28:
    /* 11BCA8 0021AD28 C401628C */  lw         $v0, 0x1C4($v1)
.align 2
  .L0021AD2C:
    /* 11BCAC 0021AD2C 10004230 */  andi       $v0, $v0, 0x10
    /* 11BCB0 0021AD30 0A004010 */  beqz       $v0, .L0021AD5C
    /* 11BCB4 0021AD34 705FC324 */   addiu     $v1, $a2, %lo(D_001D5F70)
    /* 11BCB8 0021AD38 0400628C */  lw         $v0, 0x4($v1)
    /* 11BCBC 0021AD3C 3800428C */  lw         $v0, 0x38($v0)
    /* 11BCC0 0021AD40 04004050 */  beql       $v0, $zero, .L0021AD54
    /* 11BCC4 0021AD44 2401638C */   lw        $v1, 0x124($v1)
    /* 11BCC8 0021AD48 080062AC */  sw         $v0, 0x8($v1)
    /* 11BCCC 0021AD4C 0800E003 */  jr         $ra
    /* 11BCD0 0021AD50 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0021AD54:
    /* 11BCD4 0021AD54 02006010 */  beqz       $v1, .L0021AD60
    /* 11BCD8 0021AD58 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0021AD5C:
    /* 11BCDC 0021AD5C 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0021AD60:
    /* 11BCE0 0021AD60 0800E003 */  jr         $ra
    /* 11BCE4 0021AD64 00000000 */   nop
endlabel func_0021ACD8
