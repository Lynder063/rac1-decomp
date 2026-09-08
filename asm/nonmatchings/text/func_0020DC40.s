.align 3
nonmatching func_0020DC40, 0x108

glabel func_0020DC40
    /* 10EBC0 0020DC40 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 10EBC4 0020DC44 1600053C */  lui        $a1, %hi(D_0016000C)
    /* 10EBC8 0020DC48 0C00A58C */  lw         $a1, %lo(D_0016000C)($a1)
    /* 10EBCC 0020DC4C 0000B07F */  sq         $s0, 0x0($sp)
    /* 10EBD0 0020DC50 0020063C */  lui        $a2, (0x20000000 >> 16)
    /* 10EBD4 0020DC54 1600103C */  lui        $s0, %hi(D_00161000)
    /* 10EBD8 0020DC58 0010108E */  lw         $s0, %lo(D_00161000)($s0)
    /* 10EBDC 0020DC5C 1900023C */  lui        $v0, %hi(D_0018A3B0)
    /* 10EBE0 0020DC60 1000BF7F */  sq         $ra, 0x10($sp)
    /* 10EBE4 0020DC64 B0A34724 */  addiu      $a3, $v0, %lo(D_0018A3B0)
    /* 10EBE8 0020DC68 10000326 */  addiu      $v1, $s0, 0x10
    /* 10EBEC 0020DC6C 1600013C */  lui        $at, %hi(D_00161000)
    /* 10EBF0 0020DC70 001023AC */  sw         $v1, %lo(D_00161000)($at)
    /* 10EBF4 0020DC74 0000A6AC */  sw         $a2, 0x0($a1)
    /* 10EBF8 0020DC78 1600023C */  lui        $v0, %hi(D_00161000)
    /* 10EBFC 0020DC7C 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 10EC00 0020DC80 1600043C */  lui        $a0, %hi(D_0016000C)
    /* 10EC04 0020DC84 0C00848C */  lw         $a0, %lo(D_0016000C)($a0)
    /* 10EC08 0020DC88 040082AC */  sw         $v0, 0x4($a0)
    /* 10EC0C 0020DC8C 1600033C */  lui        $v1, %hi(D_0016000C)
    /* 10EC10 0020DC90 0C00638C */  lw         $v1, %lo(D_0016000C)($v1)
    /* 10EC14 0020DC94 080060AC */  sw         $zero, 0x8($v1)
    /* 10EC18 0020DC98 1600023C */  lui        $v0, %hi(D_0016000C)
    /* 10EC1C 0020DC9C 0C00428C */  lw         $v0, %lo(D_0016000C)($v0)
    /* 10EC20 0020DCA0 0C0040AC */  sw         $zero, 0xC($v0)
    /* 10EC24 0020DCA4 2800E38C */  lw         $v1, 0x28($a3)
    /* 10EC28 0020DCA8 0A006010 */  beqz       $v1, .L0020DCD4
    /* 10EC2C 0020DCAC 00A3838F */   lw        $v1, -0x5D00($gp)
    /* 10EC30 0020DCB0 2400E28C */  lw         $v0, 0x24($a3)
    /* 10EC34 0020DCB4 08004010 */  beqz       $v0, .L0020DCD8
    /* 10EC38 0020DCB8 0020053C */   lui       $a1, (0x20000000 >> 16)
    /* 10EC3C 0020DCBC 9648080C */  jal        func_00212258
    /* 10EC40 0020DCC0 7482848F */   lw        $a0, -0x7D8C($gp)
    /* 10EC44 0020DCC4 A0D3080C */  jal        func_00234E80
    /* 10EC48 0020DCC8 00000000 */   nop
    /* 10EC4C 0020DCCC 1600033C */  lui        $v1, %hi(D_00161000)
    /* 10EC50 0020DCD0 0010638C */  lw         $v1, %lo(D_00161000)($v1)
.align 2
  .L0020DCD4:
    /* 10EC54 0020DCD4 0020053C */  lui        $a1, (0x20000000 >> 16)
.align 2
  .L0020DCD8:
    /* 10EC58 0020DCD8 1000BF7B */  lq         $ra, 0x10($sp)
    /* 10EC5C 0020DCDC 000065AC */  sw         $a1, 0x0($v1)
    /* 10EC60 0020DCE0 1600023C */  lui        $v0, %hi(D_0016000C)
    /* 10EC64 0020DCE4 0C00428C */  lw         $v0, %lo(D_0016000C)($v0)
    /* 10EC68 0020DCE8 1600043C */  lui        $a0, %hi(D_00161000)
    /* 10EC6C 0020DCEC 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* 10EC70 0020DCF0 10004224 */  addiu      $v0, $v0, 0x10
    /* 10EC74 0020DCF4 040082AC */  sw         $v0, 0x4($a0)
    /* 10EC78 0020DCF8 1600033C */  lui        $v1, %hi(D_00161000)
    /* 10EC7C 0020DCFC 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* 10EC80 0020DD00 080060AC */  sw         $zero, 0x8($v1)
    /* 10EC84 0020DD04 1600043C */  lui        $a0, %hi(D_00161000)
    /* 10EC88 0020DD08 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* 10EC8C 0020DD0C 0C0080AC */  sw         $zero, 0xC($a0)
    /* 10EC90 0020DD10 1600023C */  lui        $v0, %hi(D_00161000)
    /* 10EC94 0020DD14 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 10EC98 0020DD18 10004224 */  addiu      $v0, $v0, 0x10
    /* 10EC9C 0020DD1C 1600013C */  lui        $at, %hi(D_00161000)
    /* 10ECA0 0020DD20 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* 10ECA4 0020DD24 000005AE */  sw         $a1, 0x0($s0)
    /* 10ECA8 0020DD28 1600023C */  lui        $v0, %hi(D_00161000)
    /* 10ECAC 0020DD2C 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 10ECB0 0020DD30 0C0000AE */  sw         $zero, 0xC($s0)
    /* 10ECB4 0020DD34 040002AE */  sw         $v0, 0x4($s0)
    /* 10ECB8 0020DD38 080000AE */  sw         $zero, 0x8($s0)
    /* 10ECBC 0020DD3C 0000B07B */  lq         $s0, 0x0($sp)
    /* 10ECC0 0020DD40 0800E003 */  jr         $ra
    /* 10ECC4 0020DD44 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0020DC40
