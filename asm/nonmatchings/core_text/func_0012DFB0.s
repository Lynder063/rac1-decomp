.align 3
nonmatching func_0012DFB0, 0x88

glabel func_0012DFB0
    /* 2EF30 0012DFB0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2EF34 0012DFB4 0000BF7F */  sq         $ra, 0x0($sp)
    /* 2EF38 0012DFB8 6063040C */  jal        func_00118D80
    /* 2EF3C 0012DFBC 2D200000 */   daddu     $a0, $zero, $zero
    /* 2EF40 0012DFC0 8080828F */  lw         $v0, -0x7F80($gp)
    /* 2EF44 0012DFC4 03004054 */  bnel       $v0, $zero, .L0012DFD4
    /* 2EF48 0012DFC8 1600043C */   lui       $a0, %hi(D_0015ECC0)
    /* 2EF4C 0012DFCC 17000010 */  b          .L0012E02C
    /* 2EF50 0012DFD0 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0012DFD4:
    /* 2EF54 0012DFD4 AE6D040C */  jal        func_0011B6B8
    /* 2EF58 0012DFD8 C0EC8424 */   addiu     $a0, $a0, %lo(D_0015ECC0)
    /* 2EF5C 0012DFDC 13004014 */  bnez       $v0, .L0012E02C
    /* 2EF60 0012DFE0 2D100000 */   daddu     $v0, $zero, $zero
    /* 2EF64 0012DFE4 8080838F */  lw         $v1, -0x7F80($gp)
    /* 2EF68 0012DFE8 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 2EF6C 0012DFEC FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 2EF70 0012DFF0 0000648C */  lw         $a0, 0x0($v1)
    /* 2EF74 0012DFF4 0A008254 */  bnel       $a0, $v0, .L0012E020
    /* 2EF78 0012DFF8 1500043C */   lui       $a0, %hi(D_00153D98)
    /* 2EF7C 0012DFFC 8480828F */  lw         $v0, -0x7F7C($gp)
    /* 2EF80 0012E000 80100200 */  sll        $v0, $v0, 2
    /* 2EF84 0012E004 21104300 */  addu       $v0, $v0, $v1
    /* 2EF88 0012E008 0400438C */  lw         $v1, 0x4($v0)
    /* 2EF8C 0012E00C 04006414 */  bne        $v1, $a0, .L0012E020
    /* 2EF90 0012E010 1500043C */   lui       $a0, %hi(D_00153D98)
    /* 2EF94 0012E014 808080AF */  sw         $zero, -0x7F80($gp)
    /* 2EF98 0012E018 04000010 */  b          .L0012E02C
    /* 2EF9C 0012E01C 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0012E020:
    /* 2EFA0 0012E020 1E58040C */  jal        func_00116078
    /* 2EFA4 0012E024 983D8424 */   addiu     $a0, $a0, %lo(D_00153D98)
    /* 2EFA8 0012E028 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0012E02C:
    /* 2EFAC 0012E02C 0000BF7B */  lq         $ra, 0x0($sp)
    /* 2EFB0 0012E030 0800E003 */  jr         $ra
    /* 2EFB4 0012E034 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012DFB0
