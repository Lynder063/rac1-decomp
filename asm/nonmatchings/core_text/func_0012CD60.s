.align 3
nonmatching func_0012CD60, 0xE4

glabel func_0012CD60
    /* 2DCE0 0012CD60 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2DCE4 0012CD64 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2DCE8 0012CD68 2D808000 */  daddu      $s0, $a0, $zero
    /* 2DCEC 0012CD6C 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2DCF0 0012CD70 3EB3040C */  jal        func_0012CCF8
    /* 2DCF4 0012CD74 01000424 */   addiu     $a0, $zero, 0x1
    /* 2DCF8 0012CD78 0010023C */  lui        $v0, (0x1000B410 >> 16)
    /* 2DCFC 0012CD7C 0010063C */  lui        $a2, (0x1000B430 >> 16)
    /* 2DD00 0012CD80 10B44234 */  ori        $v0, $v0, (0x1000B410 & 0xFFFF)
    /* 2DD04 0012CD84 30B4C634 */  ori        $a2, $a2, (0x1000B430 & 0xFFFF)
    /* 2DD08 0012CD88 0000438C */  lw         $v1, 0x0($v0)
    /* 2DD0C 0012CD8C 0010043C */  lui        $a0, (0x1000B420 >> 16)
    /* 2DD10 0012CD90 20B48434 */  ori        $a0, $a0, (0x1000B420 & 0xFFFF)
    /* 2DD14 0012CD94 0010053C */  lui        $a1, (0x1000B400 >> 16)
    /* 2DD18 0012CD98 000003AE */  sw         $v1, 0x0($s0)
    /* 2DD1C 0012CD9C 00B4A534 */  ori        $a1, $a1, (0x1000B400 & 0xFFFF)
    /* 2DD20 0012CDA0 0010073C */  lui        $a3, (0x10002010 >> 16)
    /* 2DD24 0012CDA4 0000C38C */  lw         $v1, 0x0($a2)
    /* 2DD28 0012CDA8 1020E734 */  ori        $a3, $a3, (0x10002010 & 0xFFFF)
    /* 2DD2C 0012CDAC 040003AE */  sw         $v1, 0x4($s0)
    /* 2DD30 0012CDB0 0000828C */  lw         $v0, 0x0($a0)
    /* 2DD34 0012CDB4 080002AE */  sw         $v0, 0x8($s0)
    /* 2DD38 0012CDB8 0000A38C */  lw         $v1, 0x0($a1)
    /* 2DD3C 0012CDBC 0C0003AE */  sw         $v1, 0xC($s0)
.align 2
  .L0012CDC0:
    /* 2DD40 0012CDC0 0000E28C */  lw         $v0, 0x0($a3)
    /* 2DD44 0012CDC4 F0004230 */  andi       $v0, $v0, 0xF0
    /* 2DD48 0012CDC8 00000000 */  nop
    /* 2DD4C 0012CDCC 00000000 */  nop
    /* 2DD50 0012CDD0 00000000 */  nop
    /* 2DD54 0012CDD4 FAFF4014 */  bnez       $v0, .L0012CDC0
    /* 2DD58 0012CDD8 00000000 */   nop
    /* 2DD5C 0012CDDC 24B3040C */  jal        func_0012CC90
    /* 2DD60 0012CDE0 2D200000 */   daddu     $a0, $zero, $zero
    /* 2DD64 0012CDE4 0010023C */  lui        $v0, (0x1000B010 >> 16)
    /* 2DD68 0012CDE8 0010073C */  lui        $a3, (0x1000B020 >> 16)
    /* 2DD6C 0012CDEC 10B04234 */  ori        $v0, $v0, (0x1000B010 & 0xFFFF)
    /* 2DD70 0012CDF0 20B0E734 */  ori        $a3, $a3, (0x1000B020 & 0xFFFF)
    /* 2DD74 0012CDF4 0000438C */  lw         $v1, 0x0($v0)
    /* 2DD78 0012CDF8 0010053C */  lui        $a1, (0x1000B000 >> 16)
    /* 2DD7C 0012CDFC 00B0A534 */  ori        $a1, $a1, (0x1000B000 & 0xFFFF)
    /* 2DD80 0012CE00 0010063C */  lui        $a2, (0x10002020 >> 16)
    /* 2DD84 0012CE04 100003AE */  sw         $v1, 0x10($s0)
    /* 2DD88 0012CE08 2020C634 */  ori        $a2, $a2, (0x10002020 & 0xFFFF)
    /* 2DD8C 0012CE0C 0010043C */  lui        $a0, (0x10002010 >> 16)
    /* 2DD90 0012CE10 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2DD94 0012CE14 0000E38C */  lw         $v1, 0x0($a3)
    /* 2DD98 0012CE18 10208434 */  ori        $a0, $a0, (0x10002010 & 0xFFFF)
    /* 2DD9C 0012CE1C 140003AE */  sw         $v1, 0x14($s0)
    /* 2DDA0 0012CE20 0000A28C */  lw         $v0, 0x0($a1)
    /* 2DDA4 0012CE24 180002AE */  sw         $v0, 0x18($s0)
    /* 2DDA8 0012CE28 0000C38C */  lw         $v1, 0x0($a2)
    /* 2DDAC 0012CE2C 1C0003AE */  sw         $v1, 0x1C($s0)
    /* 2DDB0 0012CE30 0000828C */  lw         $v0, 0x0($a0)
    /* 2DDB4 0012CE34 200002AE */  sw         $v0, 0x20($s0)
    /* 2DDB8 0012CE38 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2DDBC 0012CE3C 0800E003 */  jr         $ra
    /* 2DDC0 0012CE40 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012CD60
    /* 2DDC4 0012CE44 00000000 */  nop
