.align 3
nonmatching func_0012CF98, 0x68

glabel func_0012CF98
    /* 2DF18 0012CF98 06008010 */  beqz       $a0, .L0012CFB4
    /* 2DF1C 0012CF9C 2D180000 */   daddu     $v1, $zero, $zero
    /* 2DF20 0012CFA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2DF24 0012CFA4 0F008210 */  beq        $a0, $v0, .L0012CFE4
    /* 2DF28 0012CFA8 2D106000 */   daddu     $v0, $v1, $zero
    /* 2DF2C 0012CFAC 12000010 */  b          .L0012CFF8
    /* 2DF30 0012CFB0 00000000 */   nop
.align 2
  .L0012CFB4:
    /* 2DF34 0012CFB4 0010033C */  lui        $v1, (0x10002010 >> 16)
    /* 2DF38 0012CFB8 10206334 */  ori        $v1, $v1, (0x10002010 & 0xFFFF)
    /* 2DF3C 0012CFBC 00000000 */  nop
.align 2
  .L0012CFC0:
    /* 2DF40 0012CFC0 0000628C */  lw         $v0, 0x0($v1)
    /* 2DF44 0012CFC4 00000000 */  nop
    /* 2DF48 0012CFC8 00000000 */  nop
    /* 2DF4C 0012CFCC 00000000 */  nop
    /* 2DF50 0012CFD0 00000000 */  nop
    /* 2DF54 0012CFD4 FAFF4004 */  bltz       $v0, .L0012CFC0
    /* 2DF58 0012CFD8 00000000 */   nop
    /* 2DF5C 0012CFDC 05000010 */  b          .L0012CFF4
    /* 2DF60 0012CFE0 2D180000 */   daddu     $v1, $zero, $zero
.align 2
  .L0012CFE4:
    /* 2DF64 0012CFE4 0010023C */  lui        $v0, (0x10002010 >> 16)
    /* 2DF68 0012CFE8 10204234 */  ori        $v0, $v0, (0x10002010 & 0xFFFF)
    /* 2DF6C 0012CFEC 0000438C */  lw         $v1, 0x0($v0)
    /* 2DF70 0012CFF0 C21F0300 */  srl        $v1, $v1, 31
.align 2
  .L0012CFF4:
    /* 2DF74 0012CFF4 2D106000 */  daddu      $v0, $v1, $zero
.align 2
  .L0012CFF8:
    /* 2DF78 0012CFF8 0800E003 */  jr         $ra
    /* 2DF7C 0012CFFC 00000000 */   nop
endlabel func_0012CF98
