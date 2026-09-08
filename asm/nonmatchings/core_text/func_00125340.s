.align 3
nonmatching func_00125340, 0x40

glabel func_00125340
    /* 262C0 00125340 300085F8 */  sqc2       $vf5, 0x30($a0)
    /* 262C4 00125344 00000000 */  nop
    /* 262C8 00125348 0000867C */  sq         $a2, 0x0($a0)
    /* 262CC 0012534C 00000000 */  nop
    /* 262D0 00125350 3000897C */  sq         $t1, 0x30($a0)
    /* 262D4 00125354 00000000 */  nop
.align 2
  alabel func_00125358
    /* 262D8 00125358 2C01E04B */  vsub.xyzw  $vf4, $vf0, $vf0
    /* 262DC 0012535C 2821204A */  vadd.w     $vf4, $vf4, $vf0
    /* 262E0 00125360 3D23E54B */  .word      0x4BE5233D    # vmr32.xyzw $vf5, $vf4
    /* 262E4 00125364 3D2BE64B */  .word      0x4BE62B3D    # vmr32.xyzw $vf6, $vf5
    /* 262E8 00125368 3D33E74B */  .word      0x4BE7333D    # vmr32.xyzw $vf7, $vf6
    /* 262EC 0012536C 300084F8 */  sqc2       $vf4, 0x30($a0)
    /* 262F0 00125370 200085F8 */  sqc2       $vf5, 0x20($a0)
    /* 262F4 00125374 100086F8 */  sqc2       $vf6, 0x10($a0)
    /* 262F8 00125378 0800E003 */  jr         $ra
    /* 262FC 0012537C 000087F8 */   sqc2      $vf7, 0x0($a0)
endlabel func_00125340
