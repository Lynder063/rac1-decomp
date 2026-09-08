.align 3
nonmatching func_001EB458, 0x364

glabel func_001EB458
    /* EC3D8 001EB458 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* EC3DC 001EB45C 2000B07F */  sq         $s0, 0x20($sp)
    /* EC3E0 001EB460 8000BF7F */  sq         $ra, 0x80($sp)
    /* EC3E4 001EB464 7000B57F */  sq         $s5, 0x70($sp)
    /* EC3E8 001EB468 6000B47F */  sq         $s4, 0x60($sp)
    /* EC3EC 001EB46C 5000B37F */  sq         $s3, 0x50($sp)
    /* EC3F0 001EB470 4000B27F */  sq         $s2, 0x40($sp)
    /* EC3F4 001EB474 3000B17F */  sq         $s1, 0x30($sp)
    /* EC3F8 001EB478 ECA5070C */  jal        func_001E97B0
    /* EC3FC 001EB47C 9000B4E7 */   swc1      $f20, 0x90($sp)
    /* EC400 001EB480 1600013C */  lui        $at, %hi(D_0015F53C)
    /* EC404 001EB484 3CF520C4 */  lwc1       $f0, %lo(D_0015F53C)($at)
    /* EC408 001EB488 1900023C */  lui        $v0, %hi(D_0018CC20)
    /* EC40C 001EB48C 803D013C */  lui        $at, (0x3D800000 >> 16)
    /* EC410 001EB490 00088144 */  mtc1       $at, $f1
    /* EC414 001EB494 20CC4524 */  addiu      $a1, $v0, %lo(D_0018CC20)
    /* EC418 001EB498 2D804000 */  daddu      $s0, $v0, $zero
    /* EC41C 001EB49C 3800A38C */  lw         $v1, 0x38($a1)
    /* EC420 001EB4A0 01000146 */  sub.s      $f0, $f0, $f1
    /* EC424 001EB4A4 3400A28C */  lw         $v0, 0x34($a1)
    /* EC428 001EB4A8 00108044 */  mtc1       $zero, $f2
    /* EC42C 001EB4AC 01006324 */  addiu      $v1, $v1, 0x1
    /* EC430 001EB4B0 01004424 */  addiu      $a0, $v0, 0x1
    /* EC434 001EB4B4 3800A3AC */  sw         $v1, 0x38($a1)
    /* EC438 001EB4B8 34000246 */  c.lt.s     $f0, $f2
    /* EC43C 001EB4BC 3400A4AC */  sw         $a0, 0x34($a1)
    /* EC440 001EB4C0 03000045 */  bc1f       .L001EB4D0
    /* EC444 001EB4C4 3C8880E7 */   swc1      $f0, -0x77C4($gp)
    /* EC448 001EB4C8 1600013C */  lui        $at, %hi(D_0015F53C)
    /* EC44C 001EB4CC 3CF522E4 */  swc1       $f2, %lo(D_0015F53C)($at)
.align 2
  .L001EB4D0:
    /* EC450 001EB4D0 4000A284 */  lh         $v0, 0x40($a1)
    /* EC454 001EB4D4 2A108200 */  slt        $v0, $a0, $v0
    /* EC458 001EB4D8 07004014 */  bnez       $v0, .L001EB4F8
    /* EC45C 001EB4DC 60006228 */   slti      $v0, $v1, 0x60
    /* EC460 001EB4E0 3C00A0AC */  sw         $zero, 0x3C($a1)
    /* EC464 001EB4E4 2D200000 */  daddu      $a0, $zero, $zero
    /* EC468 001EB4E8 8814080C */  jal        func_00205220
    /* EC46C 001EB4EC 3400A0AC */   sw        $zero, 0x34($a1)
    /* EC470 001EB4F0 07000010 */  b          .L001EB510
    /* EC474 001EB4F4 00000000 */   nop
.align 2
  .L001EB4F8:
    /* EC478 001EB4F8 05004014 */  bnez       $v0, .L001EB510
    /* EC47C 001EB4FC 00000000 */   nop
    /* EC480 001EB500 3C00A48C */  lw         $a0, 0x3C($a1)
    /* EC484 001EB504 01008424 */  addiu      $a0, $a0, 0x1
    /* EC488 001EB508 8814080C */  jal        func_00205220
    /* EC48C 001EB50C 3C00A4AC */   sw        $a0, 0x3C($a1)
.align 2
  .L001EB510:
    /* EC490 001EB510 CEAC070C */  jal        func_001EB338
    /* EC494 001EB514 2D900000 */   daddu     $s2, $zero, $zero
    /* EC498 001EB518 20CC0326 */  addiu      $v1, $s0, %lo(D_0018CC20)
    /* EC49C 001EB51C 44006284 */  lh         $v0, 0x44($v1)
    /* EC4A0 001EB520 35004018 */  blez       $v0, .L001EB5F8
    /* EC4A4 001EB524 00000000 */   nop
    /* EC4A8 001EB528 2D986000 */  daddu      $s3, $v1, $zero
    /* EC4AC 001EB52C 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* EC4B0 001EB530 00A08144 */  mtc1       $at, $f20
    /* EC4B4 001EB534 1000B427 */  addiu      $s4, $sp, 0x10
    /* EC4B8 001EB538 78017526 */  addiu      $s5, $s3, 0x178
    /* EC4BC 001EB53C 00000000 */  nop
.align 2
  .L001EB540:
    /* EC4C0 001EB540 3800628E */  lw         $v0, 0x38($s3)
    /* EC4C4 001EB544 0000B18E */  lw         $s1, 0x0($s5)
    /* EC4C8 001EB548 43100200 */  sra        $v0, $v0, 1
    /* EC4CC 001EB54C 01004324 */  addiu      $v1, $v0, 0x1
    /* EC4D0 001EB550 500022A2 */  sb         $v0, 0x50($s1)
    /* EC4D4 001EB554 510023A2 */  sb         $v1, 0x51($s1)
    /* EC4D8 001EB558 B435080C */  jal        func_0020D6D0
    /* EC4DC 001EB55C 2D202002 */   daddu     $a0, $s1, $zero
    /* EC4E0 001EB560 3800648E */  lw         $a0, 0x38($s3)
    /* EC4E4 001EB564 22EA070C */  jal        func_001FA888
    /* EC4E8 001EB568 01008430 */   andi      $a0, $a0, 0x1
    /* EC4EC 001EB56C 02001446 */  mul.s      $f0, $f0, $f20
    /* EC4F0 001EB570 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EC4F4 001EB574 00608144 */  mtc1       $at, $f12
    /* EC4F8 001EB578 50002592 */  lbu        $a1, 0x50($s1)
    /* EC4FC 001EB57C 2D20A003 */  daddu      $a0, $sp, $zero
    /* EC500 001EB580 7800308E */  lw         $s0, 0x78($s1)
    /* EC504 001EB584 01630046 */  sub.s      $f12, $f12, $f0
    /* EC508 001EB588 00290500 */  sll        $a1, $a1, 4
    /* EC50C 001EB58C 540020E6 */  swc1       $f0, 0x54($s1)
    /* EC510 001EB590 0CE7070C */  jal        func_001F9C30
    /* EC514 001EB594 21280502 */   addu      $a1, $s0, $a1
    /* EC518 001EB598 51002592 */  lbu        $a1, 0x51($s1)
    /* EC51C 001EB59C 2D208002 */  daddu      $a0, $s4, $zero
    /* EC520 001EB5A0 54002CC6 */  lwc1       $f12, 0x54($s1)
    /* EC524 001EB5A4 00290500 */  sll        $a1, $a1, 4
    /* EC528 001EB5A8 0CE7070C */  jal        func_001F9C30
    /* EC52C 001EB5AC 21280502 */   addu      $a1, $s0, $a1
    /* EC530 001EB5B0 2D308002 */  daddu      $a2, $s4, $zero
    /* EC534 001EB5B4 10002426 */  addiu      $a0, $s1, 0x10
    /* EC538 001EB5B8 F6E6070C */  jal        func_001F9BD8
    /* EC53C 001EB5BC 2D28A003 */   daddu     $a1, $sp, $zero
    /* EC540 001EB5C0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* EC544 001EB5C4 2D202002 */  daddu      $a0, $s1, $zero
    /* EC548 001EB5C8 523B080C */  jal        func_0020ED48
    /* EC54C 001EB5CC 710022A2 */   sb        $v0, 0x71($s1)
    /* EC550 001EB5D0 A6002286 */  lh         $v0, 0xA6($s1)
    /* EC554 001EB5D4 03004014 */  bnez       $v0, .L001EB5E4
    /* EC558 001EB5D8 7F0020A2 */   sb        $zero, 0x7F($s1)
    /* EC55C 001EB5DC E4A5070C */  jal        func_001E9790
    /* EC560 001EB5E0 2D202002 */   daddu     $a0, $s1, $zero
.align 2
  .L001EB5E4:
    /* EC564 001EB5E4 44006286 */  lh         $v0, 0x44($s3)
    /* EC568 001EB5E8 01005226 */  addiu      $s2, $s2, 0x1
    /* EC56C 001EB5EC 2A104202 */  slt        $v0, $s2, $v0
    /* EC570 001EB5F0 D3FF4014 */  bnez       $v0, .L001EB540
    /* EC574 001EB5F4 0400B526 */   addiu     $s5, $s5, 0x4
.align 2
  .L001EB5F8:
    /* EC578 001EB5F8 EAA5070C */  jal        func_001E97A8
    /* EC57C 001EB5FC 00000000 */   nop
    /* EC580 001EB600 1600033C */  lui        $v1, %hi(D_0015F6E8)
    /* EC584 001EB604 E8F6638C */  lw         $v1, %lo(D_0015F6E8)($v1)
    /* EC588 001EB608 42006014 */  bnez       $v1, .L001EB714
    /* EC58C 001EB60C 03000224 */   addiu     $v0, $zero, 0x3
    /* EC590 001EB610 1600023C */  lui        $v0, %hi(D_0015F058)
    /* EC594 001EB614 58F0428C */  lw         $v0, %lo(D_0015F058)($v0)
    /* EC598 001EB618 1E000424 */  addiu      $a0, $zero, 0x1E
    /* EC59C 001EB61C 01004224 */  addiu      $v0, $v0, 0x1
    /* EC5A0 001EB620 30E6070C */  jal        func_001F98C0
    /* EC5A4 001EB624 588382AF */   sw        $v0, -0x7CA8($gp)
    /* EC5A8 001EB628 1600033C */  lui        $v1, %hi(D_0015F058)
    /* EC5AC 001EB62C 58F0638C */  lw         $v1, %lo(D_0015F058)($v1)
    /* EC5B0 001EB630 2A104300 */  slt        $v0, $v0, $v1
    /* EC5B4 001EB634 08004010 */  beqz       $v0, .L001EB658
    /* EC5B8 001EB638 5083828F */   lw        $v0, -0x7CB0($gp)
    /* EC5BC 001EB63C 01004224 */  addiu      $v0, $v0, 0x1
    /* EC5C0 001EB640 41004328 */  slti       $v1, $v0, 0x41
    /* EC5C4 001EB644 04006014 */  bnez       $v1, .L001EB658
    /* EC5C8 001EB648 508382AF */   sw        $v0, -0x7CB0($gp)
    /* EC5CC 001EB64C 40000224 */  addiu      $v0, $zero, 0x40
    /* EC5D0 001EB650 1600013C */  lui        $at, %hi(D_0015F050)
    /* EC5D4 001EB654 50F022AC */  sw         $v0, %lo(D_0015F050)($at)
.align 2
  .L001EB658:
    /* EC5D8 001EB658 30E6070C */  jal        func_001F98C0
    /* EC5DC 001EB65C 78000424 */   addiu     $a0, $zero, 0x78
    /* EC5E0 001EB660 1600033C */  lui        $v1, %hi(D_0015F058)
    /* EC5E4 001EB664 58F0638C */  lw         $v1, %lo(D_0015F058)($v1)
    /* EC5E8 001EB668 2A104300 */  slt        $v0, $v0, $v1
    /* EC5EC 001EB66C 21004010 */  beqz       $v0, .L001EB6F4
    /* EC5F0 001EB670 1400033C */   lui       $v1, %hi(D_0013CBE4)
    /* EC5F4 001EB674 30E6070C */  jal        func_001F98C0
    /* EC5F8 001EB678 78000424 */   addiu     $a0, $zero, 0x78
    /* EC5FC 001EB67C 1600033C */  lui        $v1, %hi(D_0015F058)
    /* EC600 001EB680 58F0638C */  lw         $v1, %lo(D_0015F058)($v1)
    /* EC604 001EB684 3C000424 */  addiu      $a0, $zero, 0x3C
    /* EC608 001EB688 D63D013C */  lui        $at, (0x3DD67750 >> 16)
    /* EC60C 001EB68C 50772134 */  ori        $at, $at, (0x3DD67750 & 0xFFFF)
    /* EC610 001EB690 00088144 */  mtc1       $at, $f1
    /* EC614 001EB694 01008050 */  beql       $a0, $zero, .L001EB69C
    /* EC618 001EB698 CD010000 */   break     0, 7
.align 2
  .L001EB69C:
    /* EC61C 001EB69C 23186200 */  subu       $v1, $v1, $v0
    /* EC620 001EB6A0 49C0013C */  lui        $at, (0xC0490FDB >> 16)
    /* EC624 001EB6A4 DB0F2134 */  ori        $at, $at, (0xC0490FDB & 0xFFFF)
    /* EC628 001EB6A8 00008144 */  mtc1       $at, $f0
    /* EC62C 001EB6AC 1A006400 */  div        $zero, $v1, $a0
    /* EC630 001EB6B0 10100000 */  mfhi       $v0
    /* EC634 001EB6B4 00608244 */  mtc1       $v0, $f12
    /* EC638 001EB6B8 00000000 */  nop
    /* EC63C 001EB6BC 20638046 */  cvt.s.w    $f12, $f12
    /* EC640 001EB6C0 02630146 */  mul.s      $f12, $f12, $f1
    /* EC644 001EB6C4 E4E7070C */  jal        func_001F9F90
    /* EC648 001EB6C8 00630046 */   add.s     $f12, $f12, $f0
    /* EC64C 001EB6CC 0042013C */  lui        $at, (0x42000000 >> 16)
    /* EC650 001EB6D0 00088144 */  mtc1       $at, $f1
    /* EC654 001EB6D4 00000000 */  nop
    /* EC658 001EB6D8 02000146 */  mul.s      $f0, $f0, $f1
    /* EC65C 001EB6DC 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* EC660 001EB6E0 00080244 */  mfc1       $v0, $f1
    /* EC664 001EB6E4 60004224 */  addiu      $v0, $v0, 0x60
    /* EC668 001EB6E8 1600013C */  lui        $at, %hi(D_0015F054)
    /* EC66C 001EB6EC 54F022AC */  sw         $v0, %lo(D_0015F054)($at)
    /* EC670 001EB6F0 1400033C */  lui        $v1, %hi(D_0013CBE4)
.align 2
  .L001EB6F4:
    /* EC674 001EB6F4 E4CB628C */  lw         $v0, %lo(D_0013CBE4)($v1)
    /* EC678 001EB6F8 40084230 */  andi       $v0, $v0, 0x840
    /* EC67C 001EB6FC 1B004010 */  beqz       $v0, .L001EB76C
    /* EC680 001EB700 00000000 */   nop
    /* EC684 001EB704 9867080C */  jal        func_00219E60
    /* EC688 001EB708 00000000 */   nop
    /* EC68C 001EB70C 17000010 */  b          .L001EB76C
    /* EC690 001EB710 00000000 */   nop
.align 2
  .L001EB714:
    /* EC694 001EB714 19006214 */  bne        $v1, $v0, .L001EB77C
    /* EC698 001EB718 04000224 */   addiu     $v0, $zero, 0x4
    /* EC69C 001EB71C 30E6070C */  jal        func_001F98C0
    /* EC6A0 001EB720 3C000424 */   addiu     $a0, $zero, 0x3C
    /* EC6A4 001EB724 1600033C */  lui        $v1, %hi(D_0015F050)
    /* EC6A8 001EB728 50F0638C */  lw         $v1, %lo(D_0015F050)($v1)
    /* EC6AC 001EB72C 1600013C */  lui        $at, %hi(D_0015F058)
    /* EC6B0 001EB730 58F022AC */  sw         $v0, %lo(D_0015F058)($at)
    /* EC6B4 001EB734 F0FF6324 */  addiu      $v1, $v1, -0x10
    /* EC6B8 001EB738 03006104 */  bgez       $v1, .L001EB748
    /* EC6BC 001EB73C 508383AF */   sw        $v1, -0x7CB0($gp)
    /* EC6C0 001EB740 1600013C */  lui        $at, %hi(D_0015F050)
    /* EC6C4 001EB744 50F020AC */  sw         $zero, %lo(D_0015F050)($at)
.align 2
  .L001EB748:
    /* EC6C8 001EB748 1600023C */  lui        $v0, %hi(D_0015F054)
    /* EC6CC 001EB74C 54F0428C */  lw         $v0, %lo(D_0015F054)($v0)
    /* EC6D0 001EB750 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* EC6D4 001EB754 03004104 */  bgez       $v0, .L001EB764
    /* EC6D8 001EB758 548382AF */   sw        $v0, -0x7CAC($gp)
    /* EC6DC 001EB75C 1600013C */  lui        $at, %hi(D_0015F054)
    /* EC6E0 001EB760 54F020AC */  sw         $zero, %lo(D_0015F054)($at)
.align 2
  .L001EB764:
    /* EC6E4 001EB764 6868080C */  jal        func_0021A1A0
    /* EC6E8 001EB768 00000000 */   nop
.align 2
  .L001EB76C:
    /* EC6EC 001EB76C 5AB7080C */  jal        func_0022DD68
    /* EC6F0 001EB770 00000000 */   nop
    /* EC6F4 001EB774 08000010 */  b          .L001EB798
    /* EC6F8 001EB778 8000BF7B */   lq        $ra, 0x80($sp)
.align 2
  .L001EB77C:
    /* EC6FC 001EB77C 06006214 */  bne        $v1, $v0, .L001EB798
    /* EC700 001EB780 8000BF7B */   lq        $ra, 0x80($sp)
    /* EC704 001EB784 FAF4070C */  jal        func_001FD3E8
    /* EC708 001EB788 00000000 */   nop
    /* EC70C 001EB78C 5AB7080C */  jal        func_0022DD68
    /* EC710 001EB790 00000000 */   nop
    /* EC714 001EB794 8000BF7B */  lq         $ra, 0x80($sp)
.align 2
  .L001EB798:
    /* EC718 001EB798 7000B57B */  lq         $s5, 0x70($sp)
    /* EC71C 001EB79C 6000B47B */  lq         $s4, 0x60($sp)
    /* EC720 001EB7A0 5000B37B */  lq         $s3, 0x50($sp)
    /* EC724 001EB7A4 4000B27B */  lq         $s2, 0x40($sp)
    /* EC728 001EB7A8 3000B17B */  lq         $s1, 0x30($sp)
    /* EC72C 001EB7AC 2000B07B */  lq         $s0, 0x20($sp)
    /* EC730 001EB7B0 9000B4C7 */  lwc1       $f20, 0x90($sp)
    /* EC734 001EB7B4 0800E003 */  jr         $ra
    /* EC738 001EB7B8 A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_001EB458
    /* EC73C 001EB7BC 00000000 */  nop
