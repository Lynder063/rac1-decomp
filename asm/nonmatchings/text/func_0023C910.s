.align 3
/* Handwritten function */
nonmatching func_0023C910, 0x4C

glabel func_0023C910
    /* 13D890 0023C910 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 13D894 0023C914 1600023C */  lui        $2, %hi(D_001612E8)
    /* 13D898 0023C918 E812428C */  lw         $2, %lo(D_001612E8)($2)
    /* 13D89C 0023C91C 09004010 */  beqz       $2, .L0023C944
    /* 13D8A0 0023C920 0000BF7F */   sq        $31, 0x0($29)
    /* 13D8A4 0023C924 1600023C */  lui        $2, %hi(D_0016130C)
    /* 13D8A8 0023C928 0C13428C */  lw         $2, %lo(D_0016130C)($2)
    /* 13D8AC 0023C92C 0D00043C */  lui        $4, (0xD9168 >> 16)
    /* 13D8B0 0023C930 68918434 */  ori        $4, $4, (0xD9168 & 0xFFFF)
    /* 13D8B4 0023C934 C4F9080C */  jal        func_0023E710
    /* 13D8B8 0023C938 21204400 */   addu      $4, $2, $4
    /* 13D8BC 0023C93C 1600013C */  lui        $1, %hi(D_001612E8)
    /* 13D8C0 0023C940 E81220AC */  sw         $0, %lo(D_001612E8)($1)
.align 2
  .L0023C944:
    /* 13D8C4 0023C944 0F000000 */  sync
    /* 13D8C8 0023C948 38000042 */  ei /* handwritten instruction */
    /* 13D8CC 0023C94C 0000BF7B */  lq         $31, 0x0($29)
    /* 13D8D0 0023C950 2D100000 */  daddu      $2, $0, $0
    /* 13D8D4 0023C954 0800E003 */  jr         $31
    /* 13D8D8 0023C958 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0023C910
    /* 13D8DC 0023C95C 00000000 */  nop
