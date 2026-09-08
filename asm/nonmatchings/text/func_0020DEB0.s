.align 3
nonmatching func_0020DEB0, 0x144

glabel func_0020DEB0
    /* 10EE30 0020DEB0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 10EE34 0020DEB4 1600023C */  lui        $v0, %hi(D_0016003C)
    /* 10EE38 0020DEB8 3C00428C */  lw         $v0, %lo(D_0016003C)($v0)
    /* 10EE3C 0020DEBC 2000BF7F */  sq         $ra, 0x20($sp)
    /* 10EE40 0020DEC0 1000B17F */  sq         $s1, 0x10($sp)
    /* 10EE44 0020DEC4 0F004014 */  bnez       $v0, .L0020DF04
    /* 10EE48 0020DEC8 0000B07F */   sq        $s0, 0x0($sp)
    /* 10EE4C 0020DECC 1600043C */  lui        $a0, %hi(D_00160040)
    /* 10EE50 0020DED0 4000848C */  lw         $a0, %lo(D_00160040)($a0)
    /* 10EE54 0020DED4 0010023C */  lui        $v0, (0x10000000 >> 16)
    /* 10EE58 0020DED8 000082AC */  sw         $v0, 0x0($a0)
    /* 10EE5C 0020DEDC 1600033C */  lui        $v1, %hi(D_00160040)
    /* 10EE60 0020DEE0 4000638C */  lw         $v1, %lo(D_00160040)($v1)
    /* 10EE64 0020DEE4 040060AC */  sw         $zero, 0x4($v1)
    /* 10EE68 0020DEE8 1600023C */  lui        $v0, %hi(D_00160040)
    /* 10EE6C 0020DEEC 4000428C */  lw         $v0, %lo(D_00160040)($v0)
    /* 10EE70 0020DEF0 080040AC */  sw         $zero, 0x8($v0)
    /* 10EE74 0020DEF4 1600033C */  lui        $v1, %hi(D_00160040)
    /* 10EE78 0020DEF8 4000638C */  lw         $v1, %lo(D_00160040)($v1)
    /* 10EE7C 0020DEFC 38000010 */  b          .L0020DFE0
    /* 10EE80 0020DF00 0C0060AC */   sw        $zero, 0xC($v1)
.align 2
  .L0020DF04:
    /* 10EE84 0020DF04 1600023C */  lui        $v0, %hi(D_00161000)
    /* 10EE88 0020DF08 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 10EE8C 0020DF0C 0020113C */  lui        $s1, (0x20000000 >> 16)
    /* 10EE90 0020DF10 1600033C */  lui        $v1, %hi(D_00160040)
    /* 10EE94 0020DF14 4000638C */  lw         $v1, %lo(D_00160040)($v1)
    /* 10EE98 0020DF18 2D804000 */  daddu      $s0, $v0, $zero
    /* 10EE9C 0020DF1C 10004224 */  addiu      $v0, $v0, 0x10
    /* 10EEA0 0020DF20 1600013C */  lui        $at, %hi(D_00161000)
    /* 10EEA4 0020DF24 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* 10EEA8 0020DF28 000071AC */  sw         $s1, 0x0($v1)
    /* 10EEAC 0020DF2C 1600043C */  lui        $a0, %hi(D_00160040)
    /* 10EEB0 0020DF30 4000848C */  lw         $a0, %lo(D_00160040)($a0)
    /* 10EEB4 0020DF34 1600023C */  lui        $v0, %hi(D_00161000)
    /* 10EEB8 0020DF38 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 10EEBC 0020DF3C 040082AC */  sw         $v0, 0x4($a0)
    /* 10EEC0 0020DF40 1600033C */  lui        $v1, %hi(D_00160040)
    /* 10EEC4 0020DF44 4000638C */  lw         $v1, %lo(D_00160040)($v1)
    /* 10EEC8 0020DF48 080060AC */  sw         $zero, 0x8($v1)
    /* 10EECC 0020DF4C 1600023C */  lui        $v0, %hi(D_00160040)
    /* 10EED0 0020DF50 4000428C */  lw         $v0, %lo(D_00160040)($v0)
    /* 10EED4 0020DF54 96A2080C */  jal        func_00228A58
    /* 10EED8 0020DF58 0C0040AC */   sw        $zero, 0xC($v0)
    /* 10EEDC 0020DF5C 1D00043C */  lui        $a0, %hi(D_001C8A00)
    /* 10EEE0 0020DF60 18A2080C */  jal        func_00228860
    /* 10EEE4 0020DF64 008A8424 */   addiu     $a0, $a0, %lo(D_001C8A00)
    /* 10EEE8 0020DF68 1600033C */  lui        $v1, %hi(D_00161000)
    /* 10EEEC 0020DF6C 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* 10EEF0 0020DF70 1600043C */  lui        $a0, %hi(D_0015FFC0)
    /* 10EEF4 0020DF74 C0FF8424 */  addiu      $a0, $a0, %lo(D_0015FFC0)
    /* 10EEF8 0020DF78 08000524 */  addiu      $a1, $zero, 0x8
    /* 10EEFC 0020DF7C 000071AC */  sw         $s1, 0x0($v1)
    /* 10EF00 0020DF80 1600023C */  lui        $v0, %hi(D_00160040)
    /* 10EF04 0020DF84 4000428C */  lw         $v0, %lo(D_00160040)($v0)
    /* 10EF08 0020DF88 1600063C */  lui        $a2, %hi(D_00161000)
    /* 10EF0C 0020DF8C 0010C68C */  lw         $a2, %lo(D_00161000)($a2)
    /* 10EF10 0020DF90 10004224 */  addiu      $v0, $v0, 0x10
    /* 10EF14 0020DF94 0400C2AC */  sw         $v0, 0x4($a2)
    /* 10EF18 0020DF98 1600033C */  lui        $v1, %hi(D_00161000)
    /* 10EF1C 0020DF9C 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* 10EF20 0020DFA0 080060AC */  sw         $zero, 0x8($v1)
    /* 10EF24 0020DFA4 1600063C */  lui        $a2, %hi(D_00161000)
    /* 10EF28 0020DFA8 0010C68C */  lw         $a2, %lo(D_00161000)($a2)
    /* 10EF2C 0020DFAC 0C00C0AC */  sw         $zero, 0xC($a2)
    /* 10EF30 0020DFB0 1600023C */  lui        $v0, %hi(D_00161000)
    /* 10EF34 0020DFB4 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 10EF38 0020DFB8 10004224 */  addiu      $v0, $v0, 0x10
    /* 10EF3C 0020DFBC 1600013C */  lui        $at, %hi(D_00161000)
    /* 10EF40 0020DFC0 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* 10EF44 0020DFC4 000011AE */  sw         $s1, 0x0($s0)
    /* 10EF48 0020DFC8 1600023C */  lui        $v0, %hi(D_00161000)
    /* 10EF4C 0020DFCC 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 10EF50 0020DFD0 0C0000AE */  sw         $zero, 0xC($s0)
    /* 10EF54 0020DFD4 080000AE */  sw         $zero, 0x8($s0)
    /* 10EF58 0020DFD8 56C9070C */  jal        func_001F2558
    /* 10EF5C 0020DFDC 040002AE */   sw        $v0, 0x4($s0)
.align 2
  .L0020DFE0:
    /* 10EF60 0020DFE0 2000BF7B */  lq         $ra, 0x20($sp)
    /* 10EF64 0020DFE4 1000B17B */  lq         $s1, 0x10($sp)
    /* 10EF68 0020DFE8 0000B07B */  lq         $s0, 0x0($sp)
    /* 10EF6C 0020DFEC 0800E003 */  jr         $ra
    /* 10EF70 0020DFF0 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0020DEB0
    /* 10EF74 0020DFF4 00000000 */  nop
