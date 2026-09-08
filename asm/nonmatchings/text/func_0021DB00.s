.align 3
nonmatching func_0021DB00, 0x30

glabel func_0021DB00
    /* 11EA80 0021DB00 1600033C */  lui        $3, %hi(D_0015EEF0)
    /* 11EA84 0021DB04 F0EE638C */  lw         $3, %lo(D_0015EEF0)($3)
    /* 11EA88 0021DB08 0A000424 */  addiu      $4, $0, 0xA
    /* 11EA8C 0021DB0C 01008050 */  beql       $4, $0, .L0021DB14
    /* 11EA90 0021DB10 CD010000 */   break     0, 7
.align 2
  .L0021DB14:
    /* 11EA94 0021DB14 1400053C */  lui        $5, %hi(D_0013E6A0)
    /* 11EA98 0021DB18 C0180300 */  sll        $3, $3, 3
    /* 11EA9C 0021DB1C 2D100000 */  daddu      $2, $0, $0
    /* 11EAA0 0021DB20 1A006400 */  div        $0, $3, $4
    /* 11EAA4 0021DB24 12180000 */  mflo       $3
    /* 11EAA8 0021DB28 0800E003 */  jr         $31
    /* 11EAAC 0021DB2C A0E6A3AC */   sw        $3, %lo(D_0013E6A0)($5)
endlabel func_0021DB00
