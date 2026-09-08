.align 3
nonmatching func_00113A70, 0x58

glabel func_00113A70
    /* 149F0 00113A70 1100023C */  lui        $v0, %hi(func_001162B8)
    /* 149F4 00113A74 1100033C */  lui        $v1, %hi(func_00116320)
    /* 149F8 00113A78 1100083C */  lui        $t0, %hi(func_001163A0)
    /* 149FC 00113A7C 1100093C */  lui        $t1, %hi(func_00116408)
    /* 14A00 00113A80 B8624224 */  addiu      $v0, $v0, %lo(func_001162B8)
    /* 14A04 00113A84 20636324 */  addiu      $v1, $v1, %lo(func_00116320)
    /* 14A08 00113A88 A0630825 */  addiu      $t0, $t0, %lo(func_001163A0)
    /* 14A0C 00113A8C 08642925 */  addiu      $t1, $t1, %lo(func_00116408)
    /* 14A10 00113A90 540087AC */  sw         $a3, 0x54($a0)
    /* 14A14 00113A94 0C0085A4 */  sh         $a1, 0xC($a0)
    /* 14A18 00113A98 0E0086A4 */  sh         $a2, 0xE($a0)
    /* 14A1C 00113A9C 200082AC */  sw         $v0, 0x20($a0)
    /* 14A20 00113AA0 240083AC */  sw         $v1, 0x24($a0)
    /* 14A24 00113AA4 280088AC */  sw         $t0, 0x28($a0)
    /* 14A28 00113AA8 2C0089AC */  sw         $t1, 0x2C($a0)
    /* 14A2C 00113AAC 000080AC */  sw         $zero, 0x0($a0)
    /* 14A30 00113AB0 040080AC */  sw         $zero, 0x4($a0)
    /* 14A34 00113AB4 080080AC */  sw         $zero, 0x8($a0)
    /* 14A38 00113AB8 100080AC */  sw         $zero, 0x10($a0)
    /* 14A3C 00113ABC 180080AC */  sw         $zero, 0x18($a0)
    /* 14A40 00113AC0 0800E003 */  jr         $ra
    /* 14A44 00113AC4 1C0084AC */   sw        $a0, 0x1C($a0)
endlabel func_00113A70
