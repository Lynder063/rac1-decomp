.align 3
nonmatching func_00120BC0, 0x94

glabel func_00120BC0
    /* 21B40 00120BC0 1300023C */  lui        $v0, %hi(D_001313D4)
    /* 21B44 00120BC4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 21B48 00120BC8 D413438C */  lw         $v1, %lo(D_001313D4)($v0)
    /* 21B4C 00120BCC 1000BFFF */  sd         $ra, 0x10($sp)
    /* 21B50 00120BD0 09006010 */  beqz       $v1, .L00120BF8
    /* 21B54 00120BD4 0000B0FF */   sd        $s0, 0x0($sp)
    /* 21B58 00120BD8 1300033C */  lui        $v1, %hi(D_00131414)
    /* 21B5C 00120BDC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 21B60 00120BE0 141462AC */  sw         $v0, %lo(D_00131414)($v1)
    /* 21B64 00120BE4 1300103C */  lui        $s0, %hi(D_001313E0)
    /* 21B68 00120BE8 2463040C */  jal        func_00118C90
    /* 21B6C 00120BEC E013048E */   lw        $a0, %lo(D_001313E0)($s0)
    /* 21B70 00120BF0 03000010 */  b          .L00120C00
    /* 21B74 00120BF4 1300023C */   lui       $v0, %hi(D_001313E8)
.align 2
  .L00120BF8:
    /* 21B78 00120BF8 1300103C */  lui        $s0, %hi(D_001313E0)
    /* 21B7C 00120BFC 1300023C */  lui        $v0, %hi(D_001313E8)
.align 2
  .L00120C00:
    /* 21B80 00120C00 2063040C */  jal        func_00118C80
    /* 21B84 00120C04 E813448C */   lw        $a0, %lo(D_001313E8)($v0)
    /* 21B88 00120C08 1300033C */  lui        $v1, %hi(D_001313EC)
    /* 21B8C 00120C0C 2063040C */  jal        func_00118C80
    /* 21B90 00120C10 EC13648C */   lw        $a0, %lo(D_001313EC)($v1)
    /* 21B94 00120C14 2063040C */  jal        func_00118C80
    /* 21B98 00120C18 E013048E */   lw        $a0, %lo(D_001313E0)($s0)
    /* 21B9C 00120C1C 5876040C */  jal        func_0011D960
    /* 21BA0 00120C20 00000000 */   nop
    /* 21BA4 00120C24 0080043C */  lui        $a0, (0x80000012 >> 16)
    /* 21BA8 00120C28 2D804000 */  daddu      $s0, $v0, $zero
    /* 21BAC 00120C2C 9A6A040C */  jal        func_0011AA68
    /* 21BB0 00120C30 12008434 */   ori       $a0, $a0, (0x80000012 & 0xFFFF)
    /* 21BB4 00120C34 04000012 */  beqz       $s0, .L00120C48
    /* 21BB8 00120C38 1000BFDF */   ld        $ra, 0x10($sp)
    /* 21BBC 00120C3C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 21BC0 00120C40 6A760408 */  j          func_0011D9A8
    /* 21BC4 00120C44 2000BD27 */   addiu     $sp, $sp, 0x20
.align 2
  .L00120C48:
    /* 21BC8 00120C48 0000B0DF */  ld         $s0, 0x0($sp)
    /* 21BCC 00120C4C 0800E003 */  jr         $ra
    /* 21BD0 00120C50 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00120BC0
    /* 21BD4 00120C54 00000000 */  nop
