.align 3
/* Handwritten function */
nonmatching func_001F9938, 0x30

glabel func_001F9938
    /* FA8B8 001F9938 00008184 */  lh         $at, 0x0($a0)
    /* FA8BC 001F993C 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* FA8C0 001F9940 07002010 */  beqz       $at, .L001F9960
    /* FA8C4 001F9944 C8082270 */   pmaxw     $at, $at, $v0
    /* FA8C8 001F9948 FFFF2120 */  addi       $at, $at, -0x1 /* handwritten instruction */
    /* FA8CC 001F994C 00000220 */  addi       $v0, $zero, 0x0 /* handwritten instruction */
    /* FA8D0 001F9950 0300201C */  bgtz       $at, .L001F9960
    /* FA8D4 001F9954 000081A4 */   sh        $at, 0x0($a0)
    /* FA8D8 001F9958 02000220 */  addi       $v0, $zero, 0x2 /* handwritten instruction */
    /* FA8DC 001F995C 00000000 */  nop
.align 2
  .L001F9960:
    /* FA8E0 001F9960 0800E003 */  jr         $ra
    /* FA8E4 001F9964 00000000 */   nop
endlabel func_001F9938
