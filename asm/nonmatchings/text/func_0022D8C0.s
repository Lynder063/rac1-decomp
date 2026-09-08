.align 3
nonmatching func_0022D8C0, 0xAC

glabel func_0022D8C0
    /* 12E840 0022D8C0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 12E844 0022D8C4 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* 12E848 0022D8C8 00608144 */  mtc1       $at, $f12
    /* 12E84C 0022D8CC 0000B07F */  sq         $s0, 0x0($sp)
    /* 12E850 0022D8D0 C040013C */  lui        $at, (0x40C00000 >> 16)
    /* 12E854 0022D8D4 00688144 */  mtc1       $at, $f13
    /* 12E858 0022D8D8 1000B17F */  sq         $s1, 0x10($sp)
    /* 12E85C 0022D8DC 2000BF7F */  sq         $ra, 0x20($sp)
    /* 12E860 0022D8E0 6A50080C */  jal        func_002141A8
    /* 12E864 0022D8E4 2D808000 */   daddu     $s0, $a0, $zero
    /* 12E868 0022D8E8 1800023C */  lui        $v0, %hi(D_00187180)
    /* 12E86C 0022D8EC 2D200002 */  daddu      $a0, $s0, $zero
    /* 12E870 0022D8F0 80715124 */  addiu      $s1, $v0, %lo(D_00187180)
    /* 12E874 0022D8F4 2D280002 */  daddu      $a1, $s0, $zero
    /* 12E878 0022D8F8 F6E6070C */  jal        func_001F9BD8
    /* 12E87C 0022D8FC 2D302002 */   daddu     $a2, $s1, $zero
    /* 12E880 0022D900 1400023C */  lui        $v0, %hi(D_0013E6BC)
    /* 12E884 0022D904 2D202002 */  daddu      $a0, $s1, $zero
    /* 12E888 0022D908 BCE6478C */  lw         $a3, %lo(D_0013E6BC)($v0)
    /* 12E88C 0022D90C 2D280002 */  daddu      $a1, $s0, $zero
    /* 12E890 0022D910 82000624 */  addiu      $a2, $zero, 0x82
    /* 12E894 0022D914 84BF070C */  jal        func_001EFE10
    /* 12E898 0022D918 2D400000 */   daddu     $t0, $zero, $zero
    /* 12E89C 0022D91C 0E004010 */  beqz       $v0, .L0022D958
    /* 12E8A0 0022D920 2D302002 */   daddu     $a2, $s1, $zero
    /* 12E8A4 0022D924 1900053C */  lui        $a1, %hi(D_00194220)
    /* 12E8A8 0022D928 2042A524 */  addiu      $a1, $a1, %lo(D_00194220)
    /* 12E8AC 0022D92C FCE6070C */  jal        func_001F9BF0
    /* 12E8B0 0022D930 2D200002 */   daddu     $a0, $s0, $zero
    /* 12E8B4 0022D934 403F013C */  lui        $at, (0x3F400000 >> 16)
    /* 12E8B8 0022D938 00608144 */  mtc1       $at, $f12
    /* 12E8BC 0022D93C 2D200002 */  daddu      $a0, $s0, $zero
    /* 12E8C0 0022D940 0CE7070C */  jal        func_001F9C30
    /* 12E8C4 0022D944 2D280002 */   daddu     $a1, $s0, $zero
    /* 12E8C8 0022D948 2D200002 */  daddu      $a0, $s0, $zero
    /* 12E8CC 0022D94C 2D302002 */  daddu      $a2, $s1, $zero
    /* 12E8D0 0022D950 F6E6070C */  jal        func_001F9BD8
    /* 12E8D4 0022D954 2D288000 */   daddu     $a1, $a0, $zero
.align 2
  .L0022D958:
    /* 12E8D8 0022D958 2000BF7B */  lq         $ra, 0x20($sp)
    /* 12E8DC 0022D95C 1000B17B */  lq         $s1, 0x10($sp)
    /* 12E8E0 0022D960 0000B07B */  lq         $s0, 0x0($sp)
    /* 12E8E4 0022D964 0800E003 */  jr         $ra
    /* 12E8E8 0022D968 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0022D8C0
    /* 12E8EC 0022D96C 00000000 */  nop
