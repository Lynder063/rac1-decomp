.align 3
nonmatching func_001161E8, 0x5C

glabel func_001161E8
    /* 17168 001161E8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1716C 001161EC 1000B1FF */  sd         $s1, 0x10($sp)
    /* 17170 001161F0 0000B0FF */  sd         $s0, 0x0($sp)
    /* 17174 001161F4 1600113C */  lui        $s1, %hi(D_0015ED10)
    /* 17178 001161F8 2D808000 */  daddu      $s0, $a0, $zero
    /* 1717C 001161FC 2000BFFF */  sd         $ra, 0x20($sp)
    /* 17180 00116200 2D20A000 */  daddu      $a0, $a1, $zero
    /* 17184 00116204 4464040C */  jal        func_00119110
    /* 17188 00116208 10ED20AE */   sw        $zero, %lo(D_0015ED10)($s1)
    /* 1718C 0011620C 2D184000 */  daddu      $v1, $v0, $zero
    /* 17190 00116210 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 17194 00116214 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 17198 00116218 05006214 */  bne        $v1, $v0, .L00116230
    /* 1719C 0011621C 2000BFDF */   ld        $ra, 0x20($sp)
    /* 171A0 00116220 10ED228E */  lw         $v0, %lo(D_0015ED10)($s1)
    /* 171A4 00116224 02004054 */  bnel       $v0, $zero, .L00116230
    /* 171A8 00116228 000002AE */   sw        $v0, 0x0($s0)
    /* 171AC 0011622C 2000BFDF */  ld         $ra, 0x20($sp)
.align 2
  .L00116230:
    /* 171B0 00116230 2D106000 */  daddu      $v0, $v1, $zero
    /* 171B4 00116234 1000B1DF */  ld         $s1, 0x10($sp)
    /* 171B8 00116238 0000B0DF */  ld         $s0, 0x0($sp)
    /* 171BC 0011623C 0800E003 */  jr         $ra
    /* 171C0 00116240 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_001161E8
