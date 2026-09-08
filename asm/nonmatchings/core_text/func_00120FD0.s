.align 3
nonmatching func_00120FD0, 0x6C

glabel func_00120FD0
    /* 21F50 00120FD0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 21F54 00120FD4 1000BFFF */  sd         $ra, 0x10($sp)
    /* 21F58 00120FD8 11008014 */  bnez       $a0, .L00121020
    /* 21F5C 00120FDC 0000B0FF */   sd        $s0, 0x0($sp)
    /* 21F60 00120FE0 1300023C */  lui        $v0, %hi(D_001313D0)
    /* 21F64 00120FE4 D013438C */  lw         $v1, %lo(D_001313D0)($v0)
    /* 21F68 00120FE8 03006018 */  blez       $v1, .L00120FF8
    /* 21F6C 00120FEC 1500043C */   lui       $a0, %hi(D_00153000)
    /* 21F70 00120FF0 B269040C */  jal        func_0011A6C8
    /* 21F74 00120FF4 00308424 */   addiu     $a0, $a0, %lo(D_00153000)
.align 2
  .L00120FF8:
    /* 21F78 00120FF8 03000010 */  b          .L00121008
    /* 21F7C 00120FFC 1300103C */   lui       $s0, %hi(D_00132E08)
.align 2
  .L00121000:
    /* 21F80 00121000 4482040C */  jal        func_00120910
    /* 21F84 00121004 3C000424 */   addiu     $a0, $zero, 0x3C
.align 2
  .L00121008:
    /* 21F88 00121008 AE6D040C */  jal        func_0011B6B8
    /* 21F8C 0012100C 082E0426 */   addiu     $a0, $s0, %lo(D_00132E08)
    /* 21F90 00121010 FBFF4014 */  bnez       $v0, .L00121000
    /* 21F94 00121014 2D100000 */   daddu     $v0, $zero, $zero
    /* 21F98 00121018 05000010 */  b          .L00121030
    /* 21F9C 0012101C 1000BFDF */   ld        $ra, 0x10($sp)
.align 2
  .L00121020:
    /* 21FA0 00121020 1300043C */  lui        $a0, %hi(D_00132E08)
    /* 21FA4 00121024 AE6D040C */  jal        func_0011B6B8
    /* 21FA8 00121028 082E8424 */   addiu     $a0, $a0, %lo(D_00132E08)
    /* 21FAC 0012102C 1000BFDF */  ld         $ra, 0x10($sp)
.align 2
  .L00121030:
    /* 21FB0 00121030 0000B0DF */  ld         $s0, 0x0($sp)
    /* 21FB4 00121034 0800E003 */  jr         $ra
    /* 21FB8 00121038 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00120FD0
    /* 21FBC 0012103C 00000000 */  nop
