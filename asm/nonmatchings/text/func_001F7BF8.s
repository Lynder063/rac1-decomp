.align 3
nonmatching func_001F7BF8, 0x54

glabel func_001F7BF8
    /* F8B78 001F7BF8 1900023C */  lui        $v0, %hi(D_0018E840)
    /* F8B7C 001F7BFC 2D380000 */  daddu      $a3, $zero, $zero
    /* F8B80 001F7C00 40E84824 */  addiu      $t0, $v0, %lo(D_0018E840)
    /* F8B84 001F7C04 00000000 */  nop
.align 2
  .L001F7C08:
    /* F8B88 001F7C08 E700E230 */  andi       $v0, $a3, 0xE7
    /* F8B8C 001F7C0C 0800E530 */  andi       $a1, $a3, 0x8
    /* F8B90 001F7C10 10004334 */  ori        $v1, $v0, 0x10
    /* F8B94 001F7C14 1000E630 */  andi       $a2, $a3, 0x10
    /* F8B98 001F7C18 0B106500 */  movn       $v0, $v1, $a1
    /* F8B9C 001F7C1C 43200700 */  sra        $a0, $a3, 1
    /* F8BA0 001F7C20 08004334 */  ori        $v1, $v0, 0x8
    /* F8BA4 001F7C24 00260400 */  sll        $a0, $a0, 24
    /* F8BA8 001F7C28 0B106600 */  movn       $v0, $v1, $a2
    /* F8BAC 001F7C2C 0100E724 */  addiu      $a3, $a3, 0x1
    /* F8BB0 001F7C30 80100200 */  sll        $v0, $v0, 2
    /* F8BB4 001F7C34 0001E328 */  slti       $v1, $a3, 0x100
    /* F8BB8 001F7C38 21104800 */  addu       $v0, $v0, $t0
    /* F8BBC 001F7C3C F2FF6014 */  bnez       $v1, .L001F7C08
    /* F8BC0 001F7C40 000044AC */   sw        $a0, 0x0($v0)
    /* F8BC4 001F7C44 0800E003 */  jr         $ra
    /* F8BC8 001F7C48 00000000 */   nop
endlabel func_001F7BF8
    /* F8BCC 001F7C4C 00000000 */  nop
