.align 3
/* Handwritten function */
nonmatching func_0011D960, 0x48

glabel func_0011D960
    /* 1E8E0 0011D960 00600340 */  mfc0       $3, $12 /* handwritten instruction */
    /* 1E8E4 0011D964 0100023C */  lui        $2, (0x10000 >> 16)
    /* 1E8E8 0011D968 24186200 */  and        $3, $3, $2
    /* 1E8EC 0011D96C 0B006010 */  beqz       $3, .L0011D99C
    /* 1E8F0 0011D970 2B200300 */   sltu      $4, $0, $3
    /* 1E8F4 0011D974 00000000 */  nop
.align 2
  .L0011D978:
    /* 1E8F8 0011D978 39000042 */  di /* handwritten instruction */
    /* 1E8FC 0011D97C 0F040000 */  sync.p
    /* 1E900 0011D980 00600240 */  mfc0       $2, $12 /* handwritten instruction */
    /* 1E904 0011D984 0100033C */  lui        $3, (0x10000 >> 16)
    /* 1E908 0011D988 24104300 */  and        $2, $2, $3
    /* 1E90C 0011D98C FAFF4014 */  bnez       $2, .L0011D978
    /* 1E910 0011D990 00000000 */   nop
    /* 1E914 0011D994 0800E003 */  jr         $31
    /* 1E918 0011D998 2D108000 */   daddu     $2, $4, $0
.align 2
  .L0011D99C:
    /* 1E91C 0011D99C 2D200000 */  daddu      $4, $0, $0
    /* 1E920 0011D9A0 0800E003 */  jr         $31
    /* 1E924 0011D9A4 2D108000 */   daddu     $2, $4, $0
endlabel func_0011D960
