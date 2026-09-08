.align 3
nonmatching func_001EC038, 0x5C

glabel func_001EC038
    /* ECFB8 001EC038 D0FFBD27 */  addiu      $29, $29, -0x30
    /* ECFBC 001EC03C 1800023C */  lui        $2, %hi(D_001871C0)
    /* ECFC0 001EC040 1000B17F */  sq         $17, 0x10($29)
    /* ECFC4 001EC044 A0000624 */  addiu      $6, $0, 0xA0
    /* ECFC8 001EC048 1900113C */  lui        $17, %hi(D_00189310)
    /* ECFCC 001EC04C C071458C */  lw         $5, %lo(D_001871C0)($2)
    /* ECFD0 001EC050 10933126 */  addiu      $17, $17, %lo(D_00189310)
    /* ECFD4 001EC054 2000BF7F */  sq         $31, 0x20($29)
    /* ECFD8 001EC058 0000B07F */  sq         $16, 0x0($29)
    /* ECFDC 001EC05C A6E6070C */  jal        func_001F9A98
    /* ECFE0 001EC060 2D202002 */   daddu     $4, $17, $0
    /* ECFE4 001EC064 1900103C */  lui        $16, %hi(D_001899D0)
    /* ECFE8 001EC068 80020624 */  addiu      $6, $0, 0x280
    /* ECFEC 001EC06C D0991026 */  addiu      $16, $16, %lo(D_001899D0)
    /* ECFF0 001EC070 2D200002 */  daddu      $4, $16, $0
    /* ECFF4 001EC074 A6E6070C */  jal        func_001F9A98
    /* ECFF8 001EC078 00FB0526 */   addiu     $5, $16, -0x500
    /* ECFFC 001EC07C 700030AE */  sw         $16, 0x70($17)
    /* ED000 001EC080 2000BF7B */  lq         $31, 0x20($29)
    /* ED004 001EC084 1000B17B */  lq         $17, 0x10($29)
    /* ED008 001EC088 0000B07B */  lq         $16, 0x0($29)
    /* ED00C 001EC08C 0800E003 */  jr         $31
    /* ED010 001EC090 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_001EC038
    /* ED014 001EC094 00000000 */  nop
