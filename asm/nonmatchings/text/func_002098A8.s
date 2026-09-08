.align 3
nonmatching func_002098A8, 0x20

glabel func_002098A8
    /* 10A828 002098A8 1400023C */  lui        $v0, %hi(D_0013D3AC)
    /* 10A82C 002098AC ACD3438C */  lw         $v1, %lo(D_0013D3AC)($v0)
    /* 10A830 002098B0 03006010 */  beqz       $v1, .L002098C0
    /* 10A834 002098B4 03000224 */   addiu     $v0, $zero, 0x3
    /* 10A838 002098B8 1600013C */  lui        $at, %hi(D_0015EFB0)
    /* 10A83C 002098BC B0EF22AC */  sw         $v0, %lo(D_0015EFB0)($at)
.align 2
  .L002098C0:
    /* 10A840 002098C0 0800E003 */  jr         $ra
    /* 10A844 002098C4 00000000 */   nop
endlabel func_002098A8
