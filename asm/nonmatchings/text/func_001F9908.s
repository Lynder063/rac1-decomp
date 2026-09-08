.align 3
/* Handwritten function */
nonmatching func_001F9908, 0x30

glabel func_001F9908
    /* FA888 001F9908 0000818C */  lw         $1, 0x0($4)
    /* FA88C 001F990C 01000220 */  addi       $2, $0, 0x1 /* handwritten instruction */
    /* FA890 001F9910 07002010 */  beqz       $1, .L001F9930
    /* FA894 001F9914 C8082270 */   pmaxw     $1, $1, $2
    /* FA898 001F9918 FFFF2120 */  addi       $1, $1, -0x1 /* handwritten instruction */
    /* FA89C 001F991C 00000220 */  addi       $2, $0, 0x0 /* handwritten instruction */
    /* FA8A0 001F9920 0300201C */  bgtz       $1, .L001F9930
    /* FA8A4 001F9924 000081AC */   sw        $1, 0x0($4)
    /* FA8A8 001F9928 02000220 */  addi       $2, $0, 0x2 /* handwritten instruction */
    /* FA8AC 001F992C 00000000 */  nop
.align 2
  .L001F9930:
    /* FA8B0 001F9930 0800E003 */  jr         $31
    /* FA8B4 001F9934 00000000 */   nop
endlabel func_001F9908
