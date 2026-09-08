.align 3
nonmatching func_00236BE0, 0xC8

glabel func_00236BE0
    /* 137B60 00236BE0 1600023C */  lui        $v0, %hi(D_00161000)
    /* 137B64 00236BE4 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 137B68 00236BE8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 137B6C 00236BEC 1600033C */  lui        $v1, %hi(D_0015EF78)
    /* 137B70 00236BF0 78EF638C */  lw         $v1, %lo(D_0015EF78)($v1)
    /* 137B74 00236BF4 1600043C */  lui        $a0, %hi(D_00161030)
    /* 137B78 00236BF8 1600013C */  lui        $at, %hi(D_00161068)
    /* 137B7C 00236BFC 681022AC */  sw         $v0, %lo(D_00161068)($at)
    /* 137B80 00236C00 30108424 */  addiu      $a0, $a0, %lo(D_00161030)
    /* 137B84 00236C04 10004224 */  addiu      $v0, $v0, 0x10
    /* 137B88 00236C08 1600013C */  lui        $at, %hi(D_0015EF74)
    /* 137B8C 00236C0C 74EF23AC */  sw         $v1, %lo(D_0015EF74)($at)
    /* 137B90 00236C10 1600013C */  lui        $at, %hi(D_00161000)
    /* 137B94 00236C14 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* 137B98 00236C18 01000524 */  addiu      $a1, $zero, 0x1
    /* 137B9C 00236C1C 1000BF7F */  sq         $ra, 0x10($sp)
    /* 137BA0 00236C20 58C9070C */  jal        func_001F2560
    /* 137BA4 00236C24 0000B07F */   sq        $s0, 0x0($sp)
    /* 137BA8 00236C28 1900023C */  lui        $v0, %hi(D_0018A3C8)
    /* 137BAC 00236C2C C8A3438C */  lw         $v1, %lo(D_0018A3C8)($v0)
    /* 137BB0 00236C30 0A006010 */  beqz       $v1, .L00236C5C
    /* 137BB4 00236C34 1600103C */   lui       $s0, %hi(D_00161040)
    /* 137BB8 00236C38 6063040C */  jal        func_00118D80
    /* 137BBC 00236C3C 2D200000 */   daddu     $a0, $zero, $zero
    /* 137BC0 00236C40 C0DB080C */  jal        func_00236F00
    /* 137BC4 00236C44 1600103C */   lui       $s0, %hi(D_00161040)
    /* 137BC8 00236C48 1E00043C */  lui        $a0, %hi(D_001E3500)
    /* 137BCC 00236C4C 00360524 */  addiu      $a1, $zero, 0x3600
    /* 137BD0 00236C50 00358424 */  addiu      $a0, $a0, %lo(D_001E3500)
    /* 137BD4 00236C54 BCE6070C */  jal        func_001F9AF0
    /* 137BD8 00236C58 40000624 */   addiu     $a2, $zero, 0x40
.align 2
  .L00236C5C:
    /* 137BDC 00236C5C 05000524 */  addiu      $a1, $zero, 0x5
    /* 137BE0 00236C60 40101026 */  addiu      $s0, $s0, %lo(D_00161040)
    /* 137BE4 00236C64 58C9070C */  jal        func_001F2560
    /* 137BE8 00236C68 2D200002 */   daddu     $a0, $s0, $zero
    /* 137BEC 00236C6C 56DA080C */  jal        func_00236958
    /* 137BF0 00236C70 00000000 */   nop
    /* 137BF4 00236C74 1600043C */  lui        $a0, %hi(D_00161000)
    /* 137BF8 00236C78 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* 137BFC 00236C7C 1E00053C */  lui        $a1, %hi(D_001DF3B0)
    /* 137C00 00236C80 B0F3A524 */  addiu      $a1, $a1, %lo(D_001DF3B0)
    /* 137C04 00236C84 A6E6070C */  jal        func_001F9A98
    /* 137C08 00236C88 20000624 */   addiu     $a2, $zero, 0x20
    /* 137C0C 00236C8C 2D200002 */  daddu      $a0, $s0, $zero
    /* 137C10 00236C90 56C9070C */  jal        func_001F2558
    /* 137C14 00236C94 05000524 */   addiu     $a1, $zero, 0x5
    /* 137C18 00236C98 1000BF7B */  lq         $ra, 0x10($sp)
    /* 137C1C 00236C9C 0000B07B */  lq         $s0, 0x0($sp)
    /* 137C20 00236CA0 0800E003 */  jr         $ra
    /* 137C24 00236CA4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00236BE0
