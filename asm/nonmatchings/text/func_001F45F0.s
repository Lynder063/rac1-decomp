.align 3
nonmatching func_001F45F0, 0x34

glabel func_001F45F0
    /* F5570 001F45F0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* F5574 001F45F4 1600023C */  lui        $v0, %hi(D_0015F6FC)
    /* F5578 001F45F8 FCF6428C */  lw         $v0, %lo(D_0015F6FC)($v0)
    /* F557C 001F45FC 06004014 */  bnez       $v0, .L001F4618
    /* F5580 001F4600 0000BF7F */   sq        $ra, 0x0($sp)
    /* F5584 001F4604 4CED070C */  jal        func_001FB530
    /* F5588 001F4608 00000000 */   nop
    /* F558C 001F460C 7F000224 */  addiu      $v0, $zero, 0x7F
    /* F5590 001F4610 5ECF070C */  jal        func_001F3D78
    /* F5594 001F4614 348882AF */   sw        $v0, -0x77CC($gp)
.align 2
  .L001F4618:
    /* F5598 001F4618 0000BF7B */  lq         $ra, 0x0($sp)
    /* F559C 001F461C 0800E003 */  jr         $ra
    /* F55A0 001F4620 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001F45F0
    /* F55A4 001F4624 00000000 */  nop
