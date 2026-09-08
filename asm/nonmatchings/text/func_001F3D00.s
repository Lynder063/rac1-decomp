.align 3
nonmatching func_001F3D00, 0x78

glabel func_001F3D00
    /* F4C80 001F3D00 0012023C */  lui        $v0, (0x120000E0 >> 16)
    /* F4C84 001F3D04 0012043C */  lui        $a0, (0x120000A0 >> 16)
    /* F4C88 001F3D08 E0004234 */  ori        $v0, $v0, (0x120000E0 & 0xFFFF)
    /* F4C8C 001F3D0C A1FF0334 */  ori        $v1, $zero, 0xFFA1
    /* F4C90 001F3D10 000040FC */  sd         $zero, 0x0($v0)
    /* F4C94 001F3D14 1500073C */  lui        $a3, %hi(D_00151888)
    /* F4C98 001F3D18 000083FC */  sd         $v1, (0x12000000 & 0xFFFF)($a0)
    /* F4C9C 001F3D1C 0012023C */  lui        $v0, (0x12000020 >> 16)
    /* F4CA0 001F3D20 20004234 */  ori        $v0, $v0, (0x12000020 & 0xFFFF)
    /* F4CA4 001F3D24 0012053C */  lui        $a1, (0x12000070 >> 16)
    /* F4CA8 001F3D28 8818E6DC */  ld         $a2, %lo(D_00151888)($a3)
    /* F4CAC 001F3D2C 7000A534 */  ori        $a1, $a1, (0x12000070 & 0xFFFF)
    /* F4CB0 001F3D30 8818E724 */  addiu      $a3, $a3, %lo(D_00151888)
    /* F4CB4 001F3D34 0012033C */  lui        $v1, (0x12000090 >> 16)
    /* F4CB8 001F3D38 000046FC */  sd         $a2, 0x0($v0)
    /* F4CBC 001F3D3C 90006334 */  ori        $v1, $v1, (0x12000090 & 0xFFFF)
    /* F4CC0 001F3D40 0012063C */  lui        $a2, (0x12000080 >> 16)
    /* F4CC4 001F3D44 A0008434 */  ori        $a0, $a0, (0x120000A0 & 0xFFFF)
    /* F4CC8 001F3D48 0800E8DC */  ld         $t0, 0x8($a3)
    /* F4CCC 001F3D4C 8000C634 */  ori        $a2, $a2, (0x12000080 & 0xFFFF)
    /* F4CD0 001F3D50 0012023C */  lui        $v0, (0x120000D0 >> 16)
    /* F4CD4 001F3D54 0000A8FC */  sd         $t0, 0x0($a1)
    /* F4CD8 001F3D58 D0004234 */  ori        $v0, $v0, (0x120000D0 & 0xFFFF)
    /* F4CDC 001F3D5C 000068FC */  sd         $t0, 0x0($v1)
    /* F4CE0 001F3D60 1000E3DC */  ld         $v1, 0x10($a3)
    /* F4CE4 001F3D64 0000C3FC */  sd         $v1, 0x0($a2)
    /* F4CE8 001F3D68 000083FC */  sd         $v1, 0x0($a0)
    /* F4CEC 001F3D6C 000040FC */  sd         $zero, 0x0($v0)
    /* F4CF0 001F3D70 0800E003 */  jr         $ra
    /* F4CF4 001F3D74 00000000 */   nop
endlabel func_001F3D00
