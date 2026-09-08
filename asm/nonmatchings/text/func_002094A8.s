.align 3
nonmatching func_002094A8, 0x38

glabel func_002094A8
    /* 10A428 002094A8 1400023C */  lui        $v0, %hi(D_0013D3AC)
    /* 10A42C 002094AC ACD3438C */  lw         $v1, %lo(D_0013D3AC)($v0)
    /* 10A430 002094B0 04006010 */  beqz       $v1, .L002094C4
    /* 10A434 002094B4 B482828F */   lw        $v0, -0x7D4C($gp)
    /* 10A438 002094B8 03000224 */  addiu      $v0, $zero, 0x3
    /* 10A43C 002094BC 0800E003 */  jr         $ra
    /* 10A440 002094C0 B08282AF */   sw        $v0, -0x7D50($gp)
.align 2
  .L002094C4:
    /* 10A444 002094C4 06004230 */  andi       $v0, $v0, 0x6
    /* 10A448 002094C8 03004010 */  beqz       $v0, .L002094D8
    /* 10A44C 002094CC 0A000224 */   addiu     $v0, $zero, 0xA
    /* 10A450 002094D0 1600013C */  lui        $at, %hi(D_0015EFB0)
    /* 10A454 002094D4 B0EF22AC */  sw         $v0, %lo(D_0015EFB0)($at)
.align 2
  .L002094D8:
    /* 10A458 002094D8 0800E003 */  jr         $ra
    /* 10A45C 002094DC 00000000 */   nop
endlabel func_002094A8
