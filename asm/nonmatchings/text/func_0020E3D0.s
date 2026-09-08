.align 3
/* Handwritten function */
nonmatching func_0020E3D0, 0x2E8

glabel func_0020E3D0
    /* 10F350 0020E3D0 580082DC */  ld         $v0, 0x58($a0)
    /* 10F354 0020E3D4 00000F20 */  addi       $t7, $zero, 0x0 /* handwritten instruction */
    /* 10F358 0020E3D8 2400998C */  lw         $t9, 0x24($a0)
    /* 10F35C 0020E3DC 00009820 */  addi       $t8, $a0, 0x0 /* handwritten instruction */
    /* 10F360 0020E3E0 52000A93 */  lbu        $t2, 0x52($t8)
    /* 10F364 0020E3E4 01000046 */  sub.s      $f0, $f0, $f0
    /* 10F368 0020E3E8 53000B93 */  lbu        $t3, 0x53($t8)
    /* 10F36C 0020E3EC 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 10F370 0020E3F0 7C000E8F */  lw         $t6, 0x7C($t8)
    /* 10F374 0020E3F4 FFFF0D34 */  ori        $t5, $zero, 0xFFFF
    /* 10F378 0020E3F8 540001C7 */  lwc1       $f1, 0x54($t8)
    /* 10F37C 0020E3FC 3E180200 */  dsrl32     $v1, $v0, 0
    /* 10F380 0020E400 00720E00 */  sll        $t6, $t6, 8
    /* 10F384 0020E404 00108244 */  mtc1       $v0, $f2
    /* 10F388 0020E408 99006010 */  beqz       $v1, .L0020E670
    /* 10F38C 0020E40C 02720E00 */   srl       $t6, $t6, 8
    /* 10F390 0020E410 1D004B15 */  bne        $t2, $t3, .L0020E488
    /* 10F394 0020E414 00188344 */   mtc1      $v1, $f3
    /* 10F398 0020E418 18000146 */  adda.s     $f0, $f1
    /* 10F39C 0020E41C 803F033C */  lui        $v1, (0x3F808000 >> 16)
    /* 10F3A0 0020E420 5C100346 */  madd.s     $f1, $f2, $f3
    /* 10F3A4 0020E424 7F3F043C */  lui        $a0, (0x3F7F0000 >> 16)
.align 2
  alabel func_0020E428
    /* 10F3A8 0020E428 50000893 */  lbu        $t0, 0x50($t8)
    /* 10F3AC 0020E42C 02100200 */  srl        $v0, $v0, 0
    /* 10F3B0 0020E430 8F004010 */  beqz       $v0, .L0020E670
    /* 10F3B4 0020E434 51000993 */   lbu       $t1, 0x51($t8)
    /* 10F3B8 0020E438 54000CC7 */  lwc1       $f12, 0x54($t8)
    /* 10F3BC 0020E43C 00000C21 */  addi       $t4, $t0, 0x0 /* handwritten instruction */
    /* 10F3C0 0020E440 00080244 */  mfc1       $v0, $f1
    /* 10F3C4 0020E444 00806334 */  ori        $v1, $v1, (0x3F808000 & 0xFFFF)
    /* 10F3C8 0020E448 00208144 */  mtc1       $at, $f4
    /* 10F3CC 0020E44C 80380B00 */  sll        $a3, $t3, 2
    /* 10F3D0 0020E450 2E186200 */  dsub       $v1, $v1, $v0
    /* 10F3D4 0020E454 2E204400 */  dsub       $a0, $v0, $a0
    /* 10F3D8 0020E458 25186400 */  or         $v1, $v1, $a0
    /* 10F3DC 0020E45C 2E204100 */  dsub       $a0, $v0, $at
    /* 10F3E0 0020E460 0D00601C */  bgtz       $v1, .L0020E498
    /* 10F3E4 0020E464 2038F900 */   add       $a3, $a3, $t9 /* handwritten instruction */
    /* 10F3E8 0020E468 0D00801C */  bgtz       $a0, .L0020E4A0
    /* 10F3EC 0020E46C 4800E78C */   lw        $a3, 0x48($a3)
    /* 10F3F0 0020E470 39004004 */  bltz       $v0, .L0020E558
    /* 10F3F4 0020E474 00000000 */   nop
    /* 10F3F8 0020E478 5900AE15 */  bne        $t5, $t6, .L0020E5E0
    /* 10F3FC 0020E47C 540001E7 */   swc1      $f1, 0x54($t8)
    /* 10F400 0020E480 0800E003 */  jr         $ra
    /* 10F404 0020E484 70000FA3 */   sb        $t7, 0x70($t8)
.align 2
  .L0020E488:
    /* 10F408 0020E488 40080346 */  add.s      $f1, $f1, $f3
    /* 10F40C 0020E48C 803F033C */  lui        $v1, (0x3F800000 >> 16)
    /* 10F410 0020E490 0A390808 */  j          func_0020E428
    /* 10F414 0020E494 7F3F043C */   lui       $a0, (0x3F7F0000 >> 16)
.align 2
  .L0020E498:
    /* 10F418 0020E498 00088144 */  mtc1       $at, $f1
    /* 10F41C 0020E49C 4800E78C */  lw         $a3, 0x48($a3)
.align 2
  .L0020E4A0:
    /* 10F420 0020E4A0 41080446 */  sub.s      $f1, $f1, $f4
    /* 10F424 0020E4A4 00000000 */  nop
    /* 10F428 0020E4A8 00002821 */  addi       $t0, $t1, 0x0 /* handwritten instruction */
    /* 10F42C 0020E4AC 01002921 */  addi       $t1, $t1, 0x1 /* handwritten instruction */
    /* 10F430 0020E4B0 23004B15 */  bne        $t2, $t3, .L0020E540
    /* 10F434 0020E4B4 6C00058F */   lw        $a1, 0x6C($t8)
.align 2
  alabel func_0020E4B8
    /* 10F438 0020E4B8 43080346 */  div.s      $f1, $f1, $f3
    /* 10F43C 0020E4BC 0100EF35 */  ori        $t7, $t7, 0x1
    /* 10F440 0020E4C0 1000E390 */  lbu        $v1, 0x10($a3)
    /* 10F444 0020E4C4 80300900 */  sll        $a2, $t1, 2
    /* 10F448 0020E4C8 1800E48C */  lw         $a0, 0x18($a3)
    /* 10F44C 0020E4CC 2030C700 */  add        $a2, $a2, $a3 /* handwritten instruction */
    /* 10F450 0020E4D0 22186900 */  sub        $v1, $v1, $t1 /* handwritten instruction */
    /* 10F454 0020E4D4 1C00C68C */  lw         $a2, 0x1C($a2)
    /* 10F458 0020E4D8 0500601C */  bgtz       $v1, .L0020E4F0
    /* 10F45C 0020E4DC 00188444 */   mtc1      $a0, $f3
    /* 10F460 0020E4E0 00000920 */  addi       $t1, $zero, 0x0 /* handwritten instruction */
    /* 10F464 0020E4E4 0200EF35 */  ori        $t7, $t7, 0x2
    /* 10F468 0020E4E8 1C00E68C */  lw         $a2, 0x1C($a3)
    /* 10F46C 0020E4EC 00000000 */  nop
.align 2
  .L0020E4F0:
    /* 10F470 0020E4F0 03008014 */  bnez       $a0, .L0020E500
    /* 10F474 0020E4F4 00000000 */   nop
    /* 10F478 0020E4F8 0000A3C4 */  lwc1       $f3, 0x0($a1)
    /* 10F47C 0020E4FC 00000000 */  nop
.align 2
  .L0020E500:
    /* 10F480 0020E500 42080346 */  mul.s      $f1, $f1, $f3
    /* 10F484 0020E504 52000AA3 */  sb         $t2, 0x52($t8)
    /* 10F488 0020E508 500008A3 */  sb         $t0, 0x50($t8)
    /* 10F48C 0020E50C 510009A3 */  sb         $t1, 0x51($t8)
    /* 10F490 0020E510 680005AF */  sw         $a1, 0x68($t8)
    /* 10F494 0020E514 6C0006AF */  sw         $a2, 0x6C($t8)
    /* 10F498 0020E518 00080244 */  mfc1       $v0, $f1
    /* 10F49C 0020E51C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 10F4A0 0020E520 5C0003E7 */  swc1       $f3, 0x5C($t8)
    /* 10F4A4 0020E524 2E084100 */  dsub       $at, $v0, $at
    /* 10F4A8 0020E528 DDFF201C */  bgtz       $at, .L0020E4A0
    /* 10F4AC 0020E52C 540001E7 */   swc1      $f1, 0x54($t8)
    /* 10F4B0 0020E530 2B00AE15 */  bne        $t5, $t6, .L0020E5E0
    /* 10F4B4 0020E534 70000FA3 */   sb        $t7, 0x70($t8)
    /* 10F4B8 0020E538 0800E003 */  jr         $ra
    /* 10F4BC 0020E53C 00000000 */   nop
.align 2
  .L0020E540:
    /* 10F4C0 0020E540 1200E190 */  lbu        $at, 0x12($a3)
    /* 10F4C4 0020E544 00006A21 */  addi       $t2, $t3, 0x0 /* handwritten instruction */
    /* 10F4C8 0020E548 0000AE35 */  ori        $t6, $t5, 0x0
    /* 10F4CC 0020E54C 00000000 */  nop
    /* 10F4D0 0020E550 2E390808 */  j          func_0020E4B8
    /* 10F4D4 0020E554 7E0001A3 */   sb        $at, 0x7E($t8)
.align 2
  .L0020E558:
    /* 10F4D8 0020E558 43080346 */  div.s      $f1, $f1, $f3
    /* 10F4DC 0020E55C 00000000 */  nop
    /* 10F4E0 0020E560 00000921 */  addi       $t1, $t0, 0x0 /* handwritten instruction */
    /* 10F4E4 0020E564 FFFF0821 */  addi       $t0, $t0, -0x1 /* handwritten instruction */
    /* 10F4E8 0020E568 6800068F */  lw         $a2, 0x68($t8)
    /* 10F4EC 0020E56C 0100EF35 */  ori        $t7, $t7, 0x1
    /* 10F4F0 0020E570 05000105 */  bgez       $t0, .L0020E588
    /* 10F4F4 0020E574 1800E48C */   lw        $a0, 0x18($a3)
    /* 10F4F8 0020E578 1000E890 */  lbu        $t0, 0x10($a3)
    /* 10F4FC 0020E57C 0200EF35 */  ori        $t7, $t7, 0x2
    /* 10F500 0020E580 FFFF0821 */  addi       $t0, $t0, -0x1 /* handwritten instruction */
    /* 10F504 0020E584 00000000 */  nop
.align 2
  .L0020E588:
    /* 10F508 0020E588 80280800 */  sll        $a1, $t0, 2
    /* 10F50C 0020E58C 00000000 */  nop
    /* 10F510 0020E590 2028A700 */  add        $a1, $a1, $a3 /* handwritten instruction */
    /* 10F514 0020E594 00188444 */  mtc1       $a0, $f3
    /* 10F518 0020E598 03008014 */  bnez       $a0, .L0020E5A8
    /* 10F51C 0020E59C 1C00A58C */   lw        $a1, 0x1C($a1)
    /* 10F520 0020E5A0 0000A3C4 */  lwc1       $f3, 0x0($a1)
    /* 10F524 0020E5A4 00000000 */  nop
.align 2
  .L0020E5A8:
    /* 10F528 0020E5A8 42080346 */  mul.s      $f1, $f1, $f3
    /* 10F52C 0020E5AC 680005AF */  sw         $a1, 0x68($t8)
    /* 10F530 0020E5B0 500008A3 */  sb         $t0, 0x50($t8)
    /* 10F534 0020E5B4 510009A3 */  sb         $t1, 0x51($t8)
    /* 10F538 0020E5B8 40080446 */  add.s      $f1, $f1, $f4
    /* 10F53C 0020E5BC 6C0006AF */  sw         $a2, 0x6C($t8)
    /* 10F540 0020E5C0 00080144 */  mfc1       $at, $f1
    /* 10F544 0020E5C4 5C0003E7 */  swc1       $f3, 0x5C($t8)
    /* 10F548 0020E5C8 E3FF2004 */  bltz       $at, .L0020E558
    /* 10F54C 0020E5CC 540001E7 */   swc1      $f1, 0x54($t8)
    /* 10F550 0020E5D0 0300AE15 */  bne        $t5, $t6, .L0020E5E0
    /* 10F554 0020E5D4 70000FA3 */   sb        $t7, 0x70($t8)
    /* 10F558 0020E5D8 0800E003 */  jr         $ra
    /* 10F55C 0020E5DC 00000000 */   nop
.align 2
  .L0020E5E0:
    /* 10F560 0020E5E0 23004B15 */  bne        $t2, $t3, .L0020E670
    /* 10F564 0020E5E4 70000FA3 */   sb        $t7, 0x70($t8)
    /* 10F568 0020E5E8 03340E00 */  sra        $a2, $t6, 16
    /* 10F56C 0020E5EC 8041033C */  lui        $v1, (0x41800000 >> 16)
    /* 10F570 0020E5F0 1F00C018 */  blez       $a2, .L0020E670
    /* 10F574 0020E5F4 00188344 */   mtc1      $v1, $f3
    /* 10F578 0020E5F8 00090800 */  sll        $at, $t0, 4
    /* 10F57C 0020E5FC 00110C00 */  sll        $v0, $t4, 4
    /* 10F580 0020E600 42080346 */  mul.s      $f1, $f1, $f3
    /* 10F584 0020E604 82600346 */  mul.s      $f2, $f12, $f3
    /* 10F588 0020E608 64080046 */  .word      0x46000864                    # cvt.w.s    $f1, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 10F58C 0020E60C 00000000 */  nop
    /* 10F590 0020E610 A4100046 */  .word      0x460010A4                    # cvt.w.s    $f2, $f2 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 10F594 0020E614 1000E590 */  lbu        $a1, 0x10($a3)
    /* 10F598 0020E618 00080344 */  mfc1       $v1, $f1
    /* 10F59C 0020E61C 00100444 */  mfc1       $a0, $f2
    /* 10F5A0 0020E620 20082300 */  add        $at, $at, $v1 /* handwritten instruction */
    /* 10F5A4 0020E624 20104400 */  add        $v0, $v0, $a0 /* handwritten instruction */
    /* 10F5A8 0020E628 22182200 */  sub        $v1, $at, $v0 /* handwritten instruction */
    /* 10F5AC 0020E62C 80280500 */  sll        $a1, $a1, 2
    /* 10F5B0 0020E630 0F006018 */  blez       $v1, .L0020E670
    /* 10F5B4 0020E634 2028A700 */   add       $a1, $a1, $a3 /* handwritten instruction */
    /* 10F5B8 0020E638 1E00A394 */  lhu        $v1, 0x1E($a1)
    /* 10F5BC 0020E63C 01004220 */  addi       $v0, $v0, 0x1 /* handwritten instruction */
.align 2
  .L0020E640:
    /* 10F5C0 0020E640 0B00C018 */  blez       $a2, .L0020E670
    /* 10F5C4 0020E644 FFFFC620 */   addi      $a2, $a2, -0x1 /* handwritten instruction */
    /* 10F5C8 0020E648 22206200 */  sub        $a0, $v1, $v0 /* handwritten instruction */
    /* 10F5CC 0020E64C 22182300 */  sub        $v1, $at, $v1 /* handwritten instruction */
    /* 10F5D0 0020E650 25186400 */  or         $v1, $v1, $a0
    /* 10F5D4 0020E654 0400A520 */  addi       $a1, $a1, 0x4 /* handwritten instruction */
    /* 10F5D8 0020E658 F9FF6004 */  bltz       $v1, .L0020E640
    /* 10F5DC 0020E65C 1E00A394 */   lhu       $v1, 0x1E($a1)
    /* 10F5E0 0020E660 1800A494 */  lhu        $a0, 0x18($a1)
    /* 10F5E4 0020E664 00000520 */  addi       $a1, $zero, 0x0 /* handwritten instruction */
    /* 10F5E8 0020E668 60BB0808 */  j          func_0022ED80
    /* 10F5EC 0020E66C 00000623 */   addi      $a2, $t8, 0x0 /* handwritten instruction */
.align 2
  .L0020E670:
    /* 10F5F0 0020E670 000C0E00 */  sll        $at, $t6, 16
    /* 10F5F4 0020E674 00140D00 */  sll        $v0, $t5, 16
    /* 10F5F8 0020E678 0D002210 */  beq        $at, $v0, .L0020E6B0
    /* 10F5FC 0020E67C 70000FA3 */   sb        $t7, 0x70($t8)
    /* 10F600 0020E680 020E0100 */  srl        $at, $at, 24
    /* 10F604 0020E684 FF000234 */  ori        $v0, $zero, 0xFF
    /* 10F608 0020E688 07002214 */  bne        $at, $v0, .L0020E6A8
    /* 10F60C 0020E68C 00000000 */   nop
    /* 10F610 0020E690 F089838F */  lw         $v1, -0x7610($gp)
    /* 10F614 0020E694 02121800 */  srl        $v0, $t8, 8
    /* 10F618 0020E698 03006330 */  andi       $v1, $v1, 0x3
    /* 10F61C 0020E69C 03004230 */  andi       $v0, $v0, 0x3
    /* 10F620 0020E6A0 03004314 */  bne        $v0, $v1, .L0020E6B0
    /* 10F624 0020E6A4 00000000 */   nop
.align 2
  .L0020E6A8:
    /* 10F628 0020E6A8 E4350808 */  j          func_0020D790
    /* 10F62C 0020E6AC 00000423 */   addi      $a0, $t8, 0x0 /* handwritten instruction */
.align 2
  .L0020E6B0:
    /* 10F630 0020E6B0 0800E003 */  jr         $ra
    /* 10F634 0020E6B4 00000000 */   nop
endlabel func_0020E3D0
