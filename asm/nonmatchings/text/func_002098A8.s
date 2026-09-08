.align 3
nonmatching func_002098A8, 0x20

glabel func_002098A8
    /* 10A828 002098A8 1400023C */  lui        $2, %hi(D_0013D3AC)
    /* 10A82C 002098AC ACD3438C */  lw         $3, %lo(D_0013D3AC)($2)
    /* 10A830 002098B0 03006010 */  beqz       $3, .L002098C0
    /* 10A834 002098B4 03000224 */   addiu     $2, $0, 0x3
    /* 10A838 002098B8 1600013C */  lui        $1, %hi(D_0015EFB0)
    /* 10A83C 002098BC B0EF22AC */  sw         $2, %lo(D_0015EFB0)($1)
.align 2
  .L002098C0:
    /* 10A840 002098C0 0800E003 */  jr         $31
    /* 10A844 002098C4 00000000 */   nop
endlabel func_002098A8
