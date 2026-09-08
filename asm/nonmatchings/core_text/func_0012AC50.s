.align 3
nonmatching func_0012AC50, 0x2C

glabel func_0012AC50
    /* 2BBD0 0012AC50 0800838C */  lw         $3, 0x8($4)
    /* 2BBD4 0012AC54 C3280500 */  sra        $5, $5, 3
    /* 2BBD8 0012AC58 2400828C */  lw         $2, 0x24($4)
    /* 2BBDC 0012AC5C 21186500 */  addu       $3, $3, $5
    /* 2BBE0 0012AC60 2B106200 */  sltu       $2, $3, $2
    /* 2BBE4 0012AC64 03004014 */  bnez       $2, .L0012AC74
    /* 2BBE8 0012AC68 00000000 */   nop
    /* 2BBEC 0012AC6C 2800828C */  lw         $2, 0x28($4)
    /* 2BBF0 0012AC70 23186200 */  subu       $3, $3, $2
.align 2
  .L0012AC74:
    /* 2BBF4 0012AC74 0800E003 */  jr         $31
    /* 2BBF8 0012AC78 2D106000 */   daddu     $2, $3, $0
endlabel func_0012AC50
