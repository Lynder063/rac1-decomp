.align 3
nonmatching func_00205C08, 0x64

glabel func_00205C08
    /* 106B88 00205C08 2D180000 */  daddu      $v1, $zero, $zero
    /* 106B8C 00205C0C FF7F0B24 */  addiu      $t3, $zero, 0x7FFF
.align 2
  .L00205C10:
    /* 106B90 00205C10 01006A24 */  addiu      $t2, $v1, 0x1
    /* 106B94 00205C14 01000824 */  addiu      $t0, $zero, 0x1
    /* 106B98 00205C18 0100E924 */  addiu      $t1, $a3, 0x1
    /* 106B9C 00205C1C 07000324 */  addiu      $v1, $zero, 0x7
.align 2
  .L00205C20:
    /* 106BA0 00205C20 0000E290 */  lbu        $v0, 0x0($a3)
    /* 106BA4 00205C24 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 106BA8 00205C28 24104800 */  and        $v0, $v0, $t0
    /* 106BAC 00205C2C 03004010 */  beqz       $v0, .L00205C3C
    /* 106BB0 00205C30 40400800 */   sll       $t0, $t0, 1
    /* 106BB4 00205C34 02000010 */  b          .L00205C40
    /* 106BB8 00205C38 0000A290 */   lbu       $v0, 0x0($a1)
.align 2
  .L00205C3C:
    /* 106BBC 00205C3C 0000C290 */  lbu        $v0, 0x0($a2)
.align 2
  .L00205C40:
    /* 106BC0 00205C40 000082A0 */  sb         $v0, 0x0($a0)
    /* 106BC4 00205C44 0100A524 */  addiu      $a1, $a1, 0x1
    /* 106BC8 00205C48 0100C624 */  addiu      $a2, $a2, 0x1
    /* 106BCC 00205C4C F4FF6104 */  bgez       $v1, .L00205C20
    /* 106BD0 00205C50 01008424 */   addiu     $a0, $a0, 0x1
    /* 106BD4 00205C54 2D184001 */  daddu      $v1, $t2, $zero
    /* 106BD8 00205C58 2A106301 */  slt        $v0, $t3, $v1
    /* 106BDC 00205C5C ECFF4010 */  beqz       $v0, .L00205C10
    /* 106BE0 00205C60 2D382001 */   daddu     $a3, $t1, $zero
    /* 106BE4 00205C64 0800E003 */  jr         $ra
    /* 106BE8 00205C68 00000000 */   nop
endlabel func_00205C08
    /* 106BEC 00205C6C 00000000 */  nop
