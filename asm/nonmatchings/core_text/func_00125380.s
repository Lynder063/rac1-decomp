.align 3
nonmatching func_00125380, 0x74

glabel func_00125380
    /* 26300 00125380 1300083C */  lui        $t0, %hi(D_00132F00)
    /* 26304 00125384 002F0825 */  addiu      $t0, $t0, %lo(D_00132F00)
    /* 26308 00125388 000005D9 */  lqc2       $vf5, 0x0($t0)
    /* 2630C 0012538C 3D33264A */  vmr32.w    $vf6, $vf6
    /* 26310 00125390 0001064B */  vaddx.x    $vf4, $vf0, $vf6x
    /* 26314 00125394 AA31064B */  vmul.x     $vf6, $vf6, $vf6
    /* 26318 00125398 1821E04A */  vmulx.yzw  $vf4, $vf4, $vf0x
    /* 2631C 0012539C 1B2AE64B */  vmulw.xyzw $vf8, $vf5, $vf6w
    /* 26320 001253A0 6C01E04B */  vsub.xyzw  $vf5, $vf0, $vf0
    /* 26324 001253A4 1842E64B */  vmulx.xyzw $vf8, $vf8, $vf6x
    /* 26328 001253A8 1842C64B */  vmulx.xyz  $vf8, $vf8, $vf6x
    /* 2632C 001253AC 0321084B */  vaddw.x    $vf4, $vf4, $vf8w
    /* 26330 001253B0 1842864B */  vmulx.xy   $vf8, $vf8, $vf6x
    /* 26334 001253B4 0221084B */  vaddz.x    $vf4, $vf4, $vf8z
    /* 26338 001253B8 1842064B */  vmulx.x    $vf8, $vf8, $vf6x
    /* 2633C 001253BC 0121084B */  vaddy.x    $vf4, $vf4, $vf8y
    /* 26340 001253C0 0021084B */  vaddx.x    $vf4, $vf4, $vf8x
    /* 26344 001253C4 0029844B */  vaddx.xy   $vf4, $vf5, $vf4x
    /* 26348 001253C8 EA21044B */  vmul.x     $vf7, $vf4, $vf4
    /* 2634C 001253CC C401274A */  vsubx.w    $vf7, $vf0, $vf7x
    /* 26350 001253D0 BD03874B */  .word      0x4B8703BD                    # vsqrt      Q, $vf7w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 26354 001253D4 BF03004A */  vwaitq
    /* 26358 001253D8 0300E014 */  bnez       $a3, .L001253E8
    /* 2635C 001253DC E001004B */   vaddq.x   $vf7, $vf0, Q
    /* 26360 001253E0 02000010 */  b          .L001253EC
    /* 26364 001253E4 0029074B */   vaddx.x   $vf4, $vf5, $vf7x
.align 2
  .L001253E8:
    /* 26368 001253E8 0429074B */  vsubx.x    $vf4, $vf5, $vf7x
.align 2
  .L001253EC:
    /* 2636C 001253EC 0800E003 */  jr         $ra
    /* 26370 001253F0 00000000 */   nop
endlabel func_00125380
    /* 26374 001253F4 00000000 */  nop
