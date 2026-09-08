.align 3
nonmatching func_00120C58, 0x44

glabel func_00120C58
    /* 21BD8 00120C58 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 21BDC 00120C5C 00000000 */  nop
    /* 21BE0 00120C60 1600023C */  lui        $v0, %hi(D_00159844)
    /* 21BE4 00120C64 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 21BE8 00120C68 4498458C */  lw         $a1, %lo(D_00159844)($v0)
    /* 21BEC 00120C6C 0800A010 */  beqz       $a1, .L00120C90
    /* 21BF0 00120C70 0000BFFF */   sd        $ra, 0x0($sp)
    /* 21BF4 00120C74 1300023C */  lui        $v0, %hi(D_001313E4)
    /* 21BF8 00120C78 E413438C */  lw         $v1, %lo(D_001313E4)($v0)
    /* 21BFC 00120C7C 05006014 */  bnez       $v1, .L00120C94
    /* 21C00 00120C80 0000BFDF */   ld        $ra, 0x0($sp)
    /* 21C04 00120C84 1600023C */  lui        $v0, %hi(D_00159848)
    /* 21C08 00120C88 09F8A000 */  jalr       $a1
    /* 21C0C 00120C8C 4898448C */   lw        $a0, %lo(D_00159848)($v0)
.align 2
  .L00120C90:
    /* 21C10 00120C90 0000BFDF */  ld         $ra, 0x0($sp)
.align 2
  .L00120C94:
    /* 21C14 00120C94 0800E003 */  jr         $ra
    /* 21C18 00120C98 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00120C58
    /* 21C1C 00120C9C 00000000 */  nop
