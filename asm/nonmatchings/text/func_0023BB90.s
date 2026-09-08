.align 3
nonmatching func_0023BB90, 0x2A4

glabel func_0023BB90
    /* 13CB10 0023BB90 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 13CB14 0023BB94 0010033C */  lui        $v1, (0x1000E000 >> 16)
    /* 13CB18 0023BB98 6000B37F */  sq         $s3, 0x60($sp)
    /* 13CB1C 0023BB9C 00E06334 */  ori        $v1, $v1, (0x1000E000 & 0xFFFF)
    /* 13CB20 0023BBA0 5000B27F */  sq         $s2, 0x50($sp)
    /* 13CB24 0023BBA4 0010073C */  lui        $a3, (0x1000E010 >> 16)
    /* 13CB28 0023BBA8 4000B17F */  sq         $s1, 0x40($sp)
    /* 13CB2C 0023BBAC 10E0E734 */  ori        $a3, $a3, (0x1000E010 & 0xFFFF)
    /* 13CB30 0023BBB0 3000B07F */  sq         $s0, 0x30($sp)
    /* 13CB34 0023BBB4 04000824 */  addiu      $t0, $zero, 0x4
    /* 13CB38 0023BBB8 7000BF7F */  sq         $ra, 0x70($sp)
    /* 13CB3C 0023BBBC 2D908000 */  daddu      $s2, $a0, $zero
    /* 13CB40 0023BBC0 2D98A000 */  daddu      $s3, $a1, $zero
    /* 13CB44 0023BBC4 2D88C000 */  daddu      $s1, $a2, $zero
    /* 13CB48 0023BBC8 0000628C */  lw         $v0, 0x0($v1)
    /* 13CB4C 0023BBCC 0D00103C */  lui        $s0, (0xD9048 >> 16)
    /* 13CB50 0023BBD0 48901036 */  ori        $s0, $s0, (0xD9048 & 0xFFFF)
    /* 13CB54 0023BBD4 03004234 */  ori        $v0, $v0, 0x3
    /* 13CB58 0023BBD8 000062AC */  sw         $v0, 0x0($v1)
    /* 13CB5C 0023BBDC 0000E8AC */  sw         $t0, 0x0($a3)
    /* 13CB60 0023BBE0 44F3080C */  jal        func_0023CD10
    /* 13CB64 0023BBE4 0CA6848F */   lw        $a0, -0x59F4($gp)
    /* 13CB68 0023BBE8 1CAE040C */  jal        func_0012B870
    /* 13CB6C 0023BBEC 00000000 */   nop
    /* 13CB70 0023BBF0 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13CB74 0023BBF4 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13CB78 0023BBF8 0500073C */  lui        $a3, (0x52040 >> 16)
    /* 13CB7C 0023BBFC 0D000A3C */  lui        $t2, (0xD6040 >> 16)
    /* 13CB80 0023BC00 1600023C */  lui        $v0, %hi(D_00161308)
    /* 13CB84 0023BC04 0813428C */  lw         $v0, %lo(D_00161308)($v0)
    /* 13CB88 0023BC08 4020E734 */  ori        $a3, $a3, (0x52040 & 0xFFFF)
    /* 13CB8C 0023BC0C 40604A35 */  ori        $t2, $t2, (0xD6040 & 0xFFFF)
    /* 13CB90 0023BC10 1C00053C */  lui        $a1, (0x1C85C0 >> 16)
    /* 13CB94 0023BC14 1C00083C */  lui        $t0, (0x1C7180 >> 16)
    /* 13CB98 0023BC18 21508A00 */  addu       $t2, $a0, $t2
    /* 13CB9C 0023BC1C 21388700 */  addu       $a3, $a0, $a3
    /* 13CBA0 0023BC20 C085A534 */  ori        $a1, $a1, (0x1C85C0 & 0xFFFF)
    /* 13CBA4 0023BC24 80710835 */  ori        $t0, $t0, (0x1C7180 & 0xFFFF)
    /* 13CBA8 0023BC28 0E00063C */  lui        $a2, (0xEB768 >> 16)
    /* 13CBAC 0023BC2C 00010924 */  addiu      $t1, $zero, 0x100
    /* 13CBB0 0023BC30 00020B24 */  addiu      $t3, $zero, 0x200
    /* 13CBB4 0023BC34 21404800 */  addu       $t0, $v0, $t0
    /* 13CBB8 0023BC38 21284500 */  addu       $a1, $v0, $a1
    /* 13CBBC 0023BC3C 21209000 */  addu       $a0, $a0, $s0
    /* 13CBC0 0023BC40 A6F7080C */  jal        func_0023DE98
    /* 13CBC4 0023BC44 68B7C634 */   ori       $a2, $a2, (0xEB768 & 0xFFFF)
    /* 13CBC8 0023BC48 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13CBCC 0023BC4C 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13CBD0 0023BC50 0D00043C */  lui        $a0, (0xD9100 >> 16)
    /* 13CBD4 0023BC54 1600023C */  lui        $v0, %hi(D_00161308)
    /* 13CBD8 0023BC58 0813428C */  lw         $v0, %lo(D_00161308)($v0)
    /* 13CBDC 0023BC5C 0500053C */  lui        $a1, (0x50040 >> 16)
    /* 13CBE0 0023BC60 1C00073C */  lui        $a3, (0x1C8190 >> 16)
    /* 13CBE4 0023BC64 00918434 */  ori        $a0, $a0, (0xD9100 & 0xFFFF)
    /* 13CBE8 0023BC68 4000A534 */  ori        $a1, $a1, (0x50040 & 0xFFFF)
    /* 13CBEC 0023BC6C 9081E734 */  ori        $a3, $a3, (0x1C8190 & 0xFFFF)
    /* 13CBF0 0023BC70 21206400 */  addu       $a0, $v1, $a0
    /* 13CBF4 0023BC74 21286500 */  addu       $a1, $v1, $a1
    /* 13CBF8 0023BC78 21384700 */  addu       $a3, $v0, $a3
    /* 13CBFC 0023BC7C E8EF080C */  jal        func_0023BFA0
    /* 13CC00 0023BC80 00200624 */   addiu     $a2, $zero, 0x2000
    /* 13CC04 0023BC84 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13CC08 0023BC88 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13CC0C 0023BC8C 2400073C */  lui        $a3, %hi(func_0023C9C0)
    /* 13CC10 0023BC90 C0C9E724 */  addiu      $a3, $a3, %lo(func_0023C9C0)
    /* 13CC14 0023BC94 2D280000 */  daddu      $a1, $zero, $zero
    /* 13CC18 0023BC98 2D408000 */  daddu      $t0, $a0, $zero
    /* 13CC1C 0023BC9C 2D300000 */  daddu      $a2, $zero, $zero
    /* 13CC20 0023BCA0 E8F7080C */  jal        func_0023DFA0
    /* 13CC24 0023BCA4 21209000 */   addu      $a0, $a0, $s0
    /* 13CC28 0023BCA8 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13CC2C 0023BCAC 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13CC30 0023BCB0 2400073C */  lui        $a3, %hi(func_0023CAF8)
    /* 13CC34 0023BCB4 2D302002 */  daddu      $a2, $s1, $zero
    /* 13CC38 0023BCB8 F8CAE724 */  addiu      $a3, $a3, %lo(func_0023CAF8)
    /* 13CC3C 0023BCBC 2D408000 */  daddu      $t0, $a0, $zero
    /* 13CC40 0023BCC0 03000524 */  addiu      $a1, $zero, 0x3
    /* 13CC44 0023BCC4 E8F7080C */  jal        func_0023DFA0
    /* 13CC48 0023BCC8 21209000 */   addu      $a0, $a0, $s0
    /* 13CC4C 0023BCCC 1600033C */  lui        $v1, %hi(D_00161308)
    /* 13CC50 0023BCD0 0813638C */  lw         $v1, %lo(D_00161308)($v1)
    /* 13CC54 0023BCD4 FF0F053C */  lui        $a1, (0xFFFFFFF >> 16)
    /* 13CC58 0023BCD8 1600073C */  lui        $a3, %hi(D_0016130C)
    /* 13CC5C 0023BCDC 0C13E78C */  lw         $a3, %lo(D_0016130C)($a3)
    /* 13CC60 0023BCE0 0D00043C */  lui        $a0, (0xD9168 >> 16)
    /* 13CC64 0023BCE4 FFFFA534 */  ori        $a1, $a1, (0xFFFFFFF & 0xFFFF)
    /* 13CC68 0023BCE8 68918434 */  ori        $a0, $a0, (0xD9168 & 0xFFFF)
    /* 13CC6C 0023BCEC 2120E400 */  addu       $a0, $a3, $a0
    /* 13CC70 0023BCF0 24286500 */  and        $a1, $v1, $a1
    /* 13CC74 0023BCF4 0020023C */  lui        $v0, (0x20000000 >> 16)
    /* 13CC78 0023BCF8 1A00063C */  lui        $a2, (0x1A0000 >> 16)
    /* 13CC7C 0023BCFC 21306600 */  addu       $a2, $v1, $a2
    /* 13CC80 0023BD00 2528A200 */  or         $a1, $a1, $v0
    /* 13CC84 0023BD04 58F9080C */  jal        func_0023E560
    /* 13CC88 0023BD08 02000724 */   addiu     $a3, $zero, 0x2
    /* 13CC8C 0023BD0C 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13CC90 0023BD10 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13CC94 0023BD14 0D00023C */  lui        $v0, (0xD2040 >> 16)
    /* 13CC98 0023BD18 40204234 */  ori        $v0, $v0, (0xD2040 & 0xFFFF)
    /* 13CC9C 0023BD1C 2400033C */  lui        $v1, %hi(func_0023E1F8)
    /* 13CCA0 0023BD20 21208200 */  addu       $a0, $a0, $v0
    /* 13CCA4 0023BD24 F8E16324 */  addiu      $v1, $v1, %lo(func_0023E1F8)
    /* 13CCA8 0023BD28 1600063C */  lui        $a2, %hi(D_00166D00)
    /* 13CCAC 0023BD2C 006DC624 */  addiu      $a2, $a2, %lo(D_00166D00)
    /* 13CCB0 0023BD30 01000524 */  addiu      $a1, $zero, 0x1
    /* 13CCB4 0023BD34 0800A4AF */  sw         $a0, 0x8($sp)
    /* 13CCB8 0023BD38 00400224 */  addiu      $v0, $zero, 0x4000
    /* 13CCBC 0023BD3C 0400A3AF */  sw         $v1, 0x4($sp)
    /* 13CCC0 0023BD40 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13CCC4 0023BD44 1400A5AF */  sw         $a1, 0x14($sp)
    /* 13CCC8 0023BD48 1000A6AF */  sw         $a2, 0x10($sp)
    /* 13CCCC 0023BD4C 0C00A2AF */  sw         $v0, 0xC($sp)
    /* 13CCD0 0023BD50 D462040C */  jal        func_00118B50
    /* 13CCD4 0023BD54 2000A0AF */   sw        $zero, 0x20($sp)
    /* 13CCD8 0023BD58 1600053C */  lui        $a1, %hi(D_0016130C)
    /* 13CCDC 0023BD5C 0C13A58C */  lw         $a1, %lo(D_0016130C)($a1)
    /* 13CCE0 0023BD60 2D204000 */  daddu      $a0, $v0, $zero
    /* 13CCE4 0023BD64 1600013C */  lui        $at, %hi(D_00161310)
    /* 13CCE8 0023BD68 101322AC */  sw         $v0, %lo(D_00161310)($at)
    /* 13CCEC 0023BD6C DC62040C */  jal        func_00118B70
    /* 13CCF0 0023BD70 2128B000 */   addu      $a1, $a1, $s0
    /* 13CCF4 0023BD74 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13CCF8 0023BD78 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13CCFC 0023BD7C 0D00043C */  lui        $a0, (0xD9040 >> 16)
    /* 13CD00 0023BD80 40908434 */  ori        $a0, $a0, (0xD9040 & 0xFFFF)
    /* 13CD04 0023BD84 2D284002 */  daddu      $a1, $s2, $zero
    /* 13CD08 0023BD88 21206400 */  addu       $a0, $v1, $a0
    /* 13CD0C 0023BD8C 86F3080C */  jal        func_0023CE18
    /* 13CD10 0023BD90 2D306002 */   daddu     $a2, $s3, $zero
    /* 13CD14 0023BD94 07004014 */  bnez       $v0, .L0023BDB4
    /* 13CD18 0023BD98 01001124 */   addiu     $s1, $zero, 0x1
    /* 13CD1C 0023BD9C 1F00043C */  lui        $a0, %hi(D_001E8E20)
    /* 13CD20 0023BDA0 2D880000 */  daddu      $s1, $zero, $zero
    /* 13CD24 0023BDA4 CCA5070C */  jal        func_001E9730
    /* 13CD28 0023BDA8 208E8424 */   addiu     $a0, $a0, %lo(D_001E8E20)
    /* 13CD2C 0023BDAC 02000010 */  b          .L0023BDB8
    /* 13CD30 0023BDB0 2400053C */   lui       $a1, %hi(func_0023C7A8)
.align 2
  .L0023BDB4:
    /* 13CD34 0023BDB4 2400053C */  lui        $a1, %hi(func_0023C7A8)
.align 2
  .L0023BDB8:
    /* 13CD38 0023BDB8 2D300000 */  daddu      $a2, $zero, $zero
    /* 13CD3C 0023BDBC A8C7A524 */  addiu      $a1, $a1, %lo(func_0023C7A8)
    /* 13CD40 0023BDC0 A462040C */  jal        func_00118A90
    /* 13CD44 0023BDC4 02000424 */   addiu     $a0, $zero, 0x2
    /* 13CD48 0023BDC8 0D00103C */  lui        $s0, (0xD8000 >> 16)
    /* 13CD4C 0023BDCC 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13CD50 0023BDD0 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13CD54 0023BDD4 00801036 */  ori        $s0, $s0, (0xD8000 & 0xFFFF)
    /* 13CD58 0023BDD8 02000424 */  addiu      $a0, $zero, 0x2
    /* 13CD5C 0023BDDC 21187000 */  addu       $v1, $v1, $s0
    /* 13CD60 0023BDE0 E464040C */  jal        func_00119390
    /* 13CD64 0023BDE4 FC1062AC */   sw        $v0, 0x10FC($v1)
    /* 13CD68 0023BDE8 2400053C */  lui        $a1, %hi(func_0023C910)
    /* 13CD6C 0023BDEC 2D300000 */  daddu      $a2, $zero, $zero
    /* 13CD70 0023BDF0 10C9A524 */  addiu      $a1, $a1, %lo(func_0023C910)
    /* 13CD74 0023BDF4 AC62040C */  jal        func_00118AB0
    /* 13CD78 0023BDF8 02000424 */   addiu     $a0, $zero, 0x2
    /* 13CD7C 0023BDFC 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13CD80 0023BE00 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13CD84 0023BE04 02000424 */  addiu      $a0, $zero, 0x2
    /* 13CD88 0023BE08 21187000 */  addu       $v1, $v1, $s0
    /* 13CD8C 0023BE0C 1865040C */  jal        func_00119460
    /* 13CD90 0023BE10 F81062AC */   sw        $v0, 0x10F8($v1)
    /* 13CD94 0023BE14 2D102002 */  daddu      $v0, $s1, $zero
    /* 13CD98 0023BE18 7000BF7B */  lq         $ra, 0x70($sp)
    /* 13CD9C 0023BE1C 6000B37B */  lq         $s3, 0x60($sp)
    /* 13CDA0 0023BE20 5000B27B */  lq         $s2, 0x50($sp)
    /* 13CDA4 0023BE24 4000B17B */  lq         $s1, 0x40($sp)
    /* 13CDA8 0023BE28 3000B07B */  lq         $s0, 0x30($sp)
    /* 13CDAC 0023BE2C 0800E003 */  jr         $ra
    /* 13CDB0 0023BE30 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_0023BB90
    /* 13CDB4 0023BE34 00000000 */  nop
