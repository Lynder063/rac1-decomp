.align 3
nonmatching func_0022C5A0, 0x240

glabel func_0022C5A0
    /* 12D520 0022C5A0 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 12D524 0022C5A4 3000B27F */  sq         $s2, 0x30($sp)
    /* 12D528 0022C5A8 2000B17F */  sq         $s1, 0x20($sp)
    /* 12D52C 0022C5AC 4000BF7F */  sq         $ra, 0x40($sp)
    /* 12D530 0022C5B0 2D880000 */  daddu      $s1, $zero, $zero
    /* 12D534 0022C5B4 1000B07F */  sq         $s0, 0x10($sp)
    /* 12D538 0022C5B8 F8B1080C */  jal        func_0022C7E0
    /* 12D53C 0022C5BC 5000B4E7 */   swc1      $f20, 0x50($sp)
    /* 12D540 0022C5C0 1600023C */  lui        $v0, %hi(D_0016055C)
    /* 12D544 0022C5C4 5C05428C */  lw         $v0, %lo(D_0016055C)($v0)
    /* 12D548 0022C5C8 1E00043C */  lui        $a0, %hi(D_001D9A70)
    /* 12D54C 0022C5CC 2D908000 */  daddu      $s2, $a0, $zero
    /* 12D550 0022C5D0 040040A4 */  sh         $zero, 0x4($v0)
    /* 12D554 0022C5D4 64E8070C */  jal        func_001FA190
    /* 12D558 0022C5D8 709A8424 */   addiu     $a0, $a0, %lo(D_001D9A70)
    /* 12D55C 0022C5DC F0E6070C */  jal        func_001F9BC0
    /* 12D560 0022C5E0 2D20A003 */   daddu     $a0, $sp, $zero
    /* 12D564 0022C5E4 1600023C */  lui        $v0, %hi(D_0016055C)
    /* 12D568 0022C5E8 5C05428C */  lw         $v0, %lo(D_0016055C)($v0)
    /* 12D56C 0022C5EC 06004384 */  lh         $v1, 0x6($v0)
    /* 12D570 0022C5F0 67006018 */  blez       $v1, .L0022C790
    /* 12D574 0022C5F4 00000000 */   nop
.align 2
  .L0022C5F8:
    /* 12D578 0022C5F8 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 12D57C 0022C5FC 00A08144 */  mtc1       $at, $f20
    /* 12D580 0022C600 0600222E */  sltiu      $v0, $s1, 0x6
    /* 12D584 0022C604 44004010 */  beqz       $v0, .L0022C718
    /* 12D588 0022C608 1F00023C */   lui       $v0, %hi(jtbl_001E8C40)
    /* 12D58C 0022C60C 80181100 */  sll        $v1, $s1, 2
    /* 12D590 0022C610 408C4224 */  addiu      $v0, $v0, %lo(jtbl_001E8C40)
    /* 12D594 0022C614 21186200 */  addu       $v1, $v1, $v0
    /* 12D598 0022C618 0000648C */  lw         $a0, 0x0($v1)
    /* 12D59C 0022C61C 08008000 */  jr         $a0
    /* 12D5A0 0022C620 00000000 */   nop
    /* 12D5A4 0022C624 049880C7 */  lwc1       $f0, -0x67FC($gp)
    /* 12D5A8 0022C628 0400A0AF */  sw         $zero, 0x4($sp)
    /* 12D5AC 0022C62C 0800A0E7 */  swc1       $f0, 0x8($sp)
    /* 12D5B0 0022C630 0400A0AF */  sw         $zero, 0x4($sp)
    /* 12D5B4 0022C634 04988CC7 */  lwc1       $f12, -0x67FC($gp)
    /* 12D5B8 0022C638 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 12D5BC 0022C63C 00A08144 */  mtc1       $at, $f20
    /* 12D5C0 0022C640 D2E9070C */  jal        func_001FA748
    /* 12D5C4 0022C644 0400ADC7 */   lwc1      $f13, 0x4($sp)
    /* 12D5C8 0022C648 33000010 */  b          .L0022C718
    /* 12D5CC 0022C64C 0800A0E7 */   swc1      $f0, 0x8($sp)
    /* 12D5D0 0022C650 99BD013C */  lui        $at, (0xBD99999A >> 16)
    /* 12D5D4 0022C654 9A992134 */  ori        $at, $at, (0xBD99999A & 0xFFFF)
    /* 12D5D8 0022C658 00008144 */  mtc1       $at, $f0
    /* 12D5DC 0022C65C 04988CC7 */  lwc1       $f12, -0x67FC($gp)
    /* 12D5E0 0022C660 19BE013C */  lui        $at, (0xBE19999A >> 16)
    /* 12D5E4 0022C664 9A992134 */  ori        $at, $at, (0xBE19999A & 0xFFFF)
    /* 12D5E8 0022C668 00688144 */  mtc1       $at, $f13
    /* 12D5EC 0022C66C D2E9070C */  jal        func_001FA748
    /* 12D5F0 0022C670 0400A0E7 */   swc1      $f0, 0x4($sp)
    /* 12D5F4 0022C674 A03F013C */  lui        $at, (0x3FA00000 >> 16)
    /* 12D5F8 0022C678 00A08144 */  mtc1       $at, $f20
    /* 12D5FC 0022C67C 26000010 */  b          .L0022C718
    /* 12D600 0022C680 0800A0E7 */   swc1      $f0, 0x8($sp)
    /* 12D604 0022C684 4C3D013C */  lui        $at, (0x3D4CCCCD >> 16)
    /* 12D608 0022C688 CDCC2134 */  ori        $at, $at, (0x3D4CCCCD & 0xFFFF)
    /* 12D60C 0022C68C 00008144 */  mtc1       $at, $f0
    /* 12D610 0022C690 04988CC7 */  lwc1       $f12, -0x67FC($gp)
    /* 12D614 0022C694 003E013C */  lui        $at, (0x3E000000 >> 16)
    /* 12D618 0022C698 00688144 */  mtc1       $at, $f13
    /* 12D61C 0022C69C D2E9070C */  jal        func_001FA748
    /* 12D620 0022C6A0 0400A0E7 */   swc1      $f0, 0x4($sp)
    /* 12D624 0022C6A4 C03F013C */  lui        $at, (0x3FC00000 >> 16)
    /* 12D628 0022C6A8 00A08144 */  mtc1       $at, $f20
    /* 12D62C 0022C6AC 1A000010 */  b          .L0022C718
    /* 12D630 0022C6B0 0800A0E7 */   swc1      $f0, 0x8($sp)
    /* 12D634 0022C6B4 CC3D013C */  lui        $at, (0x3DCCCCCD >> 16)
    /* 12D638 0022C6B8 CDCC2134 */  ori        $at, $at, (0x3DCCCCCD & 0xFFFF)
    /* 12D63C 0022C6BC 00008144 */  mtc1       $at, $f0
    /* 12D640 0022C6C0 04988CC7 */  lwc1       $f12, -0x67FC($gp)
    /* 12D644 0022C6C4 4CBD013C */  lui        $at, (0xBD4CCCCD >> 16)
    /* 12D648 0022C6C8 CDCC2134 */  ori        $at, $at, (0xBD4CCCCD & 0xFFFF)
    /* 12D64C 0022C6CC 00688144 */  mtc1       $at, $f13
    /* 12D650 0022C6D0 D2E9070C */  jal        func_001FA748
    /* 12D654 0022C6D4 0400A0E7 */   swc1      $f0, 0x4($sp)
    /* 12D658 0022C6D8 E03F013C */  lui        $at, (0x3FE00000 >> 16)
    /* 12D65C 0022C6DC 00A08144 */  mtc1       $at, $f20
    /* 12D660 0022C6E0 0D000010 */  b          .L0022C718
    /* 12D664 0022C6E4 0800A0E7 */   swc1      $f0, 0x8($sp)
    /* 12D668 0022C6E8 19BE013C */  lui        $at, (0xBE19999A >> 16)
    /* 12D66C 0022C6EC 9A992134 */  ori        $at, $at, (0xBE19999A & 0xFFFF)
    /* 12D670 0022C6F0 00008144 */  mtc1       $at, $f0
    /* 12D674 0022C6F4 04988CC7 */  lwc1       $f12, -0x67FC($gp)
    /* 12D678 0022C6F8 CC3D013C */  lui        $at, (0x3DCCCCCD >> 16)
    /* 12D67C 0022C6FC CDCC2134 */  ori        $at, $at, (0x3DCCCCCD & 0xFFFF)
    /* 12D680 0022C700 00688144 */  mtc1       $at, $f13
    /* 12D684 0022C704 D2E9070C */  jal        func_001FA748
    /* 12D688 0022C708 0400A0E7 */   swc1      $f0, 0x4($sp)
    /* 12D68C 0022C70C 0040013C */  lui        $at, (0x40000000 >> 16)
    /* 12D690 0022C710 00A08144 */  mtc1       $at, $f20
    /* 12D694 0022C714 0800A0E7 */  swc1       $f0, 0x8($sp)
.align 2
  .L0022C718:
    /* 12D698 0022C718 709A5026 */  addiu      $s0, $s2, %lo(D_001D9A70)
    /* 12D69C 0022C71C 2D28A003 */  daddu      $a1, $sp, $zero
    /* 12D6A0 0022C720 8EE8070C */  jal        func_001FA238
    /* 12D6A4 0022C724 2D200002 */   daddu     $a0, $s0, $zero
    /* 12D6A8 0022C728 2D200002 */  daddu      $a0, $s0, $zero
    /* 12D6AC 0022C72C 2D280002 */  daddu      $a1, $s0, $zero
    /* 12D6B0 0022C730 12E7070C */  jal        func_001F9C48
    /* 12D6B4 0022C734 06A30046 */   mov.s     $f12, $f20
    /* 12D6B8 0022C738 10000426 */  addiu      $a0, $s0, 0x10
    /* 12D6BC 0022C73C 06A30046 */  mov.s      $f12, $f20
    /* 12D6C0 0022C740 12E7070C */  jal        func_001F9C48
    /* 12D6C4 0022C744 2D288000 */   daddu     $a1, $a0, $zero
    /* 12D6C8 0022C748 20000426 */  addiu      $a0, $s0, 0x20
    /* 12D6CC 0022C74C 06A30046 */  mov.s      $f12, $f20
    /* 12D6D0 0022C750 12E7070C */  jal        func_001F9C48
    /* 12D6D4 0022C754 2D288000 */   daddu     $a1, $a0, $zero
    /* 12D6D8 0022C758 30001026 */  addiu      $s0, $s0, 0x30
    /* 12D6DC 0022C75C 1600033C */  lui        $v1, %hi(D_00160560)
    /* 12D6E0 0022C760 60056324 */  addiu      $v1, $v1, %lo(D_00160560)
    /* 12D6E4 0022C764 00006278 */  lq         $v0, 0x0($v1)
    /* 12D6E8 0022C768 0000027E */  sq         $v0, 0x0($s0)
    /* 12D6EC 0022C76C 6AB2080C */  jal        func_0022C9A8
    /* 12D6F0 0022C770 2D202002 */   daddu     $a0, $s1, $zero
    /* 12D6F4 0022C774 01003126 */  addiu      $s1, $s1, 0x1
    /* 12D6F8 0022C778 1600033C */  lui        $v1, %hi(D_0016055C)
    /* 12D6FC 0022C77C 5C05638C */  lw         $v1, %lo(D_0016055C)($v1)
    /* 12D700 0022C780 06006284 */  lh         $v0, 0x6($v1)
    /* 12D704 0022C784 2A102202 */  slt        $v0, $s1, $v0
    /* 12D708 0022C788 9BFF4014 */  bnez       $v0, .L0022C5F8
    /* 12D70C 0022C78C 00000000 */   nop
.align 2
  .L0022C790:
    /* 12D710 0022C790 1CB2080C */  jal        func_0022C870
    /* 12D714 0022C794 00000000 */   nop
    /* 12D718 0022C798 0500053C */  lui        $a1, (0x5360B >> 16)
    /* 12D71C 0022C79C 0B36A534 */  ori        $a1, $a1, (0x5360B & 0xFFFF)
    /* 12D720 0022C7A0 26D3080C */  jal        func_00234C98
    /* 12D724 0022C7A4 47000424 */   addiu     $a0, $zero, 0x47
    /* 12D728 0022C7A8 1600053C */  lui        $a1, %hi(D_0015EF88)
    /* 12D72C 0022C7AC 88EFA58C */  lw         $a1, %lo(D_0015EF88)($a1)
    /* 12D730 0022C7B0 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* 12D734 0022C7B4 4E000424 */  addiu      $a0, $zero, 0x4E
    /* 12D738 0022C7B8 432B0500 */  sra        $a1, $a1, 13
    /* 12D73C 0022C7BC 26D3080C */  jal        func_00234C98
    /* 12D740 0022C7C0 25284500 */   or        $a1, $v0, $a1
    /* 12D744 0022C7C4 4000BF7B */  lq         $ra, 0x40($sp)
    /* 12D748 0022C7C8 3000B27B */  lq         $s2, 0x30($sp)
    /* 12D74C 0022C7CC 2000B17B */  lq         $s1, 0x20($sp)
    /* 12D750 0022C7D0 1000B07B */  lq         $s0, 0x10($sp)
    /* 12D754 0022C7D4 5000B4C7 */  lwc1       $f20, 0x50($sp)
    /* 12D758 0022C7D8 0800E003 */  jr         $ra
    /* 12D75C 0022C7DC 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0022C5A0
