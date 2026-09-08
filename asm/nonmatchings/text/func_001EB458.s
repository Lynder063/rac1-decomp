.align 3
nonmatching func_001EB458, 0x364

glabel func_001EB458
    /* EC3D8 001EB458 60FFBD27 */  addiu      $29, $29, -0xA0
    /* EC3DC 001EB45C 2000B07F */  sq         $16, 0x20($29)
    /* EC3E0 001EB460 8000BF7F */  sq         $31, 0x80($29)
    /* EC3E4 001EB464 7000B57F */  sq         $21, 0x70($29)
    /* EC3E8 001EB468 6000B47F */  sq         $20, 0x60($29)
    /* EC3EC 001EB46C 5000B37F */  sq         $19, 0x50($29)
    /* EC3F0 001EB470 4000B27F */  sq         $18, 0x40($29)
    /* EC3F4 001EB474 3000B17F */  sq         $17, 0x30($29)
    /* EC3F8 001EB478 ECA5070C */  jal        func_001E97B0
    /* EC3FC 001EB47C 9000B4E7 */   swc1      $f20, 0x90($29)
    /* EC400 001EB480 1600013C */  lui        $1, %hi(D_0015F53C)
    /* EC404 001EB484 3CF520C4 */  lwc1       $f0, %lo(D_0015F53C)($1)
    /* EC408 001EB488 1900023C */  lui        $2, %hi(D_0018CC20)
    /* EC40C 001EB48C 803D013C */  lui        $1, (0x3D800000 >> 16)
    /* EC410 001EB490 00088144 */  mtc1       $1, $f1
    /* EC414 001EB494 20CC4524 */  addiu      $5, $2, %lo(D_0018CC20)
    /* EC418 001EB498 2D804000 */  daddu      $16, $2, $0
    /* EC41C 001EB49C 3800A38C */  lw         $3, 0x38($5)
    /* EC420 001EB4A0 01000146 */  sub.s      $f0, $f0, $f1
    /* EC424 001EB4A4 3400A28C */  lw         $2, 0x34($5)
    /* EC428 001EB4A8 00108044 */  mtc1       $0, $f2
    /* EC42C 001EB4AC 01006324 */  addiu      $3, $3, 0x1
    /* EC430 001EB4B0 01004424 */  addiu      $4, $2, 0x1
    /* EC434 001EB4B4 3800A3AC */  sw         $3, 0x38($5)
    /* EC438 001EB4B8 34000246 */  c.lt.s     $f0, $f2
    /* EC43C 001EB4BC 3400A4AC */  sw         $4, 0x34($5)
    /* EC440 001EB4C0 03000045 */  bc1f       .L001EB4D0
    /* EC444 001EB4C4 3C8880E7 */   swc1      $f0, -0x77C4($28)
    /* EC448 001EB4C8 1600013C */  lui        $1, %hi(D_0015F53C)
    /* EC44C 001EB4CC 3CF522E4 */  swc1       $f2, %lo(D_0015F53C)($1)
.align 2
  .L001EB4D0:
    /* EC450 001EB4D0 4000A284 */  lh         $2, 0x40($5)
    /* EC454 001EB4D4 2A108200 */  slt        $2, $4, $2
    /* EC458 001EB4D8 07004014 */  bnez       $2, .L001EB4F8
    /* EC45C 001EB4DC 60006228 */   slti      $2, $3, 0x60
    /* EC460 001EB4E0 3C00A0AC */  sw         $0, 0x3C($5)
    /* EC464 001EB4E4 2D200000 */  daddu      $4, $0, $0
    /* EC468 001EB4E8 8814080C */  jal        func_00205220
    /* EC46C 001EB4EC 3400A0AC */   sw        $0, 0x34($5)
    /* EC470 001EB4F0 07000010 */  b          .L001EB510
    /* EC474 001EB4F4 00000000 */   nop
.align 2
  .L001EB4F8:
    /* EC478 001EB4F8 05004014 */  bnez       $2, .L001EB510
    /* EC47C 001EB4FC 00000000 */   nop
    /* EC480 001EB500 3C00A48C */  lw         $4, 0x3C($5)
    /* EC484 001EB504 01008424 */  addiu      $4, $4, 0x1
    /* EC488 001EB508 8814080C */  jal        func_00205220
    /* EC48C 001EB50C 3C00A4AC */   sw        $4, 0x3C($5)
.align 2
  .L001EB510:
    /* EC490 001EB510 CEAC070C */  jal        func_001EB338
    /* EC494 001EB514 2D900000 */   daddu     $18, $0, $0
    /* EC498 001EB518 20CC0326 */  addiu      $3, $16, %lo(D_0018CC20)
    /* EC49C 001EB51C 44006284 */  lh         $2, 0x44($3)
    /* EC4A0 001EB520 35004018 */  blez       $2, .L001EB5F8
    /* EC4A4 001EB524 00000000 */   nop
    /* EC4A8 001EB528 2D986000 */  daddu      $19, $3, $0
    /* EC4AC 001EB52C 003F013C */  lui        $1, (0x3F000000 >> 16)
    /* EC4B0 001EB530 00A08144 */  mtc1       $1, $f20
    /* EC4B4 001EB534 1000B427 */  addiu      $20, $29, 0x10
    /* EC4B8 001EB538 78017526 */  addiu      $21, $19, 0x178
    /* EC4BC 001EB53C 00000000 */  nop
.align 2
  .L001EB540:
    /* EC4C0 001EB540 3800628E */  lw         $2, 0x38($19)
    /* EC4C4 001EB544 0000B18E */  lw         $17, 0x0($21)
    /* EC4C8 001EB548 43100200 */  sra        $2, $2, 1
    /* EC4CC 001EB54C 01004324 */  addiu      $3, $2, 0x1
    /* EC4D0 001EB550 500022A2 */  sb         $2, 0x50($17)
    /* EC4D4 001EB554 510023A2 */  sb         $3, 0x51($17)
    /* EC4D8 001EB558 B435080C */  jal        func_0020D6D0
    /* EC4DC 001EB55C 2D202002 */   daddu     $4, $17, $0
    /* EC4E0 001EB560 3800648E */  lw         $4, 0x38($19)
    /* EC4E4 001EB564 22EA070C */  jal        func_001FA888
    /* EC4E8 001EB568 01008430 */   andi      $4, $4, 0x1
    /* EC4EC 001EB56C 02001446 */  mul.s      $f0, $f0, $f20
    /* EC4F0 001EB570 803F013C */  lui        $1, (0x3F800000 >> 16)
    /* EC4F4 001EB574 00608144 */  mtc1       $1, $f12
    /* EC4F8 001EB578 50002592 */  lbu        $5, 0x50($17)
    /* EC4FC 001EB57C 2D20A003 */  daddu      $4, $29, $0
    /* EC500 001EB580 7800308E */  lw         $16, 0x78($17)
    /* EC504 001EB584 01630046 */  sub.s      $f12, $f12, $f0
    /* EC508 001EB588 00290500 */  sll        $5, $5, 4
    /* EC50C 001EB58C 540020E6 */  swc1       $f0, 0x54($17)
    /* EC510 001EB590 0CE7070C */  jal        func_001F9C30
    /* EC514 001EB594 21280502 */   addu      $5, $16, $5
    /* EC518 001EB598 51002592 */  lbu        $5, 0x51($17)
    /* EC51C 001EB59C 2D208002 */  daddu      $4, $20, $0
    /* EC520 001EB5A0 54002CC6 */  lwc1       $f12, 0x54($17)
    /* EC524 001EB5A4 00290500 */  sll        $5, $5, 4
    /* EC528 001EB5A8 0CE7070C */  jal        func_001F9C30
    /* EC52C 001EB5AC 21280502 */   addu      $5, $16, $5
    /* EC530 001EB5B0 2D308002 */  daddu      $6, $20, $0
    /* EC534 001EB5B4 10002426 */  addiu      $4, $17, 0x10
    /* EC538 001EB5B8 F6E6070C */  jal        func_001F9BD8
    /* EC53C 001EB5BC 2D28A003 */   daddu     $5, $29, $0
    /* EC540 001EB5C0 FF000224 */  addiu      $2, $0, 0xFF
    /* EC544 001EB5C4 2D202002 */  daddu      $4, $17, $0
    /* EC548 001EB5C8 523B080C */  jal        func_0020ED48
    /* EC54C 001EB5CC 710022A2 */   sb        $2, 0x71($17)
    /* EC550 001EB5D0 A6002286 */  lh         $2, 0xA6($17)
    /* EC554 001EB5D4 03004014 */  bnez       $2, .L001EB5E4
    /* EC558 001EB5D8 7F0020A2 */   sb        $0, 0x7F($17)
    /* EC55C 001EB5DC E4A5070C */  jal        func_001E9790
    /* EC560 001EB5E0 2D202002 */   daddu     $4, $17, $0
.align 2
  .L001EB5E4:
    /* EC564 001EB5E4 44006286 */  lh         $2, 0x44($19)
    /* EC568 001EB5E8 01005226 */  addiu      $18, $18, 0x1
    /* EC56C 001EB5EC 2A104202 */  slt        $2, $18, $2
    /* EC570 001EB5F0 D3FF4014 */  bnez       $2, .L001EB540
    /* EC574 001EB5F4 0400B526 */   addiu     $21, $21, 0x4
.align 2
  .L001EB5F8:
    /* EC578 001EB5F8 EAA5070C */  jal        func_001E97A8
    /* EC57C 001EB5FC 00000000 */   nop
    /* EC580 001EB600 1600033C */  lui        $3, %hi(D_0015F6E8)
    /* EC584 001EB604 E8F6638C */  lw         $3, %lo(D_0015F6E8)($3)
    /* EC588 001EB608 42006014 */  bnez       $3, .L001EB714
    /* EC58C 001EB60C 03000224 */   addiu     $2, $0, 0x3
    /* EC590 001EB610 1600023C */  lui        $2, %hi(D_0015F058)
    /* EC594 001EB614 58F0428C */  lw         $2, %lo(D_0015F058)($2)
    /* EC598 001EB618 1E000424 */  addiu      $4, $0, 0x1E
    /* EC59C 001EB61C 01004224 */  addiu      $2, $2, 0x1
    /* EC5A0 001EB620 30E6070C */  jal        func_001F98C0
    /* EC5A4 001EB624 588382AF */   sw        $2, -0x7CA8($28)
    /* EC5A8 001EB628 1600033C */  lui        $3, %hi(D_0015F058)
    /* EC5AC 001EB62C 58F0638C */  lw         $3, %lo(D_0015F058)($3)
    /* EC5B0 001EB630 2A104300 */  slt        $2, $2, $3
    /* EC5B4 001EB634 08004010 */  beqz       $2, .L001EB658
    /* EC5B8 001EB638 5083828F */   lw        $2, -0x7CB0($28)
    /* EC5BC 001EB63C 01004224 */  addiu      $2, $2, 0x1
    /* EC5C0 001EB640 41004328 */  slti       $3, $2, 0x41
    /* EC5C4 001EB644 04006014 */  bnez       $3, .L001EB658
    /* EC5C8 001EB648 508382AF */   sw        $2, -0x7CB0($28)
    /* EC5CC 001EB64C 40000224 */  addiu      $2, $0, 0x40
    /* EC5D0 001EB650 1600013C */  lui        $1, %hi(D_0015F050)
    /* EC5D4 001EB654 50F022AC */  sw         $2, %lo(D_0015F050)($1)
.align 2
  .L001EB658:
    /* EC5D8 001EB658 30E6070C */  jal        func_001F98C0
    /* EC5DC 001EB65C 78000424 */   addiu     $4, $0, 0x78
    /* EC5E0 001EB660 1600033C */  lui        $3, %hi(D_0015F058)
    /* EC5E4 001EB664 58F0638C */  lw         $3, %lo(D_0015F058)($3)
    /* EC5E8 001EB668 2A104300 */  slt        $2, $2, $3
    /* EC5EC 001EB66C 21004010 */  beqz       $2, .L001EB6F4
    /* EC5F0 001EB670 1400033C */   lui       $3, %hi(D_0013CBE4)
    /* EC5F4 001EB674 30E6070C */  jal        func_001F98C0
    /* EC5F8 001EB678 78000424 */   addiu     $4, $0, 0x78
    /* EC5FC 001EB67C 1600033C */  lui        $3, %hi(D_0015F058)
    /* EC600 001EB680 58F0638C */  lw         $3, %lo(D_0015F058)($3)
    /* EC604 001EB684 3C000424 */  addiu      $4, $0, 0x3C
    /* EC608 001EB688 D63D013C */  lui        $1, (0x3DD67750 >> 16)
    /* EC60C 001EB68C 50772134 */  ori        $1, $1, (0x3DD67750 & 0xFFFF)
    /* EC610 001EB690 00088144 */  mtc1       $1, $f1
    /* EC614 001EB694 01008050 */  beql       $4, $0, .L001EB69C
    /* EC618 001EB698 CD010000 */   break     0, 7
.align 2
  .L001EB69C:
    /* EC61C 001EB69C 23186200 */  subu       $3, $3, $2
    /* EC620 001EB6A0 49C0013C */  lui        $1, (0xC0490FDB >> 16)
    /* EC624 001EB6A4 DB0F2134 */  ori        $1, $1, (0xC0490FDB & 0xFFFF)
    /* EC628 001EB6A8 00008144 */  mtc1       $1, $f0
    /* EC62C 001EB6AC 1A006400 */  div        $0, $3, $4
    /* EC630 001EB6B0 10100000 */  mfhi       $2
    /* EC634 001EB6B4 00608244 */  mtc1       $2, $f12
    /* EC638 001EB6B8 00000000 */  nop
    /* EC63C 001EB6BC 20638046 */  cvt.s.w    $f12, $f12
    /* EC640 001EB6C0 02630146 */  mul.s      $f12, $f12, $f1
    /* EC644 001EB6C4 E4E7070C */  jal        func_001F9F90
    /* EC648 001EB6C8 00630046 */   add.s     $f12, $f12, $f0
    /* EC64C 001EB6CC 0042013C */  lui        $1, (0x42000000 >> 16)
    /* EC650 001EB6D0 00088144 */  mtc1       $1, $f1
    /* EC654 001EB6D4 00000000 */  nop
    /* EC658 001EB6D8 02000146 */  mul.s      $f0, $f0, $f1
    /* EC65C 001EB6DC 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* EC660 001EB6E0 00080244 */  mfc1       $2, $f1
    /* EC664 001EB6E4 60004224 */  addiu      $2, $2, 0x60
    /* EC668 001EB6E8 1600013C */  lui        $1, %hi(D_0015F054)
    /* EC66C 001EB6EC 54F022AC */  sw         $2, %lo(D_0015F054)($1)
    /* EC670 001EB6F0 1400033C */  lui        $3, %hi(D_0013CBE4)
.align 2
  .L001EB6F4:
    /* EC674 001EB6F4 E4CB628C */  lw         $2, %lo(D_0013CBE4)($3)
    /* EC678 001EB6F8 40084230 */  andi       $2, $2, 0x840
    /* EC67C 001EB6FC 1B004010 */  beqz       $2, .L001EB76C
    /* EC680 001EB700 00000000 */   nop
    /* EC684 001EB704 9867080C */  jal        func_00219E60
    /* EC688 001EB708 00000000 */   nop
    /* EC68C 001EB70C 17000010 */  b          .L001EB76C
    /* EC690 001EB710 00000000 */   nop
.align 2
  .L001EB714:
    /* EC694 001EB714 19006214 */  bne        $3, $2, .L001EB77C
    /* EC698 001EB718 04000224 */   addiu     $2, $0, 0x4
    /* EC69C 001EB71C 30E6070C */  jal        func_001F98C0
    /* EC6A0 001EB720 3C000424 */   addiu     $4, $0, 0x3C
    /* EC6A4 001EB724 1600033C */  lui        $3, %hi(D_0015F050)
    /* EC6A8 001EB728 50F0638C */  lw         $3, %lo(D_0015F050)($3)
    /* EC6AC 001EB72C 1600013C */  lui        $1, %hi(D_0015F058)
    /* EC6B0 001EB730 58F022AC */  sw         $2, %lo(D_0015F058)($1)
    /* EC6B4 001EB734 F0FF6324 */  addiu      $3, $3, -0x10
    /* EC6B8 001EB738 03006104 */  bgez       $3, .L001EB748
    /* EC6BC 001EB73C 508383AF */   sw        $3, -0x7CB0($28)
    /* EC6C0 001EB740 1600013C */  lui        $1, %hi(D_0015F050)
    /* EC6C4 001EB744 50F020AC */  sw         $0, %lo(D_0015F050)($1)
.align 2
  .L001EB748:
    /* EC6C8 001EB748 1600023C */  lui        $2, %hi(D_0015F054)
    /* EC6CC 001EB74C 54F0428C */  lw         $2, %lo(D_0015F054)($2)
    /* EC6D0 001EB750 F0FF4224 */  addiu      $2, $2, -0x10
    /* EC6D4 001EB754 03004104 */  bgez       $2, .L001EB764
    /* EC6D8 001EB758 548382AF */   sw        $2, -0x7CAC($28)
    /* EC6DC 001EB75C 1600013C */  lui        $1, %hi(D_0015F054)
    /* EC6E0 001EB760 54F020AC */  sw         $0, %lo(D_0015F054)($1)
.align 2
  .L001EB764:
    /* EC6E4 001EB764 6868080C */  jal        func_0021A1A0
    /* EC6E8 001EB768 00000000 */   nop
.align 2
  .L001EB76C:
    /* EC6EC 001EB76C 5AB7080C */  jal        func_0022DD68
    /* EC6F0 001EB770 00000000 */   nop
    /* EC6F4 001EB774 08000010 */  b          .L001EB798
    /* EC6F8 001EB778 8000BF7B */   lq        $31, 0x80($29)
.align 2
  .L001EB77C:
    /* EC6FC 001EB77C 06006214 */  bne        $3, $2, .L001EB798
    /* EC700 001EB780 8000BF7B */   lq        $31, 0x80($29)
    /* EC704 001EB784 FAF4070C */  jal        func_001FD3E8
    /* EC708 001EB788 00000000 */   nop
    /* EC70C 001EB78C 5AB7080C */  jal        func_0022DD68
    /* EC710 001EB790 00000000 */   nop
    /* EC714 001EB794 8000BF7B */  lq         $31, 0x80($29)
.align 2
  .L001EB798:
    /* EC718 001EB798 7000B57B */  lq         $21, 0x70($29)
    /* EC71C 001EB79C 6000B47B */  lq         $20, 0x60($29)
    /* EC720 001EB7A0 5000B37B */  lq         $19, 0x50($29)
    /* EC724 001EB7A4 4000B27B */  lq         $18, 0x40($29)
    /* EC728 001EB7A8 3000B17B */  lq         $17, 0x30($29)
    /* EC72C 001EB7AC 2000B07B */  lq         $16, 0x20($29)
    /* EC730 001EB7B0 9000B4C7 */  lwc1       $f20, 0x90($29)
    /* EC734 001EB7B4 0800E003 */  jr         $31
    /* EC738 001EB7B8 A000BD27 */   addiu     $29, $29, 0xA0
endlabel func_001EB458
    /* EC73C 001EB7BC 00000000 */  nop
