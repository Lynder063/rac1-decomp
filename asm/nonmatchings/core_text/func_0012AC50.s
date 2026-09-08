.align 3
nonmatching func_0012AC50, 0x2C

glabel func_0012AC50
    /* 2BBD0 0012AC50 0800838C */  lw         $v1, 0x8($a0)
    /* 2BBD4 0012AC54 C3280500 */  sra        $a1, $a1, 3
    /* 2BBD8 0012AC58 2400828C */  lw         $v0, 0x24($a0)
    /* 2BBDC 0012AC5C 21186500 */  addu       $v1, $v1, $a1
    /* 2BBE0 0012AC60 2B106200 */  sltu       $v0, $v1, $v0
    /* 2BBE4 0012AC64 03004014 */  bnez       $v0, .L0012AC74
    /* 2BBE8 0012AC68 00000000 */   nop
    /* 2BBEC 0012AC6C 2800828C */  lw         $v0, 0x28($a0)
    /* 2BBF0 0012AC70 23186200 */  subu       $v1, $v1, $v0
.align 2
  .L0012AC74:
    /* 2BBF4 0012AC74 0800E003 */  jr         $ra
    /* 2BBF8 0012AC78 2D106000 */   daddu     $v0, $v1, $zero
endlabel func_0012AC50
