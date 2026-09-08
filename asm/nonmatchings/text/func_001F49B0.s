.align 3
nonmatching func_001F49B0, 0x50

glabel func_001F49B0
    /* F5930 001F49B0 1600063C */  lui        $a2, %hi(D_0015F564)
    /* F5934 001F49B4 64F5C68C */  lw         $a2, %lo(D_0015F564)($a2)
    /* F5938 001F49B8 2D388000 */  daddu      $a3, $a0, $zero
    /* F593C 001F49BC 4000C228 */  slti       $v0, $a2, 0x40
    /* F5940 001F49C0 0D004010 */  beqz       $v0, .L001F49F8
    /* F5944 001F49C4 2D40A000 */   daddu     $t0, $a1, $zero
    /* F5948 001F49C8 1900033C */  lui        $v1, %hi(D_0018DD40)
    /* F594C 001F49CC 80100600 */  sll        $v0, $a2, 2
    /* F5950 001F49D0 1900043C */  lui        $a0, %hi(D_0018DC40)
    /* F5954 001F49D4 40DD6324 */  addiu      $v1, $v1, %lo(D_0018DD40)
    /* F5958 001F49D8 21184300 */  addu       $v1, $v0, $v1
    /* F595C 001F49DC 40DC8424 */  addiu      $a0, $a0, %lo(D_0018DC40)
    /* F5960 001F49E0 21104400 */  addu       $v0, $v0, $a0
    /* F5964 001F49E4 0100C524 */  addiu      $a1, $a2, 0x1
    /* F5968 001F49E8 000047AC */  sw         $a3, 0x0($v0)
    /* F596C 001F49EC 000068AC */  sw         $t0, 0x0($v1)
    /* F5970 001F49F0 1600013C */  lui        $at, %hi(D_0015F564)
    /* F5974 001F49F4 64F525AC */  sw         $a1, %lo(D_0015F564)($at)
.align 2
  .L001F49F8:
    /* F5978 001F49F8 0800E003 */  jr         $ra
    /* F597C 001F49FC 00000000 */   nop
endlabel func_001F49B0
