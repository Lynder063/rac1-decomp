.align 3
nonmatching func_001EE6E0, 0x16C

glabel func_001EE6E0
    /* EF660 001EE6E0 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* EF664 001EE6E4 1400023C */  lui        $v0, %hi(D_001414D4)
    /* EF668 001EE6E8 7000B57F */  sq         $s5, 0x70($sp)
    /* EF66C 001EE6EC 72000424 */  addiu      $a0, $zero, 0x72
    /* EF670 001EE6F0 D414438C */  lw         $v1, %lo(D_001414D4)($v0)
    /* EF674 001EE6F4 1900153C */  lui        $s5, %hi(D_00189400)
    /* EF678 001EE6F8 A000BF7F */  sq         $ra, 0xA0($sp)
    /* EF67C 001EE6FC 9000B77F */  sq         $s7, 0x90($sp)
    /* EF680 001EE700 8000B67F */  sq         $s6, 0x80($sp)
    /* EF684 001EE704 6000B47F */  sq         $s4, 0x60($sp)
    /* EF688 001EE708 5000B37F */  sq         $s3, 0x50($sp)
    /* EF68C 001EE70C 4000B27F */  sq         $s2, 0x40($sp)
    /* EF690 001EE710 3000B17F */  sq         $s1, 0x30($sp)
    /* EF694 001EE714 2000B07F */  sq         $s0, 0x20($sp)
    /* EF698 001EE718 03006414 */  bne        $v1, $a0, .L001EE728
    /* EF69C 001EE71C B000B4E7 */   swc1      $f20, 0xB0($sp)
    /* EF6A0 001EE720 0094A226 */  addiu      $v0, $s5, %lo(D_00189400)
    /* EF6A4 001EE724 C00040AC */  sw         $zero, 0xC0($v0)
.align 2
  .L001EE728:
    /* EF6A8 001EE728 0094B226 */  addiu      $s2, $s5, %lo(D_00189400)
    /* EF6AC 001EE72C C000428E */  lw         $v0, 0xC0($s2)
    /* EF6B0 001EE730 3A004010 */  beqz       $v0, .L001EE81C
    /* EF6B4 001EE734 1400023C */   lui       $v0, %hi(D_0013E600)
    /* EF6B8 001EE738 2D880000 */  daddu      $s1, $zero, $zero
    /* EF6BC 001EE73C 00E65024 */  addiu      $s0, $v0, %lo(D_0013E600)
    /* EF6C0 001EE740 22EA070C */  jal        func_001FA888
    /* EF6C4 001EE744 0800048E */   lw        $a0, 0x8($s0)
    /* EF6C8 001EE748 0C00048E */  lw         $a0, 0xC($s0)
    /* EF6CC 001EE74C 22EA070C */  jal        func_001FA888
    /* EF6D0 001EE750 0000A0E7 */   swc1      $f0, 0x0($sp)
    /* EF6D4 001EE754 C000428E */  lw         $v0, 0xC0($s2)
    /* EF6D8 001EE758 2E004018 */  blez       $v0, .L001EE814
    /* EF6DC 001EE75C 0400A0E7 */   swc1      $f0, 0x4($sp)
    /* EF6E0 001EE760 2D984002 */  daddu      $s3, $s2, $zero
    /* EF6E4 001EE764 803D013C */  lui        $at, (0x3D800000 >> 16)
    /* EF6E8 001EE768 00A08144 */  mtc1       $at, $f20
    /* EF6EC 001EE76C 2D900002 */  daddu      $s2, $s0, $zero
    /* EF6F0 001EE770 FE001724 */  addiu      $s7, $zero, 0xFE
    /* EF6F4 001EE774 FD001624 */  addiu      $s6, $zero, 0xFD
    /* EF6F8 001EE778 1000B427 */  addiu      $s4, $sp, 0x10
    /* EF6FC 001EE77C 2D806002 */  daddu      $s0, $s3, $zero
.align 2
  .L001EE780:
    /* EF700 001EE780 2000028E */  lw         $v0, 0x20($s0)
    /* EF704 001EE784 1F004050 */  beql       $v0, $zero, .L001EE804
    /* EF708 001EE788 C000628E */   lw        $v0, 0xC0($s3)
    /* EF70C 001EE78C 20004290 */  lbu        $v0, 0x20($v0)
    /* EF710 001EE790 1C005750 */  beql       $v0, $s7, .L001EE804
    /* EF714 001EE794 C000628E */   lw        $v0, 0xC0($s3)
    /* EF718 001EE798 1A005650 */  beql       $v0, $s6, .L001EE804
    /* EF71C 001EE79C C000628E */   lw        $v0, 0xC0($s3)
    /* EF720 001EE7A0 24000286 */  lh         $v0, 0x24($s0)
    /* EF724 001EE7A4 10004010 */  beqz       $v0, .L001EE7E8
    /* EF728 001EE7A8 1000A427 */   addiu     $a0, $sp, 0x10
    /* EF72C 001EE7AC 06C9070C */  jal        func_001F2418
    /* EF730 001EE7B0 2D280002 */   daddu     $a1, $s0, $zero
    /* EF734 001EE7B4 22EA070C */  jal        func_001FA888
    /* EF738 001EE7B8 1000448E */   lw        $a0, 0x10($s2)
    /* EF73C 001EE7BC 1000A1C7 */  lwc1       $f1, 0x10($sp)
    /* EF740 001EE7C0 1400448E */  lw         $a0, 0x14($s2)
    /* EF744 001EE7C4 41080046 */  sub.s      $f1, $f1, $f0
    /* EF748 001EE7C8 42081446 */  mul.s      $f1, $f1, $f20
    /* EF74C 001EE7CC 22EA070C */  jal        func_001FA888
    /* EF750 001EE7D0 1000A1E7 */   swc1      $f1, 0x10($sp)
    /* EF754 001EE7D4 1400A1C7 */  lwc1       $f1, 0x14($sp)
    /* EF758 001EE7D8 41080046 */  sub.s      $f1, $f1, $f0
    /* EF75C 001EE7DC 42081446 */  mul.s      $f1, $f1, $f20
    /* EF760 001EE7E0 03000010 */  b          .L001EE7F0
    /* EF764 001EE7E4 1400A1E7 */   swc1      $f1, 0x14($sp)
.align 2
  .L001EE7E8:
    /* EF768 001EE7E8 0000A27B */  lq         $v0, 0x0($sp)
    /* EF76C 001EE7EC 0000827E */  sq         $v0, 0x0($s4)
.align 2
  .L001EE7F0:
    /* EF770 001EE7F0 1000ACC7 */  lwc1       $f12, 0x10($sp)
    /* EF774 001EE7F4 2D200002 */  daddu      $a0, $s0, $zero
    /* EF778 001EE7F8 ECB8070C */  jal        func_001EE3B0
    /* EF77C 001EE7FC 1400ADC7 */   lwc1      $f13, 0x14($sp)
    /* EF780 001EE800 C000628E */  lw         $v0, 0xC0($s3)
.align 2
  .L001EE804:
    /* EF784 001EE804 01003126 */  addiu      $s1, $s1, 0x1
    /* EF788 001EE808 2A102202 */  slt        $v0, $s1, $v0
    /* EF78C 001EE80C DCFF4014 */  bnez       $v0, .L001EE780
    /* EF790 001EE810 30001026 */   addiu     $s0, $s0, 0x30
.align 2
  .L001EE814:
    /* EF794 001EE814 0094A226 */  addiu      $v0, $s5, %lo(D_00189400)
    /* EF798 001EE818 C00040AC */  sw         $zero, 0xC0($v0)
.align 2
  .L001EE81C:
    /* EF79C 001EE81C A000BF7B */  lq         $ra, 0xA0($sp)
    /* EF7A0 001EE820 9000B77B */  lq         $s7, 0x90($sp)
    /* EF7A4 001EE824 8000B67B */  lq         $s6, 0x80($sp)
    /* EF7A8 001EE828 7000B57B */  lq         $s5, 0x70($sp)
    /* EF7AC 001EE82C 6000B47B */  lq         $s4, 0x60($sp)
    /* EF7B0 001EE830 5000B37B */  lq         $s3, 0x50($sp)
    /* EF7B4 001EE834 4000B27B */  lq         $s2, 0x40($sp)
    /* EF7B8 001EE838 3000B17B */  lq         $s1, 0x30($sp)
    /* EF7BC 001EE83C 2000B07B */  lq         $s0, 0x20($sp)
    /* EF7C0 001EE840 B000B4C7 */  lwc1       $f20, 0xB0($sp)
    /* EF7C4 001EE844 0800E003 */  jr         $ra
    /* EF7C8 001EE848 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_001EE6E0
    /* EF7CC 001EE84C 00000000 */  nop
