.align 3
nonmatching func_0011B0B0, 0x30

glabel func_0011B0B0
    /* 1C030 0011B0B0 2400858C */  lw         $a1, 0x24($a0)
    /* 1C034 0011B0B4 1800838C */  lw         $v1, 0x18($a0)
    /* 1C038 0011B0B8 1A00A300 */  div        $zero, $a1, $v1
    /* 1C03C 0011B0BC 01006050 */  beql       $v1, $zero, .L0011B0C4
    /* 1C040 0011B0C0 CD010000 */   break     0, 7
.align 2
  .L0011B0C4:
    /* 1C044 0011B0C4 1400858C */  lw         $a1, 0x14($a0)
    /* 1C048 0011B0C8 10100000 */  mfhi       $v0
    /* 1C04C 0011B0CC 01004324 */  addiu      $v1, $v0, 0x1
    /* 1C050 0011B0D0 80110200 */  sll        $v0, $v0, 6
    /* 1C054 0011B0D4 240083AC */  sw         $v1, 0x24($a0)
    /* 1C058 0011B0D8 0800E003 */  jr         $ra
    /* 1C05C 0011B0DC 2110A200 */   addu      $v0, $a1, $v0
endlabel func_0011B0B0
