.align 3
nonmatching func_0012AAA8, 0x1C

glabel func_0012AAA8
    /* 2BA28 0012AAA8 000082DC */  ld         $2, 0x0($4)
    /* 2BA2C 0012AAAC 40000324 */  addiu      $3, $0, 0x40
    /* 2BA30 0012AAB0 23186500 */  subu       $3, $3, $5
    /* 2BA34 0012AAB4 16106200 */  dsrlv      $2, $2, $3
    /* 2BA38 0012AAB8 3C100200 */  dsll32     $2, $2, 0
    /* 2BA3C 0012AABC 0800E003 */  jr         $31
    /* 2BA40 0012AAC0 3F100200 */   dsra32    $2, $2, 0
endlabel func_0012AAA8
    /* 2BA44 0012AAC4 00000000 */  nop
