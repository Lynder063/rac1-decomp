.align 3
nonmatching func_001F4B68, 0x50

glabel func_001F4B68
    /* F5AE8 001F4B68 1600063C */  lui        $6, %hi(D_0015F568)
    /* F5AEC 001F4B6C 68F5C68C */  lw         $6, %lo(D_0015F568)($6)
    /* F5AF0 001F4B70 2D388000 */  daddu      $7, $4, $0
    /* F5AF4 001F4B74 4000C228 */  slti       $2, $6, 0x40
    /* F5AF8 001F4B78 0D004010 */  beqz       $2, .L001F4BB0
    /* F5AFC 001F4B7C 2D40A000 */   daddu     $8, $5, $0
    /* F5B00 001F4B80 1900033C */  lui        $3, %hi(D_0018DF40)
    /* F5B04 001F4B84 80100600 */  sll        $2, $6, 2
    /* F5B08 001F4B88 1900043C */  lui        $4, %hi(D_0018DE40)
    /* F5B0C 001F4B8C 40DF6324 */  addiu      $3, $3, %lo(D_0018DF40)
    /* F5B10 001F4B90 21184300 */  addu       $3, $2, $3
    /* F5B14 001F4B94 40DE8424 */  addiu      $4, $4, %lo(D_0018DE40)
    /* F5B18 001F4B98 21104400 */  addu       $2, $2, $4
    /* F5B1C 001F4B9C 0100C524 */  addiu      $5, $6, 0x1
    /* F5B20 001F4BA0 000047AC */  sw         $7, 0x0($2)
    /* F5B24 001F4BA4 000068AC */  sw         $8, 0x0($3)
    /* F5B28 001F4BA8 1600013C */  lui        $1, %hi(D_0015F568)
    /* F5B2C 001F4BAC 68F525AC */  sw         $5, %lo(D_0015F568)($1)
.align 2
  .L001F4BB0:
    /* F5B30 001F4BB0 0800E003 */  jr         $31
    /* F5B34 001F4BB4 00000000 */   nop
endlabel func_001F4B68
