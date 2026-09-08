.align 3
nonmatching func_001EC270, 0x44

glabel func_001EC270
    /* ED1F0 001EC270 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* ED1F4 001EC274 2D288000 */  daddu      $a1, $a0, $zero
    /* ED1F8 001EC278 0000BF7F */  sq         $ra, 0x0($sp)
    /* ED1FC 001EC27C 14000424 */  addiu      $a0, $zero, 0x14
    /* ED200 001EC280 1F00023C */  lui        $v0, %hi(D_001E8F80)
    /* ED204 001EC284 8C00A384 */  lh         $v1, 0x8C($a1)
    /* ED208 001EC288 808F4224 */  addiu      $v0, $v0, %lo(D_001E8F80)
    /* ED20C 001EC28C 18186400 */  mult       $v1, $v1, $a0
    /* ED210 001EC290 21104300 */  addu       $v0, $v0, $v1
    /* ED214 001EC294 0800428C */  lw         $v0, 0x8($v0)
    /* ED218 001EC298 04004010 */  beqz       $v0, .L001EC2AC
    /* ED21C 001EC29C 0000BF7B */   lq        $ra, 0x0($sp)
    /* ED220 001EC2A0 09F84000 */  jalr       $v0
    /* ED224 001EC2A4 2D20A000 */   daddu     $a0, $a1, $zero
    /* ED228 001EC2A8 0000BF7B */  lq         $ra, 0x0($sp)
.align 2
  .L001EC2AC:
    /* ED22C 001EC2AC 0800E003 */  jr         $ra
    /* ED230 001EC2B0 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001EC270
    /* ED234 001EC2B4 00000000 */  nop
