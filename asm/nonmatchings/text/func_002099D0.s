.align 3
nonmatching func_002099D0, 0x48

glabel func_002099D0
    /* 10A950 002099D0 1400023C */  lui        $v0, %hi(D_0013D3AC)
    /* 10A954 002099D4 FEFF0424 */  addiu      $a0, $zero, -0x2
    /* 10A958 002099D8 ACD3438C */  lw         $v1, %lo(D_0013D3AC)($v0)
    /* 10A95C 002099DC 04006410 */  beq        $v1, $a0, .L002099F0
    /* 10A960 002099E0 B482838F */   lw        $v1, -0x7D4C($gp)
    /* 10A964 002099E4 03000224 */  addiu      $v0, $zero, 0x3
    /* 10A968 002099E8 0800E003 */  jr         $ra
    /* 10A96C 002099EC B08282AF */   sw        $v0, -0x7D50($gp)
.align 2
  .L002099F0:
    /* 10A970 002099F0 20006230 */  andi       $v0, $v1, 0x20
    /* 10A974 002099F4 06004010 */  beqz       $v0, .L00209A10
    /* 10A978 002099F8 20006238 */   xori      $v0, $v1, 0x20
    /* 10A97C 002099FC 05000324 */  addiu      $v1, $zero, 0x5
    /* 10A980 00209A00 1600013C */  lui        $at, %hi(D_0015EFB4)
    /* 10A984 00209A04 B4EF22AC */  sw         $v0, %lo(D_0015EFB4)($at)
    /* 10A988 00209A08 1600013C */  lui        $at, %hi(D_0015EFB0)
    /* 10A98C 00209A0C B0EF23AC */  sw         $v1, %lo(D_0015EFB0)($at)
.align 2
  .L00209A10:
    /* 10A990 00209A10 0800E003 */  jr         $ra
    /* 10A994 00209A14 00000000 */   nop
endlabel func_002099D0
