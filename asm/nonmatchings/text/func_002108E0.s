.align 3
/* Handwritten function */
nonmatching func_002108E0, 0xC68

glabel func_002108E0
    /* 111860 002108E0 2400878C */  lw         $a3, 0x24($a0)
    /* 111864 002108E4 0070013C */  lui        $at, (0x70003720 >> 16)
    /* 111868 002108E8 0037387C */  sq         $t8, (0x70003700 & 0xFFFF)($at)
    /* 11186C 002108EC 2D50A000 */  daddu      $t2, $a1, $zero
    /* 111870 002108F0 1037397C */  sq         $t9, (0x70003710 & 0xFFFF)($at)
    /* 111874 002108F4 00009820 */  addi       $t8, $a0, 0x0 /* handwritten instruction */
    /* 111878 002108F8 203726AC */  sw         $a2, (0x70003720 & 0xFFFF)($at)
    /* 11187C 002108FC 0070193C */  lui        $t9, (0x70000000 >> 16)
    /* 111880 00210900 68000C8F */  lw         $t4, 0x68($t8)
    /* 111884 00210904 0010083C */  lui        $t0, (0x1000D400 >> 16)
    /* 111888 00210908 6C000D8F */  lw         $t5, 0x6C($t8)
    /* 11188C 0021090C 00D40835 */  ori        $t0, $t0, (0x1000D400 & 0xFFFF)
    /* 111890 00210910 1800EB8C */  lw         $t3, 0x18($a3)
    /* 111894 00210914 00300134 */  ori        $at, $zero, 0x3000
    /* 111898 00210918 800001AD */  sw         $at, 0x80($t0)
    /* 11189C 0021091C 4301C04B */  vaddw.xyz  $vf5, $vf0, $vf0w
    /* 1118A0 00210920 10000BAD */  sw         $t3, 0x10($t0)
    /* 1118A4 00210924 00790A00 */  sll        $t7, $t2, 4
    /* 1118A8 00210928 20000AAD */  sw         $t2, 0x20($t0)
    /* 1118AC 0021092C 2078F901 */  add        $t7, $t7, $t9 /* handwritten instruction */
    /* 1118B0 00210930 F82FE0FD */  sd         $zero, 0x2FF8($t7)
    /* 1118B4 00210934 00010134 */  ori        $at, $zero, 0x100
    /* 1118B8 00210938 000001AD */  sw         $at, 0x0($t0)
    /* 1118BC 0021093C 10008C21 */  addi       $t4, $t4, 0x10 /* handwritten instruction */
    /* 1118C0 00210940 F6FF8485 */  lh         $a0, -0xA($t4)
    /* 1118C4 00210944 1000AD21 */  addi       $t5, $t5, 0x10 /* handwritten instruction */
    /* 1118C8 00210948 5400098F */  lw         $t1, 0x54($t8)
    /* 1118CC 0021094C 5801204A */  vmulx.w    $vf5, $vf0, $vf0x
    /* 1118D0 00210950 0800E790 */  lbu        $a3, 0x8($a3)
    /* 1118D4 00210954 00710400 */  sll        $t6, $a0, 4
    /* 1118D8 00210958 FAFF8285 */  lh         $v0, -0x6($t4)
    /* 1118DC 0021095C 5800E04B */  vmulx.xyzw $vf1, $vf0, $vf0x
    /* 1118E0 00210960 C0380700 */  sll        $a3, $a3, 3
    /* 1118E4 00210964 9800E04B */  vmulx.xyzw $vf2, $vf0, $vf0x
    /* 1118E8 00210968 2070D901 */  add        $t6, $t6, $t9 /* handwritten instruction */
    /* 1118EC 0021096C 3D03E34B */  .word      0x4BE3033D    # vmr32.xyzw $vf3, $vf0
    /* 1118F0 00210970 FEFF8385 */  lh         $v1, -0x2($t4)
    /* 1118F4 00210974 4308004B */  vaddw.x    $vf1, $vf1, $vf0w
    /* 1118F8 00210978 F01FC07D */  sq         $zero, 0x1FF0($t6)
    /* 1118FC 0021097C 8310804A */  vaddw.y    $vf2, $vf2, $vf0w
    /* 111900 00210980 283727AF */  sw         $a3, (0x70003728 & 0xFFFF)($t9)
    /* 111904 00210984 00000000 */  nop
    /* 111908 00210988 80FF2523 */  addi       $a1, $t9, -0x80 /* handwritten instruction */
    /* 11190C 0021098C 00004621 */  addi       $a2, $t2, 0x0 /* handwritten instruction */
.align 2
  .L00210990:
    /* 111910 00210990 8000A5F8 */  sqc2       $vf5, 0x80($a1)
    /* 111914 00210994 00000000 */  nop
    /* 111918 00210998 9000A5F8 */  sqc2       $vf5, 0x90($a1)
    /* 11191C 0021099C 8000A520 */  addi       $a1, $a1, 0x80 /* handwritten instruction */
    /* 111920 002109A0 4000A5F8 */  sqc2       $vf5, 0x40($a1)
    /* 111924 002109A4 FEFFC620 */  addi       $a2, $a2, -0x2 /* handwritten instruction */
    /* 111928 002109A8 F9FFC01C */  bgtz       $a2, .L00210990
    /* 11192C 002109AC 5000A5F8 */   sqc2      $vf5, 0x50($a1)
.align 2
  .L002109B0:
    /* 111930 002109B0 F82FE1DD */  ld         $at, 0x2FF8($t7)
    /* 111934 002109B4 00202523 */  addi       $a1, $t9, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 111938 002109B8 00000000 */  nop
    /* 11193C 002109BC 00000000 */  nop
    /* 111940 002109C0 00010634 */  ori        $a2, $zero, 0x100
    /* 111944 002109C4 00000000 */  nop
    /* 111948 002109C8 F9FF2010 */  beqz       $at, .L002109B0
    /* 11194C 002109CC 00000000 */   nop
    /* 111950 002109D0 800005AD */  sw         $a1, 0x80($t0)
    /* 111954 002109D4 5802204A */  vmulx.w    $vf9, $vf0, $vf0x
    /* 111958 002109D8 10000CAD */  sw         $t4, 0x10($t0)
    /* 11195C 002109DC 9802204A */  vmulx.w    $vf10, $vf0, $vf0x
    /* 111960 002109E0 200004AD */  sw         $a0, 0x20($t0)
    /* 111964 002109E4 D802204A */  vmulx.w    $vf11, $vf0, $vf0x
    /* 111968 002109E8 000006AD */  sw         $a2, 0x0($t0)
    /* 11196C 002109EC 1803204A */  vmulx.w    $vf12, $vf0, $vf0x
    /* 111970 002109F0 00004521 */  addi       $a1, $t2, 0x0 /* handwritten instruction */
    /* 111974 002109F4 00302623 */  addi       $a2, $t9, (0x70003000 & 0xFFFF) /* handwritten instruction */
    /* 111978 002109F8 00FF2723 */  addi       $a3, $t9, -0x100 /* handwritten instruction */
    /* 11197C 002109FC 00000000 */  nop
.align 2
  .L00210A00:
    /* 111980 00210A00 0000C5D8 */  lqc2       $vf5, 0x0($a2)
    /* 111984 00210A04 0001E720 */  addi       $a3, $a3, 0x100 /* handwritten instruction */
    /* 111988 00210A08 1000C6D8 */  lqc2       $vf6, 0x10($a2)
    /* 11198C 00210A0C FCFFA520 */  addi       $a1, $a1, -0x4 /* handwritten instruction */
    /* 111990 00210A10 2000C7D8 */  lqc2       $vf7, 0x20($a2)
    /* 111994 00210A14 5B2AC04B */  vmulw.xyz  $vf9, $vf5, $vf0w
    /* 111998 00210A18 3000C8D8 */  lqc2       $vf8, 0x30($a2)
    /* 11199C 00210A1C 9B32C04B */  vmulw.xyz  $vf10, $vf6, $vf0w
    /* 1119A0 00210A20 2000E5F8 */  sqc2       $vf5, 0x20($a3)
    /* 1119A4 00210A24 DB3AC04B */  vmulw.xyz  $vf11, $vf7, $vf0w
    /* 1119A8 00210A28 6000E6F8 */  sqc2       $vf6, 0x60($a3)
    /* 1119AC 00210A2C 1B43C04B */  vmulw.xyz  $vf12, $vf8, $vf0w
    /* 1119B0 00210A30 A000E7F8 */  sqc2       $vf7, 0xA0($a3)
    /* 1119B4 00210A34 E000E8F8 */  sqc2       $vf8, 0xE0($a3)
    /* 1119B8 00210A38 3000E9F8 */  sqc2       $vf9, 0x30($a3)
    /* 1119BC 00210A3C 7000EAF8 */  sqc2       $vf10, 0x70($a3)
    /* 1119C0 00210A40 B000EBF8 */  sqc2       $vf11, 0xB0($a3)
    /* 1119C4 00210A44 4000C620 */  addi       $a2, $a2, 0x40 /* handwritten instruction */
    /* 1119C8 00210A48 EDFFA01C */  bgtz       $a1, .L00210A00
    /* 1119CC 00210A4C F000ECF8 */   sqc2      $vf12, 0xF0($a3)
    /* 1119D0 00210A50 F5002011 */  beqz       $t1, .L00210E28
    /* 1119D4 00210A54 00000000 */   nop
    /* 1119D8 00210A58 52000793 */  lbu        $a3, 0x52($t8)
    /* 1119DC 00210A5C 53000893 */  lbu        $t0, 0x53($t8)
    /* 1119E0 00210A60 50000593 */  lbu        $a1, 0x50($t8)
    /* 1119E4 00210A64 00000000 */  nop
    /* 1119E8 00210A68 51000693 */  lbu        $a2, 0x51($t8)
    /* 1119EC 00210A6C 2208E800 */  sub        $at, $a3, $t0 /* handwritten instruction */
    /* 1119F0 00210A70 F6FFA785 */  lh         $a3, -0xA($t5)
    /* 1119F4 00210A74 0100A520 */  addi       $a1, $a1, 0x1 /* handwritten instruction */
    /* 1119F8 00210A78 0020A948 */  qmtc2.ni   $t1, $vf4
    /* 1119FC 00210A7C 2228A600 */  sub        $a1, $a1, $a2 /* handwritten instruction */
    /* 111A00 00210A80 25082500 */  or         $at, $at, $a1
    /* 111A04 00210A84 FAFFA585 */  lh         $a1, -0x6($t5)
    /* 111A08 00210A88 243721AF */  sw         $at, (0x70003724 & 0xFFFF)($t9)
    /* 111A0C 00210A8C 00790700 */  sll        $t7, $a3, 4
    /* 111A10 00210A90 2078F901 */  add        $t7, $t7, $t9 /* handwritten instruction */
    /* 111A14 00210A94 FEFFA685 */  lh         $a2, -0x2($t5)
    /* 111A18 00210A98 F025E07D */  sq         $zero, 0x25F0($t7)
    /* 111A1C 00210A9C 0401244A */  vsubx.w    $vf4, $vf0, $vf4x
.align 2
  .L00210AA0:
    /* 111A20 00210AA0 F01FC1DD */  ld         $at, 0x1FF0($t6)
    /* 111A24 00210AA4 0010083C */  lui        $t0, (0x1000D400 >> 16)
    /* 111A28 00210AA8 00D40835 */  ori        $t0, $t0, (0x1000D400 & 0xFFFF)
    /* 111A2C 00210AAC 00000000 */  nop
    /* 111A30 00210AB0 00000000 */  nop
    /* 111A34 00210AB4 00000000 */  nop
    /* 111A38 00210AB8 F9FF2010 */  beqz       $at, .L00210AA0
    /* 111A3C 00210ABC 00000000 */   nop
    /* 111A40 00210AC0 10000DAD */  sw         $t5, 0x10($t0)
    /* 111A44 00210AC4 00262123 */  addi       $at, $t9, (0x70002600 & 0xFFFF) /* handwritten instruction */
    /* 111A48 00210AC8 800001AD */  sw         $at, 0x80($t0)
    /* 111A4C 00210ACC 002D2E23 */  addi       $t6, $t9, (0x70002D00 & 0xFFFF) /* handwritten instruction */
    /* 111A50 00210AD0 200007AD */  sw         $a3, 0x20($t0)
    /* 111A54 00210AD4 00010134 */  ori        $at, $zero, 0x100
    /* 111A58 00210AD8 000001AD */  sw         $at, 0x0($t0)
    /* 111A5C 00210ADC 002C2D23 */  addi       $t5, $t9, (0x70002C00 & 0xFFFF) /* handwritten instruction */
    /* 111A60 00210AE0 2837278F */  lw         $a3, (0x70003728 & 0xFFFF)($t9)
    /* 111A64 00210AE4 00202123 */  addi       $at, $t9, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 111A68 00210AE8 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* 111A6C 00210AEC 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
    /* 111A70 00210AF0 C0200200 */  sll        $a0, $v0, 3
    /* 111A74 00210AF4 00000000 */  nop
    /* 111A78 00210AF8 1B004010 */  beqz       $v0, .L00210B68
    /* 111A7C 00210AFC 20208100 */   add       $a0, $a0, $at /* handwritten instruction */
    /* 111A80 00210B00 000027DC */  ld         $a3, 0x0($at)
    /* 111A84 00210B04 06002890 */  lbu        $t0, 0x6($at)
    /* 111A88 00210B08 884DE070 */  pextlh     $t1, $a3, $zero
    /* 111A8C 00210B0C 7E4B0970 */  psrlw      $t1, $t1, 13
.align 2
  .L00210B10:
    /* 111A90 00210B10 15004018 */  blez       $v0, .L00210B68
    /* 111A94 00210B14 00000000 */   nop
    /* 111A98 00210B18 0030A948 */  qmtc2.ni   $t1, $vf6
    /* 111A9C 00210B1C 22484801 */  sub        $t1, $t2, $t0 /* handwritten instruction */
    /* 111AA0 00210B20 11002019 */  blez       $t1, .L00210B68
    /* 111AA4 00210B24 BE670700 */   dsrl32    $t4, $a3, 30
    /* 111AA8 00210B28 80590800 */  sll        $t3, $t0, 6
    /* 111AAC 00210B2C 080027DC */  ld         $a3, 0x8($at)
    /* 111AB0 00210B30 3F31C54B */  vitof15.xyz $vf5, $vf6
    /* 111AB4 00210B34 20587901 */  add        $t3, $t3, $t9 /* handwritten instruction */
    /* 111AB8 00210B38 08002120 */  addi       $at, $at, 0x8 /* handwritten instruction */
    /* 111ABC 00210B3C FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* 111AC0 00210B40 06002890 */  lbu        $t0, 0x6($at)
    /* 111AC4 00210B44 884DE070 */  pextlh     $t1, $a3, $zero
    /* 111AC8 00210B48 F1FF8011 */  beqz       $t4, .L00210B10
    /* 111ACC 00210B4C 7E4B0970 */   psrlw     $t1, $t1, 13
    /* 111AD0 00210B50 0000ABAD */  sw         $t3, 0x0($t5)
    /* 111AD4 00210B54 0400AD21 */  addi       $t5, $t5, 0x4 /* handwritten instruction */
    /* 111AD8 00210B58 000065F9 */  sqc2       $vf5, 0x0($t3)
    /* 111ADC 00210B5C FCFF0C20 */  addi       $t4, $zero, -0x4 /* handwritten instruction */
    /* 111AE0 00210B60 EBFF401C */  bgtz       $v0, .L00210B10
    /* 111AE4 00210B64 0C006CAD */   sw        $t4, 0xC($t3)
.align 2
  .L00210B68:
    /* 111AE8 00210B68 19006010 */  beqz       $v1, .L00210BD0
    /* 111AEC 00210B6C 000087DC */   ld        $a3, 0x0($a0)
    /* 111AF0 00210B70 06008890 */  lbu        $t0, 0x6($a0)
    /* 111AF4 00210B74 3C03254A */  vmove.w    $vf5, $vf0
    /* 111AF8 00210B78 883DE070 */  pextlh     $a3, $a3, $zero
    /* 111AFC 00210B7C 3F3C0770 */  psraw      $a3, $a3, 16
.align 2
  .L00210B80:
    /* 111B00 00210B80 0030A748 */  qmtc2.ni   $a3, $vf6
    /* 111B04 00210B84 22484801 */  sub        $t1, $t2, $t0 /* handwritten instruction */
    /* 111B08 00210B88 11002019 */  blez       $t1, .L00210BD0
    /* 111B0C 00210B8C 80610800 */   sll       $t4, $t0, 6
    /* 111B10 00210B90 20609901 */  add        $t4, $t4, $t9 /* handwritten instruction */
    /* 111B14 00210B94 080087DC */  ld         $a3, 0x8($a0)
    /* 111B18 00210B98 3C31C54B */  vitof0.xyz $vf5, $vf6
    /* 111B1C 00210B9C 08008420 */  addi       $a0, $a0, 0x8 /* handwritten instruction */
    /* 111B20 00210BA0 06008890 */  lbu        $t0, 0x6($a0)
    /* 111B24 00210BA4 883DE070 */  pextlh     $a3, $a3, $zero
    /* 111B28 00210BA8 0000CCAD */  sw         $t4, 0x0($t6)
    /* 111B2C 00210BAC 0400CE21 */  addi       $t6, $t6, 0x4 /* handwritten instruction */
    /* 111B30 00210BB0 2C008B8D */  lw         $t3, 0x2C($t4)
    /* 111B34 00210BB4 3F3C0770 */  psraw      $a3, $a3, 16
    /* 111B38 00210BB8 200085F9 */  sqc2       $vf5, 0x20($t4)
    /* 111B3C 00210BBC FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 111B40 00210BC0 2C008BAD */  sw         $t3, 0x2C($t4)
    /* 111B44 00210BC4 FCFF0B20 */  addi       $t3, $zero, -0x4 /* handwritten instruction */
    /* 111B48 00210BC8 EDFF601C */  bgtz       $v1, .L00210B80
    /* 111B4C 00210BCC 3C008BAD */   sw        $t3, 0x3C($t4)
.align 2
  .L00210BD0:
    /* 111B50 00210BD0 F025E1DD */  ld         $at, 0x25F0($t7)
    /* 111B54 00210BD4 00000000 */  nop
    /* 111B58 00210BD8 2837278F */  lw         $a3, (0x70003728 & 0xFFFF)($t9)
    /* 111B5C 00210BDC 00262423 */  addi       $a0, $t9, (0x70002600 & 0xFFFF) /* handwritten instruction */
    /* 111B60 00210BE0 00000000 */  nop
    /* 111B64 00210BE4 00000000 */  nop
    /* 111B68 00210BE8 F9FF2010 */  beqz       $at, .L00210BD0
    /* 111B6C 00210BEC C0180500 */   sll       $v1, $a1, 3
    /* 111B70 00210BF0 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* 111B74 00210BF4 20208700 */  add        $a0, $a0, $a3 /* handwritten instruction */
    /* 111B78 00210BF8 1B00A010 */  beqz       $a1, .L00210C68
    /* 111B7C 00210BFC 20186400 */   add       $v1, $v1, $a0 /* handwritten instruction */
    /* 111B80 00210C00 000087DC */  ld         $a3, 0x0($a0)
    /* 111B84 00210C04 06008890 */  lbu        $t0, 0x6($a0)
    /* 111B88 00210C08 884DE070 */  pextlh     $t1, $a3, $zero
    /* 111B8C 00210C0C 7E4B0970 */  psrlw      $t1, $t1, 13
.align 2
  .L00210C10:
    /* 111B90 00210C10 1500A018 */  blez       $a1, .L00210C68
    /* 111B94 00210C14 00000000 */   nop
    /* 111B98 00210C18 0030A948 */  qmtc2.ni   $t1, $vf6
    /* 111B9C 00210C1C 22084801 */  sub        $at, $t2, $t0 /* handwritten instruction */
    /* 111BA0 00210C20 11002018 */  blez       $at, .L00210C68
    /* 111BA4 00210C24 BE670700 */   dsrl32    $t4, $a3, 30
    /* 111BA8 00210C28 80590800 */  sll        $t3, $t0, 6
    /* 111BAC 00210C2C 080087DC */  ld         $a3, 0x8($a0)
    /* 111BB0 00210C30 3F31C54B */  vitof15.xyz $vf5, $vf6
    /* 111BB4 00210C34 20587901 */  add        $t3, $t3, $t9 /* handwritten instruction */
    /* 111BB8 00210C38 0E008890 */  lbu        $t0, 0xE($a0)
    /* 111BBC 00210C3C 08008420 */  addi       $a0, $a0, 0x8 /* handwritten instruction */
    /* 111BC0 00210C40 884DE070 */  pextlh     $t1, $a3, $zero
    /* 111BC4 00210C44 0000ABAD */  sw         $t3, 0x0($t5)
    /* 111BC8 00210C48 7E4B0970 */  psrlw      $t1, $t1, 13
    /* 111BCC 00210C4C 0C00618D */  lw         $at, 0xC($t3)
    /* 111BD0 00210C50 EFFF8011 */  beqz       $t4, .L00210C10
    /* 111BD4 00210C54 FFFFA520 */   addi      $a1, $a1, -0x1 /* handwritten instruction */
    /* 111BD8 00210C58 100065F9 */  sqc2       $vf5, 0x10($t3)
    /* 111BDC 00210C5C 0400AD21 */  addi       $t5, $t5, 0x4 /* handwritten instruction */
    /* 111BE0 00210C60 EBFFA014 */  bnez       $a1, .L00210C10
    /* 111BE4 00210C64 2068A101 */   add       $t5, $t5, $at /* handwritten instruction */
.align 2
  .L00210C68:
    /* 111BE8 00210C68 1700C010 */  beqz       $a2, .L00210CC8
    /* 111BEC 00210C6C 000067DC */   ld        $a3, 0x0($v1)
    /* 111BF0 00210C70 06006890 */  lbu        $t0, 0x6($v1)
    /* 111BF4 00210C74 3C03254A */  vmove.w    $vf5, $vf0
    /* 111BF8 00210C78 883DE070 */  pextlh     $a3, $a3, $zero
    /* 111BFC 00210C7C 3F3C0770 */  psraw      $a3, $a3, 16
.align 2
  .L00210C80:
    /* 111C00 00210C80 0030A748 */  qmtc2.ni   $a3, $vf6
    /* 111C04 00210C84 22084801 */  sub        $at, $t2, $t0 /* handwritten instruction */
    /* 111C08 00210C88 0F002018 */  blez       $at, .L00210CC8
    /* 111C0C 00210C8C 80610800 */   sll       $t4, $t0, 6
    /* 111C10 00210C90 20609901 */  add        $t4, $t4, $t9 /* handwritten instruction */
    /* 111C14 00210C94 080067DC */  ld         $a3, 0x8($v1)
    /* 111C18 00210C98 3C31C54B */  vitof0.xyz $vf5, $vf6
    /* 111C1C 00210C9C 08006320 */  addi       $v1, $v1, 0x8 /* handwritten instruction */
    /* 111C20 00210CA0 06006890 */  lbu        $t0, 0x6($v1)
    /* 111C24 00210CA4 883DE070 */  pextlh     $a3, $a3, $zero
    /* 111C28 00210CA8 0000CCAD */  sw         $t4, 0x0($t6)
    /* 111C2C 00210CAC 3F3C0770 */  psraw      $a3, $a3, 16
    /* 111C30 00210CB0 3C00818D */  lw         $at, 0x3C($t4)
    /* 111C34 00210CB4 0400CE21 */  addi       $t6, $t6, 0x4 /* handwritten instruction */
    /* 111C38 00210CB8 300085F9 */  sqc2       $vf5, 0x30($t4)
    /* 111C3C 00210CBC FFFFC620 */  addi       $a2, $a2, -0x1 /* handwritten instruction */
    /* 111C40 00210CC0 EFFFC01C */  bgtz       $a2, .L00210C80
    /* 111C44 00210CC4 2070C101 */   add       $t6, $t6, $at /* handwritten instruction */
.align 2
  .L00210CC8:
    /* 111C48 00210CC8 002C2123 */  addi       $at, $t9, (0x70002C00 & 0xFFFF) /* handwritten instruction */
    /* 111C4C 00210CCC 00000000 */  nop
    /* 111C50 00210CD0 0000228C */  lw         $v0, 0x0($at)
    /* 111C54 00210CD4 001E2323 */  addi       $v1, $t9, (0x70001E00 & 0xFFFF) /* handwritten instruction */
    /* 111C58 00210CD8 0F002D10 */  beq        $at, $t5, .L00210D18
    /* 111C5C 00210CDC 0000A3AD */   sw        $v1, 0x0($t5)
    /* 111C60 00210CE0 000045D8 */  lqc2       $vf5, 0x0($v0)
    /* 111C64 00210CE4 100046D8 */  lqc2       $vf6, 0x10($v0)
.align 2
  .L00210CE8:
    /* 111C68 00210CE8 BF29C44B */  .word      0x4BC429BF    # vmulaw.xyz ACC, $vf5, $vf4w
    /* 111C6C 00210CEC 00004320 */  addi       $v1, $v0, 0x0 /* handwritten instruction */
    /* 111C70 00210CF0 C831C44B */  vmaddx.xyz $vf7, $vf6, $vf4x
    /* 111C74 00210CF4 1C00448C */  lw         $a0, 0x1C($v0)
    /* 111C78 00210CF8 0400228C */  lw         $v0, 0x4($at)
    /* 111C7C 00210CFC 04002120 */  addi       $at, $at, 0x4 /* handwritten instruction */
    /* 111C80 00210D00 000045D8 */  lqc2       $vf5, 0x0($v0)
    /* 111C84 00210D04 100046D8 */  lqc2       $vf6, 0x10($v0)
    /* 111C88 00210D08 100067F8 */  sqc2       $vf7, 0x10($v1)
    /* 111C8C 00210D0C 00000000 */  nop
    /* 111C90 00210D10 F5FF2D14 */  bne        $at, $t5, .L00210CE8
    /* 111C94 00210D14 1C0064AC */   sw        $a0, 0x1C($v1)
.align 2
  .L00210D18:
    /* 111C98 00210D18 002D2123 */  addi       $at, $t9, (0x70002D00 & 0xFFFF) /* handwritten instruction */
    /* 111C9C 00210D1C 00000000 */  nop
    /* 111CA0 00210D20 0000228C */  lw         $v0, 0x0($at)
    /* 111CA4 00210D24 001E2323 */  addi       $v1, $t9, (0x70001E00 & 0xFFFF) /* handwritten instruction */
    /* 111CA8 00210D28 0F002E10 */  beq        $at, $t6, .L00210D68
    /* 111CAC 00210D2C 0000C3AD */   sw        $v1, 0x0($t6)
    /* 111CB0 00210D30 200045D8 */  lqc2       $vf5, 0x20($v0)
    /* 111CB4 00210D34 300046D8 */  lqc2       $vf6, 0x30($v0)
.align 2
  .L00210D38:
    /* 111CB8 00210D38 BF29C44B */  .word      0x4BC429BF    # vmulaw.xyz ACC, $vf5, $vf4w
    /* 111CBC 00210D3C 00004320 */  addi       $v1, $v0, 0x0 /* handwritten instruction */
    /* 111CC0 00210D40 C831C44B */  vmaddx.xyz $vf7, $vf6, $vf4x
    /* 111CC4 00210D44 2C00448C */  lw         $a0, 0x2C($v0)
    /* 111CC8 00210D48 0400228C */  lw         $v0, 0x4($at)
    /* 111CCC 00210D4C 04002120 */  addi       $at, $at, 0x4 /* handwritten instruction */
    /* 111CD0 00210D50 200045D8 */  lqc2       $vf5, 0x20($v0)
    /* 111CD4 00210D54 300046D8 */  lqc2       $vf6, 0x30($v0)
    /* 111CD8 00210D58 200067F8 */  sqc2       $vf7, 0x20($v1)
    /* 111CDC 00210D5C 00000000 */  nop
    /* 111CE0 00210D60 F5FF2E14 */  bne        $at, $t6, .L00210D38
    /* 111CE4 00210D64 2C0064AC */   sw        $a0, 0x2C($v1)
.align 2
  .L00210D68:
    /* 111CE8 00210D68 00202123 */  addi       $at, $t9, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 111CEC 00210D6C 00262223 */  addi       $v0, $t9, (0x70002600 & 0xFFFF) /* handwritten instruction */
    /* 111CF0 00210D70 2437278F */  lw         $a3, (0x70003724 & 0xFFFF)($t9)
    /* 111CF4 00210D74 00004321 */  addi       $v1, $t2, 0x0 /* handwritten instruction */
    /* 111CF8 00210D78 00002678 */  lq         $a2, 0x0($at)
    /* 111CFC 00210D7C 80FF2423 */  addi       $a0, $t9, -0x80 /* handwritten instruction */
    /* 111D00 00210D80 00004878 */  lq         $t0, 0x0($v0)
    /* 111D04 00210D84 882DC070 */  pextlh     $a1, $a2, $zero
    /* 111D08 00210D88 EB00E014 */  bnez       $a3, .L00211138
    /* 111D0C 00210D8C 3F2C0570 */   psraw     $a1, $a1, 16
    /* 111D10 00210D90 0028A548 */  qmtc2.ni   $a1, $vf5
    /* 111D14 00210D94 A835C070 */  pextuh     $a2, $a2, $zero
.align 2
  .L00210D98:
    /* 111D18 00210D98 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 111D1C 00210D9C 3F340670 */  psraw      $a2, $a2, 16
    /* 111D20 00210DA0 0030A648 */  qmtc2.ni   $a2, $vf6
    /* 111D24 00210DA4 883D0071 */  pextlh     $a3, $t0, $zero
    /* 111D28 00210DA8 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 111D2C 00210DAC 3F3C0770 */  psraw      $a3, $a3, 16
    /* 111D30 00210DB0 0038A748 */  qmtc2.ni   $a3, $vf7
    /* 111D34 00210DB4 A8450071 */  pextuh     $t0, $t0, $zero
    /* 111D38 00210DB8 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 111D3C 00210DBC 3F440870 */  psraw      $t0, $t0, 16
    /* 111D40 00210DC0 0040A848 */  qmtc2.ni   $t0, $vf8
    /* 111D44 00210DC4 80008420 */  addi       $a0, $a0, 0x80 /* handwritten instruction */
    /* 111D48 00210DC8 3F29E54B */  vitof15.xyzw $vf5, $vf5
    /* 111D4C 00210DCC 10002120 */  addi       $at, $at, 0x10 /* handwritten instruction */
    /* 111D50 00210DD0 3F31E64B */  vitof15.xyzw $vf6, $vf6
    /* 111D54 00210DD4 10004220 */  addi       $v0, $v0, 0x10 /* handwritten instruction */
    /* 111D58 00210DD8 3F39E74B */  vitof15.xyzw $vf7, $vf7
    /* 111D5C 00210DDC 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 111D60 00210DE0 BF29E44B */  .word      0x4BE429BF    # vmulaw.xyzw ACC, $vf5, $vf4w
    /* 111D64 00210DE4 483AE44B */  vmaddx.xyzw $vf9, $vf7, $vf4x
    /* 111D68 00210DE8 BF31E44B */  .word      0x4BE431BF    # vmulaw.xyzw ACC, $vf6, $vf4w
    /* 111D6C 00210DEC 00002678 */  lq         $a2, 0x0($at)
    /* 111D70 00210DF0 8842E44B */  vmaddx.xyzw $vf10, $vf8, $vf4x
    /* 111D74 00210DF4 00004878 */  lq         $t0, 0x0($v0)
    /* 111D78 00210DF8 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 111D7C 00210DFC 882DC070 */  pextlh     $a1, $a2, $zero
    /* 111D80 00210E00 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 111D84 00210E04 3F2C0570 */  psraw      $a1, $a1, 16
    /* 111D88 00210E08 0028A548 */  qmtc2.ni   $a1, $vf5
    /* 111D8C 00210E0C A835C070 */  pextuh     $a2, $a2, $zero
    /* 111D90 00210E10 000089F8 */  sqc2       $vf9, 0x0($a0)
    /* 111D94 00210E14 FEFF6320 */  addi       $v1, $v1, -0x2 /* handwritten instruction */
    /* 111D98 00210E18 DFFF601C */  bgtz       $v1, .L00210D98
    /* 111D9C 00210E1C 40008AF8 */   sqc2      $vf10, 0x40($a0)
    /* 111DA0 00210E20 E8430808 */  j          func_00210FA0
    /* 111DA4 00210E24 00000000 */   nop
.align 2
  .L00210E28:
    /* 111DA8 00210E28 F01FC1DD */  ld         $at, 0x1FF0($t6)
    /* 111DAC 00210E2C 00000000 */  nop
    /* 111DB0 00210E30 2837258F */  lw         $a1, (0x70003728 & 0xFFFF)($t9)
    /* 111DB4 00210E34 00202C23 */  addi       $t4, $t9, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 111DB8 00210E38 00000000 */  nop
    /* 111DBC 00210E3C 00000000 */  nop
    /* 111DC0 00210E40 F9FF2010 */  beqz       $at, .L00210E28
    /* 111DC4 00210E44 C0680200 */   sll       $t5, $v0, 3
    /* 111DC8 00210E48 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* 111DCC 00210E4C 20608501 */  add        $t4, $t4, $a1 /* handwritten instruction */
    /* 111DD0 00210E50 17004010 */  beqz       $v0, .L00210EB0
    /* 111DD4 00210E54 2068AC01 */   add       $t5, $t5, $t4 /* handwritten instruction */
    /* 111DD8 00210E58 000085DD */  ld         $a1, 0x0($t4)
    /* 111DDC 00210E5C 06008691 */  lbu        $a2, 0x6($t4)
    /* 111DE0 00210E60 883DA070 */  pextlh     $a3, $a1, $zero
    /* 111DE4 00210E64 7E3B0770 */  psrlw      $a3, $a3, 13
.align 2
  .L00210E68:
    /* 111DE8 00210E68 11004018 */  blez       $v0, .L00210EB0
    /* 111DEC 00210E6C 00000000 */   nop
    /* 111DF0 00210E70 0030A748 */  qmtc2.ni   $a3, $vf6
    /* 111DF4 00210E74 22084601 */  sub        $at, $t2, $a2 /* handwritten instruction */
    /* 111DF8 00210E78 0D002018 */  blez       $at, .L00210EB0
    /* 111DFC 00210E7C BE4F0500 */   dsrl32    $t1, $a1, 30
    /* 111E00 00210E80 80410600 */  sll        $t0, $a2, 6
    /* 111E04 00210E84 080085DD */  ld         $a1, 0x8($t4)
    /* 111E08 00210E88 3F31C54B */  vitof15.xyz $vf5, $vf6
    /* 111E0C 00210E8C 20401901 */  add        $t0, $t0, $t9 /* handwritten instruction */
    /* 111E10 00210E90 08008C21 */  addi       $t4, $t4, 0x8 /* handwritten instruction */
    /* 111E14 00210E94 FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* 111E18 00210E98 06008691 */  lbu        $a2, 0x6($t4)
    /* 111E1C 00210E9C 883DA070 */  pextlh     $a3, $a1, $zero
    /* 111E20 00210EA0 F1FF2011 */  beqz       $t1, .L00210E68
    /* 111E24 00210EA4 7E3B0770 */   psrlw     $a3, $a3, 13
    /* 111E28 00210EA8 EFFF401C */  bgtz       $v0, .L00210E68
    /* 111E2C 00210EAC 100005F9 */   sqc2      $vf5, 0x10($t0)
.align 2
  .L00210EB0:
    /* 111E30 00210EB0 15006010 */  beqz       $v1, .L00210F08
    /* 111E34 00210EB4 0000A5DD */   ld        $a1, 0x0($t5)
    /* 111E38 00210EB8 0600A691 */  lbu        $a2, 0x6($t5)
    /* 111E3C 00210EBC 3C03254A */  vmove.w    $vf5, $vf0
    /* 111E40 00210EC0 882DA070 */  pextlh     $a1, $a1, $zero
    /* 111E44 00210EC4 3F2C0570 */  psraw      $a1, $a1, 16
.align 2
  .L00210EC8:
    /* 111E48 00210EC8 0030A548 */  qmtc2.ni   $a1, $vf6
    /* 111E4C 00210ECC 22084601 */  sub        $at, $t2, $a2 /* handwritten instruction */
    /* 111E50 00210ED0 0D002018 */  blez       $at, .L00210F08
    /* 111E54 00210ED4 80410600 */   sll       $t0, $a2, 6
    /* 111E58 00210ED8 20401901 */  add        $t0, $t0, $t9 /* handwritten instruction */
    /* 111E5C 00210EDC 0800A5DD */  ld         $a1, 0x8($t5)
    /* 111E60 00210EE0 3C31C54B */  vitof0.xyz $vf5, $vf6
    /* 111E64 00210EE4 0800AD21 */  addi       $t5, $t5, 0x8 /* handwritten instruction */
    /* 111E68 00210EE8 0600A691 */  lbu        $a2, 0x6($t5)
    /* 111E6C 00210EEC 882DA070 */  pextlh     $a1, $a1, $zero
    /* 111E70 00210EF0 2C00078D */  lw         $a3, 0x2C($t0)
    /* 111E74 00210EF4 3F2C0570 */  psraw      $a1, $a1, 16
    /* 111E78 00210EF8 200005F9 */  sqc2       $vf5, 0x20($t0)
    /* 111E7C 00210EFC FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 111E80 00210F00 F1FF601C */  bgtz       $v1, .L00210EC8
    /* 111E84 00210F04 2C0007AD */   sw        $a3, 0x2C($t0)
.align 2
  .L00210F08:
    /* 111E88 00210F08 00202123 */  addi       $at, $t9, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 111E8C 00210F0C 00FF2223 */  addi       $v0, $t9, -0x100 /* handwritten instruction */
    /* 111E90 00210F10 00002678 */  lq         $a2, 0x0($at)
    /* 111E94 00210F14 00004321 */  addi       $v1, $t2, 0x0 /* handwritten instruction */
    /* 111E98 00210F18 10002878 */  lq         $t0, 0x10($at)
    /* 111E9C 00210F1C 00000000 */  nop
.align 2
  .L00210F20:
    /* 111EA0 00210F20 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 111EA4 00210F24 882DC070 */  pextlh     $a1, $a2, $zero
    /* 111EA8 00210F28 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 111EAC 00210F2C 3F2C0570 */  psraw      $a1, $a1, 16
    /* 111EB0 00210F30 0028A548 */  qmtc2.ni   $a1, $vf5
    /* 111EB4 00210F34 A835C070 */  pextuh     $a2, $a2, $zero
    /* 111EB8 00210F38 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 111EBC 00210F3C 3F340670 */  psraw      $a2, $a2, 16
    /* 111EC0 00210F40 0030A648 */  qmtc2.ni   $a2, $vf6
    /* 111EC4 00210F44 883D0071 */  pextlh     $a3, $t0, $zero
    /* 111EC8 00210F48 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 111ECC 00210F4C 3F3C0770 */  psraw      $a3, $a3, 16
    /* 111ED0 00210F50 0038A748 */  qmtc2.ni   $a3, $vf7
    /* 111ED4 00210F54 A8450071 */  pextuh     $t0, $t0, $zero
    /* 111ED8 00210F58 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 111EDC 00210F5C 3F440870 */  psraw      $t0, $t0, 16
    /* 111EE0 00210F60 0040A848 */  qmtc2.ni   $t0, $vf8
    /* 111EE4 00210F64 00000000 */  nop
    /* 111EE8 00210F68 3F29E54B */  vitof15.xyzw $vf5, $vf5
    /* 111EEC 00210F6C 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
    /* 111EF0 00210F70 3F31E64B */  vitof15.xyzw $vf6, $vf6
    /* 111EF4 00210F74 00014220 */  addi       $v0, $v0, 0x100 /* handwritten instruction */
    /* 111EF8 00210F78 3F39E74B */  vitof15.xyzw $vf7, $vf7
    /* 111EFC 00210F7C 00002678 */  lq         $a2, 0x0($at)
    /* 111F00 00210F80 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 111F04 00210F84 10002878 */  lq         $t0, 0x10($at)
    /* 111F08 00210F88 000045F8 */  sqc2       $vf5, 0x0($v0)
    /* 111F0C 00210F8C 400046F8 */  sqc2       $vf6, 0x40($v0)
    /* 111F10 00210F90 800047F8 */  sqc2       $vf7, 0x80($v0)
    /* 111F14 00210F94 FCFF6320 */  addi       $v1, $v1, -0x4 /* handwritten instruction */
    /* 111F18 00210F98 E1FF601C */  bgtz       $v1, .L00210F20
    /* 111F1C 00210F9C C00048F8 */   sqc2      $vf8, 0xC0($v0)
.align 2
  alabel func_00210FA0
    /* 111F20 00210FA0 60000FDF */  ld         $t7, 0x60($t8)
    /* 111F24 00210FA4 00000000 */  nop
    /* 111F28 00210FA8 C100E015 */  bnez       $t7, .L002112B0
    /* 111F2C 00210FAC 02700F00 */   srl       $t6, $t7, 0
.align 2
  alabel func_00210FB0
    /* 111F30 00210FB0 80610A00 */  sll        $t4, $t2, 6
    /* 111F34 00210FB4 00002B23 */  addi       $t3, $t9, (0x70000000 & 0xFFFF) /* handwritten instruction */
    /* 111F38 00210FB8 20608B01 */  add        $t4, $t4, $t3 /* handwritten instruction */
    /* 111F3C 00210FBC 3C0BE44B */  vmove.xyzw $vf4, $vf1
    /* 111F40 00210FC0 3C13E54B */  vmove.xyzw $vf5, $vf2
    /* 111F44 00210FC4 2C0099AD */  sw         $t9, 0x2C($t4)
    /* 111F48 00210FC8 3C1BE64B */  vmove.xyzw $vf6, $vf3
    /* 111F4C 00210FCC 3C03E74B */  vmove.xyzw $vf7, $vf0
.align 2
  .L00210FD0:
    /* 111F50 00210FD0 00006AD9 */  lqc2       $vf10, 0x0($t3)
    /* 111F54 00210FD4 3C0BF04B */  vmove.xyzw $vf16, $vf1
    /* 111F58 00210FD8 E852EA4B */  vadd.xyzw  $vf11, $vf10, $vf10
    /* 111F5C 00210FDC 3C13F14B */  vmove.xyzw $vf17, $vf2
    /* 111F60 00210FE0 3C1BF24B */  vmove.xyzw $vf18, $vf3
    /* 111F64 00210FE4 00006D21 */  addi       $t5, $t3, 0x0 /* handwritten instruction */
    /* 111F68 00210FE8 3C03F34B */  vmove.xyzw $vf19, $vf0
    /* 111F6C 00210FEC 40006B21 */  addi       $t3, $t3, 0x40 /* handwritten instruction */
    /* 111F70 00210FF0 1000A8D9 */  lqc2       $vf8, 0x10($t5)
    /* 111F74 00210FF4 00000000 */  nop
    /* 111F78 00210FF8 1B5BCA4B */  vmulw.xyz  $vf12, $vf11, $vf10w
    /* 111F7C 00210FFC 585BCA4B */  vmulx.xyz  $vf13, $vf11, $vf10x
    /* 111F80 00211000 995BCA4A */  vmuly.yz   $vf14, $vf11, $vf10y
    /* 111F84 00211004 DA5B4A4A */  vmulz.z    $vf15, $vf11, $vf10z
    /* 111F88 00211008 42040C4B */  vaddz.x    $vf17, $vf0, $vf12z
    /* 111F8C 0021100C 85040C4B */  vsuby.x    $vf18, $vf0, $vf12y
    /* 111F90 00211010 80048C4A */  vaddx.y    $vf18, $vf0, $vf12x
    /* 111F94 00211014 05840E4B */  vsuby.x    $vf16, $vf16, $vf14y
    /* 111F98 00211018 448C8D4A */  vsubx.y    $vf17, $vf17, $vf13x
    /* 111F9C 0021101C 84944D4A */  vsubx.z    $vf18, $vf18, $vf13x
    /* 111FA0 00211020 066C8C4A */  vsubz.y    $vf16, $vf13, $vf12z
    /* 111FA4 00211024 016C4C4A */  vaddy.z    $vf16, $vf13, $vf12y
    /* 111FA8 00211028 44744C4A */  vsubx.z    $vf17, $vf14, $vf12x
    /* 111FAC 0021102C 418C0D4B */  vaddy.x    $vf17, $vf17, $vf13y
    /* 111FB0 00211030 82940D4B */  vaddz.x    $vf18, $vf18, $vf13z
    /* 111FB4 00211034 82948E4A */  vaddz.y    $vf18, $vf18, $vf14z
    /* 111FB8 00211038 06840F4B */  vsubz.x    $vf16, $vf16, $vf15z
    /* 111FBC 0021103C 468C8F4A */  vsubz.y    $vf17, $vf17, $vf15z
    /* 111FC0 00211040 85944E4A */  vsuby.z    $vf18, $vf18, $vf14y
    /* 111FC4 00211044 2000A9D9 */  lqc2       $vf9, 0x20($t5)
    /* 111FC8 00211048 1884C84B */  vmulx.xyz  $vf16, $vf16, $vf8x
    /* 111FCC 0021104C 598CC84B */  vmuly.xyz  $vf17, $vf17, $vf8y
    /* 111FD0 00211050 9A94C84B */  vmulz.xyz  $vf18, $vf18, $vf8z
    /* 111FD4 00211054 2C00698D */  lw         $t1, 0x2C($t3)
    /* 111FD8 00211058 E89CC94B */  vadd.xyz   $vf19, $vf19, $vf9
    /* 111FDC 0021105C BC21F04B */  .word      0x4BF021BC    # vmulax.xyzw ACC, $vf4, $vf16x
    /* 111FE0 00211060 BD28F04B */  .word      0x4BF028BD    # vmadday.xyzw ACC, $vf5, $vf16y
    /* 111FE4 00211064 0A34F04B */  vmaddz.xyzw $vf16, $vf6, $vf16z
    /* 111FE8 00211068 BC21F14B */  .word      0x4BF121BC    # vmulax.xyzw ACC, $vf4, $vf17x
    /* 111FEC 0021106C BD28F14B */  .word      0x4BF128BD    # vmadday.xyzw ACC, $vf5, $vf17y
    /* 111FF0 00211070 4A34F14B */  vmaddz.xyzw $vf17, $vf6, $vf17z
    /* 111FF4 00211074 BC21F24B */  .word      0x4BF221BC    # vmulax.xyzw ACC, $vf4, $vf18x
    /* 111FF8 00211078 BD28F24B */  .word      0x4BF228BD    # vmadday.xyzw ACC, $vf5, $vf18y
    /* 111FFC 0021107C 8A34F24B */  vmaddz.xyzw $vf18, $vf6, $vf18z
    /* 112000 00211080 BC21F34B */  .word      0x4BF321BC    # vmulax.xyzw ACC, $vf4, $vf19x
    /* 112004 00211084 BD28F34B */  .word      0x4BF328BD    # vmadday.xyzw ACC, $vf5, $vf19y
    /* 112008 00211088 BE30F34B */  .word      0x4BF330BE    # vmaddaz.xyzw ACC, $vf6, $vf19z
    /* 11200C 0021108C CB3CE04B */  vmaddw.xyzw $vf19, $vf7, $vf0w
    /* 112010 00211090 0000B0F9 */  sqc2       $vf16, 0x0($t5)
    /* 112014 00211094 1000B1F9 */  sqc2       $vf17, 0x10($t5)
    /* 112018 00211098 2000B2F9 */  sqc2       $vf18, 0x20($t5)
    /* 11201C 0021109C 000024D9 */  lqc2       $vf4, 0x0($t1)
    /* 112020 002110A0 3000B3F9 */  sqc2       $vf19, 0x30($t5)
    /* 112024 002110A4 100025D9 */  lqc2       $vf5, 0x10($t1)
    /* 112028 002110A8 200026D9 */  lqc2       $vf6, 0x20($t1)
    /* 11202C 002110AC 00000000 */  nop
    /* 112030 002110B0 C7FF6C15 */  bne        $t3, $t4, .L00210FD0
    /* 112034 002110B4 300027D9 */   lqc2      $vf7, 0x30($t1)
    /* 112038 002110B8 20372D8F */  lw         $t5, (0x70003720 & 0xFFFF)($t9)
    /* 11203C 002110BC 00002B23 */  addi       $t3, $t9, (0x70000000 & 0xFFFF) /* handwritten instruction */
    /* 112040 002110C0 0D00A01D */  bgtz       $t5, .L002110F8
    /* 112044 002110C4 E0FF2C23 */   addi      $t4, $t9, -0x20 /* handwritten instruction */
    /* 112048 002110C8 1700A005 */  bltz       $t5, func_00211128
    /* 11204C 002110CC 00000000 */   nop
.align 2
  .L002110D0:
    /* 112050 002110D0 300061D9 */  lqc2       $vf1, 0x30($t3)
    /* 112054 002110D4 20008C21 */  addi       $t4, $t4, 0x20 /* handwritten instruction */
    /* 112058 002110D8 700062D9 */  lqc2       $vf2, 0x70($t3)
    /* 11205C 002110DC 80006B21 */  addi       $t3, $t3, 0x80 /* handwritten instruction */
    /* 112060 002110E0 000081F9 */  sqc2       $vf1, 0x0($t4)
    /* 112064 002110E4 FEFF4A21 */  addi       $t2, $t2, -0x2 /* handwritten instruction */
    /* 112068 002110E8 F9FF401D */  bgtz       $t2, .L002110D0
    /* 11206C 002110EC 100082F9 */   sqc2      $vf2, 0x10($t4)
    /* 112070 002110F0 4A440808 */  j          func_00211128
    /* 112074 002110F4 00000000 */   nop
.align 2
  .L002110F8:
    /* 112078 002110F8 300061D9 */  lqc2       $vf1, 0x30($t3)
    /* 11207C 002110FC 20008C21 */  addi       $t4, $t4, 0x20 /* handwritten instruction */
    /* 112080 00211100 700062D9 */  lqc2       $vf2, 0x70($t3)
    /* 112084 00211104 80006B21 */  addi       $t3, $t3, 0x80 /* handwritten instruction */
    /* 112088 00211108 000081F9 */  sqc2       $vf1, 0x0($t4)
    /* 11208C 0021110C 2000AD21 */  addi       $t5, $t5, 0x20 /* handwritten instruction */
    /* 112090 00211110 100082F9 */  sqc2       $vf2, 0x10($t4)
    /* 112094 00211114 FEFF4A21 */  addi       $t2, $t2, -0x2 /* handwritten instruction */
    /* 112098 00211118 03004005 */  bltz       $t2, func_00211128
    /* 11209C 0021111C E0FFA1F9 */   sqc2      $vf1, -0x20($t5)
    /* 1120A0 00211120 F5FF401D */  bgtz       $t2, .L002110F8
    /* 1120A4 00211124 F0FFA2F9 */   sqc2      $vf2, -0x10($t5)
.align 2
  alabel func_00211128
    /* 1120A8 00211128 0037387B */  lq         $t8, (0x70003700 & 0xFFFF)($t9)
    /* 1120AC 0021112C 00000000 */  nop
    /* 1120B0 00211130 0800E003 */  jr         $ra
    /* 1120B4 00211134 1037397B */   lq        $t9, (0x70003710 & 0xFFFF)($t9)
.align 2
  .L00211138:
    /* 1120B8 00211138 0028A548 */  qmtc2.ni   $a1, $vf5
    /* 1120BC 0021113C A835C070 */  pextuh     $a2, $a2, $zero
    /* 1120C0 00211140 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 1120C4 00211144 3F340670 */  psraw      $a2, $a2, 16
    /* 1120C8 00211148 0030A648 */  qmtc2.ni   $a2, $vf6
    /* 1120CC 0021114C 883D0071 */  pextlh     $a3, $t0, $zero
    /* 1120D0 00211150 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 1120D4 00211154 3F3C0770 */  psraw      $a3, $a3, 16
    /* 1120D8 00211158 0038A748 */  qmtc2.ni   $a3, $vf7
    /* 1120DC 0021115C A8450071 */  pextuh     $t0, $t0, $zero
    /* 1120E0 00211160 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 1120E4 00211164 3F440870 */  psraw      $t0, $t0, 16
    /* 1120E8 00211168 0040A848 */  qmtc2.ni   $t0, $vf8
    /* 1120EC 0021116C 00000000 */  nop
.align 2
  .L00211170:
    /* 1120F0 00211170 3F29E54B */  vitof15.xyzw $vf5, $vf5
    /* 1120F4 00211174 3F39E74B */  vitof15.xyzw $vf7, $vf7
    /* 1120F8 00211178 3F31E64B */  vitof15.xyzw $vf6, $vf6
    /* 1120FC 0021117C 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 112100 00211180 5B29E44B */  vmulw.xyzw $vf5, $vf5, $vf4w
    /* 112104 00211184 D839E44B */  vmulx.xyzw $vf7, $vf7, $vf4x
    /* 112108 00211188 9B31E44B */  vmulw.xyzw $vf6, $vf6, $vf4w
    /* 11210C 0021118C 1842E44B */  vmulx.xyzw $vf8, $vf8, $vf4x
    /* 112110 00211190 682AE74B */  vadd.xyzw  $vf9, $vf5, $vf7
    /* 112114 00211194 AA2AE74B */  vmul.xyzw  $vf10, $vf5, $vf7
    /* 112118 00211198 E832E84B */  vadd.xyzw  $vf11, $vf6, $vf8
    /* 11211C 0021119C 2A33E84B */  vmul.xyzw  $vf12, $vf6, $vf8
    /* 112120 002111A0 6A4BE94B */  vmul.xyzw  $vf13, $vf9, $vf9
    /* 112124 002111A4 3C508A4A */  .word      0x4A8A503C    # vaddax.y   ACC, $vf10, $vf10x
    /* 112128 002111A8 BE108A4A */  .word      0x4A8A10BE    # vmaddaz.y  ACC, $vf2, $vf10z
    /* 11212C 002111AC 8B138A4A */  vmaddw.y   $vf14, $vf2, $vf10w
    /* 112130 002111B0 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 112134 002111B4 BE080D4B */  .word      0x4B0D08BE    # vmaddaz.x  ACC, $vf1, $vf13z
    /* 112138 002111B8 4B0B0D4B */  vmaddw.x   $vf13, $vf1, $vf13w
    /* 11213C 002111BC 00702548 */  qmfc2.ni   $a1, $vf14
    /* 112140 002111C0 0700A104 */  bgez       $a1, .L002111E0
    /* 112144 002111C4 00000000 */   nop
    /* 112148 002111C8 6C2AE74B */  vsub.xyzw  $vf9, $vf5, $vf7
    /* 11214C 002111CC 6A4BE94B */  vmul.xyzw  $vf13, $vf9, $vf9
    /* 112150 002111D0 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 112154 002111D4 BE080D4B */  .word      0x4B0D08BE    # vmaddaz.x  ACC, $vf1, $vf13z
    /* 112158 002111D8 4B0B0D4B */  vmaddw.x   $vf13, $vf1, $vf13w
    /* 11215C 002111DC 00000000 */  nop
.align 2
  .L002111E0:
    /* 112160 002111E0 BE036D4A */  .word      0x4A6D03BE    # vrsqrt     Q, $vf0w, $vf13x
    /* 112164 002111E4 00000000 */  nop
    /* 112168 002111E8 EA5BEB4B */  vmul.xyzw  $vf15, $vf11, $vf11
    /* 11216C 002111EC 3C608C4A */  .word      0x4A8C603C    # vaddax.y   ACC, $vf12, $vf12x
    /* 112170 002111F0 BE108C4A */  .word      0x4A8C10BE    # vmaddaz.y  ACC, $vf2, $vf12z
    /* 112174 002111F4 0B148C4A */  vmaddw.y   $vf16, $vf2, $vf12w
    /* 112178 002111F8 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 11217C 002111FC BE080F4B */  .word      0x4B0F08BE    # vmaddaz.x  ACC, $vf1, $vf15z
    /* 112180 00211200 CB0B0F4B */  vmaddw.x   $vf15, $vf1, $vf15w
    /* 112184 00211204 00802548 */  qmfc2.ni   $a1, $vf16
    /* 112188 00211208 0700A104 */  bgez       $a1, .L00211228
    /* 11218C 0021120C 00000000 */   nop
    /* 112190 00211210 EC32E84B */  vsub.xyzw  $vf11, $vf6, $vf8
    /* 112194 00211214 EA5BEB4B */  vmul.xyzw  $vf15, $vf11, $vf11
    /* 112198 00211218 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 11219C 0021121C BE080F4B */  .word      0x4B0F08BE    # vmaddaz.x  ACC, $vf1, $vf15z
    /* 1121A0 00211220 CB0B0F4B */  vmaddw.x   $vf15, $vf1, $vf15w
    /* 1121A4 00211224 00000000 */  nop
.align 2
  .L00211228:
    /* 1121A8 00211228 FF02004A */  vnop
    /* 1121AC 0021122C FF02004A */  vnop
    /* 1121B0 00211230 5C4AE04B */  .word      0x4BE04A5C    # vmulq.xyzw $vf9, $vf9, Q
    /* 1121B4 00211234 BE036F4A */  .word      0x4A6F03BE    # vrsqrt     Q, $vf0w, $vf15x
    /* 1121B8 00211238 10002678 */  lq         $a2, 0x10($at)
    /* 1121BC 0021123C 10002120 */  addi       $at, $at, 0x10 /* handwritten instruction */
    /* 1121C0 00211240 10004878 */  lq         $t0, 0x10($v0)
    /* 1121C4 00211244 10004220 */  addi       $v0, $v0, 0x10 /* handwritten instruction */
    /* 1121C8 00211248 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 1121CC 0021124C 882DC070 */  pextlh     $a1, $a2, $zero
    /* 1121D0 00211250 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 1121D4 00211254 3F2C0570 */  psraw      $a1, $a1, 16
    /* 1121D8 00211258 0028A548 */  qmtc2.ni   $a1, $vf5
    /* 1121DC 0021125C A835C070 */  pextuh     $a2, $a2, $zero
    /* 1121E0 00211260 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 1121E4 00211264 3F340670 */  psraw      $a2, $a2, 16
    /* 1121E8 00211268 0030A648 */  qmtc2.ni   $a2, $vf6
    /* 1121EC 0021126C 883D0071 */  pextlh     $a3, $t0, $zero
    /* 1121F0 00211270 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 1121F4 00211274 3F3C0770 */  psraw      $a3, $a3, 16
    /* 1121F8 00211278 0038A748 */  qmtc2.ni   $a3, $vf7
    /* 1121FC 0021127C A8450071 */  pextuh     $t0, $t0, $zero
    /* 112200 00211280 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 112204 00211284 3F440870 */  psraw      $t0, $t0, 16
    /* 112208 00211288 0040A848 */  qmtc2.ni   $t0, $vf8
    /* 11220C 0021128C 00000000 */  nop
    /* 112210 00211290 DC5AE04B */  .word      0x4BE05ADC    # vmulq.xyzw $vf11, $vf11, Q
    /* 112214 00211294 80008420 */  addi       $a0, $a0, 0x80 /* handwritten instruction */
    /* 112218 00211298 000089F8 */  sqc2       $vf9, 0x0($a0)
    /* 11221C 0021129C FEFF6320 */  addi       $v1, $v1, -0x2 /* handwritten instruction */
    /* 112220 002112A0 B3FF601C */  bgtz       $v1, .L00211170
    /* 112224 002112A4 40008BF8 */   sqc2      $vf11, 0x40($a0)
    /* 112228 002112A8 E8430808 */  j          func_00210FA0
    /* 11222C 002112AC 00000000 */   nop
.align 2
  .L002112B0:
    /* 112230 002112B0 5B00C011 */  beqz       $t6, .L00211420
    /* 112234 002112B4 0010093C */   lui       $t1, (0x1000D400 >> 16)
    /* 112238 002112B8 0200CD95 */  lhu        $t5, 0x2($t6)
    /* 11223C 002112BC 00D42935 */  ori        $t1, $t1, (0x1000D400 & 0xFFFF)
    /* 112240 002112C0 1000CC8D */  lw         $t4, 0x10($t6)
    /* 112244 002112C4 00200120 */  addi       $at, $zero, 0x2000 /* handwritten instruction */
    /* 112248 002112C8 800021AD */  sw         $at, 0x80($t1)
    /* 11224C 002112CC 2008AD01 */  add        $at, $t5, $t5 /* handwritten instruction */
    /* 112250 002112D0 10002CAD */  sw         $t4, 0x10($t1)
    /* 112254 002112D4 2068A101 */  add        $t5, $t5, $at /* handwritten instruction */
    /* 112258 002112D8 20002DAD */  sw         $t5, 0x20($t1)
    /* 11225C 002112DC 00010120 */  addi       $at, $zero, 0x100 /* handwritten instruction */
    /* 112260 002112E0 000021AD */  sw         $at, 0x0($t1)
    /* 112264 002112E4 00690D00 */  sll        $t5, $t5, 4
    /* 112268 002112E8 0800C18D */  lw         $at, 0x8($t6)
    /* 11226C 002112EC 00202C23 */  addi       $t4, $t9, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 112270 002112F0 0020A148 */  qmtc2.ni   $at, $vf4
    /* 112274 002112F4 2068AC01 */  add        $t5, $t5, $t4 /* handwritten instruction */
    /* 112278 002112F8 1C00CE8D */  lw         $t6, 0x1C($t6)
    /* 11227C 002112FC 001E2123 */  addi       $at, $t9, (0x70001E00 & 0xFFFF) /* handwritten instruction */
    /* 112280 00211300 2C00A1AD */  sw         $at, 0x2C($t5)
    /* 112284 00211304 0401244A */  vsubx.w    $vf4, $vf0, $vf4x
.align 2
  .L00211308:
    /* 112288 00211308 0000228D */  lw         $v0, 0x0($t1)
    /* 11228C 0021130C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 112290 00211310 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 112294 00211314 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 112298 00211318 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 11229C 0021131C 00014230 */  andi       $v0, $v0, 0x100
    /* 1122A0 00211320 F9FF4014 */  bnez       $v0, .L00211308
    /* 1122A4 00211324 00000000 */   nop
    /* 1122A8 00211328 2C008B8D */  lw         $t3, 0x2C($t4)
    /* 1122AC 0021132C 000089D9 */  lqc2       $vf9, 0x0($t4)
    /* 1122B0 00211330 10008AD9 */  lqc2       $vf10, 0x10($t4)
    /* 1122B4 00211334 20008BD9 */  lqc2       $vf11, 0x20($t4)
    /* 1122B8 00211338 000066D9 */  lqc2       $vf6, 0x0($t3)
    /* 1122BC 0021133C 100067D9 */  lqc2       $vf7, 0x10($t3)
    /* 1122C0 00211340 200068D9 */  lqc2       $vf8, 0x20($t3)
    /* 1122C4 00211344 00000000 */  nop
.align 2
  .L00211348:
    /* 1122C8 00211348 9B31E44B */  vmulw.xyzw $vf6, $vf6, $vf4w
    /* 1122CC 0021134C 80110A00 */  sll        $v0, $t2, 6
    /* 1122D0 00211350 584AE44B */  vmulx.xyzw $vf9, $vf9, $vf4x
    /* 1122D4 00211354 20105900 */  add        $v0, $v0, $t9 /* handwritten instruction */
    /* 1122D8 00211358 DB39C44B */  vmulw.xyz  $vf7, $vf7, $vf4w
    /* 1122DC 0021135C 22104B00 */  sub        $v0, $v0, $t3 /* handwritten instruction */
    /* 1122E0 00211360 2D004018 */  blez       $v0, .L00211418
    /* 1122E4 00211364 9852C44B */   vmulx.xyz $vf10, $vf10, $vf4x
    /* 1122E8 00211368 1B42C44B */  vmulw.xyz  $vf8, $vf8, $vf4w
    /* 1122EC 0021136C D85AC44B */  vmulx.xyz  $vf11, $vf11, $vf4x
    /* 1122F0 00211370 2833E94B */  vadd.xyzw  $vf12, $vf6, $vf9
    /* 1122F4 00211374 AA33E94B */  vmul.xyzw  $vf14, $vf6, $vf9
    /* 1122F8 00211378 E839CA4B */  vadd.xyz   $vf7, $vf7, $vf10
    /* 1122FC 0021137C 2842CB4B */  vadd.xyz   $vf8, $vf8, $vf11
    /* 112300 00211380 6A63EC4B */  vmul.xyzw  $vf13, $vf12, $vf12
    /* 112304 00211384 3C708E4A */  .word      0x4A8E703C    # vaddax.y   ACC, $vf14, $vf14x
    /* 112308 00211388 BE108E4A */  .word      0x4A8E10BE    # vmaddaz.y  ACC, $vf2, $vf14z
    /* 11230C 0021138C 8B138E4A */  vmaddw.y   $vf14, $vf2, $vf14w
    /* 112310 00211390 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 112314 00211394 BE080D4B */  .word      0x4B0D08BE    # vmaddaz.x  ACC, $vf1, $vf13z
    /* 112318 00211398 4B0B0D4B */  vmaddw.x   $vf13, $vf1, $vf13w
    /* 11231C 0021139C 00702248 */  qmfc2.ni   $v0, $vf14
    /* 112320 002113A0 07004104 */  bgez       $v0, .L002113C0
    /* 112324 002113A4 00000000 */   nop
    /* 112328 002113A8 2C33E94B */  vsub.xyzw  $vf12, $vf6, $vf9
    /* 11232C 002113AC 6A63EC4B */  vmul.xyzw  $vf13, $vf12, $vf12
    /* 112330 002113B0 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 112334 002113B4 BE080D4B */  .word      0x4B0D08BE    # vmaddaz.x  ACC, $vf1, $vf13z
    /* 112338 002113B8 4B0B0D4B */  vmaddw.x   $vf13, $vf1, $vf13w
    /* 11233C 002113BC 00000000 */  nop
.align 2
  .L002113C0:
    /* 112340 002113C0 BE036D4A */  .word      0x4A6D03BE    # vrsqrt     Q, $vf0w, $vf13x
    /* 112344 002113C4 1C00838D */  lw         $v1, 0x1C($t4)
    /* 112348 002113C8 5C00818D */  lw         $at, 0x5C($t4)
    /* 11234C 002113CC 300089D9 */  lqc2       $vf9, 0x30($t4)
    /* 112350 002113D0 40008AD9 */  lqc2       $vf10, 0x40($t4)
    /* 112354 002113D4 50008BD9 */  lqc2       $vf11, 0x50($t4)
    /* 112358 002113D8 100067F9 */  sqc2       $vf7, 0x10($t3)
    /* 11235C 002113DC 200068F9 */  sqc2       $vf8, 0x20($t3)
    /* 112360 002113E0 000026D8 */  lqc2       $vf6, 0x0($at)
    /* 112364 002113E4 100027D8 */  lqc2       $vf7, 0x10($at)
    /* 112368 002113E8 200028D8 */  lqc2       $vf8, 0x20($at)
    /* 11236C 002113EC 1C00628D */  lw         $v0, 0x1C($t3)
    /* 112370 002113F0 03004014 */  bnez       $v0, .L00211400
    /* 112374 002113F4 00000000 */   nop
    /* 112378 002113F8 1C0063AD */  sw         $v1, 0x1C($t3)
    /* 11237C 002113FC 00000000 */  nop
.align 2
  .L00211400:
    /* 112380 00211400 1C63E04B */  .word      0x4BE0631C    # vmulq.xyzw $vf12, $vf12, Q
    /* 112384 00211404 30008C21 */  addi       $t4, $t4, 0x30 /* handwritten instruction */
    /* 112388 00211408 00006CF9 */  sqc2       $vf12, 0x0($t3)
    /* 11238C 0021140C 00002B20 */  addi       $t3, $at, 0x0 /* handwritten instruction */
    /* 112390 00211410 CDFF8D15 */  bne        $t4, $t5, .L00211348
    /* 112394 00211414 00000000 */   nop
.align 2
  .L00211418:
    /* 112398 00211418 A5FFC015 */  bnez       $t6, .L002112B0
    /* 11239C 0021141C 00000000 */   nop
.align 2
  .L00211420:
    /* 1123A0 00211420 3E780F00 */  dsrl32     $t7, $t7, 0
    /* 1123A4 00211424 4301C04B */  vaddw.xyz  $vf5, $vf0, $vf0w
.align 2
  .L00211428:
    /* 1123A8 00211428 4500E011 */  beqz       $t7, .L00211540
    /* 1123AC 0021142C 0000EE21 */   addi      $t6, $t7, 0x0 /* handwritten instruction */
    /* 1123B0 00211430 0400C18D */  lw         $at, 0x4($t6)
    /* 1123B4 00211434 80190A00 */  sll        $v1, $t2, 6
    /* 1123B8 00211438 0300C291 */  lbu        $v0, 0x3($t6)
    /* 1123BC 0021143C 20187900 */  add        $v1, $v1, $t9 /* handwritten instruction */
    /* 1123C0 00211440 0800CF8D */  lw         $t7, 0x8($t6)
    /* 1123C4 00211444 22186100 */  sub        $v1, $v1, $at /* handwritten instruction */
    /* 1123C8 00211448 F7FF6018 */  blez       $v1, .L00211428
    /* 1123CC 0021144C 00000000 */   nop
    /* 1123D0 00211450 000026D8 */  lqc2       $vf6, 0x0($at)
    /* 1123D4 00211454 100028D8 */  lqc2       $vf8, 0x10($at)
    /* 1123D8 00211458 20002AD8 */  lqc2       $vf10, 0x20($at)
    /* 1123DC 0021145C 1000C7D9 */  lqc2       $vf7, 0x10($t6)
    /* 1123E0 00211460 2000C9D9 */  lqc2       $vf9, 0x20($t6)
    /* 1123E4 00211464 3000CBD9 */  lqc2       $vf11, 0x30($t6)
    /* 1123E8 00211468 0F004014 */  bnez       $v0, .L002114A8
    /* 1123EC 0021146C 00000000 */   nop
    /* 1123F0 00211470 2A3B264A */  vmul.w     $vf12, $vf7, $vf6
    /* 1123F4 00211474 6A3BC64B */  vmul.xyz   $vf13, $vf7, $vf6
    /* 1123F8 00211478 9B3BC64B */  vmulw.xyz  $vf14, $vf7, $vf6w
    /* 1123FC 0021147C DB33C74B */  vmulw.xyz  $vf15, $vf6, $vf7w
    /* 112400 00211480 FE32C74B */  .word      0x4BC732FE    # vopmula.xyz ACC, $vf6, $vf7
    /* 112404 00211484 2E3CC64B */  .word      0x4BC63C2E    # vopmsub.xyz $vf16, $vf7, $vf6
    /* 112408 00211488 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 11240C 0021148C 4A2B0D4B */  vmaddz.x   $vf13, $vf5, $vf13z
    /* 112410 00211490 A871CF4B */  vadd.xyz   $vf6, $vf14, $vf15
    /* 112414 00211494 A831D04B */  vadd.xyz   $vf6, $vf6, $vf16
    /* 112418 00211498 84612D4A */  vsubx.w    $vf6, $vf12, $vf13x
    /* 11241C 0021149C 2A42C94B */  vmul.xyz   $vf8, $vf8, $vf9
    /* 112420 002114A0 4C450808 */  j          func_00211530
    /* 112424 002114A4 A852CB4B */   vadd.xyz  $vf10, $vf10, $vf11
.align 2
  .L002114A8:
    /* 112428 002114A8 0C00C38D */  lw         $v1, 0xC($t6)
    /* 11242C 002114AC 0090A348 */  qmtc2.ni   $v1, $vf18
    /* 112430 002114B0 8404324A */  vsubx.w    $vf18, $vf0, $vf18x
    /* 112434 002114B4 00000000 */  nop
    /* 112438 002114B8 9B31F24B */  vmulw.xyzw $vf6, $vf6, $vf18w
    /* 11243C 002114BC D839F24B */  vmulx.xyzw $vf7, $vf7, $vf18x
    /* 112440 002114C0 1B42D24B */  vmulw.xyz  $vf8, $vf8, $vf18w
    /* 112444 002114C4 584AD24B */  vmulx.xyz  $vf9, $vf9, $vf18x
    /* 112448 002114C8 9B52D24B */  vmulw.xyz  $vf10, $vf10, $vf18w
    /* 11244C 002114CC D85AD24B */  vmulx.xyz  $vf11, $vf11, $vf18x
    /* 112450 002114D0 A833E74B */  vadd.xyzw  $vf14, $vf6, $vf7
    /* 112454 002114D4 2A34E74B */  vmul.xyzw  $vf16, $vf6, $vf7
    /* 112458 002114D8 2842C94B */  vadd.xyz   $vf8, $vf8, $vf9
    /* 11245C 002114DC A852CB4B */  vadd.xyz   $vf10, $vf10, $vf11
    /* 112460 002114E0 EA73EE4B */  vmul.xyzw  $vf15, $vf14, $vf14
    /* 112464 002114E4 3C80904A */  .word      0x4A90803C    # vaddax.y   ACC, $vf16, $vf16x
    /* 112468 002114E8 BE10904A */  .word      0x4A9010BE    # vmaddaz.y  ACC, $vf2, $vf16z
    /* 11246C 002114EC 0B14904A */  vmaddw.y   $vf16, $vf2, $vf16w
    /* 112470 002114F0 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 112474 002114F4 BE080F4B */  .word      0x4B0F08BE    # vmaddaz.x  ACC, $vf1, $vf15z
    /* 112478 002114F8 CB0B0F4B */  vmaddw.x   $vf15, $vf1, $vf15w
    /* 11247C 002114FC 00802248 */  qmfc2.ni   $v0, $vf16
    /* 112480 00211500 07004104 */  bgez       $v0, .L00211520
    /* 112484 00211504 00000000 */   nop
    /* 112488 00211508 AC33E74B */  vsub.xyzw  $vf14, $vf6, $vf7
    /* 11248C 0021150C EA73EE4B */  vmul.xyzw  $vf15, $vf14, $vf14
    /* 112490 00211510 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 112494 00211514 BE080F4B */  .word      0x4B0F08BE    # vmaddaz.x  ACC, $vf1, $vf15z
    /* 112498 00211518 CB0B0F4B */  vmaddw.x   $vf15, $vf1, $vf15w
    /* 11249C 0021151C 00000000 */  nop
.align 2
  .L00211520:
    /* 1124A0 00211520 BE036F4A */  .word      0x4A6F03BE    # vrsqrt     Q, $vf0w, $vf15x
    /* 1124A4 00211524 00000000 */  nop
    /* 1124A8 00211528 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 1124AC 0021152C 9C71E04B */  .word      0x4BE0719C    # vmulq.xyzw $vf6, $vf14, Q
.align 2
  alabel func_00211530
    /* 1124B0 00211530 000026F8 */  sqc2       $vf6, 0x0($at)
    /* 1124B4 00211534 100028F8 */  sqc2       $vf8, 0x10($at)
    /* 1124B8 00211538 BBFFE015 */  bnez       $t7, .L00211428
    /* 1124BC 0021153C 20002AF8 */   sqc2      $vf10, 0x20($at)
.align 2
  .L00211540:
    /* 1124C0 00211540 EC430808 */  j          func_00210FB0
    /* 1124C4 00211544 00000000 */   nop
endlabel func_002108E0
