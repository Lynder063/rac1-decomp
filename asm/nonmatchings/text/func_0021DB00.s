.align 3
nonmatching func_0021DB00, 0x30

glabel func_0021DB00
    /* 11EA80 0021DB00 1600033C */  lui        $v1, %hi(D_0015EEF0)
    /* 11EA84 0021DB04 F0EE638C */  lw         $v1, %lo(D_0015EEF0)($v1)
    /* 11EA88 0021DB08 0A000424 */  addiu      $a0, $zero, 0xA
    /* 11EA8C 0021DB0C 01008050 */  beql       $a0, $zero, .L0021DB14
    /* 11EA90 0021DB10 CD010000 */   break     0, 7
.align 2
  .L0021DB14:
    /* 11EA94 0021DB14 1400053C */  lui        $a1, %hi(D_0013E6A0)
    /* 11EA98 0021DB18 C0180300 */  sll        $v1, $v1, 3
    /* 11EA9C 0021DB1C 2D100000 */  daddu      $v0, $zero, $zero
    /* 11EAA0 0021DB20 1A006400 */  div        $zero, $v1, $a0
    /* 11EAA4 0021DB24 12180000 */  mflo       $v1
    /* 11EAA8 0021DB28 0800E003 */  jr         $ra
    /* 11EAAC 0021DB2C A0E6A3AC */   sw        $v1, %lo(D_0013E6A0)($a1)
endlabel func_0021DB00
