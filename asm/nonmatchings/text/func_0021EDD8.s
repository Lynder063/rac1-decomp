.align 3
nonmatching func_0021EDD8, 0x28

glabel func_0021EDD8
    /* 11FD58 0021EDD8 1400023C */  lui        $v0, %hi(D_001414F4)
    /* 11FD5C 0021EDDC 3400858C */  lw         $a1, 0x34($a0)
    /* 11FD60 0021EDE0 F4144490 */  lbu        $a0, %lo(D_001414F4)($v0)
    /* 11FD64 0021EDE4 01000324 */  addiu      $v1, $zero, 0x1
    /* 11FD68 0021EDE8 02008310 */  beq        $a0, $v1, .L0021EDF4
    /* 11FD6C 0021EDEC 2D100000 */   daddu     $v0, $zero, $zero
    /* 11FD70 0021EDF0 03000224 */  addiu      $v0, $zero, 0x3
.align 2
  .L0021EDF4:
    /* 11FD74 0021EDF4 0200A2A4 */  sh         $v0, 0x2($a1)
    /* 11FD78 0021EDF8 0800E003 */  jr         $ra
    /* 11FD7C 0021EDFC 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0021EDD8
