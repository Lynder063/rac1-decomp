.align 3
nonmatching func_0021EDD8, 0x28

glabel func_0021EDD8
    /* 11FD58 0021EDD8 1400023C */  lui        $2, %hi(D_001414F4)
    /* 11FD5C 0021EDDC 3400858C */  lw         $5, 0x34($4)
    /* 11FD60 0021EDE0 F4144490 */  lbu        $4, %lo(D_001414F4)($2)
    /* 11FD64 0021EDE4 01000324 */  addiu      $3, $0, 0x1
    /* 11FD68 0021EDE8 02008310 */  beq        $4, $3, .L0021EDF4
    /* 11FD6C 0021EDEC 2D100000 */   daddu     $2, $0, $0
    /* 11FD70 0021EDF0 03000224 */  addiu      $2, $0, 0x3
.align 2
  .L0021EDF4:
    /* 11FD74 0021EDF4 0200A2A4 */  sh         $2, 0x2($5)
    /* 11FD78 0021EDF8 0800E003 */  jr         $31
    /* 11FD7C 0021EDFC 2D100000 */   daddu     $2, $0, $0
endlabel func_0021EDD8
