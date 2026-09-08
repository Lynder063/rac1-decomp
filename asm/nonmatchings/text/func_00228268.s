.align 3
nonmatching func_00228268, 0x50

glabel func_00228268
    /* 1291E8 00228268 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1291EC 0022826C 1D00043C */  lui        $a0, %hi(D_001D6860)
    /* 1291F0 00228270 0000BF7F */  sq         $ra, 0x0($sp)
    /* 1291F4 00228274 60688424 */  addiu      $a0, $a0, %lo(D_001D6860)
    /* 1291F8 00228278 2D280000 */  daddu      $a1, $zero, $zero
    /* 1291FC 0022827C 6CE6070C */  jal        func_001F99B0
    /* 129200 00228280 600C0624 */   addiu     $a2, $zero, 0xC60
    /* 129204 00228284 1D00043C */  lui        $a0, %hi(D_001D74C0)
    /* 129208 00228288 2D280000 */  daddu      $a1, $zero, $zero
    /* 12920C 0022828C C0748424 */  addiu      $a0, $a0, %lo(D_001D74C0)
    /* 129210 00228290 6CE6070C */  jal        func_001F99B0
    /* 129214 00228294 600C0624 */   addiu     $a2, $zero, 0xC60
    /* 129218 00228298 1D00043C */  lui        $a0, %hi(D_001D6760)
    /* 12921C 0022829C 2D280000 */  daddu      $a1, $zero, $zero
    /* 129220 002282A0 60678424 */  addiu      $a0, $a0, %lo(D_001D6760)
    /* 129224 002282A4 6CE6070C */  jal        func_001F99B0
    /* 129228 002282A8 00010624 */   addiu     $a2, $zero, 0x100
    /* 12922C 002282AC 0000BF7B */  lq         $ra, 0x0($sp)
    /* 129230 002282B0 0800E003 */  jr         $ra
    /* 129234 002282B4 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00228268
