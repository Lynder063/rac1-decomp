.align 3
/* Handwritten function */
nonmatching func_002352C8, 0xC28

glabel func_002352C8
    /* 136248 002352C8 0070013C */  lui        $at, (0x70003FA8 >> 16)
    /* 13624C 002352CC F83F3FFC */  sd         $ra, (0x70003FF8 & 0xFFFF)($at)
    /* 136250 002352D0 F03F3EFC */  sd         $fp, (0x70003FF0 & 0xFFFF)($at)
    /* 136254 002352D4 E83F3DFC */  sd         $sp, (0x70003FE8 & 0xFFFF)($at)
    /* 136258 002352D8 E03F37FC */  sd         $s7, (0x70003FE0 & 0xFFFF)($at)
    /* 13625C 002352DC D83F36FC */  sd         $s6, (0x70003FD8 & 0xFFFF)($at)
    /* 136260 002352E0 D03F35FC */  sd         $s5, (0x70003FD0 & 0xFFFF)($at)
    /* 136264 002352E4 C83F34FC */  sd         $s4, (0x70003FC8 & 0xFFFF)($at)
    /* 136268 002352E8 C03F33FC */  sd         $s3, (0x70003FC0 & 0xFFFF)($at)
    /* 13626C 002352EC B83F32FC */  sd         $s2, (0x70003FB8 & 0xFFFF)($at)
    /* 136270 002352F0 B03F31FC */  sd         $s1, (0x70003FB0 & 0xFFFF)($at)
    /* 136274 002352F4 A83F30FC */  sd         $s0, (0x70003FA8 & 0xFFFF)($at)
    /* 136278 002352F8 8CA2988F */  lw         $t8, -0x5D74($gp)
    /* 13627C 002352FC 00701F3C */  lui        $ra, (0x70003778 >> 16)
    /* 136280 00235300 90A2998F */  lw         $t9, -0x5D70($gp)
    /* 136284 00235304 0010013C */  lui        $at, (0x1000D400 >> 16)
    /* 136288 00235308 103FF8AF */  sw         $t8, (0x70003F10 & 0xFFFF)($ra)
    /* 13628C 0023530C 00D42134 */  ori        $at, $at, (0x1000D400 & 0xFFFF)
    /* 136290 00235310 00100220 */  addi       $v0, $zero, 0x1000 /* handwritten instruction */
    /* 136294 00235314 C0FF1323 */  addi       $s3, $t8, -0x40 /* handwritten instruction */
    /* 136298 00235318 800022AC */  sw         $v0, 0x80($at)
    /* 13629C 0023531C 80000220 */  addi       $v0, $zero, 0x80 /* handwritten instruction */
    /* 1362A0 00235320 200022AC */  sw         $v0, 0x20($at)
    /* 1362A4 00235324 00010234 */  ori        $v0, $zero, 0x100
    /* 1362A8 00235328 100038AC */  sw         $t8, 0x10($at)
    /* 1362AC 0023532C 00081823 */  addi       $t8, $t8, 0x800 /* handwritten instruction */
    /* 1362B0 00235330 000022AC */  sw         $v0, 0x0($at)
    /* 1362B4 00235334 00081520 */  addi       $s5, $zero, 0x800 /* handwritten instruction */
    /* 1362B8 00235338 00A39E8F */  lw         $fp, -0x5D00($gp)
    /* 1362BC 0023533C 0000FD23 */  addi       $sp, $ra, (0x70000000 & 0xFFFF) /* handwritten instruction */
    /* 1362C0 00235340 003BE223 */  addi       $v0, $ra, (0x70003B00 & 0xFFFF) /* handwritten instruction */
    /* 1362C4 00235344 1900013C */  lui        $at, %hi(D_001940C0)
    /* 1362C8 00235348 C0402124 */  addiu      $at, $at, %lo(D_001940C0)
    /* 1362CC 0023534C 80004320 */  addi       $v1, $v0, 0x80 /* handwritten instruction */
.align 2
  .L00235350:
    /* 1362D0 00235350 00002478 */  lq         $a0, 0x0($at)
    /* 1362D4 00235354 10002578 */  lq         $a1, 0x10($at)
    /* 1362D8 00235358 0000447C */  sq         $a0, 0x0($v0)
    /* 1362DC 0023535C 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
    /* 1362E0 00235360 1000457C */  sq         $a1, 0x10($v0)
    /* 1362E4 00235364 20004220 */  addi       $v0, $v0, 0x20 /* handwritten instruction */
    /* 1362E8 00235368 F9FF4314 */  bne        $v0, $v1, .L00235350
    /* 1362EC 0023536C 00000000 */   nop
    /* 1362F0 00235370 8044023C */  lui        $v0, (0x44800000 >> 16)
    /* 1362F4 00235374 1800013C */  lui        $at, %hi(D_00187040)
    /* 1362F8 00235378 40702124 */  addiu      $at, $at, %lo(D_00187040)
    /* 1362FC 0023537C 0008A248 */  qmtc2.ni   $v0, $vf1
    /* 136300 00235380 40013CD8 */  lqc2       $vf28, 0x140($at)
    /* 136304 00235384 00003DD8 */  lqc2       $vf29, 0x0($at)
    /* 136308 00235388 10003ED8 */  lqc2       $vf30, 0x10($at)
    /* 13630C 0023538C 20003FD8 */  lqc2       $vf31, 0x20($at)
    /* 136310 00235390 18E7E14B */  vmulx.xyzw $vf28, $vf28, $vf1x
    /* 136314 00235394 00000000 */  nop
    /* 136318 00235398 00012CD8 */  lqc2       $vf12, 0x100($at)
    /* 13631C 0023539C 10012DD8 */  lqc2       $vf13, 0x110($at)
    /* 136320 002353A0 20012ED8 */  lqc2       $vf14, 0x120($at)
    /* 136324 002353A4 30012FD8 */  lqc2       $vf15, 0x130($at)
    /* 136328 002353A8 6C00DC4B */  vsub.xyz   $vf1, $vf0, $vf28
    /* 13632C 002353AC 9B64E04B */  vmulw.xyzw $vf18, $vf12, $vf0w
    /* 136330 002353B0 DB6CE04B */  vmulw.xyzw $vf19, $vf13, $vf0w
    /* 136334 002353B4 1B75E04B */  vmulw.xyzw $vf20, $vf14, $vf0w
    /* 136338 002353B8 BC61E14B */  .word      0x4BE161BC    # vmulax.xyzw ACC, $vf12, $vf1x
    /* 13633C 002353BC BD68E14B */  .word      0x4BE168BD    # vmadday.xyzw ACC, $vf13, $vf1y
    /* 136340 002353C0 BE70E14B */  .word      0x4BE170BE    # vmaddaz.xyzw ACC, $vf14, $vf1z
    /* 136344 002353C4 4B7DE04B */  vmaddw.xyzw $vf21, $vf15, $vf0w
    /* 136348 002353C8 1900013C */  lui        $at, %hi(D_0018CE00)
    /* 13634C 002353CC 00CE2124 */  addiu      $at, $at, %lo(D_0018CE00)
    /* 136350 002353D0 A00037D8 */  lqc2       $vf23, 0xA0($at)
    /* 136354 002353D4 B00038D8 */  lqc2       $vf24, 0xB0($at)
    /* 136358 002353D8 D00139D8 */  lqc2       $vf25, 0x1D0($at)
    /* 13635C 002353DC E0013AD8 */  lqc2       $vf26, 0x1E0($at)
    /* 136360 002353E0 F0013BD8 */  lqc2       $vf27, 0x1F0($at)
    /* 136364 002353E4 60A296DB */  lqc2       $vf22, -0x5DA0($gp)
    /* 136368 002353E8 C0A2818F */  lw         $at, -0x5D40($gp)
    /* 13636C 002353EC 0008A148 */  qmtc2.ni   $at, $vf1
    /* 136370 002353F0 C005814A */  vaddx.y    $vf23, $vf0, $vf1x
    /* 136374 002353F4 00000000 */  nop
    /* 136378 002353F8 B0A2817B */  lq         $at, -0x5D50($gp)
    /* 13637C 002353FC 003FE17F */  sq         $at, (0x70003F00 & 0xFFFF)($ra)
    /* 136380 00235400 809D8C7B */  lq         $t4, -0x6280($gp)
    /* 136384 00235404 909D8D7B */  lq         $t5, -0x6270($gp)
    /* 136388 00235408 A09D8E7B */  lq         $t6, -0x6260($gp)
    /* 13638C 0023540C B09D8F7B */  lq         $t7, -0x6250($gp)
    /* 136390 00235410 0000A07F */  sq         $zero, 0x0($sp)
    /* 136394 00235414 1000023C */  lui        $v0, %hi(D_00103560)
    /* 136398 00235418 60354224 */  addiu      $v0, $v0, %lo(D_00103560)
    /* 13639C 0023541C 1000013C */  lui        $at, %hi(D_00103570)
    /* 1363A0 00235420 70352124 */  addiu      $at, $at, %lo(D_00103570)
    /* 1363A4 00235424 0000428C */  lw         $v0, 0x0($v0)
    /* 1363A8 00235428 0400A1AF */  sw         $at, 0x4($sp)
    /* 1363AC 0023542C 0030013C */  lui        $at, (0x30000000 >> 16)
    /* 1363B0 00235430 0000A1AF */  sw         $at, 0x0($sp)
    /* 1363B4 00235434 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 1363B8 00235438 0000A2A7 */  sh         $v0, 0x0($sp)
    /* 1363BC 0023543C 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 1363C0 00235440 1E00013C */  lui        $at, %hi(D_001DEAC0)
    /* 1363C4 00235444 C0EA2124 */  addiu      $at, $at, %lo(D_001DEAC0)
    /* 1363C8 00235448 11000220 */  addi       $v0, $zero, 0x11 /* handwritten instruction */
    /* 1363CC 0023544C 00000000 */  nop
.align 2
  .L00235450:
    /* 1363D0 00235450 00002378 */  lq         $v1, 0x0($at)
    /* 1363D4 00235454 10002120 */  addi       $at, $at, 0x10 /* handwritten instruction */
    /* 1363D8 00235458 FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* 1363DC 0023545C 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 1363E0 00235460 0000A37F */  sq         $v1, 0x0($sp)
    /* 1363E4 00235464 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 1363E8 00235468 F9FF401C */  bgtz       $v0, .L00235450
    /* 1363EC 0023546C 00000000 */   nop
    /* 1363F0 00235470 0030F023 */  addi       $s0, $ra, (0x70003000 & 0xFFFF) /* handwritten instruction */
    /* 1363F4 00235474 003DF123 */  addi       $s1, $ra, (0x70003D00 & 0xFFFF) /* handwritten instruction */
    /* 1363F8 00235478 0034F223 */  addi       $s2, $ra, (0x70003400 & 0xFFFF) /* handwritten instruction */
    /* 1363FC 0023547C 00000000 */  nop
.align 2
  .L00235480:
    /* 136400 00235480 B5012013 */  beqz       $t9, .L00235B58
    /* 136404 00235484 00000000 */   nop
    /* 136408 00235488 0008B53A */  xori       $s5, $s5, 0x800
    /* 13640C 0023548C 0010023C */  lui        $v0, (0x1000D400 >> 16)
    /* 136410 00235490 0010F623 */  addi       $s6, $ra, (0x70001000 & 0xFFFF) /* handwritten instruction */
    /* 136414 00235494 00D44234 */  ori        $v0, $v0, (0x1000D400 & 0xFFFF)
.align 2
  .L00235498:
    /* 136418 00235498 0000418C */  lw         $at, 0x0($v0)
    /* 13641C 0023549C 00012130 */  andi       $at, $at, 0x100
    /* 136420 002354A0 00000000 */  nop
    /* 136424 002354A4 00000000 */  nop
    /* 136428 002354A8 00000000 */  nop
    /* 13642C 002354AC FAFF2014 */  bnez       $at, .L00235498
    /* 136430 002354B0 00000000 */   nop
    /* 136434 002354B4 20B0D502 */  add        $s6, $s6, $s5 /* handwritten instruction */
    /* 136438 002354B8 20000120 */  addi       $at, $zero, 0x20 /* handwritten instruction */
    /* 13643C 002354BC F0FF0014 */  bnez       $zero, .L00235480
    /* 136440 002354C0 E8083970 */   pminw     $at, $at, $t9
    /* 136444 002354C4 22C82103 */  sub        $t9, $t9, $at /* handwritten instruction */
    /* 136448 002354C8 80090100 */  sll        $at, $at, 6
    /* 13644C 002354CC 09002013 */  beqz       $t9, func_002354F4
    /* 136450 002354D0 20B8C102 */   add       $s7, $s6, $at /* handwritten instruction */
    /* 136454 002354D4 0008C33A */  xori       $v1, $s6, 0x800
    /* 136458 002354D8 100058AC */  sw         $t8, 0x10($v0)
    /* 13645C 002354DC 800043AC */  sw         $v1, 0x80($v0)
    /* 136460 002354E0 80000320 */  addi       $v1, $zero, 0x80 /* handwritten instruction */
    /* 136464 002354E4 200043AC */  sw         $v1, 0x20($v0)
    /* 136468 002354E8 00010334 */  ori        $v1, $zero, 0x100
    /* 13646C 002354EC 000043AC */  sw         $v1, 0x0($v0)
    /* 136470 002354F0 00081823 */  addi       $t8, $t8, 0x800 /* handwritten instruction */
.align 2
  alabel func_002354F4
    /* 136474 002354F4 0000C1DA */  lqc2       $vf1, 0x0($s6)
    /* 136478 002354F8 00000000 */  nop
    /* 13647C 002354FC E0FFD712 */  beq        $s6, $s7, .L00235480
    /* 136480 00235500 0000D422 */   addi      $s4, $s6, 0x0 /* handwritten instruction */
    /* 136484 00235504 AC08DC4B */  vsub.xyz   $vf2, $vf1, $vf28
    /* 136488 00235508 4000D622 */  addi       $s6, $s6, 0x40 /* handwritten instruction */
    /* 13648C 0023550C C300014B */  vaddw.x    $vf3, $vf0, $vf1w
    /* 136490 00235510 40007322 */  addi       $s3, $s3, 0x40 /* handwritten instruction */
    /* 136494 00235514 C700814A */  vsubw.y    $vf3, $vf0, $vf1w
    /* 136498 00235518 3E008A96 */  lhu        $t2, 0x3E($s4)
    /* 13649C 0023551C 10008B8E */  lw         $t3, 0x10($s4)
    /* 1364A0 00235520 00000000 */  nop
    /* 1364A4 00235524 BCE9C24B */  .word      0x4BC2E9BC    # vmulax.xyz ACC, $vf29, $vf2x
    /* 1364A8 00235528 3B008692 */  lbu        $a2, 0x3B($s4)
    /* 1364AC 0023552C BDF0C24B */  .word      0x4BC2F0BD    # vmadday.xyz ACC, $vf30, $vf2y
    /* 1364B0 00235530 3A008792 */  lbu        $a3, 0x3A($s4)
    /* 1364B4 00235534 8AF8C24B */  vmaddz.xyz $vf2, $vf31, $vf2z
    /* 1364B8 00235538 2030DF00 */  add        $a2, $a2, $ra /* handwritten instruction */
    /* 1364BC 0023553C 003BC690 */  lbu        $a2, 0x3B00($a2)
    /* 1364C0 00235540 00000000 */  nop
    /* 1364C4 00235544 1BD2814B */  vmulw.xy   $vf8, $vf26, $vf1w
    /* 1364C8 00235548 00000000 */  nop
    /* 1364CC 0023554C 4218824B */  vaddz.xy   $vf1, $vf3, $vf2z
    /* 1364D0 00235550 2438E600 */  and        $a3, $a3, $a2
    /* 1364D4 00235554 E7FFE010 */  beqz       $a3, func_002354F4
    /* 1364D8 00235558 5AC1824B */   vmulz.xy  $vf5, $vf24, $vf2z
    /* 1364DC 0023555C FD11824B */  vabs.xy    $vf2, $vf2
    /* 1364E0 00235560 00000000 */  nop
    /* 1364E4 00235564 00000000 */  nop
    /* 1364E8 00235568 00000000 */  nop
    /* 1364EC 0023556C ECB8814B */  vsub.xy    $vf3, $vf23, $vf1
    /* 1364F0 00235570 00000000 */  nop
    /* 1364F4 00235574 00000000 */  nop
    /* 1364F8 00235578 00000000 */  nop
    /* 1364FC 0023557C AC11884B */  vsub.xy    $vf6, $vf2, $vf8
    /* 136500 00235580 00000000 */  nop
    /* 136504 00235584 2812884B */  vadd.xy    $vf8, $vf2, $vf8
    /* 136508 00235588 00000000 */  nop
    /* 13650C 0023558C 2C099B4B */  vsub.xy    $vf4, $vf1, $vf27
    /* 136510 00235590 00000000 */  nop
    /* 136514 00235594 00182148 */  qmfc2.ni   $at, $vf3
    /* 136518 00235598 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 13651C 0023559C EC29864B */  vsub.xy    $vf7, $vf5, $vf6
    /* 136520 002355A0 2D30C600 */  daddu      $a2, $a2, $a2
    /* 136524 002355A4 2C2A884B */  vsub.xy    $vf8, $vf5, $vf8
    /* 136528 002355A8 3C100100 */  dsll32     $v0, $at, 0
    /* 13652C 002355AC D1FF2004 */  bltz       $at, func_002354F4
    /* 136530 002355B0 7C09814B */   vftoi0.xy $vf1, $vf1
    /* 136534 002355B4 CFFF4104 */  bgez       $v0, func_002354F4
    /* 136538 002355B8 00202448 */   qmfc2.ni  $a0, $vf4
    /* 13653C 002355BC 00382248 */  qmfc2.ni   $v0, $vf7
    /* 136540 002355C0 00000000 */  nop
    /* 136544 002355C4 00402348 */  qmfc2.ni   $v1, $vf8
    /* 136548 002355C8 26208600 */  xor        $a0, $a0, $a2
    /* 13654C 002355CC C9FF4004 */  bltz       $v0, func_002354F4
    /* 136550 002355D0 3C100200 */   dsll32    $v0, $v0, 0
    /* 136554 002355D4 C7FF4004 */  bltz       $v0, func_002354F4
    /* 136558 002355D8 25186400 */   or        $v1, $v1, $a0
    /* 13655C 002355DC BE006004 */  bltz       $v1, .L002358D8
    /* 136560 002355E0 3C180300 */   dsll32    $v1, $v1, 0
    /* 136564 002355E4 BC006004 */  bltz       $v1, .L002358D8
    /* 136568 002355E8 00082148 */   qmfc2.ni  $at, $vf1
.align 2
  .L002355EC:
    /* 13656C 002355EC 35008392 */  lbu        $v1, 0x35($s4)
    /* 136570 002355F0 00000000 */  nop
    /* 136574 002355F4 36008496 */  lhu        $a0, 0x36($s4)
    /* 136578 002355F8 FE33E523 */  addi       $a1, $ra, (0x700033FE & 0xFFFF) /* handwritten instruction */
    /* 13657C 002355FC 03006014 */  bnez       $v1, .L0023560C
    /* 136580 00235600 FFFF0334 */   ori       $v1, $zero, 0xFFFF
    /* 136584 00235604 07006410 */  beq        $v1, $a0, .L00235624
    /* 136588 00235608 00000000 */   nop
.align 2
  .L0023560C:
    /* 13658C 0023560C 05000512 */  beq        $s0, $a1, .L00235624
    /* 136590 00235610 103FE38F */   lw        $v1, (0x70003F10 & 0xFFFF)($ra)
    /* 136594 00235614 22186302 */  sub        $v1, $s3, $v1 /* handwritten instruction */
    /* 136598 00235618 82190300 */  srl        $v1, $v1, 6
    /* 13659C 0023561C 000003A6 */  sh         $v1, 0x0($s0)
    /* 1365A0 00235620 02001022 */  addi       $s0, $s0, 0x2 /* handwritten instruction */
.align 2
  .L00235624:
    /* 1365A4 00235624 003FE38F */  lw         $v1, (0x70003F00 & 0xFFFF)($ra)
    /* 1365A8 00235628 00000000 */  nop
    /* 1365AC 0023562C 043FE48F */  lw         $a0, (0x70003F04 & 0xFFFF)($ra)
    /* 1365B0 00235630 3F100100 */  dsra32     $v0, $at, 0
    /* 1365B4 00235634 083FE58F */  lw         $a1, (0x70003F08 & 0xFFFF)($ra)
    /* 1365B8 00235638 20082000 */  add        $at, $at, $zero /* handwritten instruction */
    /* 1365BC 0023563C 22304201 */  sub        $a2, $t2, $v0 /* handwritten instruction */
    /* 1365C0 00235640 27008992 */  lbu        $t1, 0x27($s4)
    /* 1365C4 00235644 1100C004 */  bltz       $a2, .L0023568C
    /* 1365C8 00235648 22306200 */   sub       $a2, $v1, $v0 /* handwritten instruction */
    /* 1365CC 0023564C 2E008796 */  lhu        $a3, 0x2E($s4)
    /* 1365D0 00235650 7837E823 */  addi       $t0, $ra, (0x70003778 & 0xFFFF) /* handwritten instruction */
    /* 1365D4 00235654 0D001211 */  beq        $t0, $s2, .L0023568C
    /* 1365D8 00235658 2C008896 */   lhu       $t0, 0x2C($s4)
    /* 1365DC 0023565C 2038EB00 */  add        $a3, $a3, $t3 /* handwritten instruction */
    /* 1365E0 00235660 00000000 */  nop
    /* 1365E4 00235664 000047AE */  sw         $a3, 0x0($s2)
    /* 1365E8 00235668 040048AE */  sw         $t0, 0x4($s2)
    /* 1365EC 0023566C 1C008796 */  lhu        $a3, 0x1C($s4)
    /* 1365F0 00235670 28008892 */  lbu        $t0, 0x28($s4)
    /* 1365F4 00235674 2038EB00 */  add        $a3, $a3, $t3 /* handwritten instruction */
    /* 1365F8 00235678 00000000 */  nop
    /* 1365FC 0023567C 800347AE */  sw         $a3, 0x380($s2)
    /* 136600 00235680 840348AE */  sw         $t0, 0x384($s2)
    /* 136604 00235684 08005222 */  addi       $s2, $s2, 0x8 /* handwritten instruction */
    /* 136608 00235688 00000000 */  nop
.align 2
  .L0023568C:
    /* 13660C 0023568C 5F002015 */  bnez       $t1, .L0023580C
    /* 136610 00235690 00000000 */   nop
    /* 136614 00235694 5D00C018 */  blez       $a2, .L0023580C
    /* 136618 00235698 22306100 */   sub       $a2, $v1, $at /* handwritten instruction */
    /* 13661C 0023569C 3900C018 */  blez       $a2, .L00235784
    /* 136620 002356A0 22308200 */   sub       $a2, $a0, $v0 /* handwritten instruction */
    /* 136624 002356A4 3500C018 */  blez       $a2, .L0023577C
    /* 136628 002356A8 22308100 */   sub       $a2, $a0, $at /* handwritten instruction */
    /* 13662C 002356AC 0900C018 */  blez       $a2, .L002356D4
    /* 136630 002356B0 2230A200 */   sub       $a2, $a1, $v0 /* handwritten instruction */
    /* 136634 002356B4 0500C018 */  blez       $a2, .L002356CC
    /* 136638 002356B8 2230A100 */   sub       $a2, $a1, $at /* handwritten instruction */
    /* 13663C 002356BC 0300C018 */  blez       $a2, .L002356CC
    /* 136640 002356C0 00000000 */   nop
    /* 136644 002356C4 B7D50808 */  j          func_002356DC
    /* 136648 002356C8 14000A20 */   addi      $t2, $zero, 0x14 /* handwritten instruction */
.align 2
  .L002356CC:
    /* 13664C 002356CC B7D50808 */  j          func_002356DC
    /* 136650 002356D0 10000A20 */   addi      $t2, $zero, 0x10 /* handwritten instruction */
.align 2
  .L002356D4:
    /* 136654 002356D4 0E000A20 */  addi       $t2, $zero, 0xE /* handwritten instruction */
    /* 136658 002356D8 00000000 */  nop
.align 2
  alabel func_002356DC
    /* 13665C 002356DC 16008296 */  lhu        $v0, 0x16($s4)
    /* 136660 002356E0 20008392 */  lbu        $v1, 0x20($s4)
    /* 136664 002356E4 1E008496 */  lhu        $a0, 0x1E($s4)
    /* 136668 002356E8 26008592 */  lbu        $a1, 0x26($s4)
    /* 13666C 002356EC 2A008692 */  lbu        $a2, 0x2A($s4)
    /* 136670 002356F0 00000000 */  nop
    /* 136674 002356F4 0000AC7F */  sq         $t4, 0x0($sp)
    /* 136678 002356F8 00000000 */  nop
    /* 13667C 002356FC 0000A3A3 */  sb         $v1, 0x0($sp)
    /* 136680 00235700 20104B00 */  add        $v0, $v0, $t3 /* handwritten instruction */
    /* 136684 00235704 0400A2AF */  sw         $v0, 0x4($sp)
    /* 136688 00235708 00000000 */  nop
    /* 13668C 0023570C 1A008296 */  lhu        $v0, 0x1A($s4)
    /* 136690 00235710 23008392 */  lbu        $v1, 0x23($s4)
    /* 136694 00235714 1000AC7F */  sq         $t4, 0x10($sp)
    /* 136698 00235718 00000000 */  nop
    /* 13669C 0023571C 1000A3A3 */  sb         $v1, 0x10($sp)
    /* 1366A0 00235720 20104B00 */  add        $v0, $v0, $t3 /* handwritten instruction */
    /* 1366A4 00235724 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1366A8 00235728 00000000 */  nop
    /* 1366AC 0023572C 2000AD7F */  sq         $t5, 0x20($sp)
    /* 1366B0 00235730 82280500 */  srl        $a1, $a1, 2
    /* 1366B4 00235734 2000A5A3 */  sb         $a1, 0x20($sp)
    /* 1366B8 00235738 20208B00 */  add        $a0, $a0, $t3 /* handwritten instruction */
    /* 1366BC 0023573C 2400A4AF */  sw         $a0, 0x24($sp)
    /* 1366C0 00235740 80280500 */  sll        $a1, $a1, 2
    /* 1366C4 00235744 2E00A5A3 */  sb         $a1, 0x2E($sp)
    /* 1366C8 00235748 00000000 */  nop
    /* 1366CC 0023574C 2C00A6A3 */  sb         $a2, 0x2C($sp)
    /* 1366D0 00235750 00000000 */  nop
    /* 1366D4 00235754 3000AF7F */  sq         $t7, 0x30($sp)
    /* 1366D8 00235758 4000DE23 */  addi       $fp, $fp, 0x40 /* handwritten instruction */
    /* 1366DC 0023575C 3C00AAA3 */  sb         $t2, 0x3C($sp)
    /* 1366E0 00235760 4000BD23 */  addi       $sp, $sp, 0x40 /* handwritten instruction */
    /* 1366E4 00235764 0007A133 */  andi       $at, $sp, 0x700
    /* 1366E8 00235768 00070220 */  addi       $v0, $zero, 0x700 /* handwritten instruction */
    /* 1366EC 0023576C 61FF2214 */  bne        $at, $v0, func_002354F4
    /* 1366F0 00235770 00000000 */   nop
    /* 1366F4 00235774 21D60808 */  j          func_00235884
    /* 1366F8 00235778 00000000 */   nop
.align 2
  .L0023577C:
    /* 1366FC 0023577C E3D50808 */  j          func_0023578C
    /* 136700 00235780 0A000A20 */   addi      $t2, $zero, 0xA /* handwritten instruction */
.align 2
  .L00235784:
    /* 136704 00235784 08000A20 */  addi       $t2, $zero, 0x8 /* handwritten instruction */
    /* 136708 00235788 00000000 */  nop
.align 2
  alabel func_0023578C
    /* 13670C 0023578C 16008296 */  lhu        $v0, 0x16($s4)
    /* 136710 00235790 22008392 */  lbu        $v1, 0x22($s4)
    /* 136714 00235794 1E008496 */  lhu        $a0, 0x1E($s4)
    /* 136718 00235798 25008592 */  lbu        $a1, 0x25($s4)
    /* 13671C 0023579C 2A008692 */  lbu        $a2, 0x2A($s4)
    /* 136720 002357A0 00000000 */  nop
    /* 136724 002357A4 0000AC7F */  sq         $t4, 0x0($sp)
    /* 136728 002357A8 00000000 */  nop
    /* 13672C 002357AC 0000A3A3 */  sb         $v1, 0x0($sp)
    /* 136730 002357B0 20104B00 */  add        $v0, $v0, $t3 /* handwritten instruction */
    /* 136734 002357B4 0400A2AF */  sw         $v0, 0x4($sp)
    /* 136738 002357B8 00000000 */  nop
    /* 13673C 002357BC 1000AE7F */  sq         $t6, 0x10($sp)
    /* 136740 002357C0 82280500 */  srl        $a1, $a1, 2
    /* 136744 002357C4 1000A5A3 */  sb         $a1, 0x10($sp)
    /* 136748 002357C8 20208B00 */  add        $a0, $a0, $t3 /* handwritten instruction */
    /* 13674C 002357CC 1400A4AF */  sw         $a0, 0x14($sp)
    /* 136750 002357D0 80280500 */  sll        $a1, $a1, 2
    /* 136754 002357D4 1E00A5A3 */  sb         $a1, 0x1E($sp)
    /* 136758 002357D8 00000000 */  nop
    /* 13675C 002357DC 1C00A6A3 */  sb         $a2, 0x1C($sp)
    /* 136760 002357E0 00000000 */  nop
    /* 136764 002357E4 2000AF7F */  sq         $t7, 0x20($sp)
    /* 136768 002357E8 3000DE23 */  addi       $fp, $fp, 0x30 /* handwritten instruction */
    /* 13676C 002357EC 2C00AAA3 */  sb         $t2, 0x2C($sp)
    /* 136770 002357F0 3000BD23 */  addi       $sp, $sp, 0x30 /* handwritten instruction */
    /* 136774 002357F4 0007A133 */  andi       $at, $sp, 0x700
    /* 136778 002357F8 00070220 */  addi       $v0, $zero, 0x700 /* handwritten instruction */
    /* 13677C 002357FC 3DFF2214 */  bne        $at, $v0, func_002354F4
    /* 136780 00235800 00000000 */   nop
    /* 136784 00235804 21D60808 */  j          func_00235884
    /* 136788 00235808 00000000 */   nop
.align 2
  .L0023580C:
    /* 13678C 0023580C 14008296 */  lhu        $v0, 0x14($s4)
    /* 136790 00235810 21008392 */  lbu        $v1, 0x21($s4)
    /* 136794 00235814 1E008496 */  lhu        $a0, 0x1E($s4)
    /* 136798 00235818 24008592 */  lbu        $a1, 0x24($s4)
    /* 13679C 0023581C 2A008692 */  lbu        $a2, 0x2A($s4)
    /* 1367A0 00235820 00000000 */  nop
    /* 1367A4 00235824 0000AC7F */  sq         $t4, 0x0($sp)
    /* 1367A8 00235828 06000A20 */  addi       $t2, $zero, 0x6 /* handwritten instruction */
    /* 1367AC 0023582C 0000A3A3 */  sb         $v1, 0x0($sp)
    /* 1367B0 00235830 20104B00 */  add        $v0, $v0, $t3 /* handwritten instruction */
    /* 1367B4 00235834 0400A2AF */  sw         $v0, 0x4($sp)
    /* 1367B8 00235838 00000000 */  nop
    /* 1367BC 0023583C 1000AD7F */  sq         $t5, 0x10($sp)
    /* 1367C0 00235840 82280500 */  srl        $a1, $a1, 2
    /* 1367C4 00235844 1000A5A3 */  sb         $a1, 0x10($sp)
    /* 1367C8 00235848 20208B00 */  add        $a0, $a0, $t3 /* handwritten instruction */
    /* 1367CC 0023584C 1400A4AF */  sw         $a0, 0x14($sp)
    /* 1367D0 00235850 80280500 */  sll        $a1, $a1, 2
    /* 1367D4 00235854 1E00A5A3 */  sb         $a1, 0x1E($sp)
    /* 1367D8 00235858 00000000 */  nop
    /* 1367DC 0023585C 1C00A6A3 */  sb         $a2, 0x1C($sp)
    /* 1367E0 00235860 00000000 */  nop
    /* 1367E4 00235864 2000AF7F */  sq         $t7, 0x20($sp)
    /* 1367E8 00235868 3000DE23 */  addi       $fp, $fp, 0x30 /* handwritten instruction */
    /* 1367EC 0023586C 2C00AAA3 */  sb         $t2, 0x2C($sp)
    /* 1367F0 00235870 3000BD23 */  addi       $sp, $sp, 0x30 /* handwritten instruction */
    /* 1367F4 00235874 0007A133 */  andi       $at, $sp, 0x700
    /* 1367F8 00235878 00070220 */  addi       $v0, $zero, 0x700 /* handwritten instruction */
    /* 1367FC 0023587C 1DFF2214 */  bne        $at, $v0, func_002354F4
    /* 136800 00235880 00000000 */   nop
.align 2
  alabel func_00235884
    /* 136804 00235884 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 136808 00235888 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 13680C 0023588C 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 136810 00235890 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L00235894:
    /* 136814 00235894 0000838C */  lw         $v1, 0x0($a0)
    /* 136818 00235898 00016330 */  andi       $v1, $v1, 0x100
    /* 13681C 0023589C 00000000 */  nop
    /* 136820 002358A0 00000000 */  nop
    /* 136824 002358A4 00000000 */  nop
    /* 136828 002358A8 FAFF6014 */  bnez       $v1, .L00235894
    /* 13682C 002358AC 00000000 */   nop
    /* 136830 002358B0 800082AC */  sw         $v0, 0x80($a0)
    /* 136834 002358B4 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 136838 002358B8 100082AC */  sw         $v0, 0x10($a0)
    /* 13683C 002358BC 02110100 */  srl        $v0, $at, 4
    /* 136840 002358C0 200082AC */  sw         $v0, 0x20($a0)
    /* 136844 002358C4 00010234 */  ori        $v0, $zero, 0x100
    /* 136848 002358C8 000082AC */  sw         $v0, 0x0($a0)
    /* 13684C 002358CC 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 136850 002358D0 3DD50808 */  j          func_002354F4
    /* 136854 002358D4 0008BD3B */   xori      $sp, $sp, 0x800
.align 2
  .L002358D8:
    /* 136858 002358D8 38008196 */  lhu        $at, 0x38($s4)
    /* 13685C 002358DC E03BE223 */  addi       $v0, $ra, (0x70003BE0 & 0xFFFF) /* handwritten instruction */
    /* 136860 002358E0 20082B00 */  add        $at, $at, $t3 /* handwritten instruction */
    /* 136864 002358E4 08000320 */  addi       $v1, $zero, 0x8 /* handwritten instruction */
    /* 136868 002358E8 000024DC */  ld         $a0, 0x0($at)
    /* 13686C 002358EC 080025DC */  ld         $a1, 0x8($at)
    /* 136870 002358F0 88258070 */  pextlh     $a0, $a0, $zero
    /* 136874 002358F4 882DA070 */  pextlh     $a1, $a1, $zero
.align 2
  .L002358F8:
    /* 136878 002358F8 BF220470 */  psraw      $a0, $a0, 10
    /* 13687C 002358FC BF2A0570 */  psraw      $a1, $a1, 10
    /* 136880 00235900 0020A448 */  qmtc2.ni   $a0, $vf4
    /* 136884 00235904 10002120 */  addi       $at, $at, 0x10 /* handwritten instruction */
    /* 136888 00235908 0028A548 */  qmtc2.ni   $a1, $vf5
    /* 13688C 0023590C 20004220 */  addi       $v0, $v0, 0x20 /* handwritten instruction */
    /* 136890 00235910 3C21C44B */  vitof0.xyz $vf4, $vf4
    /* 136894 00235914 000024DC */  ld         $a0, 0x0($at)
    /* 136898 00235918 3C29C54B */  vitof0.xyz $vf5, $vf5
    /* 13689C 0023591C 080025DC */  ld         $a1, 0x8($at)
    /* 1368A0 00235920 88258070 */  pextlh     $a0, $a0, $zero
    /* 1368A4 00235924 882DA070 */  pextlh     $a1, $a1, $zero
    /* 1368A8 00235928 000044F8 */  sqc2       $vf4, 0x0($v0)
    /* 1368AC 0023592C FEFF6320 */  addi       $v1, $v1, -0x2 /* handwritten instruction */
    /* 1368B0 00235930 F1FF601C */  bgtz       $v1, .L002358F8
    /* 1368B4 00235934 100045F8 */   sqc2      $vf5, 0x10($v0)
    /* 1368B8 00235938 003CE5DB */  lqc2       $vf5, (0x70003C00 & 0xFFFF)($ra)
    /* 1368BC 0023593C 103CE6DB */  lqc2       $vf6, (0x70003C10 & 0xFFFF)($ra)
    /* 1368C0 00235940 203CE7DB */  lqc2       $vf7, (0x70003C20 & 0xFFFF)($ra)
    /* 1368C4 00235944 303CE8DB */  lqc2       $vf8, (0x70003C30 & 0xFFFF)($ra)
    /* 1368C8 00235948 BC91E54B */  .word      0x4BE591BC    # vmulax.xyzw ACC, $vf18, $vf5x
    /* 1368CC 0023594C BD98E54B */  .word      0x4BE598BD    # vmadday.xyzw ACC, $vf19, $vf5y
    /* 1368D0 00235950 BEA0E54B */  .word      0x4BE5A0BE    # vmaddaz.xyzw ACC, $vf20, $vf5z
    /* 1368D4 00235954 4BA9E04B */  vmaddw.xyzw $vf5, $vf21, $vf0w
    /* 1368D8 00235958 BC91E64B */  .word      0x4BE691BC    # vmulax.xyzw ACC, $vf18, $vf6x
    /* 1368DC 0023595C BD98E64B */  .word      0x4BE698BD    # vmadday.xyzw ACC, $vf19, $vf6y
    /* 1368E0 00235960 BEA0E64B */  .word      0x4BE6A0BE    # vmaddaz.xyzw ACC, $vf20, $vf6z
    /* 1368E4 00235964 8BA9E04B */  vmaddw.xyzw $vf6, $vf21, $vf0w
    /* 1368E8 00235968 FF29C54B */  .word      0x4BC529FF                    # vclipw.xyz $vf5, $vf5w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1368EC 0023596C BC91E74B */  .word      0x4BE791BC    # vmulax.xyzw ACC, $vf18, $vf7x
    /* 1368F0 00235970 BD98E74B */  .word      0x4BE798BD    # vmadday.xyzw ACC, $vf19, $vf7y
    /* 1368F4 00235974 BEA0E74B */  .word      0x4BE7A0BE    # vmaddaz.xyzw ACC, $vf20, $vf7z
    /* 1368F8 00235978 CBA9E04B */  vmaddw.xyzw $vf7, $vf21, $vf0w
    /* 1368FC 0023597C FF31C64B */  .word      0x4BC631FF                    # vclipw.xyz $vf6, $vf6w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 136900 00235980 BC91E84B */  .word      0x4BE891BC    # vmulax.xyzw ACC, $vf18, $vf8x
    /* 136904 00235984 BD98E84B */  .word      0x4BE898BD    # vmadday.xyzw ACC, $vf19, $vf8y
    /* 136908 00235988 BEA0E84B */  .word      0x4BE8A0BE    # vmaddaz.xyzw ACC, $vf20, $vf8z
    /* 13690C 0023598C 0BAAE04B */  vmaddw.xyzw $vf8, $vf21, $vf0w
    /* 136910 00235990 FF39C74B */  .word      0x4BC739FF                    # vclipw.xyz $vf7, $vf7w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 136914 00235994 6A29964B */  vmul.xy    $vf5, $vf5, $vf22
    /* 136918 00235998 AA31964B */  vmul.xy    $vf6, $vf6, $vf22
    /* 13691C 0023599C FF41C84B */  .word      0x4BC841FF                    # vclipw.xyz $vf8, $vf8w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 136920 002359A0 EA39964B */  vmul.xy    $vf7, $vf7, $vf22
    /* 136924 002359A4 2A42964B */  vmul.xy    $vf8, $vf8, $vf22
    /* 136928 002359A8 403CEADB */  lqc2       $vf10, (0x70003C40 & 0xFFFF)($ra)
    /* 13692C 002359AC 503CEBDB */  lqc2       $vf11, (0x70003C50 & 0xFFFF)($ra)
    /* 136930 002359B0 00904148 */  cfc2.ni    $at, $vi18
    /* 136934 002359B4 00000000 */  nop
    /* 136938 002359B8 FF29C54B */  .word      0x4BC529FF                    # vclipw.xyz $vf5, $vf5w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 13693C 002359BC FF31C64B */  .word      0x4BC631FF                    # vclipw.xyz $vf6, $vf6w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 136940 002359C0 FF39C74B */  .word      0x4BC739FF                    # vclipw.xyz $vf7, $vf7w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 136944 002359C4 FF41C84B */  .word      0x4BC841FF                    # vclipw.xyz $vf8, $vf8w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 136948 002359C8 BC91EA4B */  .word      0x4BEA91BC    # vmulax.xyzw ACC, $vf18, $vf10x
    /* 13694C 002359CC BD98EA4B */  .word      0x4BEA98BD    # vmadday.xyzw ACC, $vf19, $vf10y
    /* 136950 002359D0 BEA0EA4B */  .word      0x4BEAA0BE    # vmaddaz.xyzw ACC, $vf20, $vf10z
    /* 136954 002359D4 4BA9E04B */  vmaddw.xyzw $vf5, $vf21, $vf0w
    /* 136958 002359D8 00904348 */  cfc2.ni    $v1, $vi18
    /* 13695C 002359DC 00000000 */  nop
    /* 136960 002359E0 603CE7DB */  lqc2       $vf7, (0x70003C60 & 0xFFFF)($ra)
    /* 136964 002359E4 703CE8DB */  lqc2       $vf8, (0x70003C70 & 0xFFFF)($ra)
    /* 136968 002359E8 BC91EB4B */  .word      0x4BEB91BC    # vmulax.xyzw ACC, $vf18, $vf11x
    /* 13696C 002359EC BD98EB4B */  .word      0x4BEB98BD    # vmadday.xyzw ACC, $vf19, $vf11y
    /* 136970 002359F0 BEA0EB4B */  .word      0x4BEBA0BE    # vmaddaz.xyzw ACC, $vf20, $vf11z
    /* 136974 002359F4 8BA9E04B */  vmaddw.xyzw $vf6, $vf21, $vf0w
    /* 136978 002359F8 FF29C54B */  .word      0x4BC529FF                    # vclipw.xyz $vf5, $vf5w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 13697C 002359FC BC91E74B */  .word      0x4BE791BC    # vmulax.xyzw ACC, $vf18, $vf7x
    /* 136980 00235A00 BD98E74B */  .word      0x4BE798BD    # vmadday.xyzw ACC, $vf19, $vf7y
    /* 136984 00235A04 BEA0E74B */  .word      0x4BE7A0BE    # vmaddaz.xyzw ACC, $vf20, $vf7z
    /* 136988 00235A08 CBA9E04B */  vmaddw.xyzw $vf7, $vf21, $vf0w
    /* 13698C 00235A0C FF31C64B */  .word      0x4BC631FF                    # vclipw.xyz $vf6, $vf6w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 136990 00235A10 BC91E84B */  .word      0x4BE891BC    # vmulax.xyzw ACC, $vf18, $vf8x
    /* 136994 00235A14 BD98E84B */  .word      0x4BE898BD    # vmadday.xyzw ACC, $vf19, $vf8y
    /* 136998 00235A18 BEA0E84B */  .word      0x4BE8A0BE    # vmaddaz.xyzw ACC, $vf20, $vf8z
    /* 13699C 00235A1C 0BAAE04B */  vmaddw.xyzw $vf8, $vf21, $vf0w
    /* 1369A0 00235A20 FF39C74B */  .word      0x4BC739FF                    # vclipw.xyz $vf7, $vf7w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1369A4 00235A24 6A29964B */  vmul.xy    $vf5, $vf5, $vf22
    /* 1369A8 00235A28 AA31964B */  vmul.xy    $vf6, $vf6, $vf22
    /* 1369AC 00235A2C FF41C84B */  .word      0x4BC841FF                    # vclipw.xyz $vf8, $vf8w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1369B0 00235A30 EA39964B */  vmul.xy    $vf7, $vf7, $vf22
    /* 1369B4 00235A34 82290100 */  srl        $a1, $at, 6
    /* 1369B8 00235A38 2A42964B */  vmul.xy    $vf8, $vf8, $vf22
    /* 1369BC 00235A3C 02330100 */  srl        $a2, $at, 12
    /* 1369C0 00235A40 823C0100 */  srl        $a3, $at, 18
    /* 1369C4 00235A44 24082500 */  and        $at, $at, $a1
    /* 1369C8 00235A48 2430C700 */  and        $a2, $a2, $a3
    /* 1369CC 00235A4C 00000000 */  nop
    /* 1369D0 00235A50 00904248 */  cfc2.ni    $v0, $vi18
    /* 1369D4 00235A54 24082600 */  and        $at, $at, $a2
    /* 1369D8 00235A58 FF29C54B */  .word      0x4BC529FF                    # vclipw.xyz $vf5, $vf5w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1369DC 00235A5C 00000000 */  nop
    /* 1369E0 00235A60 FF31C64B */  .word      0x4BC631FF                    # vclipw.xyz $vf6, $vf6w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1369E4 00235A64 82290200 */  srl        $a1, $v0, 6
    /* 1369E8 00235A68 FF39C74B */  .word      0x4BC739FF                    # vclipw.xyz $vf7, $vf7w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1369EC 00235A6C 02330200 */  srl        $a2, $v0, 12
    /* 1369F0 00235A70 FF41C84B */  .word      0x4BC841FF                    # vclipw.xyz $vf8, $vf8w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1369F4 00235A74 823C0200 */  srl        $a3, $v0, 18
    /* 1369F8 00235A78 24104500 */  and        $v0, $v0, $a1
    /* 1369FC 00235A7C 2430C700 */  and        $a2, $a2, $a3
    /* 136A00 00235A80 24104600 */  and        $v0, $v0, $a2
    /* 136A04 00235A84 00000000 */  nop
    /* 136A08 00235A88 24082200 */  and        $at, $at, $v0
    /* 136A0C 00235A8C 00000000 */  nop
    /* 136A10 00235A90 3F002130 */  andi       $at, $at, 0x3F
    /* 136A14 00235A94 00000000 */  nop
    /* 136A18 00235A98 96FE2014 */  bnez       $at, func_002354F4
    /* 136A1C 00235A9C 00904448 */   cfc2.ni   $a0, $vi18
    /* 136A20 00235AA0 25186400 */  or         $v1, $v1, $a0
    /* 136A24 00235AA4 00000000 */  nop
    /* 136A28 00235AA8 D0FE6010 */  beqz       $v1, .L002355EC
    /* 136A2C 00235AAC 00082148 */   qmfc2.ni  $at, $vf1
    /* 136A30 00235AB0 35008392 */  lbu        $v1, 0x35($s4)
    /* 136A34 00235AB4 00000000 */  nop
    /* 136A38 00235AB8 36008496 */  lhu        $a0, 0x36($s4)
    /* 136A3C 00235ABC FE33E523 */  addi       $a1, $ra, (0x700033FE & 0xFFFF) /* handwritten instruction */
    /* 136A40 00235AC0 03006014 */  bnez       $v1, .L00235AD0
    /* 136A44 00235AC4 FFFF0334 */   ori       $v1, $zero, 0xFFFF
    /* 136A48 00235AC8 07006410 */  beq        $v1, $a0, .L00235AE8
    /* 136A4C 00235ACC 00000000 */   nop
.align 2
  .L00235AD0:
    /* 136A50 00235AD0 05000512 */  beq        $s0, $a1, .L00235AE8
    /* 136A54 00235AD4 103FE38F */   lw        $v1, (0x70003F10 & 0xFFFF)($ra)
    /* 136A58 00235AD8 22186302 */  sub        $v1, $s3, $v1 /* handwritten instruction */
    /* 136A5C 00235ADC 82190300 */  srl        $v1, $v1, 6
    /* 136A60 00235AE0 000003A6 */  sh         $v1, 0x0($s0)
    /* 136A64 00235AE4 02001022 */  addi       $s0, $s0, 0x2 /* handwritten instruction */
.align 2
  .L00235AE8:
    /* 136A68 00235AE8 00082148 */  qmfc2.ni   $at, $vf1
    /* 136A6C 00235AEC FC3EE223 */  addi       $v0, $ra, (0x70003EFC & 0xFFFF) /* handwritten instruction */
    /* 136A70 00235AF0 80FE5110 */  beq        $v0, $s1, func_002354F4
    /* 136A74 00235AF4 000033AE */   sw        $s3, 0x0($s1)
    /* 136A78 00235AF8 04003122 */  addi       $s1, $s1, 0x4 /* handwritten instruction */
    /* 136A7C 00235AFC 3F100100 */  dsra32     $v0, $at, 0
    /* 136A80 00235B00 22304201 */  sub        $a2, $t2, $v0 /* handwritten instruction */
    /* 136A84 00235B04 00000000 */  nop
    /* 136A88 00235B08 1100C004 */  bltz       $a2, .L00235B50
    /* 136A8C 00235B0C 00000000 */   nop
    /* 136A90 00235B10 2E008796 */  lhu        $a3, 0x2E($s4)
    /* 136A94 00235B14 7837E823 */  addi       $t0, $ra, (0x70003778 & 0xFFFF) /* handwritten instruction */
    /* 136A98 00235B18 0D001211 */  beq        $t0, $s2, .L00235B50
    /* 136A9C 00235B1C 2C008896 */   lhu       $t0, 0x2C($s4)
    /* 136AA0 00235B20 2038EB00 */  add        $a3, $a3, $t3 /* handwritten instruction */
    /* 136AA4 00235B24 00000000 */  nop
    /* 136AA8 00235B28 000047AE */  sw         $a3, 0x0($s2)
    /* 136AAC 00235B2C 040048AE */  sw         $t0, 0x4($s2)
    /* 136AB0 00235B30 1C008796 */  lhu        $a3, 0x1C($s4)
    /* 136AB4 00235B34 28008892 */  lbu        $t0, 0x28($s4)
    /* 136AB8 00235B38 2038EB00 */  add        $a3, $a3, $t3 /* handwritten instruction */
    /* 136ABC 00235B3C 00000000 */  nop
    /* 136AC0 00235B40 800347AE */  sw         $a3, 0x380($s2)
    /* 136AC4 00235B44 840348AE */  sw         $t0, 0x384($s2)
    /* 136AC8 00235B48 08005222 */  addi       $s2, $s2, 0x8 /* handwritten instruction */
    /* 136ACC 00235B4C 00000000 */  nop
.align 2
  .L00235B50:
    /* 136AD0 00235B50 3DD50808 */  j          func_002354F4
    /* 136AD4 00235B54 00000000 */   nop
.align 2
  .L00235B58:
    /* 136AD8 00235B58 1E00013C */  lui        $at, %hi(D_001DEC00)
    /* 136ADC 00235B5C 00EC2124 */  addiu      $at, $at, %lo(D_001DEC00)
    /* 136AE0 00235B60 00002278 */  lq         $v0, 0x0($at)
    /* 136AE4 00235B64 10002378 */  lq         $v1, 0x10($at)
    /* 136AE8 00235B68 20002478 */  lq         $a0, 0x20($at)
    /* 136AEC 00235B6C 30002578 */  lq         $a1, 0x30($at)
    /* 136AF0 00235B70 0000A27F */  sq         $v0, 0x0($sp)
    /* 136AF4 00235B74 1000A37F */  sq         $v1, 0x10($sp)
    /* 136AF8 00235B78 2000A47F */  sq         $a0, 0x20($sp)
    /* 136AFC 00235B7C 3000A57F */  sq         $a1, 0x30($sp)
    /* 136B00 00235B80 4000BD23 */  addi       $sp, $sp, 0x40 /* handwritten instruction */
    /* 136B04 00235B84 4000DE23 */  addi       $fp, $fp, 0x40 /* handwritten instruction */
    /* 136B08 00235B88 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 136B0C 00235B8C 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 136B10 00235B90 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 136B14 00235B94 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L00235B98:
    /* 136B18 00235B98 0000838C */  lw         $v1, 0x0($a0)
    /* 136B1C 00235B9C 00016330 */  andi       $v1, $v1, 0x100
    /* 136B20 00235BA0 00000000 */  nop
    /* 136B24 00235BA4 00000000 */  nop
    /* 136B28 00235BA8 00000000 */  nop
    /* 136B2C 00235BAC FAFF6014 */  bnez       $v1, .L00235B98
    /* 136B30 00235BB0 00000000 */   nop
    /* 136B34 00235BB4 800082AC */  sw         $v0, 0x80($a0)
    /* 136B38 00235BB8 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 136B3C 00235BBC 100082AC */  sw         $v0, 0x10($a0)
    /* 136B40 00235BC0 02110100 */  srl        $v0, $at, 4
    /* 136B44 00235BC4 200082AC */  sw         $v0, 0x20($a0)
    /* 136B48 00235BC8 00010234 */  ori        $v0, $zero, 0x100
    /* 136B4C 00235BCC 000082AC */  sw         $v0, 0x0($a0)
    /* 136B50 00235BD0 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 136B54 00235BD4 0008BD3B */  xori       $sp, $sp, 0x800
    /* 136B58 00235BD8 00000000 */  nop
    /* 136B5C 00235BDC 000040AE */  sw         $zero, 0x0($s2)
    /* 136B60 00235BE0 800340AE */  sw         $zero, 0x380($s2)
    /* 136B64 00235BE4 FFFF0120 */  addi       $at, $zero, -0x1 /* handwritten instruction */
    /* 136B68 00235BE8 000001A6 */  sh         $at, 0x0($s0)
    /* 136B6C 00235BEC 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 136B70 00235BF0 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
.align 2
  alabel func_00235BF4
    /* 136B74 00235BF4 0000838C */  lw         $v1, 0x0($a0)
    /* 136B78 00235BF8 00016330 */  andi       $v1, $v1, 0x100
    /* 136B7C 00235BFC 0A006010 */  beqz       $v1, .L00235C28
    /* 136B80 00235C00 10000320 */   addi      $v1, $zero, 0x10 /* handwritten instruction */
.align 2
  .L00235C04:
    /* 136B84 00235C04 00000000 */  nop
    /* 136B88 00235C08 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 136B8C 00235C0C 00000000 */  nop
    /* 136B90 00235C10 00000000 */  nop
    /* 136B94 00235C14 00000000 */  nop
    /* 136B98 00235C18 FAFF6014 */  bnez       $v1, .L00235C04
    /* 136B9C 00235C1C 00000000 */   nop
    /* 136BA0 00235C20 FDD60808 */  j          func_00235BF4
    /* 136BA4 00235C24 00000000 */   nop
.align 2
  .L00235C28:
    /* 136BA8 00235C28 1E00023C */  lui        $v0, %hi(D_001E1200)
    /* 136BAC 00235C2C 00124224 */  addiu      $v0, $v0, %lo(D_001E1200)
    /* 136BB0 00235C30 100082AC */  sw         $v0, 0x10($a0)
    /* 136BB4 00235C34 80370220 */  addi       $v0, $zero, 0x3780 /* handwritten instruction */
    /* 136BB8 00235C38 800082AC */  sw         $v0, 0x80($a0)
    /* 136BBC 00235C3C 38000220 */  addi       $v0, $zero, 0x38 /* handwritten instruction */
    /* 136BC0 00235C40 200082AC */  sw         $v0, 0x20($a0)
    /* 136BC4 00235C44 00010234 */  ori        $v0, $zero, 0x100
    /* 136BC8 00235C48 000082AC */  sw         $v0, 0x0($a0)
    /* 136BCC 00235C4C 00000000 */  nop
.align 2
  alabel func_00235C50
    /* 136BD0 00235C50 0000838C */  lw         $v1, 0x0($a0)
    /* 136BD4 00235C54 00016330 */  andi       $v1, $v1, 0x100
    /* 136BD8 00235C58 0A006010 */  beqz       $v1, .L00235C84
    /* 136BDC 00235C5C 10000320 */   addi      $v1, $zero, 0x10 /* handwritten instruction */
.align 2
  .L00235C60:
    /* 136BE0 00235C60 00000000 */  nop
    /* 136BE4 00235C64 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 136BE8 00235C68 00000000 */  nop
    /* 136BEC 00235C6C 00000000 */  nop
    /* 136BF0 00235C70 00000000 */  nop
    /* 136BF4 00235C74 FAFF6014 */  bnez       $v1, .L00235C60
    /* 136BF8 00235C78 00000000 */   nop
    /* 136BFC 00235C7C 14D70808 */  j          func_00235C50
    /* 136C00 00235C80 00000000 */   nop
.align 2
  .L00235C84:
    /* 136C04 00235C84 003DF023 */  addi       $s0, $ra, (0x70003D00 & 0xFFFF) /* handwritten instruction */
    /* 136C08 00235C88 00000000 */  nop
    /* 136C0C 00235C8C 88001112 */  beq        $s0, $s1, .L00235EB0
    /* 136C10 00235C90 00000000 */   nop
    /* 136C14 00235C94 0000A07F */  sq         $zero, 0x0($sp)
    /* 136C18 00235C98 1000023C */  lui        $v0, %hi(D_00107010)
    /* 136C1C 00235C9C 10704224 */  addiu      $v0, $v0, %lo(D_00107010)
    /* 136C20 00235CA0 1000013C */  lui        $at, %hi(D_00107020)
    /* 136C24 00235CA4 20702124 */  addiu      $at, $at, %lo(D_00107020)
    /* 136C28 00235CA8 0000428C */  lw         $v0, 0x0($v0)
    /* 136C2C 00235CAC 0400A1AF */  sw         $at, 0x4($sp)
    /* 136C30 00235CB0 0030013C */  lui        $at, (0x30000000 >> 16)
    /* 136C34 00235CB4 0000A1AF */  sw         $at, 0x0($sp)
    /* 136C38 00235CB8 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 136C3C 00235CBC 0000A2A7 */  sh         $v0, 0x0($sp)
    /* 136C40 00235CC0 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 136C44 00235CC4 1E00013C */  lui        $at, %hi(D_001DEAC0)
    /* 136C48 00235CC8 C0EA2124 */  addiu      $at, $at, %lo(D_001DEAC0)
    /* 136C4C 00235CCC 11000220 */  addi       $v0, $zero, 0x11 /* handwritten instruction */
    /* 136C50 00235CD0 00000000 */  nop
.align 2
  .L00235CD4:
    /* 136C54 00235CD4 00002378 */  lq         $v1, 0x0($at)
    /* 136C58 00235CD8 10002120 */  addi       $at, $at, 0x10 /* handwritten instruction */
    /* 136C5C 00235CDC FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* 136C60 00235CE0 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 136C64 00235CE4 0000A37F */  sq         $v1, 0x0($sp)
    /* 136C68 00235CE8 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 136C6C 00235CEC F9FF401C */  bgtz       $v0, .L00235CD4
    /* 136C70 00235CF0 00000000 */   nop
.align 2
  alabel func_00235CF4
    /* 136C74 00235CF4 3E001112 */  beq        $s0, $s1, .L00235DF0
    /* 136C78 00235CF8 0000148E */   lw        $s4, 0x0($s0)
    /* 136C7C 00235CFC 04001022 */  addi       $s0, $s0, 0x4 /* handwritten instruction */
    /* 136C80 00235D00 02000A20 */  addi       $t2, $zero, 0x2 /* handwritten instruction */
    /* 136C84 00235D04 10008B8E */  lw         $t3, 0x10($s4)
    /* 136C88 00235D08 16008296 */  lhu        $v0, 0x16($s4)
    /* 136C8C 00235D0C 20008392 */  lbu        $v1, 0x20($s4)
    /* 136C90 00235D10 1E008496 */  lhu        $a0, 0x1E($s4)
    /* 136C94 00235D14 26008592 */  lbu        $a1, 0x26($s4)
    /* 136C98 00235D18 2A008692 */  lbu        $a2, 0x2A($s4)
    /* 136C9C 00235D1C 0000AC7F */  sq         $t4, 0x0($sp)
    /* 136CA0 00235D20 00000000 */  nop
    /* 136CA4 00235D24 0000A3A3 */  sb         $v1, 0x0($sp)
    /* 136CA8 00235D28 20104B00 */  add        $v0, $v0, $t3 /* handwritten instruction */
    /* 136CAC 00235D2C 0400A2AF */  sw         $v0, 0x4($sp)
    /* 136CB0 00235D30 00000000 */  nop
    /* 136CB4 00235D34 1A008296 */  lhu        $v0, 0x1A($s4)
    /* 136CB8 00235D38 23008392 */  lbu        $v1, 0x23($s4)
    /* 136CBC 00235D3C 1000AC7F */  sq         $t4, 0x10($sp)
    /* 136CC0 00235D40 00000000 */  nop
    /* 136CC4 00235D44 1000A3A3 */  sb         $v1, 0x10($sp)
    /* 136CC8 00235D48 20104B00 */  add        $v0, $v0, $t3 /* handwritten instruction */
    /* 136CCC 00235D4C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 136CD0 00235D50 00000000 */  nop
    /* 136CD4 00235D54 2000AD7F */  sq         $t5, 0x20($sp)
    /* 136CD8 00235D58 82280500 */  srl        $a1, $a1, 2
    /* 136CDC 00235D5C 2000A5A3 */  sb         $a1, 0x20($sp)
    /* 136CE0 00235D60 20208B00 */  add        $a0, $a0, $t3 /* handwritten instruction */
    /* 136CE4 00235D64 2400A4AF */  sw         $a0, 0x24($sp)
    /* 136CE8 00235D68 80280500 */  sll        $a1, $a1, 2
    /* 136CEC 00235D6C 2E00A5A3 */  sb         $a1, 0x2E($sp)
    /* 136CF0 00235D70 00000000 */  nop
    /* 136CF4 00235D74 2C00A6A3 */  sb         $a2, 0x2C($sp)
    /* 136CF8 00235D78 00000000 */  nop
    /* 136CFC 00235D7C 3000AF7F */  sq         $t7, 0x30($sp)
    /* 136D00 00235D80 4000DE23 */  addi       $fp, $fp, 0x40 /* handwritten instruction */
    /* 136D04 00235D84 3C00AAA3 */  sb         $t2, 0x3C($sp)
    /* 136D08 00235D88 4000BD23 */  addi       $sp, $sp, 0x40 /* handwritten instruction */
    /* 136D0C 00235D8C 0007A133 */  andi       $at, $sp, 0x700
    /* 136D10 00235D90 00070220 */  addi       $v0, $zero, 0x700 /* handwritten instruction */
    /* 136D14 00235D94 D7FF2214 */  bne        $at, $v0, func_00235CF4
    /* 136D18 00235D98 00000000 */   nop
    /* 136D1C 00235D9C FF07A133 */  andi       $at, $sp, 0x7FF
    /* 136D20 00235DA0 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 136D24 00235DA4 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 136D28 00235DA8 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L00235DAC:
    /* 136D2C 00235DAC 0000838C */  lw         $v1, 0x0($a0)
    /* 136D30 00235DB0 00016330 */  andi       $v1, $v1, 0x100
    /* 136D34 00235DB4 00000000 */  nop
    /* 136D38 00235DB8 00000000 */  nop
    /* 136D3C 00235DBC 00000000 */  nop
    /* 136D40 00235DC0 FAFF6014 */  bnez       $v1, .L00235DAC
    /* 136D44 00235DC4 00000000 */   nop
    /* 136D48 00235DC8 800082AC */  sw         $v0, 0x80($a0)
    /* 136D4C 00235DCC 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 136D50 00235DD0 100082AC */  sw         $v0, 0x10($a0)
    /* 136D54 00235DD4 02110100 */  srl        $v0, $at, 4
    /* 136D58 00235DD8 200082AC */  sw         $v0, 0x20($a0)
    /* 136D5C 00235DDC 00010234 */  ori        $v0, $zero, 0x100
    /* 136D60 00235DE0 000082AC */  sw         $v0, 0x0($a0)
    /* 136D64 00235DE4 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 136D68 00235DE8 3DD70808 */  j          func_00235CF4
    /* 136D6C 00235DEC 0008BD3B */   xori      $sp, $sp, 0x800
.align 2
  .L00235DF0:
    /* 136D70 00235DF0 1E00013C */  lui        $at, %hi(D_001DEC00)
    /* 136D74 00235DF4 00EC2124 */  addiu      $at, $at, %lo(D_001DEC00)
    /* 136D78 00235DF8 00002278 */  lq         $v0, 0x0($at)
    /* 136D7C 00235DFC 10002378 */  lq         $v1, 0x10($at)
    /* 136D80 00235E00 20002478 */  lq         $a0, 0x20($at)
    /* 136D84 00235E04 30002578 */  lq         $a1, 0x30($at)
    /* 136D88 00235E08 0000A27F */  sq         $v0, 0x0($sp)
    /* 136D8C 00235E0C 1000A37F */  sq         $v1, 0x10($sp)
    /* 136D90 00235E10 2000A47F */  sq         $a0, 0x20($sp)
    /* 136D94 00235E14 3000A57F */  sq         $a1, 0x30($sp)
    /* 136D98 00235E18 4000BD23 */  addi       $sp, $sp, 0x40 /* handwritten instruction */
    /* 136D9C 00235E1C 4000DE23 */  addi       $fp, $fp, 0x40 /* handwritten instruction */
    /* 136DA0 00235E20 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 136DA4 00235E24 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 136DA8 00235E28 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 136DAC 00235E2C 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L00235E30:
    /* 136DB0 00235E30 0000838C */  lw         $v1, 0x0($a0)
    /* 136DB4 00235E34 00016330 */  andi       $v1, $v1, 0x100
    /* 136DB8 00235E38 00000000 */  nop
    /* 136DBC 00235E3C 00000000 */  nop
    /* 136DC0 00235E40 00000000 */  nop
    /* 136DC4 00235E44 FAFF6014 */  bnez       $v1, .L00235E30
    /* 136DC8 00235E48 00000000 */   nop
    /* 136DCC 00235E4C 800082AC */  sw         $v0, 0x80($a0)
    /* 136DD0 00235E50 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 136DD4 00235E54 100082AC */  sw         $v0, 0x10($a0)
    /* 136DD8 00235E58 02110100 */  srl        $v0, $at, 4
    /* 136DDC 00235E5C 200082AC */  sw         $v0, 0x20($a0)
    /* 136DE0 00235E60 00010234 */  ori        $v0, $zero, 0x100
    /* 136DE4 00235E64 000082AC */  sw         $v0, 0x0($a0)
    /* 136DE8 00235E68 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 136DEC 00235E6C 0008BD3B */  xori       $sp, $sp, 0x800
    /* 136DF0 00235E70 00000000 */  nop
    /* 136DF4 00235E74 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 136DF8 00235E78 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
.align 2
  alabel func_00235E7C
    /* 136DFC 00235E7C 0000838C */  lw         $v1, 0x0($a0)
    /* 136E00 00235E80 00016330 */  andi       $v1, $v1, 0x100
    /* 136E04 00235E84 0A006010 */  beqz       $v1, .L00235EB0
    /* 136E08 00235E88 10000320 */   addi      $v1, $zero, 0x10 /* handwritten instruction */
.align 2
  .L00235E8C:
    /* 136E0C 00235E8C 00000000 */  nop
    /* 136E10 00235E90 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 136E14 00235E94 00000000 */  nop
    /* 136E18 00235E98 00000000 */  nop
    /* 136E1C 00235E9C 00000000 */  nop
    /* 136E20 00235EA0 FAFF6014 */  bnez       $v1, .L00235E8C
    /* 136E24 00235EA4 00000000 */   nop
    /* 136E28 00235EA8 9FD70808 */  j          func_00235E7C
    /* 136E2C 00235EAC 00000000 */   nop
.align 2
  .L00235EB0:
    /* 136E30 00235EB0 00A39EAF */  sw         $fp, -0x5D00($gp)
    /* 136E34 00235EB4 00000000 */  nop
    /* 136E38 00235EB8 0070013C */  lui        $at, (0x70003FA8 >> 16)
    /* 136E3C 00235EBC F83F3FDC */  ld         $ra, (0x70003FF8 & 0xFFFF)($at)
    /* 136E40 00235EC0 F03F3EDC */  ld         $fp, (0x70003FF0 & 0xFFFF)($at)
    /* 136E44 00235EC4 E83F3DDC */  ld         $sp, (0x70003FE8 & 0xFFFF)($at)
    /* 136E48 00235EC8 E03F37DC */  ld         $s7, (0x70003FE0 & 0xFFFF)($at)
    /* 136E4C 00235ECC D83F36DC */  ld         $s6, (0x70003FD8 & 0xFFFF)($at)
    /* 136E50 00235ED0 D03F35DC */  ld         $s5, (0x70003FD0 & 0xFFFF)($at)
    /* 136E54 00235ED4 C83F34DC */  ld         $s4, (0x70003FC8 & 0xFFFF)($at)
    /* 136E58 00235ED8 C03F33DC */  ld         $s3, (0x70003FC0 & 0xFFFF)($at)
    /* 136E5C 00235EDC B83F32DC */  ld         $s2, (0x70003FB8 & 0xFFFF)($at)
    /* 136E60 00235EE0 B03F31DC */  ld         $s1, (0x70003FB0 & 0xFFFF)($at)
    /* 136E64 00235EE4 A83F30DC */  ld         $s0, (0x70003FA8 & 0xFFFF)($at)
    /* 136E68 00235EE8 0800E003 */  jr         $ra
    /* 136E6C 00235EEC 00000000 */   nop
endlabel func_002352C8
