.align 3
nonmatching func_00119868, 0x24

glabel func_00119868
    /* 1A7E8 00119868 1500023C */  lui        $v0, %hi(D_00154A40)
    /* 1A7EC 0011986C 404A4324 */  addiu      $v1, $v0, %lo(D_00154A40)
    /* 1A7F0 00119870 404A44AC */  sw         $a0, %lo(D_00154A40)($v0)
    /* 1A7F4 00119874 10006424 */  addiu      $a0, $v1, 0x10
    /* 1A7F8 00119878 2D106000 */  daddu      $v0, $v1, $zero
    /* 1A7FC 0011987C 080064AC */  sw         $a0, 0x8($v1)
    /* 1A800 00119880 040060AC */  sw         $zero, 0x4($v1)
    /* 1A804 00119884 0800E003 */  jr         $ra
    /* 1A808 00119888 0C0064AC */   sw        $a0, 0xC($v1)
endlabel func_00119868
    /* 1A80C 0011988C 00000000 */  nop
