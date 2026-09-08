.align 3
nonmatching func_0012C278, 0x7C

glabel func_0012C278
    /* 2D1F8 0012C278 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2D1FC 0012C27C 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2D200 0012C280 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2D204 0012C284 2D808000 */  daddu      $s0, $a0, $zero
    /* 2D208 0012C288 2001028E */  lw         $v0, 0x120($s0)
    /* 2D20C 0012C28C 06004010 */  beqz       $v0, .L0012C2A8
    /* 2D210 0012C290 1801068E */   lw        $a2, 0x118($s0)
    /* 2D214 0012C294 1500053C */  lui        $a1, %hi(D_00153BB8)
    /* 2D218 0012C298 1AB1040C */  jal        func_0012C468
    /* 2D21C 0012C29C B83BA524 */   addiu     $a1, $a1, %lo(D_00153BB8)
    /* 2D220 0012C2A0 10000010 */  b          .L0012C2E4
    /* 2D224 0012C2A4 200100AE */   sw        $zero, 0x120($s0)
.align 2
  .L0012C2A8:
    /* 2D228 0012C2A8 7401038E */  lw         $v1, 0x174($s0)
    /* 2D22C 0012C2AC 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D230 0012C2B0 07006214 */  bne        $v1, $v0, .L0012C2D0
    /* 2D234 0012C2B4 FFFFC724 */   addiu     $a3, $a2, -0x1
    /* 2D238 0012C2B8 BC01058E */  lw         $a1, 0x1BC($s0)
    /* 2D23C 0012C2BC FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 2D240 0012C2C0 8CA7040C */  jal        func_00129E30
    /* 2D244 0012C2C4 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D248 0012C2C8 06000010 */  b          .L0012C2E4
    /* 2D24C 0012C2CC 200100AE */   sw        $zero, 0x120($s0)
.align 2
  .L0012C2D0:
    /* 2D250 0012C2D0 CC01058E */  lw         $a1, 0x1CC($s0)
    /* 2D254 0012C2D4 DC01068E */  lw         $a2, 0x1DC($s0)
    /* 2D258 0012C2D8 D0A7040C */  jal        func_00129F40
    /* 2D25C 0012C2DC 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D260 0012C2E0 200100AE */  sw         $zero, 0x120($s0)
.align 2
  .L0012C2E4:
    /* 2D264 0012C2E4 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2D268 0012C2E8 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2D26C 0012C2EC 0800E003 */  jr         $ra
    /* 2D270 0012C2F0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012C278
    /* 2D274 0012C2F4 00000000 */  nop
