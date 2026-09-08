.align 3
nonmatching func_00239838, 0x10C

glabel func_00239838
    /* 13A7B8 00239838 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 13A7BC 0023983C 1E00023C */  lui        $v0, %hi(D_001E66C0)
    /* 13A7C0 00239840 1000B17F */  sq         $s1, 0x10($sp)
    /* 13A7C4 00239844 2D200000 */  daddu      $a0, $zero, $zero
    /* 13A7C8 00239848 0000B07F */  sq         $s0, 0x0($sp)
    /* 13A7CC 0023984C 2D280000 */  daddu      $a1, $zero, $zero
    /* 13A7D0 00239850 C0665024 */  addiu      $s0, $v0, %lo(D_001E66C0)
    /* 13A7D4 00239854 2000BF7F */  sq         $ra, 0x20($sp)
    /* 13A7D8 00239858 00020624 */  addiu      $a2, $zero, 0x200
    /* 13A7DC 0023985C 80000724 */  addiu      $a3, $zero, 0x80
    /* 13A7E0 00239860 00020824 */  addiu      $t0, $zero, 0x200
    /* 13A7E4 00239864 80000924 */  addiu      $t1, $zero, 0x80
    /* 13A7E8 00239868 2D500000 */  daddu      $t2, $zero, $zero
    /* 13A7EC 0023986C AEEE070C */  jal        func_001FBAB8
    /* 13A7F0 00239870 2D884000 */   daddu     $s1, $v0, $zero
    /* 13A7F4 00239874 045A040C */  jal        func_00116810
    /* 13A7F8 00239878 2C00048E */   lw        $a0, 0x2C($s0)
    /* 13A7FC 0023987C 4400048E */  lw         $a0, 0x44($s0)
    /* 13A800 00239880 14000324 */  addiu      $v1, $zero, 0x14
    /* 13A804 00239884 01006050 */  beql       $v1, $zero, .L0023988C
    /* 13A808 00239888 CD010000 */   break     0, 7
.align 2
  .L0023988C:
    /* 13A80C 0023988C 1A008300 */  div        $zero, $a0, $v1
    /* 13A810 00239890 12180000 */  mflo       $v1
    /* 13A814 00239894 23104300 */  subu       $v0, $v0, $v1
    /* 13A818 00239898 03004018 */  blez       $v0, .L002398A8
    /* 13A81C 0023989C 02008224 */   addiu     $v0, $a0, 0x2
    /* 13A820 002398A0 0B000010 */  b          .L002398D0
    /* 13A824 002398A4 440002AE */   sw        $v0, 0x44($s0)
.align 2
  .L002398A8:
    /* 13A828 002398A8 1E00103C */  lui        $s0, %hi(D_001E62B8)
    /* 13A82C 002398AC 18000424 */  addiu      $a0, $zero, 0x18
    /* 13A830 002398B0 2C50080C */  jal        func_002140B0
    /* 13A834 002398B4 B8621026 */   addiu     $s0, $s0, %lo(D_001E62B8)
    /* 13A838 002398B8 80100200 */  sll        $v0, $v0, 2
    /* 13A83C 002398BC 21105000 */  addu       $v0, $v0, $s0
    /* 13A840 002398C0 50F9070C */  jal        func_001FE540
    /* 13A844 002398C4 0000448C */   lw        $a0, 0x0($v0)
    /* 13A848 002398C8 6AE4080C */  jal        func_002391A8
    /* 13A84C 002398CC 2D204000 */   daddu     $a0, $v0, $zero
.align 2
  .L002398D0:
    /* 13A850 002398D0 C0662226 */  addiu      $v0, $s1, %lo(D_001E66C0)
    /* 13A854 002398D4 0040013C */  lui        $at, (0x40000000 >> 16)
    /* 13A858 002398D8 00608144 */  mtc1       $at, $f12
    /* 13A85C 002398DC 4400458C */  lw         $a1, 0x44($v0)
    /* 13A860 002398E0 08000624 */  addiu      $a2, $zero, 0x8
    /* 13A864 002398E4 2C00448C */  lw         $a0, 0x2C($v0)
    /* 13A868 002398E8 8AE5080C */  jal        func_00239628
    /* 13A86C 002398EC 23280500 */   negu      $a1, $a1
    /* 13A870 002398F0 2D200000 */  daddu      $a0, $zero, $zero
    /* 13A874 002398F4 2D280000 */  daddu      $a1, $zero, $zero
    /* 13A878 002398F8 04000624 */  addiu      $a2, $zero, 0x4
    /* 13A87C 002398FC 40000724 */  addiu      $a3, $zero, 0x40
    /* 13A880 00239900 00020824 */  addiu      $t0, $zero, 0x200
    /* 13A884 00239904 80000924 */  addiu      $t1, $zero, 0x80
    /* 13A888 00239908 AEEE070C */  jal        func_001FBAB8
    /* 13A88C 0023990C 2D500000 */   daddu     $t2, $zero, $zero
    /* 13A890 00239910 E2000424 */  addiu      $a0, $zero, 0xE2
    /* 13A894 00239914 2D280000 */  daddu      $a1, $zero, $zero
    /* 13A898 00239918 E6000624 */  addiu      $a2, $zero, 0xE6
    /* 13A89C 0023991C 40000724 */  addiu      $a3, $zero, 0x40
    /* 13A8A0 00239920 00020824 */  addiu      $t0, $zero, 0x200
    /* 13A8A4 00239924 80000924 */  addiu      $t1, $zero, 0x80
    /* 13A8A8 00239928 AEEE070C */  jal        func_001FBAB8
    /* 13A8AC 0023992C 2D500000 */   daddu     $t2, $zero, $zero
    /* 13A8B0 00239930 2000BF7B */  lq         $ra, 0x20($sp)
    /* 13A8B4 00239934 1000B17B */  lq         $s1, 0x10($sp)
    /* 13A8B8 00239938 0000B07B */  lq         $s0, 0x0($sp)
    /* 13A8BC 0023993C 0800E003 */  jr         $ra
    /* 13A8C0 00239940 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00239838
    /* 13A8C4 00239944 00000000 */  nop
