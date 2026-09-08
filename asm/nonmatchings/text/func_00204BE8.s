.align 3
nonmatching func_00204BE8, 0x78

glabel func_00204BE8
    /* 105B68 00204BE8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 105B6C 00204BEC 1300073C */  lui        $a3, %hi(D_00137C80)
    /* 105B70 00204BF0 0000BF7F */  sq         $ra, 0x0($sp)
    /* 105B74 00204BF4 807CE724 */  addiu      $a3, $a3, %lo(D_00137C80)
    /* 105B78 00204BF8 FFFF043C */  lui        $a0, (0xFFFFF000 >> 16)
    /* 105B7C 00204BFC FF01033C */  lui        $v1, %hi(D_1FF7FF0)
    /* 105B80 00204C00 FC04E28C */  lw         $v0, 0x4FC($a3)
    /* 105B84 00204C04 00F08434 */  ori        $a0, $a0, (0xFFFFF000 & 0xFFFF)
    /* 105B88 00204C08 F07F6324 */  addiu      $v1, $v1, %lo(D_1FF7FF0)
    /* 105B8C 00204C0C F0FF0524 */  addiu      $a1, $zero, -0x10
    /* 105B90 00204C10 C0120200 */  sll        $v0, $v0, 11
    /* 105B94 00204C14 60000624 */  addiu      $a2, $zero, 0x60
    /* 105B98 00204C18 57104224 */  addiu      $v0, $v0, 0x1057
    /* 105B9C 00204C1C 24104400 */  and        $v0, $v0, $a0
    /* 105BA0 00204C20 23186200 */  subu       $v1, $v1, $v0
    /* 105BA4 00204C24 24186500 */  and        $v1, $v1, $a1
    /* 105BA8 00204C28 1600013C */  lui        $at, %hi(D_0015EF4C)
    /* 105BAC 00204C2C 4CEF23AC */  sw         $v1, %lo(D_0015EF4C)($at)
    /* 105BB0 00204C30 000066AC */  sw         $a2, 0x0($v1)
    /* 105BB4 00204C34 1600023C */  lui        $v0, %hi(D_0015EF4C)
    /* 105BB8 00204C38 4CEF428C */  lw         $v0, %lo(D_0015EF4C)($v0)
    /* 105BBC 00204C3C FC04E68C */  lw         $a2, 0x4FC($a3)
    /* 105BC0 00204C40 0000448C */  lw         $a0, 0x0($v0)
    /* 105BC4 00204C44 F804E58C */  lw         $a1, 0x4F8($a3)
    /* 105BC8 00204C48 725D080C */  jal        func_002175C8
    /* 105BCC 00204C4C 21204400 */   addu      $a0, $v0, $a0
    /* 105BD0 00204C50 0000BF7B */  lq         $ra, 0x0($sp)
    /* 105BD4 00204C54 01000224 */  addiu      $v0, $zero, 0x1
    /* 105BD8 00204C58 0800E003 */  jr         $ra
    /* 105BDC 00204C5C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00204BE8
