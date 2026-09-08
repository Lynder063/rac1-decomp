.align 3
nonmatching func_0020CBE0, 0x2C

glabel func_0020CBE0
    /* 10DB60 0020CBE0 1400023C */  lui        $2, %hi(D_0013D6B8)
    /* 10DB64 0020CBE4 B8D64224 */  addiu      $2, $2, %lo(D_0013D6B8)
    /* 10DB68 0020CBE8 0C04438C */  lw         $3, 0x40C($2)
    /* 10DB6C 0020CBEC 05006050 */  beql       $3, $0, .L0020CC04
    /* 10DB70 0020CBF0 2D100000 */   daddu     $2, $0, $0
    /* 10DB74 0020CBF4 FC03438C */  lw         $3, 0x3FC($2)
    /* 10DB78 0020CBF8 02006014 */  bnez       $3, .L0020CC04
    /* 10DB7C 0020CBFC 01000224 */   addiu     $2, $0, 0x1
    /* 10DB80 0020CC00 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0020CC04:
    /* 10DB84 0020CC04 0800E003 */  jr         $31
    /* 10DB88 0020CC08 00000000 */   nop
endlabel func_0020CBE0
    /* 10DB8C 0020CC0C 00000000 */  nop
