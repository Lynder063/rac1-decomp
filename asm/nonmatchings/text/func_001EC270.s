.align 3
nonmatching func_001EC270, 0x44

glabel func_001EC270
    /* ED1F0 001EC270 F0FFBD27 */  addiu      $29, $29, -0x10
    /* ED1F4 001EC274 2D288000 */  daddu      $5, $4, $0
    /* ED1F8 001EC278 0000BF7F */  sq         $31, 0x0($29)
    /* ED1FC 001EC27C 14000424 */  addiu      $4, $0, 0x14
    /* ED200 001EC280 1F00023C */  lui        $2, %hi(D_001E8F80)
    /* ED204 001EC284 8C00A384 */  lh         $3, 0x8C($5)
    /* ED208 001EC288 808F4224 */  addiu      $2, $2, %lo(D_001E8F80)
    /* ED20C 001EC28C 18186400 */  mult       $3, $3, $4
    /* ED210 001EC290 21104300 */  addu       $2, $2, $3
    /* ED214 001EC294 0800428C */  lw         $2, 0x8($2)
    /* ED218 001EC298 04004010 */  beqz       $2, .L001EC2AC
    /* ED21C 001EC29C 0000BF7B */   lq        $31, 0x0($29)
    /* ED220 001EC2A0 09F84000 */  jalr       $2
    /* ED224 001EC2A4 2D20A000 */   daddu     $4, $5, $0
    /* ED228 001EC2A8 0000BF7B */  lq         $31, 0x0($29)
.align 2
  .L001EC2AC:
    /* ED22C 001EC2AC 0800E003 */  jr         $31
    /* ED230 001EC2B0 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_001EC270
    /* ED234 001EC2B4 00000000 */  nop
