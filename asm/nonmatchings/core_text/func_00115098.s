.align 3
nonmatching func_00115098, 0x3C

glabel func_00115098
    /* 16018 00115098 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1601C 0011509C 2D18A003 */  daddu      $v1, $sp, $zero
    /* 16020 001150A0 0500C010 */  beqz       $a2, .L001150B8
    /* 16024 001150A4 0B18A500 */   movn      $v1, $a1, $a1
    /* 16028 001150A8 0500E054 */  bnel       $a3, $zero, .L001150C0
    /* 1602C 001150AC 0000C290 */   lbu       $v0, 0x0($a2)
    /* 16030 001150B0 06000010 */  b          .L001150CC
    /* 16034 001150B4 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L001150B8:
    /* 16038 001150B8 04000010 */  b          .L001150CC
    /* 1603C 001150BC 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L001150C0:
    /* 16040 001150C0 000062AC */  sw         $v0, 0x0($v1)
    /* 16044 001150C4 0000C290 */  lbu        $v0, 0x0($a2)
    /* 16048 001150C8 2B100200 */  sltu       $v0, $zero, $v0
.align 2
  .L001150CC:
    /* 1604C 001150CC 0800E003 */  jr         $ra
    /* 16050 001150D0 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00115098
