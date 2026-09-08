.align 3
nonmatching func_0012BC78, 0x50

glabel func_0012BC78
    /* 2CBF8 0012BC78 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2CBFC 0012BC7C 2D380000 */  daddu      $a3, $zero, $zero
    /* 2CC00 0012BC80 0D008010 */  beqz       $a0, .L0012BCB8
    /* 2CC04 0012BC84 0000BFFF */   sd        $ra, 0x0($sp)
    /* 2CC08 0012BC88 4000868C */  lw         $a2, 0x40($a0)
    /* 2CC0C 0012BC8C 0B00C010 */  beqz       $a2, .L0012BCBC
    /* 2CC10 0012BC90 0000BFDF */   ld        $ra, 0x0($sp)
    /* 2CC14 0012BC94 0000A28C */  lw         $v0, 0x0($a1)
    /* 2CC18 0012BC98 C0100200 */  sll        $v0, $v0, 3
    /* 2CC1C 0012BC9C 2118C200 */  addu       $v1, $a2, $v0
    /* 2CC20 0012BCA0 0C00638C */  lw         $v1, 0xC($v1)
    /* 2CC24 0012BCA4 05006010 */  beqz       $v1, .L0012BCBC
    /* 2CC28 0012BCA8 2110C200 */   addu      $v0, $a2, $v0
    /* 2CC2C 0012BCAC 09F86000 */  jalr       $v1
    /* 2CC30 0012BCB0 1000468C */   lw        $a2, 0x10($v0)
    /* 2CC34 0012BCB4 2D384000 */  daddu      $a3, $v0, $zero
.align 2
  .L0012BCB8:
    /* 2CC38 0012BCB8 0000BFDF */  ld         $ra, 0x0($sp)
.align 2
  .L0012BCBC:
    /* 2CC3C 0012BCBC 2D10E000 */  daddu      $v0, $a3, $zero
    /* 2CC40 0012BCC0 0800E003 */  jr         $ra
    /* 2CC44 0012BCC4 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012BC78
