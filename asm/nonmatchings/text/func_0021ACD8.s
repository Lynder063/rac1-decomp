.align 3
nonmatching func_0021ACD8, 0x90

glabel func_0021ACD8
    /* 11BC58 0021ACD8 1D00023C */  lui        $2, %hi(D_001D5F70)
    /* 11BC5C 0021ACDC 705F4524 */  addiu      $5, $2, %lo(D_001D5F70)
    /* 11BC60 0021ACE0 2D304000 */  daddu      $6, $2, $0
    /* 11BC64 0021ACE4 0400A38C */  lw         $3, 0x4($5)
    /* 11BC68 0021ACE8 4000628C */  lw         $2, 0x40($3)
    /* 11BC6C 0021ACEC 03004410 */  beq        $2, $4, .L0021ACFC
    /* 11BC70 0021ACF0 1400033C */   lui       $3, %hi(D_0013CA40)
    /* 11BC74 0021ACF4 0800E003 */  jr         $31
    /* 11BC78 0021ACF8 2D100000 */   daddu     $2, $0, $0
.align 2
  .L0021ACFC:
    /* 11BC7C 0021ACFC 2D206000 */  daddu      $4, $3, $0
    /* 11BC80 0021AD00 40CA6324 */  addiu      $3, $3, %lo(D_0013CA40)
    /* 11BC84 0021AD04 C401628C */  lw         $2, 0x1C4($3)
    /* 11BC88 0021AD08 000D4230 */  andi       $2, $2, 0xD00
    /* 11BC8C 0021AD0C 06004010 */  beqz       $2, .L0021AD28
    /* 11BC90 0021AD10 40CA8324 */   addiu     $3, $4, %lo(D_0013CA40)
    /* 11BC94 0021AD14 2401A28C */  lw         $2, 0x124($5)
    /* 11BC98 0021AD18 04004054 */  bnel       $2, $0, .L0021AD2C
    /* 11BC9C 0021AD1C C401628C */   lw        $2, 0x1C4($3)
    /* 11BCA0 0021AD20 0800E003 */  jr         $31
    /* 11BCA4 0021AD24 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0021AD28:
    /* 11BCA8 0021AD28 C401628C */  lw         $2, 0x1C4($3)
.align 2
  .L0021AD2C:
    /* 11BCAC 0021AD2C 10004230 */  andi       $2, $2, 0x10
    /* 11BCB0 0021AD30 0A004010 */  beqz       $2, .L0021AD5C
    /* 11BCB4 0021AD34 705FC324 */   addiu     $3, $6, %lo(D_001D5F70)
    /* 11BCB8 0021AD38 0400628C */  lw         $2, 0x4($3)
    /* 11BCBC 0021AD3C 3800428C */  lw         $2, 0x38($2)
    /* 11BCC0 0021AD40 04004050 */  beql       $2, $0, .L0021AD54
    /* 11BCC4 0021AD44 2401638C */   lw        $3, 0x124($3)
    /* 11BCC8 0021AD48 080062AC */  sw         $2, 0x8($3)
    /* 11BCCC 0021AD4C 0800E003 */  jr         $31
    /* 11BCD0 0021AD50 2D100000 */   daddu     $2, $0, $0
.align 2
  .L0021AD54:
    /* 11BCD4 0021AD54 02006010 */  beqz       $3, .L0021AD60
    /* 11BCD8 0021AD58 FFFF0224 */   addiu     $2, $0, -0x1
.align 2
  .L0021AD5C:
    /* 11BCDC 0021AD5C 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0021AD60:
    /* 11BCE0 0021AD60 0800E003 */  jr         $31
    /* 11BCE4 0021AD64 00000000 */   nop
endlabel func_0021ACD8
