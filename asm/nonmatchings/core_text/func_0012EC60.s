.align 3
nonmatching func_0012EC60, 0xAC

glabel func_0012EC60
    /* 2FBE0 0012EC60 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 2FBE4 0012EC64 8C80838F */  lw         $v1, -0x7F74($gp)
    /* 2FBE8 0012EC68 4000B37F */  sq         $s3, 0x40($sp)
    /* 2FBEC 0012EC6C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2FBF0 0012EC70 3000B27F */  sq         $s2, 0x30($sp)
    /* 2FBF4 0012EC74 2D98E000 */  daddu      $s3, $a3, $zero
    /* 2FBF8 0012EC78 2000B17F */  sq         $s1, 0x20($sp)
    /* 2FBFC 0012EC7C 2D90C000 */  daddu      $s2, $a2, $zero
    /* 2FC00 0012EC80 1000B07F */  sq         $s0, 0x10($sp)
    /* 2FC04 0012EC84 2D88A000 */  daddu      $s1, $a1, $zero
    /* 2FC08 0012EC88 5000BF7F */  sq         $ra, 0x50($sp)
    /* 2FC0C 0012EC8C 03006214 */  bne        $v1, $v0, .L0012EC9C
    /* 2FC10 0012EC90 2D808000 */   daddu     $s0, $a0, $zero
    /* 2FC14 0012EC94 16000010 */  b          .L0012ECF0
    /* 2FC18 0012EC98 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0012EC9C:
    /* 2FC1C 0012EC9C C880828F */  lw         $v0, -0x7F38($gp)
    /* 2FC20 0012ECA0 08004010 */  beqz       $v0, .L0012ECC4
    /* 2FC24 0012ECA4 00000000 */   nop
.align 2
  .L0012ECA8:
    /* 2FC28 0012ECA8 70B7040C */  jal        func_0012DDC0
    /* 2FC2C 0012ECAC 00000000 */   nop
    /* 2FC30 0012ECB0 00000000 */  nop
    /* 2FC34 0012ECB4 00000000 */  nop
    /* 2FC38 0012ECB8 00000000 */  nop
    /* 2FC3C 0012ECBC FAFF4014 */  bnez       $v0, .L0012ECA8
    /* 2FC40 0012ECC0 00000000 */   nop
.align 2
  .L0012ECC4:
    /* 2FC44 0012ECC4 D2BB040C */  jal        func_0012EF48
    /* 2FC48 0012ECC8 2D200000 */   daddu     $a0, $zero, $zero
    /* 2FC4C 0012ECCC 0000B0AF */  sw         $s0, 0x0($sp)
    /* 2FC50 0012ECD0 2A000424 */  addiu      $a0, $zero, 0x2A
    /* 2FC54 0012ECD4 0400B1AF */  sw         $s1, 0x4($sp)
    /* 2FC58 0012ECD8 10000524 */  addiu      $a1, $zero, 0x10
    /* 2FC5C 0012ECDC 0800B2AF */  sw         $s2, 0x8($sp)
    /* 2FC60 0012ECE0 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2FC64 0012ECE4 A2B9040C */  jal        func_0012E688
    /* 2FC68 0012ECE8 0C00B3AF */   sw        $s3, 0xC($sp)
    /* 2FC6C 0012ECEC 8C8082AF */  sw         $v0, -0x7F74($gp)
.align 2
  .L0012ECF0:
    /* 2FC70 0012ECF0 5000BF7B */  lq         $ra, 0x50($sp)
    /* 2FC74 0012ECF4 4000B37B */  lq         $s3, 0x40($sp)
    /* 2FC78 0012ECF8 3000B27B */  lq         $s2, 0x30($sp)
    /* 2FC7C 0012ECFC 2000B17B */  lq         $s1, 0x20($sp)
    /* 2FC80 0012ED00 1000B07B */  lq         $s0, 0x10($sp)
    /* 2FC84 0012ED04 0800E003 */  jr         $ra
    /* 2FC88 0012ED08 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0012EC60
    /* 2FC8C 0012ED0C 00000000 */  nop
