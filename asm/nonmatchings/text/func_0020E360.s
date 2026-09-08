.align 3
/* Handwritten function */
nonmatching func_0020E360, 0x70

glabel func_0020E360
    /* 10F2E0 0020E360 380084DC */  ld         $a0, 0x38($a0)
    /* 10F2E4 0020E364 1A00063C */  lui        $a2, %hi(D_0019BEC0)
    /* 10F2E8 0020E368 C0BEC624 */  addiu      $a2, $a2, %lo(D_0019BEC0)
    /* 10F2EC 0020E36C 00000000 */  nop
    /* 10F2F0 0020E370 FF008130 */  andi       $at, $a0, 0xFF
    /* 10F2F4 0020E374 02120400 */  srl        $v0, $a0, 8
    /* 10F2F8 0020E378 021C0400 */  srl        $v1, $a0, 16
    /* 10F2FC 0020E37C FF004230 */  andi       $v0, $v0, 0xFF
    /* 10F300 0020E380 FF006330 */  andi       $v1, $v1, 0xFF
    /* 10F304 0020E384 80090100 */  sll        $at, $at, 6
    /* 10F308 0020E388 0500601C */  bgtz       $v1, .L0020E3A0
    /* 10F30C 0020E38C 80110200 */   sll       $v0, $v0, 6
    /* 10F310 0020E390 20082600 */  add        $at, $at, $a2 /* handwritten instruction */
    /* 10F314 0020E394 100021D8 */  lqc2       $vf1, 0x10($at)
    /* 10F318 0020E398 0800E003 */  jr         $ra
    /* 10F31C 0020E39C 0000A1F8 */   sqc2      $vf1, 0x0($a1)
.align 2
  .L0020E3A0:
    /* 10F320 0020E3A0 00190300 */  sll        $v1, $v1, 4
    /* 10F324 0020E3A4 20082600 */  add        $at, $at, $a2 /* handwritten instruction */
    /* 10F328 0020E3A8 0018A348 */  qmtc2.ni   $v1, $vf3
    /* 10F32C 0020E3AC 20104600 */  add        $v0, $v0, $a2 /* handwritten instruction */
    /* 10F330 0020E3B0 100021D8 */  lqc2       $vf1, 0x10($at)
    /* 10F334 0020E3B4 100042D8 */  lqc2       $vf2, 0x10($v0)
    /* 10F338 0020E3B8 3E19034B */  vitof12.x  $vf3, $vf3
    /* 10F33C 0020E3BC C400234A */  vsubx.w    $vf3, $vf0, $vf3x
    /* 10F340 0020E3C0 BF09C34B */  .word      0x4BC309BF    # vmulaw.xyz ACC, $vf1, $vf3w
    /* 10F344 0020E3C4 4810C34B */  vmaddx.xyz $vf1, $vf2, $vf3x
    /* 10F348 0020E3C8 0800E003 */  jr         $ra
    /* 10F34C 0020E3CC 0000A1F8 */   sqc2      $vf1, 0x0($a1)
endlabel func_0020E360
