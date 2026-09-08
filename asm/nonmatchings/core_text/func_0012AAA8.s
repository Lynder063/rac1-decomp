.align 3
nonmatching func_0012AAA8, 0x1C

glabel func_0012AAA8
    /* 2BA28 0012AAA8 000082DC */  ld         $v0, 0x0($a0)
    /* 2BA2C 0012AAAC 40000324 */  addiu      $v1, $zero, 0x40
    /* 2BA30 0012AAB0 23186500 */  subu       $v1, $v1, $a1
    /* 2BA34 0012AAB4 16106200 */  dsrlv      $v0, $v0, $v1
    /* 2BA38 0012AAB8 3C100200 */  dsll32     $v0, $v0, 0
    /* 2BA3C 0012AABC 0800E003 */  jr         $ra
    /* 2BA40 0012AAC0 3F100200 */   dsra32    $v0, $v0, 0
endlabel func_0012AAA8
    /* 2BA44 0012AAC4 00000000 */  nop
