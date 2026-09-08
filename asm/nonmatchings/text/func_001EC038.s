.align 3
nonmatching func_001EC038, 0x5C

glabel func_001EC038
    /* ECFB8 001EC038 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* ECFBC 001EC03C 1800023C */  lui        $v0, %hi(D_001871C0)
    /* ECFC0 001EC040 1000B17F */  sq         $s1, 0x10($sp)
    /* ECFC4 001EC044 A0000624 */  addiu      $a2, $zero, 0xA0
    /* ECFC8 001EC048 1900113C */  lui        $s1, %hi(D_00189310)
    /* ECFCC 001EC04C C071458C */  lw         $a1, %lo(D_001871C0)($v0)
    /* ECFD0 001EC050 10933126 */  addiu      $s1, $s1, %lo(D_00189310)
    /* ECFD4 001EC054 2000BF7F */  sq         $ra, 0x20($sp)
    /* ECFD8 001EC058 0000B07F */  sq         $s0, 0x0($sp)
    /* ECFDC 001EC05C A6E6070C */  jal        func_001F9A98
    /* ECFE0 001EC060 2D202002 */   daddu     $a0, $s1, $zero
    /* ECFE4 001EC064 1900103C */  lui        $s0, %hi(D_001899D0)
    /* ECFE8 001EC068 80020624 */  addiu      $a2, $zero, 0x280
    /* ECFEC 001EC06C D0991026 */  addiu      $s0, $s0, %lo(D_001899D0)
    /* ECFF0 001EC070 2D200002 */  daddu      $a0, $s0, $zero
    /* ECFF4 001EC074 A6E6070C */  jal        func_001F9A98
    /* ECFF8 001EC078 00FB0526 */   addiu     $a1, $s0, -0x500
    /* ECFFC 001EC07C 700030AE */  sw         $s0, 0x70($s1)
    /* ED000 001EC080 2000BF7B */  lq         $ra, 0x20($sp)
    /* ED004 001EC084 1000B17B */  lq         $s1, 0x10($sp)
    /* ED008 001EC088 0000B07B */  lq         $s0, 0x0($sp)
    /* ED00C 001EC08C 0800E003 */  jr         $ra
    /* ED010 001EC090 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_001EC038
    /* ED014 001EC094 00000000 */  nop
