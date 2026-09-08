.align 3
nonmatching func_00116248, 0x70

glabel func_00116248
    /* 171C8 00116248 1300023C */  lui        $v0, %hi(D_0012F86C)
    /* 171CC 0011624C 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* 171D0 00116250 6CF84D8C */  lw         $t5, %lo(D_0012F86C)($v0)
    /* 171D4 00116254 FF7F033C */  lui        $v1, (0x7FFFFFFF >> 16)
    /* 171D8 00116258 2D608000 */  daddu      $t4, $a0, $zero
    /* 171DC 0011625C FFFF6334 */  ori        $v1, $v1, (0x7FFFFFFF & 0xFFFF)
    /* 171E0 00116260 B000A6FF */  sd         $a2, 0xB0($sp)
    /* 171E4 00116264 08020224 */  addiu      $v0, $zero, 0x208
    /* 171E8 00116268 6000BFFF */  sd         $ra, 0x60($sp)
    /* 171EC 0011626C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 171F0 00116270 B800A7FF */  sd         $a3, 0xB8($sp)
    /* 171F4 00116274 B000A627 */  addiu      $a2, $sp, 0xB0
    /* 171F8 00116278 C000A8FF */  sd         $t0, 0xC0($sp)
    /* 171FC 0011627C C800A9FF */  sd         $t1, 0xC8($sp)
    /* 17200 00116280 D000AAFF */  sd         $t2, 0xD0($sp)
    /* 17204 00116284 D800ABFF */  sd         $t3, 0xD8($sp)
    /* 17208 00116288 0C00A2A7 */  sh         $v0, 0xC($sp)
    /* 1720C 0011628C 1000ACAF */  sw         $t4, 0x10($sp)
    /* 17210 00116290 1400A3AF */  sw         $v1, 0x14($sp)
    /* 17214 00116294 5400ADAF */  sw         $t5, 0x54($sp)
    /* 17218 00116298 0000ACAF */  sw         $t4, 0x0($sp)
    /* 1721C 0011629C 285C040C */  jal        func_001170A0
    /* 17220 001162A0 0800A3AF */   sw        $v1, 0x8($sp)
    /* 17224 001162A4 0000A38F */  lw         $v1, 0x0($sp)
    /* 17228 001162A8 6000BFDF */  ld         $ra, 0x60($sp)
    /* 1722C 001162AC 000060A0 */  sb         $zero, 0x0($v1)
    /* 17230 001162B0 0800E003 */  jr         $ra
    /* 17234 001162B4 E000BD27 */   addiu     $sp, $sp, 0xE0
endlabel func_00116248
