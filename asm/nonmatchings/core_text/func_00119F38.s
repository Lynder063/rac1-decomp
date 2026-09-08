.align 3
nonmatching func_00119F38, 0x168

glabel func_00119F38
    /* 1AEB8 00119F38 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1AEBC 00119F3C 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1AEC0 00119F40 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1AEC4 00119F44 2D900000 */  daddu      $s2, $zero, $zero
    /* 1AEC8 00119F48 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1AECC 00119F4C 2D808000 */  daddu      $s0, $a0, $zero
    /* 1AED0 00119F50 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1AED4 00119F54 2D880000 */  daddu      $s1, $zero, $zero
    /* 1AED8 00119F58 0C81040C */  jal        func_00120430
    /* 1AEDC 00119F5C 2D284002 */   daddu     $a1, $s2, $zero
    /* 1AEE0 00119F60 08004104 */  bgez       $v0, .L00119F84
    /* 1AEE4 00119F64 2D280002 */   daddu     $a1, $s0, $zero
    /* 1AEE8 00119F68 A87F040C */  jal        func_0011FEA0
    /* 1AEEC 00119F6C 2D204002 */   daddu     $a0, $s2, $zero
    /* 1AEF0 00119F70 1300033C */  lui        $v1, %hi(D_0012FD00)
    /* 1AEF4 00119F74 2D804000 */  daddu      $s0, $v0, $zero
    /* 1AEF8 00119F78 00FD628C */  lw         $v0, %lo(D_0012FD00)($v1)
    /* 1AEFC 00119F7C 09F84000 */  jalr       $v0
    /* 1AF00 00119F80 2D000424 */   addiu     $a0, $zero, 0x2D
.align 2
  .L00119F84:
    /* 1AF04 00119F84 1500013C */  lui        $at, %hi(D_00152898)
    /* 1AF08 00119F88 982825DC */  ld         $a1, %lo(D_00152898)($at)
    /* 1AF0C 00119F8C 0C81040C */  jal        func_00120430
    /* 1AF10 00119F90 2D200002 */   daddu     $a0, $s0, $zero
    /* 1AF14 00119F94 11004104 */  bgez       $v0, .L00119FDC
    /* 1AF18 00119F98 1500123C */   lui       $s2, %hi(D_00152880)
    /* 1AF1C 00119F9C 07000010 */  b          .L00119FBC
    /* 1AF20 00119FA0 00000000 */   nop
    /* 1AF24 00119FA4 00000000 */  nop
.align 2
  .L00119FA8:
    /* 1AF28 00119FA8 48800534 */  ori        $a1, $zero, 0x8048
    /* 1AF2C 00119FAC FC2B0500 */  dsll32     $a1, $a1, 15
    /* 1AF30 00119FB0 C27F040C */  jal        func_0011FF08
    /* 1AF34 00119FB4 FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 1AF38 00119FB8 2D804000 */  daddu      $s0, $v0, $zero
.align 2
  .L00119FBC:
    /* 1AF3C 00119FBC 1500013C */  lui        $at, %hi(D_001528A0)
    /* 1AF40 00119FC0 A02825DC */  ld         $a1, %lo(D_001528A0)($at)
    /* 1AF44 00119FC4 0C81040C */  jal        func_00120430
    /* 1AF48 00119FC8 2D200002 */   daddu     $a0, $s0, $zero
    /* 1AF4C 00119FCC F6FF4004 */  bltz       $v0, .L00119FA8
    /* 1AF50 00119FD0 2D200002 */   daddu     $a0, $s0, $zero
    /* 1AF54 00119FD4 15000010 */  b          .L0011A02C
    /* 1AF58 00119FD8 00000000 */   nop
.align 2
  .L00119FDC:
    /* 1AF5C 00119FDC C0FF0534 */  ori        $a1, $zero, 0xFFC0
    /* 1AF60 00119FE0 BC2B0500 */  dsll32     $a1, $a1, 14
    /* 1AF64 00119FE4 0C81040C */  jal        func_00120430
    /* 1AF68 00119FE8 2D200002 */   daddu     $a0, $s0, $zero
    /* 1AF6C 00119FEC 0F004004 */  bltz       $v0, .L0011A02C
    /* 1AF70 00119FF0 1500123C */   lui       $s2, %hi(D_00152880)
    /* 1AF74 00119FF4 07000010 */  b          .L0011A014
    /* 1AF78 00119FF8 00000000 */   nop
    /* 1AF7C 00119FFC 00000000 */  nop
.align 2
  .L0011A000:
    /* 1AF80 0011A000 48800534 */  ori        $a1, $zero, 0x8048
    /* 1AF84 0011A004 FC2B0500 */  dsll32     $a1, $a1, 15
    /* 1AF88 0011A008 6C80040C */  jal        func_001201B0
    /* 1AF8C 0011A00C 01003126 */   addiu     $s1, $s1, 0x1
    /* 1AF90 0011A010 2D804000 */  daddu      $s0, $v0, $zero
.align 2
  .L0011A014:
    /* 1AF94 0011A014 C0FF0534 */  ori        $a1, $zero, 0xFFC0
    /* 1AF98 0011A018 BC2B0500 */  dsll32     $a1, $a1, 14
    /* 1AF9C 0011A01C 0C81040C */  jal        func_00120430
    /* 1AFA0 0011A020 2D200002 */   daddu     $a0, $s0, $zero
    /* 1AFA4 0011A024 F6FF4104 */  bgez       $v0, .L0011A000
    /* 1AFA8 0011A028 2D200002 */   daddu     $a0, $s0, $zero
.align 2
  .L0011A02C:
    /* 1AFAC 0011A02C 1500013C */  lui        $at, %hi(D_001528A8)
    /* 1AFB0 0011A030 A82825DC */  ld         $a1, %lo(D_001528A8)($at)
    /* 1AFB4 0011A034 C27F040C */  jal        func_0011FF08
    /* 1AFB8 0011A038 2D200002 */   daddu     $a0, $s0, $zero
    /* 1AFBC 0011A03C B679040C */  jal        func_0011E6D8
    /* 1AFC0 0011A040 2D204000 */   daddu     $a0, $v0, $zero
    /* 1AFC4 0011A044 AA67040C */  jal        func_00119EA8
    /* 1AFC8 0011A048 2D204000 */   daddu     $a0, $v0, $zero
    /* 1AFCC 0011A04C 80284426 */  addiu      $a0, $s2, %lo(D_00152880)
    /* 1AFD0 0011A050 A469040C */  jal        func_0011A690
    /* 1AFD4 0011A054 2D284000 */   daddu     $a1, $v0, $zero
    /* 1AFD8 0011A058 09002006 */  bltz       $s1, .L0011A080
    /* 1AFDC 0011A05C 2D282002 */   daddu     $a1, $s1, $zero
    /* 1AFE0 0011A060 1500043C */  lui        $a0, %hi(D_00152888)
    /* 1AFE4 0011A064 3000BFDF */  ld         $ra, 0x30($sp)
    /* 1AFE8 0011A068 88288424 */  addiu      $a0, $a0, %lo(D_00152888)
    /* 1AFEC 0011A06C 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1AFF0 0011A070 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1AFF4 0011A074 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1AFF8 0011A078 A4690408 */  j          func_0011A690
    /* 1AFFC 0011A07C 4000BD27 */   addiu     $sp, $sp, 0x40
.align 2
  .L0011A080:
    /* 1B000 0011A080 1500043C */  lui        $a0, %hi(D_00152890)
    /* 1B004 0011A084 3000BFDF */  ld         $ra, 0x30($sp)
    /* 1B008 0011A088 90288424 */  addiu      $a0, $a0, %lo(D_00152890)
    /* 1B00C 0011A08C 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1B010 0011A090 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1B014 0011A094 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1B018 0011A098 A4690408 */  j          func_0011A690
    /* 1B01C 0011A09C 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_00119F38
