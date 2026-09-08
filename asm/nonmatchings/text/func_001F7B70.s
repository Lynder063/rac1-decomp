.align 3
nonmatching func_001F7B70, 0x88

glabel func_001F7B70
    /* F8AF0 001F7B70 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* F8AF4 001F7B74 1600023C */  lui        $v0, %hi(D_0015F578)
    /* F8AF8 001F7B78 78F5428C */  lw         $v0, %lo(D_0015F578)($v0)
    /* F8AFC 001F7B7C 1B004010 */  beqz       $v0, .L001F7BEC
    /* F8B00 001F7B80 0000BF7F */   sq        $ra, 0x0($sp)
    /* F8B04 001F7B84 08000424 */  addiu      $a0, $zero, 0x8
    /* F8B08 001F7B88 26D3080C */  jal        func_00234C98
    /* F8B0C 001F7B8C 05000524 */   addiu     $a1, $zero, 0x5
    /* F8B10 001F7B90 14000424 */  addiu      $a0, $zero, 0x14
    /* F8B14 001F7B94 26D3080C */  jal        func_00234C98
    /* F8B18 001F7B98 61000524 */   addiu     $a1, $zero, 0x61
    /* F8B1C 001F7B9C 0500053C */  lui        $a1, (0x513F1 >> 16)
    /* F8B20 001F7BA0 F113A534 */  ori        $a1, $a1, (0x513F1 & 0xFFFF)
    /* F8B24 001F7BA4 26D3080C */  jal        func_00234C98
    /* F8B28 001F7BA8 47000424 */   addiu     $a0, $zero, 0x47
    /* F8B2C 001F7BAC 4A000424 */  addiu      $a0, $zero, 0x4A
    /* F8B30 001F7BB0 26D3080C */  jal        func_00234C98
    /* F8B34 001F7BB4 01000524 */   addiu     $a1, $zero, 0x1
    /* F8B38 001F7BB8 6EE4070C */  jal        func_001F91B8
    /* F8B3C 001F7BBC 00000000 */   nop
    /* F8B40 001F7BC0 23BD013C */  lui        $at, (0xBD23D70A >> 16)
    /* F8B44 001F7BC4 0AD72134 */  ori        $at, $at, (0xBD23D70A & 0xFFFF)
    /* F8B48 001F7BC8 00008144 */  mtc1       $at, $f0
    /* F8B4C 001F7BCC 1ADE070C */  jal        func_001F7868
    /* F8B50 001F7BD0 488780E7 */   swc1      $f0, -0x78B8($gp)
    /* F8B54 001F7BD4 DBE2070C */  jal        func_001F8B6C
    /* F8B58 001F7BD8 00000000 */   nop
    /* F8B5C 001F7BDC 488780AF */  sw         $zero, -0x78B8($gp)
    /* F8B60 001F7BE0 4A000424 */  addiu      $a0, $zero, 0x4A
    /* F8B64 001F7BE4 26D3080C */  jal        func_00234C98
    /* F8B68 001F7BE8 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L001F7BEC:
    /* F8B6C 001F7BEC 0000BF7B */  lq         $ra, 0x0($sp)
    /* F8B70 001F7BF0 0800E003 */  jr         $ra
    /* F8B74 001F7BF4 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001F7B70
