.align 3
nonmatching func_00209358, 0x3C

glabel func_00209358
    /* 10A2D8 00209358 1400023C */  lui        $v0, %hi(D_0013D3AC)
    /* 10A2DC 0020935C FEFF0424 */  addiu      $a0, $zero, -0x2
    /* 10A2E0 00209360 ACD3438C */  lw         $v1, %lo(D_0013D3AC)($v0)
    /* 10A2E4 00209364 04006410 */  beq        $v1, $a0, .L00209378
    /* 10A2E8 00209368 B482828F */   lw        $v0, -0x7D4C($gp)
    /* 10A2EC 0020936C 03000224 */  addiu      $v0, $zero, 0x3
    /* 10A2F0 00209370 0800E003 */  jr         $ra
    /* 10A2F4 00209374 B08282AF */   sw        $v0, -0x7D50($gp)
.align 2
  .L00209378:
    /* 10A2F8 00209378 02004230 */  andi       $v0, $v0, 0x2
    /* 10A2FC 0020937C 03004010 */  beqz       $v0, .L0020938C
    /* 10A300 00209380 06000224 */   addiu     $v0, $zero, 0x6
    /* 10A304 00209384 1600013C */  lui        $at, %hi(D_0015EFB0)
    /* 10A308 00209388 B0EF22AC */  sw         $v0, %lo(D_0015EFB0)($at)
.align 2
  .L0020938C:
    /* 10A30C 0020938C 0800E003 */  jr         $ra
    /* 10A310 00209390 00000000 */   nop
endlabel func_00209358
    /* 10A314 00209394 00000000 */  nop
