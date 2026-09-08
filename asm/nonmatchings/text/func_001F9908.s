.align 3
/* Handwritten function */
nonmatching func_001F9908, 0x30

glabel func_001F9908
    /* FA888 001F9908 0000818C */  lw         $at, 0x0($a0)
    /* FA88C 001F990C 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* FA890 001F9910 07002010 */  beqz       $at, .L001F9930
    /* FA894 001F9914 C8082270 */   pmaxw     $at, $at, $v0
    /* FA898 001F9918 FFFF2120 */  addi       $at, $at, -0x1 /* handwritten instruction */
    /* FA89C 001F991C 00000220 */  addi       $v0, $zero, 0x0 /* handwritten instruction */
    /* FA8A0 001F9920 0300201C */  bgtz       $at, .L001F9930
    /* FA8A4 001F9924 000081AC */   sw        $at, 0x0($a0)
    /* FA8A8 001F9928 02000220 */  addi       $v0, $zero, 0x2 /* handwritten instruction */
    /* FA8AC 001F992C 00000000 */  nop
.align 2
  .L001F9930:
    /* FA8B0 001F9930 0800E003 */  jr         $ra
    /* FA8B4 001F9934 00000000 */   nop
endlabel func_001F9908
