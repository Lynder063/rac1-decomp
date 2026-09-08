.align 3
nonmatching func_001F4B68, 0x50

glabel func_001F4B68
    /* F5AE8 001F4B68 1600063C */  lui        $a2, %hi(D_0015F568)
    /* F5AEC 001F4B6C 68F5C68C */  lw         $a2, %lo(D_0015F568)($a2)
    /* F5AF0 001F4B70 2D388000 */  daddu      $a3, $a0, $zero
    /* F5AF4 001F4B74 4000C228 */  slti       $v0, $a2, 0x40
    /* F5AF8 001F4B78 0D004010 */  beqz       $v0, .L001F4BB0
    /* F5AFC 001F4B7C 2D40A000 */   daddu     $t0, $a1, $zero
    /* F5B00 001F4B80 1900033C */  lui        $v1, %hi(D_0018DF40)
    /* F5B04 001F4B84 80100600 */  sll        $v0, $a2, 2
    /* F5B08 001F4B88 1900043C */  lui        $a0, %hi(D_0018DE40)
    /* F5B0C 001F4B8C 40DF6324 */  addiu      $v1, $v1, %lo(D_0018DF40)
    /* F5B10 001F4B90 21184300 */  addu       $v1, $v0, $v1
    /* F5B14 001F4B94 40DE8424 */  addiu      $a0, $a0, %lo(D_0018DE40)
    /* F5B18 001F4B98 21104400 */  addu       $v0, $v0, $a0
    /* F5B1C 001F4B9C 0100C524 */  addiu      $a1, $a2, 0x1
    /* F5B20 001F4BA0 000047AC */  sw         $a3, 0x0($v0)
    /* F5B24 001F4BA4 000068AC */  sw         $t0, 0x0($v1)
    /* F5B28 001F4BA8 1600013C */  lui        $at, %hi(D_0015F568)
    /* F5B2C 001F4BAC 68F525AC */  sw         $a1, %lo(D_0015F568)($at)
.align 2
  .L001F4BB0:
    /* F5B30 001F4BB0 0800E003 */  jr         $ra
    /* F5B34 001F4BB4 00000000 */   nop
endlabel func_001F4B68
