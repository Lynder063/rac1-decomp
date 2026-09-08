.align 3
/* Handwritten function */
nonmatching func_00213A78, 0x134

glabel func_00213A78
    /* 1149F8 00213A78 4300C04B */  vaddw.xyz  $vf1, $vf0, $vf0w
    /* 1149FC 00213A7C FFFF0B20 */  addi       $t3, $zero, -0x1 /* handwritten instruction */
    /* 114A00 00213A80 00000000 */  nop
    /* 114A04 00213A84 1A00093C */  lui        $t1, %hi(D_0019ACC0)
    /* 114A08 00213A88 C0AC2925 */  addiu      $t1, $t1, %lo(D_0019ACC0)
    /* 114A0C 00213A8C 00000000 */  nop
    /* 114A10 00213A90 1600083C */  lui        $t0, %hi(D_0015FC04)
    /* 114A14 00213A94 04FC088D */  lw         $t0, %lo(D_0015FC04)($t0)
    /* 114A18 00213A98 2D382001 */  daddu      $a3, $t1, $zero
    /* 114A1C 00213A9C 00410800 */  sll        $t0, $t0, 4
    /* 114A20 00213AA0 1A000C3C */  lui        $t4, %hi(D_0019AEC0)
    /* 114A24 00213AA4 C0AE8C25 */  addiu      $t4, $t4, %lo(D_0019AEC0)
    /* 114A28 00213AA8 20400901 */  add        $t0, $t0, $t1 /* handwritten instruction */
    /* 114A2C 00213AAC 00008AD8 */  lqc2       $vf10, 0x0($a0)
    /* 114A30 00213AB0 80FF8C25 */  addiu      $t4, $t4, -0x80
    /* 114A34 00213AB4 8002204A */  vaddx.w    $vf10, $vf0, $vf0x
    /* 114A38 00213AB8 00000000 */  nop
.align 2
  .L00213ABC:
    /* 114A3C 00213ABC 0000EBD8 */  lqc2       $vf11, 0x0($a3)
    /* 114A40 00213AC0 80008C25 */  addiu      $t4, $t4, 0x80
    /* 114A44 00213AC4 2C53EB4B */  vsub.xyzw  $vf12, $vf10, $vf11
    /* 114A48 00213AC8 00000000 */  nop
    /* 114A4C 00213ACC 8303CB4B */  vaddw.xyz  $vf14, $vf0, $vf11w
    /* 114A50 00213AD0 00000000 */  nop
    /* 114A54 00213AD4 2A63CC4B */  vmul.xyz   $vf12, $vf12, $vf12
    /* 114A58 00213AD8 00000000 */  nop
    /* 114A5C 00213ADC 41630C4B */  vaddy.x    $vf13, $vf12, $vf12y
    /* 114A60 00213AE0 00000000 */  nop
    /* 114A64 00213AE4 EC6B0E4B */  vsub.x     $vf15, $vf13, $vf14
    /* 114A68 00213AE8 00000000 */  nop
    /* 114A6C 00213AEC 00782A48 */  qmfc2.ni   $t2, $vf15
    /* 114A70 00213AF0 00000000 */  nop
    /* 114A74 00213AF4 C2570A00 */  srl        $t2, $t2, 31
    /* 114A78 00213AF8 01006B25 */  addiu      $t3, $t3, 0x1
    /* 114A7C 00213AFC 01004A31 */  andi       $t2, $t2, 0x1
    /* 114A80 00213B00 00000000 */  nop
    /* 114A84 00213B04 05004015 */  bnez       $t2, .L00213B1C
    /* 114A88 00213B08 00000000 */   nop
    /* 114A8C 00213B0C EBFFE814 */  bne        $a3, $t0, .L00213ABC
    /* 114A90 00213B10 1000E720 */   addi      $a3, $a3, 0x10 /* handwritten instruction */
.align 2
  .L00213B14:
    /* 114A94 00213B14 0800E003 */  jr         $ra
    /* 114A98 00213B18 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00213B1C:
    /* 114A9C 00213B1C 000081D9 */  lqc2       $vf1, 0x0($t4)
    /* 114AA0 00213B20 00000000 */  nop
    /* 114AA4 00213B24 100082D9 */  lqc2       $vf2, 0x10($t4)
    /* 114AA8 00213B28 BC09EA4B */  .word      0x4BEA09BC    # vmulax.xyzw ACC, $vf1, $vf10x
    /* 114AAC 00213B2C 200083D9 */  lqc2       $vf3, 0x20($t4)
    /* 114AB0 00213B30 BD10EA4B */  .word      0x4BEA10BD    # vmadday.xyzw ACC, $vf2, $vf10y
    /* 114AB4 00213B34 300084D9 */  lqc2       $vf4, 0x30($t4)
    /* 114AB8 00213B38 BE18EA4B */  .word      0x4BEA18BE    # vmaddaz.xyzw ACC, $vf3, $vf10z
    /* 114ABC 00213B3C 8B21EA4B */  vmaddw.xyzw $vf6, $vf4, $vf10w
    /* 114AC0 00213B40 00000000 */  nop
    /* 114AC4 00213B44 FF31C04B */  .word      0x4BC031FF                    # vclipw.xyz $vf6, $vf0w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 114AC8 00213B48 00000000 */  nop
    /* 114ACC 00213B4C 00000000 */  nop
    /* 114AD0 00213B50 00000000 */  nop
    /* 114AD4 00213B54 00000000 */  nop
    /* 114AD8 00213B58 00000000 */  nop
    /* 114ADC 00213B5C 00000000 */  nop
    /* 114AE0 00213B60 00000000 */  nop
    /* 114AE4 00213B64 00000000 */  nop
    /* 114AE8 00213B68 00000000 */  nop
    /* 114AEC 00213B6C 00000000 */  nop
    /* 114AF0 00213B70 00904A48 */  cfc2.ni    $t2, $vi18
    /* 114AF4 00213B74 00000000 */  nop
    /* 114AF8 00213B78 3F004A31 */  andi       $t2, $t2, 0x3F
    /* 114AFC 00213B7C E5FF4015 */  bnez       $t2, .L00213B14
    /* 114B00 00213B80 00000000 */   nop
    /* 114B04 00213B84 003F0A3C */  lui        $t2, (0x3F000000 >> 16)
    /* 114B08 00213B88 8331004B */  vaddw.x    $vf6, $vf6, $vf0w
    /* 114B0C 00213B8C 0010AA48 */  qmtc2.ni   $t2, $vf2
    /* 114B10 00213B90 AA11064B */  vmul.x     $vf6, $vf2, $vf6
    /* 114B14 00213B94 0000CBAC */  sw         $t3, 0x0($a2)
    /* 114B18 00213B98 00302A48 */  qmfc2.ni   $t2, $vf6
    /* 114B1C 00213B9C 0000AAAC */  sw         $t2, 0x0($a1)
    /* 114B20 00213BA0 00000000 */  nop
    /* 114B24 00213BA4 0800E003 */  jr         $ra
    /* 114B28 00213BA8 01000220 */   addi      $v0, $zero, 0x1 /* handwritten instruction */
endlabel func_00213A78
