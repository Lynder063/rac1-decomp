.align 3
nonmatching func_0020CB80, 0x28

glabel func_0020CB80
    /* 10DB00 0020CB80 1400023C */  lui        $v0, %hi(D_0013D844)
    /* 10DB04 0020CB84 44D8438C */  lw         $v1, %lo(D_0013D844)($v0)
    /* 10DB08 0020CB88 04006010 */  beqz       $v1, .L0020CB9C
    /* 10DB0C 0020CB8C 1400043C */   lui       $a0, %hi(D_0013D4A8)
    /* 10DB10 0020CB90 A8D48390 */  lbu        $v1, %lo(D_0013D4A8)($a0)
    /* 10DB14 0020CB94 02006014 */  bnez       $v1, .L0020CBA0
    /* 10DB18 0020CB98 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0020CB9C:
    /* 10DB1C 0020CB9C 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0020CBA0:
    /* 10DB20 0020CBA0 0800E003 */  jr         $ra
    /* 10DB24 0020CBA4 00000000 */   nop
endlabel func_0020CB80
