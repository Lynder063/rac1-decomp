.align 3
nonmatching func_0020E0C8, 0xB8

glabel func_0020E0C8
    /* 10F048 0020E0C8 1100023C */  lui        $v0, %hi(D_0010FA90)
    /* 10F04C 0020E0CC F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 10F050 0020E0D0 90FA4594 */  lhu        $a1, %lo(D_0010FA90)($v0)
    /* 10F054 0020E0D4 1100043C */  lui        $a0, %hi(D_0010FAA0)
    /* 10F058 0020E0D8 0000BF7F */  sq         $ra, 0x0($sp)
    /* 10F05C 0020E0DC D2D2080C */  jal        func_00234B48
    /* 10F060 0020E0E0 A0FA8424 */   addiu     $a0, $a0, %lo(D_0010FAA0)
    /* 10F064 0020E0E4 06000224 */  addiu      $v0, $zero, 0x6
    /* 10F068 0020E0E8 1000043C */  lui        $a0, %hi(D_00100080)
    /* 10F06C 0020E0EC 1600013C */  lui        $at, %hi(D_0015F704)
    /* 10F070 0020E0F0 04F722AC */  sw         $v0, %lo(D_0015F704)($at)
    /* 10F074 0020E0F4 FCD1080C */  jal        func_002347F0
    /* 10F078 0020E0F8 80008424 */   addiu     $a0, $a0, %lo(D_00100080)
    /* 10F07C 0020E0FC 0500053C */  lui        $a1, (0x5360B >> 16)
    /* 10F080 0020E100 0B36A534 */  ori        $a1, $a1, (0x5360B & 0xFFFF)
    /* 10F084 0020E104 26D3080C */  jal        func_00234C98
    /* 10F088 0020E108 47000424 */   addiu     $a0, $zero, 0x47
    /* 10F08C 0020E10C 1600023C */  lui        $v0, %hi(D_00161000)
    /* 10F090 0020E110 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 10F094 0020E114 1600043C */  lui        $a0, %hi(D_0015FFD0)
    /* 10F098 0020E118 1600033C */  lui        $v1, %hi(D_0015EF78)
    /* 10F09C 0020E11C 78EF638C */  lw         $v1, %lo(D_0015EF78)($v1)
    /* 10F0A0 0020E120 D0FF8424 */  addiu      $a0, $a0, %lo(D_0015FFD0)
    /* 10F0A4 0020E124 1600013C */  lui        $at, %hi(D_0016000C)
    /* 10F0A8 0020E128 0C0022AC */  sw         $v0, %lo(D_0016000C)($at)
    /* 10F0AC 0020E12C 01000524 */  addiu      $a1, $zero, 0x1
    /* 10F0B0 0020E130 10004224 */  addiu      $v0, $v0, 0x10
    /* 10F0B4 0020E134 1600013C */  lui        $at, %hi(D_0015EF74)
    /* 10F0B8 0020E138 74EF23AC */  sw         $v1, %lo(D_0015EF74)($at)
    /* 10F0BC 0020E13C 58C9070C */  jal        func_001F2560
    /* 10F0C0 0020E140 00A382AF */   sw        $v0, -0x5D00($gp)
    /* 10F0C4 0020E144 1600023C */  lui        $v0, %hi(D_0015F71C)
    /* 10F0C8 0020E148 1CF7428C */  lw         $v0, %lo(D_0015F71C)($v0)
    /* 10F0CC 0020E14C FFFF033C */  lui        $v1, (0xFFFF0000 >> 16)
    /* 10F0D0 0020E150 1600043C */  lui        $a0, %hi(D_0015F718)
    /* 10F0D4 0020E154 18F7848C */  lw         $a0, %lo(D_0015F718)($a0)
    /* 10F0D8 0020E158 21104300 */  addu       $v0, $v0, $v1
    /* 10F0DC 0020E15C 0000BF7B */  lq         $ra, 0x0($sp)
    /* 10F0E0 0020E160 1600013C */  lui        $at, %hi(D_00160040)
    /* 10F0E4 0020E164 400020AC */  sw         $zero, %lo(D_00160040)($at)
    /* 10F0E8 0020E168 1600013C */  lui        $at, %hi(D_00161008)
    /* 10F0EC 0020E16C 081022AC */  sw         $v0, %lo(D_00161008)($at)
    /* 10F0F0 0020E170 1600013C */  lui        $at, %hi(D_00160014)
    /* 10F0F4 0020E174 140024AC */  sw         $a0, %lo(D_00160014)($at)
    /* 10F0F8 0020E178 0800E003 */  jr         $ra
    /* 10F0FC 0020E17C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0020E0C8
