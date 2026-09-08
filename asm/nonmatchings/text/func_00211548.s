.align 3
/* Handwritten function */
nonmatching func_00211548, 0x154

glabel func_00211548
    /* 1124C8 00211548 2400988C */  lw         $t8, 0x24($a0)
    /* 1124CC 0021154C 1B000F3C */  lui        $t7, %hi(D_001B3080)
    /* 1124D0 00211550 8030EF25 */  addiu      $t7, $t7, %lo(D_001B3080)
    /* 1124D4 00211554 1C00188F */  lw         $t8, 0x1C($t8)
    /* 1124D8 00211558 0000E07D */  sq         $zero, 0x0($t7)
    /* 1124DC 0021155C 89A38472 */  pcpyld     $s4, $s4, $a0
    /* 1124E0 00211560 1000E07D */  sq         $zero, 0x10($t7)
    /* 1124E4 00211564 89ABA572 */  pcpyld     $s5, $s5, $a1
    /* 1124E8 00211568 2000E07D */  sq         $zero, 0x20($t7)
    /* 1124EC 0021156C 89B3C672 */  pcpyld     $s6, $s6, $a2
    /* 1124F0 00211570 3000E07D */  sq         $zero, 0x30($t7)
    /* 1124F4 00211574 89BBE772 */  pcpyld     $s7, $s7, $a3
    /* 1124F8 00211578 4000E07D */  sq         $zero, 0x40($t7)
    /* 1124FC 0021157C 89FBFF73 */  pcpyld     $ra, $ra, $ra
    /* 112500 00211580 5000E07D */  sq         $zero, 0x50($t7)
    /* 112504 00211584 6000E07D */  sq         $zero, 0x60($t7)
    /* 112508 00211588 7000E07D */  sq         $zero, 0x70($t7)
    /* 11250C 0021158C 2D700000 */  daddu      $t6, $zero, $zero
    /* 112510 00211590 01000120 */  addi       $at, $zero, 0x1 /* handwritten instruction */
    /* 112514 00211594 2D10A002 */  daddu      $v0, $s5, $zero
    /* 112518 00211598 8000E321 */  addi       $v1, $t7, 0x80 /* handwritten instruction */
    /* 11251C 0021159C 2D20C002 */  daddu      $a0, $s6, $zero
.align 2
  .L002115A0:
    /* 112520 002115A0 0000858C */  lw         $a1, 0x0($a0)
    /* 112524 002115A4 04008420 */  addi       $a0, $a0, 0x4 /* handwritten instruction */
    /* 112528 002115A8 00000000 */  nop
    /* 11252C 002115AC 00000000 */  nop
    /* 112530 002115B0 80280500 */  sll        $a1, $a1, 2
    /* 112534 002115B4 00000000 */  nop
    /* 112538 002115B8 2028B800 */  add        $a1, $a1, $t8 /* handwritten instruction */
    /* 11253C 002115BC 00000000 */  nop
    /* 112540 002115C0 0400A58C */  lw         $a1, 0x4($a1)
    /* 112544 002115C4 00000000 */  nop
    /* 112548 002115C8 0000A694 */  lhu        $a2, 0x0($a1)
    /* 11254C 002115CC 00000000 */  nop
.align 2
  .L002115D0:
    /* 112550 002115D0 0400A790 */  lbu        $a3, 0x4($a1)
    /* 112554 002115D4 0100A520 */  addi       $a1, $a1, 0x1 /* handwritten instruction */
    /* 112558 002115D8 FFFFC620 */  addi       $a2, $a2, -0x1 /* handwritten instruction */
    /* 11255C 002115DC 00000000 */  nop
    /* 112560 002115E0 2040EF00 */  add        $t0, $a3, $t7 /* handwritten instruction */
    /* 112564 002115E4 00000000 */  nop
    /* 112568 002115E8 F9FFC01C */  bgtz       $a2, .L002115D0
    /* 11256C 002115EC 000001A1 */   sb        $at, 0x0($t0)
    /* 112570 002115F0 000067A0 */  sb         $a3, 0x0($v1)
    /* 112574 002115F4 01006320 */  addi       $v1, $v1, 0x1 /* handwritten instruction */
    /* 112578 002115F8 FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* 11257C 002115FC 00000000 */  nop
    /* 112580 00211600 E7FF401C */  bgtz       $v0, .L002115A0
    /* 112584 00211604 C870C771 */   pmaxw     $t6, $t6, $a3
    /* 112588 00211608 FF000120 */  addi       $at, $zero, 0xFF /* handwritten instruction */
    /* 11258C 0021160C 0100C221 */  addi       $v0, $t6, 0x1 /* handwritten instruction */
    /* 112590 00211610 7F00E2A1 */  sb         $v0, 0x7F($t7)
    /* 112594 00211614 2070CF01 */  add        $t6, $t6, $t7 /* handwritten instruction */
    /* 112598 00211618 0000C1A1 */  sb         $at, 0x0($t6)
    /* 11259C 0021161C 00000000 */  nop
    /* 1125A0 00211620 2D208002 */  daddu      $a0, $s4, $zero
    /* 1125A4 00211624 2D28E001 */  daddu      $a1, $t7, $zero
    /* 1125A8 00211628 0246080C */  jal        func_00211808
    /* 1125AC 0021162C 00000000 */   nop
    /* 1125B0 00211630 2D08A002 */  daddu      $at, $s5, $zero
    /* 1125B4 00211634 1B000F3C */  lui        $t7, %hi(D_001B3080)
    /* 1125B8 00211638 8030EF25 */  addiu      $t7, $t7, %lo(D_001B3080)
    /* 1125BC 0021163C F0FFE222 */  addi       $v0, $s7, -0x10 /* handwritten instruction */
    /* 1125C0 00211640 8000E321 */  addi       $v1, $t7, 0x80 /* handwritten instruction */
    /* 1125C4 00211644 00700E3C */  lui        $t6, (0x70000000 >> 16)
.align 2
  .L00211648:
    /* 1125C8 00211648 00006490 */  lbu        $a0, 0x0($v1)
    /* 1125CC 0021164C 01006320 */  addi       $v1, $v1, 0x1 /* handwritten instruction */
    /* 1125D0 00211650 FFFF2120 */  addi       $at, $at, -0x1 /* handwritten instruction */
    /* 1125D4 00211654 00000000 */  nop
    /* 1125D8 00211658 80210400 */  sll        $a0, $a0, 6
    /* 1125DC 0021165C 00000000 */  nop
    /* 1125E0 00211660 20208E00 */  add        $a0, $a0, $t6 /* handwritten instruction */
    /* 1125E4 00211664 00000000 */  nop
    /* 1125E8 00211668 30008578 */  lq         $a1, 0x30($a0)
    /* 1125EC 0021166C 10004220 */  addi       $v0, $v0, 0x10 /* handwritten instruction */
    /* 1125F0 00211670 00000000 */  nop
    /* 1125F4 00211674 00000000 */  nop
    /* 1125F8 00211678 F3FF201C */  bgtz       $at, .L00211648
    /* 1125FC 0021167C 0000457C */   sq        $a1, 0x0($v0)
    /* 112600 00211680 A9A38072 */  pcpyud     $s4, $s4, $zero
    /* 112604 00211684 A9ABA072 */  pcpyud     $s5, $s5, $zero
    /* 112608 00211688 A9B3C072 */  pcpyud     $s6, $s6, $zero
    /* 11260C 0021168C A9BBE072 */  pcpyud     $s7, $s7, $zero
    /* 112610 00211690 A9FBE073 */  pcpyud     $ra, $ra, $zero
    /* 112614 00211694 0800E003 */  jr         $ra
    /* 112618 00211698 00000000 */   nop
endlabel func_00211548
    /* 11261C 0021169C 00000000 */  nop
