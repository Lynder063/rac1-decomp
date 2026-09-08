/* Handwritten function */
nonmatching func_001F856C, 0x5FC

glabel func_001F856C
    /* F94EC 001F856C 05001920 */  addi       $t9, $zero, 0x5 /* handwritten instruction */
    /* F94F0 001F8570 89FF1F70 */  pexew      $ra, $ra
    /* F94F4 001F8574 03000F20 */  addi       $t7, $zero, 0x3 /* handwritten instruction */
    /* F94F8 001F8578 0306C04B */  vaddw.xyz  $vf24, $vf0, $vf0w
.align 2
  .L001F857C:
    /* F94FC 001F857C 25700000 */  or         $t6, $zero, $zero
    /* F9500 001F8580 895F1870 */  pexew      $t3, $t8
.align 2
  .L001F8584:
    /* F9504 001F8584 40610E00 */  sll        $t4, $t6, 5
    /* F9508 001F8588 0100CD21 */  addi       $t5, $t6, 0x1 /* handwritten instruction */
    /* F950C 001F858C 20609801 */  add        $t4, $t4, $t8 /* handwritten instruction */
    /* F9510 001F8590 40690D00 */  sll        $t5, $t5, 5
    /* F9514 001F8594 000081D9 */  lqc2       $vf1, 0x0($t4)
    /* F9518 001F8598 2068B801 */  add        $t5, $t5, $t8 /* handwritten instruction */
    /* F951C 001F859C 0000A3D9 */  lqc2       $vf3, 0x0($t5)
    /* F9520 001F85A0 00000000 */  nop
    /* F9524 001F85A4 FF09C14B */  .word      0x4BC109FF                    # vclipw.xyz $vf1, $vf1w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F9528 001F85A8 FF19C34B */  .word      0x4BC319FF                    # vclipw.xyz $vf3, $vf3w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F952C 001F85AC 100082D9 */  lqc2       $vf2, 0x10($t4)
    /* F9530 001F85B0 000061F9 */  sqc2       $vf1, 0x0($t3)
    /* F9534 001F85B4 100062F9 */  sqc2       $vf2, 0x10($t3)
    /* F9538 001F85B8 FF02004A */  vnop
    /* F953C 001F85BC 00904848 */  cfc2.ni    $t0, $vi18
    /* F9540 001F85C0 00000000 */  nop
    /* F9544 001F85C4 00000000 */  nop
    /* F9548 001F85C8 00000000 */  nop
    /* F954C 001F85CC 06402803 */  srlv       $t0, $t0, $t9
    /* F9550 001F85D0 00000000 */  nop
    /* F9554 001F85D4 40000931 */  andi       $t1, $t0, 0x40
    /* F9558 001F85D8 80510800 */  sll        $t2, $t0, 6
    /* F955C 001F85DC 01002051 */  beql       $t1, $zero, .L001F85E4
    /* F9560 001F85E0 20006B21 */   addi      $t3, $t3, 0x20 /* handwritten instruction */
.align 2
  .L001F85E4:
    /* F9564 001F85E4 26402A01 */  xor        $t0, $t1, $t2
    /* F9568 001F85E8 0100CE21 */  addi       $t6, $t6, 0x1 /* handwritten instruction */
    /* F956C 001F85EC 40000831 */  andi       $t0, $t0, 0x40
    /* F9570 001F85F0 00000000 */  nop
    /* F9574 001F85F4 07000011 */  beqz       $t0, .L001F8614
    /* F9578 001F85F8 2D206001 */   daddu     $a0, $t3, $zero
    /* F957C 001F85FC 2D288001 */  daddu      $a1, $t4, $zero
    /* F9580 001F8600 2D30A001 */  daddu      $a2, $t5, $zero
    /* F9584 001F8604 18DF070C */  jal        func_001F7C60
    /* F9588 001F8608 2D382003 */   daddu     $a3, $t9, $zero
    /* F958C 001F860C 20006B21 */  addi       $t3, $t3, 0x20 /* handwritten instruction */
    /* F9590 001F8610 00000000 */  nop
.align 2
  .L001F8614:
    /* F9594 001F8614 DBFFCF15 */  bne        $t6, $t7, .L001F8584
    /* F9598 001F8618 00000000 */   nop
    /* F959C 001F861C 89C71870 */  pexew      $t8, $t8
    /* F95A0 001F8620 00002048 */  qmfc2.ni   $zero, $vf0
    /* F95A4 001F8624 0000087B */  lq         $t0, 0x0($t8)
    /* F95A8 001F8628 1000097B */  lq         $t1, 0x10($t8)
    /* F95AC 001F862C 0000687D */  sq         $t0, 0x0($t3)
    /* F95B0 001F8630 1000697D */  sq         $t1, 0x10($t3)
    /* F95B4 001F8634 22787801 */  sub        $t7, $t3, $t8 /* handwritten instruction */
    /* F95B8 001F8638 00000000 */  nop
    /* F95BC 001F863C 4601E011 */  beqz       $t7, .L001F8B58
    /* F95C0 001F8640 42790F00 */   srl       $t7, $t7, 5
    /* F95C4 001F8644 CDFF2017 */  bnez       $t9, .L001F857C
    /* F95C8 001F8648 FFFF3923 */   addi      $t9, $t9, -0x1 /* handwritten instruction */
    /* F95CC 001F864C FDFFF921 */  addi       $t9, $t7, -0x3 /* handwritten instruction */
    /* F95D0 001F8650 00000000 */  nop
    /* F95D4 001F8654 0B01201B */  blez       $t9, .L001F8A84
    /* F95D8 001F8658 00000000 */   nop
    /* F95DC 001F865C 000109DB */  lqc2       $vf9, 0x100($t8)
    /* F95E0 001F8660 09001934 */  ori        $t9, $zero, 0x9
    /* F95E4 001F8664 E00008DB */  lqc2       $vf8, 0xE0($t8)
    /* F95E8 001F8668 22C82F03 */  sub        $t9, $t9, $t7 /* handwritten instruction */
    /* F95EC 001F866C C00007DB */  lqc2       $vf7, 0xC0($t8)
    /* F95F0 001F8670 80C81900 */  sll        $t9, $t9, 2
    /* F95F4 001F8674 A00006DB */  lqc2       $vf6, 0xA0($t8)
    /* F95F8 001F8678 2000083C */  lui        $t0, %hi(D_001F86A4)
    /* F95FC 001F867C A4860825 */  addiu      $t0, $t0, %lo(D_001F86A4)
    /* F9600 001F8680 800005DB */  lqc2       $vf5, 0x80($t8)
    /* F9604 001F8684 600004DB */  lqc2       $vf4, 0x60($t8)
    /* F9608 001F8688 20481901 */  add        $t1, $t0, $t9 /* handwritten instruction */
    /* F960C 001F868C 400003DB */  lqc2       $vf3, 0x40($t8)
    /* F9610 001F8690 40701900 */  sll        $t6, $t9, 1
    /* F9614 001F8694 200002DB */  lqc2       $vf2, 0x20($t8)
    /* F9618 001F8698 00700D3C */  lui        $t5, (0x70001EA0 >> 16)
    /* F961C 001F869C 08002001 */  jr         $t1
    /* F9620 001F86A0 000001DB */   lqc2      $vf1, 0x0($t8)
.align 2
  alabel D_001F86A4
    /* F9624 001F86A4 6A4ADD4B */  vmul.xyz   $vf9, $vf9, $vf29
    /* F9628 001F86A8 2A42DD4B */  vmul.xyz   $vf8, $vf8, $vf29
    /* F962C 001F86AC EA39DD4B */  vmul.xyz   $vf7, $vf7, $vf29
    /* F9630 001F86B0 AA31DD4B */  vmul.xyz   $vf6, $vf6, $vf29
    /* F9634 001F86B4 6A29DD4B */  vmul.xyz   $vf5, $vf5, $vf29
    /* F9638 001F86B8 A01EAD35 */  ori        $t5, $t5, (0x70001EA0 & 0xFFFF)
    /* F963C 001F86BC 2A21DD4B */  vmul.xyz   $vf4, $vf4, $vf29
    /* F9640 001F86C0 2000083C */  lui        $t0, %hi(D_001F86E0)
    /* F9644 001F86C4 E0860825 */  addiu      $t0, $t0, %lo(D_001F86E0)
    /* F9648 001F86C8 EA18DD4B */  vmul.xyz   $vf3, $vf3, $vf29
    /* F964C 001F86CC AA10DD4B */  vmul.xyz   $vf2, $vf2, $vf29
    /* F9650 001F86D0 20480E01 */  add        $t1, $t0, $t6 /* handwritten instruction */
    /* F9654 001F86D4 08002001 */  jr         $t1
    /* F9658 001F86D8 6A08DD4B */   vmul.xyz  $vf1, $vf1, $vf29
    /* F965C 001F86DC 00000000 */  nop
.align 2
  alabel D_001F86E0
    /* F9660 001F86E0 0001A9F9 */  sqc2       $vf9, 0x100($t5)
    /* F9664 001F86E4 6C4AD74B */  vsub.xyz   $vf9, $vf9, $vf23
    /* F9668 001F86E8 E000A8F9 */  sqc2       $vf8, 0xE0($t5)
    /* F966C 001F86EC 2C42D74B */  vsub.xyz   $vf8, $vf8, $vf23
    /* F9670 001F86F0 C000A7F9 */  sqc2       $vf7, 0xC0($t5)
    /* F9674 001F86F4 EC39D74B */  vsub.xyz   $vf7, $vf7, $vf23
    /* F9678 001F86F8 A000A6F9 */  sqc2       $vf6, 0xA0($t5)
    /* F967C 001F86FC AC31D74B */  vsub.xyz   $vf6, $vf6, $vf23
    /* F9680 001F8700 8000A5F9 */  sqc2       $vf5, 0x80($t5)
    /* F9684 001F8704 6C29D74B */  vsub.xyz   $vf5, $vf5, $vf23
    /* F9688 001F8708 6000A4F9 */  sqc2       $vf4, 0x60($t5)
    /* F968C 001F870C 40410F00 */  sll        $t0, $t7, 5
    /* F9690 001F8710 4000A3F9 */  sqc2       $vf3, 0x40($t5)
    /* F9694 001F8714 20400D01 */  add        $t0, $t0, $t5 /* handwritten instruction */
    /* F9698 001F8718 2000A2F9 */  sqc2       $vf2, 0x20($t5)
    /* F969C 001F871C 00000000 */  nop
    /* F96A0 001F8720 0000A1F9 */  sqc2       $vf1, 0x0($t5)
    /* F96A4 001F8724 000001F9 */  sqc2       $vf1, 0x0($t0)
    /* F96A8 001F8728 2C21D74B */  vsub.xyz   $vf4, $vf4, $vf23
    /* F96AC 001F872C 2000083C */  lui        $t0, %hi(D_001F8748)
    /* F96B0 001F8730 48870825 */  addiu      $t0, $t0, %lo(D_001F8748)
    /* F96B4 001F8734 EC18D74B */  vsub.xyz   $vf3, $vf3, $vf23
    /* F96B8 001F8738 20481901 */  add        $t1, $t0, $t9 /* handwritten instruction */
    /* F96BC 001F873C AC10D74B */  vsub.xyz   $vf2, $vf2, $vf23
    /* F96C0 001F8740 08002001 */  jr         $t1
    /* F96C4 001F8744 6C08D74B */   vsub.xyz  $vf1, $vf1, $vf23
.align 2
  alabel D_001F8748
    /* F96C8 001F8748 6A4AC94B */  vmul.xyz   $vf9, $vf9, $vf9
    /* F96CC 001F874C 2A42C84B */  vmul.xyz   $vf8, $vf8, $vf8
    /* F96D0 001F8750 EA39C74B */  vmul.xyz   $vf7, $vf7, $vf7
    /* F96D4 001F8754 AA31C64B */  vmul.xyz   $vf6, $vf6, $vf6
    /* F96D8 001F8758 6A29C54B */  vmul.xyz   $vf5, $vf5, $vf5
    /* F96DC 001F875C 40C81900 */  sll        $t9, $t9, 1
    /* F96E0 001F8760 2A21C44B */  vmul.xyz   $vf4, $vf4, $vf4
    /* F96E4 001F8764 2000083C */  lui        $t0, %hi(D_001F8780)
    /* F96E8 001F8768 80870825 */  addiu      $t0, $t0, %lo(D_001F8780)
    /* F96EC 001F876C EA18C34B */  vmul.xyz   $vf3, $vf3, $vf3
    /* F96F0 001F8770 AA10C24B */  vmul.xyz   $vf2, $vf2, $vf2
    /* F96F4 001F8774 20481901 */  add        $t1, $t0, $t9 /* handwritten instruction */
    /* F96F8 001F8778 08002001 */  jr         $t1
    /* F96FC 001F877C 6A08C14B */   vmul.xyz  $vf1, $vf1, $vf1
.align 2
  alabel D_001F8780
    /* F9700 001F8780 3C48894A */  .word      0x4A89483C    # vaddax.y   ACC, $vf9, $vf9x
    /* F9704 001F8784 4AC2894A */  vmaddz.y   $vf9, $vf24, $vf9z
    /* F9708 001F8788 3C40884A */  .word      0x4A88403C    # vaddax.y   ACC, $vf8, $vf8x
    /* F970C 001F878C 0AC2884A */  vmaddz.y   $vf8, $vf24, $vf8z
    /* F9710 001F8790 3C38874A */  .word      0x4A87383C    # vaddax.y   ACC, $vf7, $vf7x
    /* F9714 001F8794 CAC1874A */  vmaddz.y   $vf7, $vf24, $vf7z
    /* F9718 001F8798 3C30864A */  .word      0x4A86303C    # vaddax.y   ACC, $vf6, $vf6x
    /* F971C 001F879C 8AC1864A */  vmaddz.y   $vf6, $vf24, $vf6z
    /* F9720 001F87A0 3C28854A */  .word      0x4A85283C    # vaddax.y   ACC, $vf5, $vf5x
    /* F9724 001F87A4 4AC1854A */  vmaddz.y   $vf5, $vf24, $vf5z
    /* F9728 001F87A8 3C20844A */  .word      0x4A84203C    # vaddax.y   ACC, $vf4, $vf4x
    /* F972C 001F87AC 0AC1844A */  vmaddz.y   $vf4, $vf24, $vf4z
    /* F9730 001F87B0 3C18834A */  .word      0x4A83183C    # vaddax.y   ACC, $vf3, $vf3x
    /* F9734 001F87B4 CAC0834A */  vmaddz.y   $vf3, $vf24, $vf3z
    /* F9738 001F87B8 3C10824A */  .word      0x4A82103C    # vaddax.y   ACC, $vf2, $vf2x
    /* F973C 001F87BC 8AC0824A */  vmaddz.y   $vf2, $vf24, $vf2z
    /* F9740 001F87C0 3C08814A */  .word      0x4A81083C    # vaddax.y   ACC, $vf1, $vf1x
    /* F9744 001F87C4 4AC0814A */  vmaddz.y   $vf1, $vf24, $vf1z
    /* F9748 001F87C8 20483903 */  add        $t1, $t9, $t9 /* handwritten instruction */
    /* F974C 001F87CC 2000083C */  lui        $t0, %hi(D_001F87E8)
    /* F9750 001F87D0 E8870825 */  addiu      $t0, $t0, %lo(D_001F87E8)
    /* F9754 001F87D4 20C82903 */  add        $t9, $t9, $t1 /* handwritten instruction */
    /* F9758 001F87D8 20401901 */  add        $t0, $t0, $t9 /* handwritten instruction */
    /* F975C 001F87DC 3C0BEA4B */  vmove.xyzw $vf10, $vf1
    /* F9760 001F87E0 08000001 */  jr         $t0
    /* F9764 001F87E4 2DC80000 */   daddu     $t9, $zero, $zero
.align 2
  alabel D_001F87E8
    /* F9768 001F87E8 EC4A8A4A */  vsub.y     $vf11, $vf9, $vf10
    /* F976C 001F87EC 00582848 */  qmfc2.ni   $t0, $vf11
    /* F9770 001F87F0 03000105 */  bgez       $t0, .L001F8800
    /* F9774 001F87F4 00000000 */   nop
    /* F9778 001F87F8 08001934 */  ori        $t9, $zero, 0x8
    /* F977C 001F87FC 3C4BEA4B */  vmove.xyzw $vf10, $vf9
.align 2
  .L001F8800:
    /* F9780 001F8800 EC428A4A */  vsub.y     $vf11, $vf8, $vf10
    /* F9784 001F8804 00582848 */  qmfc2.ni   $t0, $vf11
    /* F9788 001F8808 03000105 */  bgez       $t0, .L001F8818
    /* F978C 001F880C 00000000 */   nop
    /* F9790 001F8810 07001934 */  ori        $t9, $zero, 0x7
    /* F9794 001F8814 3C43EA4B */  vmove.xyzw $vf10, $vf8
.align 2
  .L001F8818:
    /* F9798 001F8818 EC3A8A4A */  vsub.y     $vf11, $vf7, $vf10
    /* F979C 001F881C 00582848 */  qmfc2.ni   $t0, $vf11
    /* F97A0 001F8820 03000105 */  bgez       $t0, .L001F8830
    /* F97A4 001F8824 00000000 */   nop
    /* F97A8 001F8828 06001934 */  ori        $t9, $zero, 0x6
    /* F97AC 001F882C 3C3BEA4B */  vmove.xyzw $vf10, $vf7
.align 2
  .L001F8830:
    /* F97B0 001F8830 EC328A4A */  vsub.y     $vf11, $vf6, $vf10
    /* F97B4 001F8834 00582848 */  qmfc2.ni   $t0, $vf11
    /* F97B8 001F8838 03000105 */  bgez       $t0, .L001F8848
    /* F97BC 001F883C 00000000 */   nop
    /* F97C0 001F8840 05001934 */  ori        $t9, $zero, 0x5
    /* F97C4 001F8844 3C33EA4B */  vmove.xyzw $vf10, $vf6
.align 2
  .L001F8848:
    /* F97C8 001F8848 EC2A8A4A */  vsub.y     $vf11, $vf5, $vf10
    /* F97CC 001F884C 00582848 */  qmfc2.ni   $t0, $vf11
    /* F97D0 001F8850 03000105 */  bgez       $t0, .L001F8860
    /* F97D4 001F8854 00000000 */   nop
    /* F97D8 001F8858 04001934 */  ori        $t9, $zero, 0x4
    /* F97DC 001F885C 3C2BEA4B */  vmove.xyzw $vf10, $vf5
.align 2
  .L001F8860:
    /* F97E0 001F8860 EC228A4A */  vsub.y     $vf11, $vf4, $vf10
    /* F97E4 001F8864 00582848 */  qmfc2.ni   $t0, $vf11
    /* F97E8 001F8868 03000105 */  bgez       $t0, .L001F8878
    /* F97EC 001F886C 00000000 */   nop
    /* F97F0 001F8870 03001934 */  ori        $t9, $zero, 0x3
    /* F97F4 001F8874 3C23EA4B */  vmove.xyzw $vf10, $vf4
.align 2
  .L001F8878:
    /* F97F8 001F8878 EC1A8A4A */  vsub.y     $vf11, $vf3, $vf10
    /* F97FC 001F887C 00582848 */  qmfc2.ni   $t0, $vf11
    /* F9800 001F8880 03000105 */  bgez       $t0, .L001F8890
    /* F9804 001F8884 00000000 */   nop
    /* F9808 001F8888 02001934 */  ori        $t9, $zero, 0x2
    /* F980C 001F888C 3C1BEA4B */  vmove.xyzw $vf10, $vf3
.align 2
  .L001F8890:
    /* F9810 001F8890 EC128A4A */  vsub.y     $vf11, $vf2, $vf10
    /* F9814 001F8894 00582848 */  qmfc2.ni   $t0, $vf11
    /* F9818 001F8898 03000105 */  bgez       $t0, .L001F88A8
    /* F981C 001F889C 00000000 */   nop
    /* F9820 001F88A0 01001934 */  ori        $t9, $zero, 0x1
    /* F9824 001F88A4 3C13EA4B */  vmove.xyzw $vf10, $vf2
.align 2
  .L001F88A8:
    /* F9828 001F88A8 0070043C */  lui        $a0, (0x70001FE0 >> 16)
    /* F982C 001F88AC E01F8434 */  ori        $a0, $a0, (0x70001FE0 & 0xFFFF)
    /* F9830 001F88B0 40291900 */  sll        $a1, $t9, 5
    /* F9834 001F88B4 2028AD00 */  add        $a1, $a1, $t5 /* handwritten instruction */
    /* F9838 001F88B8 2000A620 */  addi       $a2, $a1, 0x20 /* handwritten instruction */
    /* F983C 001F88BC E0FFA721 */  addi       $a3, $t5, -0x20 /* handwritten instruction */
    /* F9840 001F88C0 A6DF070C */  jal        func_001F7E98
    /* F9844 001F88C4 E0FFB7F9 */   sqc2      $vf23, -0x20($t5)
    /* F9848 001F88C8 04002017 */  bnez       $t9, .L001F88DC
    /* F984C 001F88CC C0FFC620 */   addi      $a2, $a2, -0x40 /* handwritten instruction */
    /* F9850 001F88D0 FFFFE621 */  addi       $a2, $t7, -0x1 /* handwritten instruction */
    /* F9854 001F88D4 40310600 */  sll        $a2, $a2, 5
    /* F9858 001F88D8 2030CD00 */  add        $a2, $a2, $t5 /* handwritten instruction */
.align 2
  .L001F88DC:
    /* F985C 001F88DC 000095D8 */  lqc2       $vf21, 0x0($a0)
    /* F9860 001F88E0 10008420 */  addi       $a0, $a0, 0x10 /* handwritten instruction */
    /* F9864 001F88E4 46000046 */  mov.s      $f1, $f0
    /* F9868 001F88E8 0002884A */  vaddx.y    $vf8, $vf0, $vf8x
    /* F986C 001F88EC A6DF070C */  jal        func_001F7E98
    /* F9870 001F88F0 00000000 */   nop
    /* F9874 001F88F4 000096D8 */  lqc2       $vf22, 0x0($a0)
    /* F9878 001F88F8 6CADD74B */  vsub.xyz   $vf21, $vf21, $vf23
    /* F987C 001F88FC 6AADD54B */  vmul.xyz   $vf21, $vf21, $vf21
    /* F9880 001F8900 3DA8154B */  .word      0x4B15A83D    # vadday.x   ACC, $vf21, $vf21y
    /* F9884 001F8904 4AC5154B */  vmaddz.x   $vf21, $vf24, $vf21z
    /* F9888 001F8908 BD03154A */  .word      0x4A1503BD                    # vsqrt      Q, $vf21x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F988C 001F890C BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F9890 001F8910 6005804A */  .word      0x4A800560    # vaddq.y    $vf21, $vf0, Q
    /* F9894 001F8914 ACB5D74B */  vsub.xyz   $vf22, $vf22, $vf23
    /* F9898 001F8918 AAB5D64B */  vmul.xyz   $vf22, $vf22, $vf22
    /* F989C 001F891C 3DB0164B */  .word      0x4B16B03D    # vadday.x   ACC, $vf22, $vf22y
    /* F98A0 001F8920 8AC5164B */  vmaddz.x   $vf22, $vf24, $vf22z
    /* F98A4 001F8924 BD03164A */  .word      0x4A1603BD                    # vsqrt      Q, $vf22x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F98A8 001F8928 C4419E4B */  vsubx.xy   $vf7, $vf8, $vf30x
    /* F98AC 001F892C 8741804B */  vsubw.xy   $vf6, $vf8, $vf0w
    /* F98B0 001F8930 00402948 */  qmfc2.ni   $t1, $vf8
    /* F98B4 001F8934 00382C48 */  qmfc2.ni   $t4, $vf7
    /* F98B8 001F8938 00302B48 */  qmfc2.ni   $t3, $vf6
    /* F98BC 001F893C BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F98C0 001F8940 A4AD804A */  .word      0x4A80ADA4    # vsubq.y    $vf22, $vf21, Q
    /* F98C4 001F8944 0700801D */  bgtz       $t4, .L001F8964
    /* F98C8 001F8948 00B02D48 */   qmfc2.ni  $t5, $vf22
    /* F98CC 001F894C 3C400C00 */  dsll32     $t0, $t4, 0
    /* F98D0 001F8950 2D30E001 */  daddu      $a2, $t7, $zero
    /* F98D4 001F8954 0300001D */  bgtz       $t0, .L001F8964
    /* F98D8 001F8958 89271870 */   pexew     $a0, $t8
    /* F98DC 001F895C 8FE20708 */  j          func_001F8A3C
    /* F98E0 001F8960 2D282003 */   daddu     $a1, $t9, $zero
.align 2
  .L001F8964:
    /* F98E4 001F8964 0700A01D */  bgtz       $t5, .L001F8984
    /* F98E8 001F8968 01002523 */   addi      $a1, $t9, 0x1 /* handwritten instruction */
    /* F98EC 001F896C 05006005 */  bltz       $t3, .L001F8984
    /* F98F0 001F8970 89271870 */   pexew     $a0, $t8
    /* F98F4 001F8974 3100AF14 */  bne        $a1, $t7, func_001F8A3C
    /* F98F8 001F8978 2D30E001 */   daddu     $a2, $t7, $zero
    /* F98FC 001F897C 8FE20708 */  j          func_001F8A3C
    /* F9900 001F8980 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L001F8984:
    /* F9904 001F8984 0900A005 */  bltz       $t5, .L001F89AC
    /* F9908 001F8988 3C400B00 */   dsll32    $t0, $t3, 0
    /* F990C 001F898C 07000005 */  bltz       $t0, .L001F89AC
    /* F9910 001F8990 89271870 */   pexew     $a0, $t8
    /* F9914 001F8994 29002017 */  bnez       $t9, func_001F8A3C
    /* F9918 001F8998 FFFF2523 */   addi      $a1, $t9, -0x1 /* handwritten instruction */
    /* F991C 001F899C 2D30E001 */  daddu      $a2, $t7, $zero
    /* F9920 001F89A0 00000000 */  nop
    /* F9924 001F89A4 8FE20708 */  j          func_001F8A3C
    /* F9928 001F89A8 FFFFE521 */   addi      $a1, $t7, -0x1 /* handwritten instruction */
.align 2
  .L001F89AC:
    /* F992C 001F89AC 0F00A01D */  bgtz       $t5, .L001F89EC
    /* F9930 001F89B0 89271870 */   pexew     $a0, $t8
    /* F9934 001F89B4 0D002019 */  blez       $t1, .L001F89EC
    /* F9938 001F89B8 40291900 */   sll       $a1, $t9, 5
    /* F993C 001F89BC 2028B800 */  add        $a1, $a1, $t8 /* handwritten instruction */
    /* F9940 001F89C0 060B0046 */  mov.s      $f12, $f1
    /* F9944 001F89C4 76DF070C */  jal        func_001F7DD8
    /* F9948 001F89C8 2000A620 */   addi      $a2, $a1, 0x20 /* handwritten instruction */
    /* F994C 001F89CC 20008420 */  addi       $a0, $a0, 0x20 /* handwritten instruction */
    /* F9950 001F89D0 01002523 */  addi       $a1, $t9, 0x1 /* handwritten instruction */
    /* F9954 001F89D4 0100AF50 */  beql       $a1, $t7, .L001F89DC
    /* F9958 001F89D8 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L001F89DC:
    /* F995C 001F89DC 2D30E001 */  daddu      $a2, $t7, $zero
    /* F9960 001F89E0 0100EF21 */  addi       $t7, $t7, 0x1 /* handwritten instruction */
    /* F9964 001F89E4 8FE20708 */  j          func_001F8A3C
    /* F9968 001F89E8 00000000 */   nop
.align 2
  .L001F89EC:
    /* F996C 001F89EC 2500A005 */  bltz       $t5, .L001F8A84
    /* F9970 001F89F0 89271870 */   pexew     $a0, $t8
    /* F9974 001F89F4 3C400900 */  dsll32     $t0, $t1, 0
    /* F9978 001F89F8 00000000 */  nop
    /* F997C 001F89FC 21000019 */  blez       $t0, .L001F8A84
    /* F9980 001F8A00 40291900 */   sll       $a1, $t9, 5
    /* F9984 001F8A04 06030046 */  mov.s      $f12, $f0
    /* F9988 001F8A08 2028B800 */  add        $a1, $a1, $t8 /* handwritten instruction */
    /* F998C 001F8A0C 05002017 */  bnez       $t9, .L001F8A24
    /* F9990 001F8A10 E0FFA620 */   addi      $a2, $a1, -0x20 /* handwritten instruction */
    /* F9994 001F8A14 FFFFE621 */  addi       $a2, $t7, -0x1 /* handwritten instruction */
    /* F9998 001F8A18 40310600 */  sll        $a2, $a2, 5
    /* F999C 001F8A1C 2030D800 */  add        $a2, $a2, $t8 /* handwritten instruction */
    /* F99A0 001F8A20 00000000 */  nop
.align 2
  .L001F8A24:
    /* F99A4 001F8A24 76DF070C */  jal        func_001F7DD8
    /* F99A8 001F8A28 0100EF21 */   addi      $t7, $t7, 0x1 /* handwritten instruction */
    /* F99AC 001F8A2C FFFFE621 */  addi       $a2, $t7, -0x1 /* handwritten instruction */
    /* F99B0 001F8A30 20008420 */  addi       $a0, $a0, 0x20 /* handwritten instruction */
    /* F99B4 001F8A34 8FE20708 */  j          func_001F8A3C
    /* F99B8 001F8A38 2D282003 */   daddu     $a1, $t9, $zero
.align 2
  alabel func_001F8A3C
    /* F99BC 001F8A3C 2DC8C000 */  daddu      $t9, $a2, $zero
    /* F99C0 001F8A40 40490500 */  sll        $t1, $a1, 5
    /* F99C4 001F8A44 20483801 */  add        $t1, $t1, $t8 /* handwritten instruction */
    /* F99C8 001F8A48 2D508000 */  daddu      $t2, $a0, $zero
.align 2
  alabel func_001F8A4C
    /* F99CC 001F8A4C 00002B79 */  lq         $t3, 0x0($t1)
    /* F99D0 001F8A50 10002C79 */  lq         $t4, 0x10($t1)
    /* F99D4 001F8A54 00004B7D */  sq         $t3, 0x0($t2)
    /* F99D8 001F8A58 10004C7D */  sq         $t4, 0x10($t2)
    /* F99DC 001F8A5C 20002921 */  addi       $t1, $t1, 0x20 /* handwritten instruction */
    /* F99E0 001F8A60 20004A21 */  addi       $t2, $t2, 0x20 /* handwritten instruction */
    /* F99E4 001F8A64 FFFF3923 */  addi       $t9, $t9, -0x1 /* handwritten instruction */
    /* F99E8 001F8A68 00000000 */  nop
    /* F99EC 001F8A6C 05002053 */  beql       $t9, $zero, .L001F8A84
    /* F99F0 001F8A70 89C71870 */   pexew     $t8, $t8
    /* F99F4 001F8A74 F5FF2517 */  bne        $t9, $a1, func_001F8A4C
    /* F99F8 001F8A78 00000000 */   nop
    /* F99FC 001F8A7C 93E20708 */  j          func_001F8A4C
    /* F9A00 001F8A80 2D480003 */   daddu     $t1, $t8, $zero
.align 2
  .L001F8A84:
    /* F9A04 001F8A84 2020EF01 */  add        $a0, $t7, $t7 /* handwritten instruction */
    /* F9A08 001F8A88 20208F00 */  add        $a0, $a0, $t7 /* handwritten instruction */
    /* F9A0C 001F8A8C 42200400 */  srl        $a0, $a0, 1
    /* F9A10 001F8A90 4BE1070C */  jal        func_001F852C
    /* F9A14 001F8A94 03008420 */   addi      $a0, $a0, 0x3 /* handwritten instruction */
    /* F9A18 001F8A98 0044083C */  lui        $t0, (0x44000000 >> 16)
    /* F9A1C 001F8A9C 01000934 */  ori        $t1, $zero, 0x1
    /* F9A20 001F8AA0 040028AC */  sw         $t0, 0x4($at)
    /* F9A24 001F8AA4 20410A34 */  ori        $t2, $zero, 0x4120
    /* F9A28 001F8AA8 000029AC */  sw         $t1, 0x0($at)
    /* F9A2C 001F8AAC 7D000834 */  ori        $t0, $zero, 0x7D
    /* F9A30 001F8AB0 08002AFC */  sd         $t2, 0x8($at)
    /* F9A34 001F8AB4 12040934 */  ori        $t1, $zero, 0x412
    /* F9A38 001F8AB8 100028FC */  sd         $t0, 0x10($at)
    /* F9A3C 001F8ABC 00340A3C */  lui        $t2, (0x34000000 >> 16)
    /* F9A40 001F8AC0 380029FC */  sd         $t1, 0x38($at)
    /* F9A44 001F8AC4 0080E835 */  ori        $t0, $t7, 0x8000
    /* F9A48 001F8AC8 34002AAC */  sw         $t2, 0x34($at)
    /* F9A4C 001F8ACC FFFF0821 */  addi       $t0, $t0, -0x1 /* handwritten instruction */
    /* F9A50 001F8AD0 300028AC */  sw         $t0, 0x30($at)
    /* F9A54 001F8AD4 18002120 */  addi       $at, $at, 0x18 /* handwritten instruction */
    /* F9A58 001F8AD8 28001920 */  addi       $t9, $zero, 0x28 /* handwritten instruction */
    /* F9A5C 001F8ADC 2D600003 */  daddu      $t4, $t8, $zero
.align 2
  .L001F8AE0:
    /* F9A60 001F8AE0 000081D9 */  lqc2       $vf1, 0x0($t4)
    /* F9A64 001F8AE4 6A08FB4B */  vmul.xyzw  $vf1, $vf1, $vf27
    /* F9A68 001F8AE8 BCFB814B */  .word      0x4B81FBBC    # vdiv       Q, $vf31x, $vf1w
    /* F9A6C 001F8AEC 100082D9 */  lqc2       $vf2, 0x10($t4)
    /* F9A70 001F8AF0 9B00204A */  vmulw.w    $vf2, $vf0, $vf0w
    /* F9A74 001F8AF4 20008C21 */  addi       $t4, $t4, 0x20 /* handwritten instruction */
    /* F9A78 001F8AF8 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F9A7C 001F8AFC 5C08E04B */  .word      0x4BE0085C    # vmulq.xyzw $vf1, $vf1, Q
    /* F9A80 001F8B00 9C10A04B */  .word      0x4BA0109C    # vmulq.xyw  $vf2, $vf2, Q
    /* F9A84 001F8B04 6808FC4B */  vadd.xyzw  $vf1, $vf1, $vf28
    /* F9A88 001F8B08 7D09E14B */  vftoi4.xyzw $vf1, $vf1
    /* F9A8C 001F8B0C 00102848 */  qmfc2.ni   $t0, $vf2
    /* F9A90 001F8B10 000028FC */  sd         $t0, 0x0($at)
    /* F9A94 001F8B14 A94B0071 */  pcpyud     $t1, $t0, $zero
    /* F9A98 001F8B18 080029FC */  sd         $t1, 0x8($at)
    /* F9A9C 001F8B1C 00082948 */  qmfc2.ni   $t1, $vf1
    /* F9AA0 001F8B20 C8552971 */  ppach      $t2, $t1, $t1
    /* F9AA4 001F8B24 A94B2071 */  pcpyud     $t1, $t1, $zero
    /* F9AA8 001F8B28 3F490970 */  psraw      $t1, $t1, 4
    /* F9AAC 001F8B2C 10002AAC */  sw         $t2, 0x10($at)
    /* F9AB0 001F8B30 140029AC */  sw         $t1, 0x14($at)
    /* F9AB4 001F8B34 3F480900 */  dsra32     $t1, $t1, 0
    /* F9AB8 001F8B38 FF000B20 */  addi       $t3, $zero, 0xFF /* handwritten instruction */
    /* F9ABC 001F8B3C E8482B71 */  pminw      $t1, $t1, $t3
    /* F9AC0 001F8B40 C8482071 */  pmaxw      $t1, $t1, $zero
    /* F9AC4 001F8B44 170029A0 */  sb         $t1, 0x17($at)
    /* F9AC8 001F8B48 20083900 */  add        $at, $at, $t9 /* handwritten instruction */
    /* F9ACC 001F8B4C FFFFEF21 */  addi       $t7, $t7, -0x1 /* handwritten instruction */
    /* F9AD0 001F8B50 E3FFE015 */  bnez       $t7, .L001F8AE0
    /* F9AD4 001F8B54 18001920 */   addi      $t9, $zero, 0x18 /* handwritten instruction */
.align 2
  .L001F8B58:
    /* F9AD8 001F8B58 89FF1F70 */  pexew      $ra, $ra
    /* F9ADC 001F8B5C 00002048 */  qmfc2.ni   $zero, $vf0
    /* F9AE0 001F8B60 0800E003 */  jr         $ra
    /* F9AE4 001F8B64 00000000 */   nop
endlabel func_001F856C
    /* F9AE8 001F8B68 00000000 */  nop
