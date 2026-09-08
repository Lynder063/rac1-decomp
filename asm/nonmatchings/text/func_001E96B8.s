.align 3
nonmatching func_001E96B8, 0x6C

glabel func_001E96B8
    /* EA638 001E96B8 C0FFBD27 */  addiu      $29, $29, -0x40
    /* EA63C 001E96BC 1300023C */  lui        $2, %hi(D_00137C80)
    /* EA640 001E96C0 3000BF7F */  sq         $31, 0x30($29)
    /* EA644 001E96C4 807C4224 */  addiu      $2, $2, %lo(D_00137C80)
    /* EA648 001E96C8 2000B07F */  sq         $16, 0x20($29)
    /* EA64C 001E96CC 1B00103C */  lui        $16, %hi(D_001AAF40)
    /* EA650 001E96D0 40AF1026 */  addiu      $16, $16, %lo(D_001AAF40)
    /* EA654 001E96D4 0C00468C */  lw         $6, 0xC($2)
    /* EA658 001E96D8 0800458C */  lw         $5, 0x8($2)
    /* EA65C 001E96DC B25D080C */  jal        func_002176C8
    /* EA660 001E96E0 2D200002 */   daddu     $4, $16, $0
    /* EA664 001E96E4 1600033C */  lui        $3, %hi(D_0015EF88)
    /* EA668 001E96E8 88EF638C */  lw         $3, %lo(D_0015EF88)($3)
    /* EA66C 001E96EC 0C00063C */  lui        $6, (0xC0000 >> 16)
    /* EA670 001E96F0 3F00073C */  lui        $7, (0x3FFC00 >> 16)
    /* EA674 001E96F4 2D200002 */  daddu      $4, $16, $0
    /* EA678 001E96F8 21306600 */  addu       $6, $3, $6
    /* EA67C 001E96FC 2D28A003 */  daddu      $5, $29, $0
    /* EA680 001E9700 3AA5070C */  jal        func_001E94E8
    /* EA684 001E9704 00FCE734 */   ori       $7, $7, (0x3FFC00 & 0xFFFF)
    /* EA688 001E9708 0000A2DF */  ld         $2, 0x0($29)
    /* EA68C 001E970C 3000BF7B */  lq         $31, 0x30($29)
    /* EA690 001E9710 2000B07B */  lq         $16, 0x20($29)
    /* EA694 001E9714 1600013C */  lui        $1, %hi(D_0015EFC8)
    /* EA698 001E9718 C8EF22FC */  sd         $2, %lo(D_0015EFC8)($1)
    /* EA69C 001E971C 0800E003 */  jr         $31
    /* EA6A0 001E9720 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_001E96B8
    /* EA6A4 001E9724 00000000 */  nop
