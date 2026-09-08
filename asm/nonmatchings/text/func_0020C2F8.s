.align 3
/* Handwritten function */
nonmatching func_0020C2F8, 0x170

glabel func_0020C2F8
    /* 10D278 0020C2F8 609B8B7B */  lq         $t3, -0x64A0($gp)
    /* 10D27C 0020C2FC 709B8C7B */  lq         $t4, -0x6490($gp)
    /* 10D280 0020C300 809B8D7B */  lq         $t5, -0x6480($gp)
    /* 10D284 0020C304 909B8E7B */  lq         $t6, -0x6470($gp)
    /* 10D288 0020C308 A09B8F7B */  lq         $t7, -0x6460($gp)
    /* 10D28C 0020C30C 024A0400 */  srl        $t1, $a0, 8
    /* 10D290 0020C310 5888888F */  lw         $t0, -0x77A8($gp)
    /* 10D294 0020C314 1900073C */  lui        $a3, %hi(D_0018D140)
    /* 10D298 0020C318 40D1E724 */  addiu      $a3, $a3, %lo(D_0018D140)
    /* 10D29C 0020C31C 00A3988F */  lw         $t8, -0x5D00($gp)
.align 2
  alabel func_0020C320
    /* 10D2A0 0020C320 4D000011 */  beqz       $t0, .L0020C458
    /* 10D2A4 0020C324 0000E18C */   lw        $at, 0x0($a3)
    /* 10D2A8 0020C328 FFFF0821 */  addi       $t0, $t0, -0x1 /* handwritten instruction */
    /* 10D2AC 0020C32C 0400E294 */  lhu        $v0, 0x4($a3)
    /* 10D2B0 0020C330 1F002010 */  beqz       $at, .L0020C3B0
    /* 10D2B4 0020C334 0600E994 */   lhu       $t1, 0x6($a3)
    /* 10D2B8 0020C338 00000B7F */  sq         $t3, 0x0($t8)
    /* 10D2BC 0020C33C 10000C7F */  sq         $t4, 0x10($t8)
    /* 10D2C0 0020C340 20000D7F */  sq         $t5, 0x20($t8)
    /* 10D2C4 0020C344 30000E7F */  sq         $t6, 0x30($t8)
    /* 10D2C8 0020C348 4000007F */  sq         $zero, 0x40($t8)
    /* 10D2CC 0020C34C 53000320 */  addi       $v1, $zero, 0x53 /* handwritten instruction */
    /* 10D2D0 0020C350 50000F7F */  sq         $t7, 0x50($t8)
    /* 10D2D4 0020C354 480003AF */  sw         $v1, 0x48($t8)
    /* 10D2D8 0020C358 270002A3 */  sb         $v0, 0x27($t8)
    /* 10D2DC 0020C35C 42100200 */  srl        $v0, $v0, 1
    /* 10D2E0 0020C360 240009A7 */  sh         $t1, 0x24($t8)
    /* 10D2E4 0020C364 10000320 */  addi       $v1, $zero, 0x10 /* handwritten instruction */
    /* 10D2E8 0020C368 300003AF */  sw         $v1, 0x30($t8)
    /* 10D2EC 0020C36C 40000420 */  addi       $a0, $zero, 0x40 /* handwritten instruction */
    /* 10D2F0 0020C370 340003AF */  sw         $v1, 0x34($t8)
    /* 10D2F4 0020C374 06204400 */  srlv       $a0, $a0, $v0
    /* 10D2F8 0020C378 00808334 */  ori        $v1, $a0, 0x8000
    /* 10D2FC 0020C37C 00000000 */  nop
    /* 10D300 0020C380 500003AF */  sw         $v1, 0x50($t8)
    /* 10D304 0020C384 0030033C */  lui        $v1, (0x30000000 >> 16)
    /* 10D308 0020C388 6000007F */  sq         $zero, 0x60($t8)
    /* 10D30C 0020C38C 20186400 */  add        $v1, $v1, $a0 /* handwritten instruction */
    /* 10D310 0020C390 640001AF */  sw         $at, 0x64($t8)
    /* 10D314 0020C394 00000000 */  nop
    /* 10D318 0020C398 600003AF */  sw         $v1, 0x60($t8)
    /* 10D31C 0020C39C 0050033C */  lui        $v1, (0x50000000 >> 16)
    /* 10D320 0020C3A0 20186400 */  add        $v1, $v1, $a0 /* handwritten instruction */
    /* 10D324 0020C3A4 00000000 */  nop
    /* 10D328 0020C3A8 6C0003AF */  sw         $v1, 0x6C($t8)
    /* 10D32C 0020C3AC 70001823 */  addi       $t8, $t8, 0x70 /* handwritten instruction */
.align 2
  .L0020C3B0:
    /* 10D330 0020C3B0 0800E18C */  lw         $at, 0x8($a3)
    /* 10D334 0020C3B4 0C00E294 */  lhu        $v0, 0xC($a3)
    /* 10D338 0020C3B8 00000B7F */  sq         $t3, 0x0($t8)
    /* 10D33C 0020C3BC 10000C7F */  sq         $t4, 0x10($t8)
    /* 10D340 0020C3C0 20000D7F */  sq         $t5, 0x20($t8)
    /* 10D344 0020C3C4 30000E7F */  sq         $t6, 0x30($t8)
    /* 10D348 0020C3C8 4000007F */  sq         $zero, 0x40($t8)
    /* 10D34C 0020C3CC 53000320 */  addi       $v1, $zero, 0x53 /* handwritten instruction */
    /* 10D350 0020C3D0 50000F7F */  sq         $t7, 0x50($t8)
    /* 10D354 0020C3D4 480003AF */  sw         $v1, 0x48($t8)
    /* 10D358 0020C3D8 0E00E994 */  lhu        $t1, 0xE($a3)
    /* 10D35C 0020C3DC FF004330 */  andi       $v1, $v0, 0xFF
    /* 10D360 0020C3E0 02120200 */  srl        $v0, $v0, 8
    /* 10D364 0020C3E4 00000000 */  nop
    /* 10D368 0020C3E8 240009A7 */  sh         $t1, 0x24($t8)
    /* 10D36C 0020C3EC FAFF6420 */  addi       $a0, $v1, -0x6 /* handwritten instruction */
    /* 10D370 0020C3F0 03008018 */  blez       $a0, .L0020C400
    /* 10D374 0020C3F4 01000520 */   addi      $a1, $zero, 0x1 /* handwritten instruction */
    /* 10D378 0020C3F8 04208500 */  sllv       $a0, $a1, $a0
    /* 10D37C 0020C3FC 260004A3 */  sb         $a0, 0x26($t8)
.align 2
  .L0020C400:
    /* 10D380 0020C400 04204500 */  sllv       $a0, $a1, $v0
    /* 10D384 0020C404 04286500 */  sllv       $a1, $a1, $v1
    /* 10D388 0020C408 340004AF */  sw         $a0, 0x34($t8)
    /* 10D38C 0020C40C 04206400 */  sllv       $a0, $a0, $v1
    /* 10D390 0020C410 300005AF */  sw         $a1, 0x30($t8)
    /* 10D394 0020C414 02210400 */  srl        $a0, $a0, 4
    /* 10D398 0020C418 00808334 */  ori        $v1, $a0, 0x8000
    /* 10D39C 0020C41C 00000000 */  nop
    /* 10D3A0 0020C420 500003AF */  sw         $v1, 0x50($t8)
    /* 10D3A4 0020C424 0030033C */  lui        $v1, (0x30000000 >> 16)
    /* 10D3A8 0020C428 6000007F */  sq         $zero, 0x60($t8)
    /* 10D3AC 0020C42C 20186400 */  add        $v1, $v1, $a0 /* handwritten instruction */
    /* 10D3B0 0020C430 640001AF */  sw         $at, 0x64($t8)
    /* 10D3B4 0020C434 00000000 */  nop
    /* 10D3B8 0020C438 600003AF */  sw         $v1, 0x60($t8)
    /* 10D3BC 0020C43C 0050033C */  lui        $v1, (0x50000000 >> 16)
    /* 10D3C0 0020C440 20186400 */  add        $v1, $v1, $a0 /* handwritten instruction */
    /* 10D3C4 0020C444 00000000 */  nop
    /* 10D3C8 0020C448 6C0003AF */  sw         $v1, 0x6C($t8)
    /* 10D3CC 0020C44C 70001823 */  addi       $t8, $t8, 0x70 /* handwritten instruction */
    /* 10D3D0 0020C450 C8300808 */  j          func_0020C320
    /* 10D3D4 0020C454 1000E720 */   addi      $a3, $a3, 0x10 /* handwritten instruction */
.align 2
  .L0020C458:
    /* 10D3D8 0020C458 00A398AF */  sw         $t8, -0x5D00($gp)
    /* 10D3DC 0020C45C 00000000 */  nop
    /* 10D3E0 0020C460 0800E003 */  jr         $ra
    /* 10D3E4 0020C464 00000000 */   nop
endlabel func_0020C2F8
