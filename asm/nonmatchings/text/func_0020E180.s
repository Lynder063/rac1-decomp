.align 3
nonmatching func_0020E180, 0x80

glabel func_0020E180
    /* 10F100 0020E180 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 10F104 0020E184 1000B17F */  sq         $s1, 0x10($sp)
    /* 10F108 0020E188 0000B07F */  sq         $s0, 0x0($sp)
    /* 10F10C 0020E18C 2D888000 */  daddu      $s1, $a0, $zero
    /* 10F110 0020E190 2D80A000 */  daddu      $s0, $a1, $zero
    /* 10F114 0020E194 2000BF7F */  sq         $ra, 0x20($sp)
    /* 10F118 0020E198 0500053C */  lui        $a1, (0x5360B >> 16)
    /* 10F11C 0020E19C 0B36A534 */  ori        $a1, $a1, (0x5360B & 0xFFFF)
    /* 10F120 0020E1A0 26D3080C */  jal        func_00234C98
    /* 10F124 0020E1A4 47000424 */   addiu     $a0, $zero, 0x47
    /* 10F128 0020E1A8 6063040C */  jal        func_00118D80
    /* 10F12C 0020E1AC 2D200000 */   daddu     $a0, $zero, $zero
    /* 10F130 0020E1B0 2638080C */  jal        func_0020E098
    /* 10F134 0020E1B4 00000000 */   nop
    /* 10F138 0020E1B8 1600053C */  lui        $a1, %hi(D_00160014)
    /* 10F13C 0020E1BC 1400A58C */  lw         $a1, %lo(D_00160014)($a1)
    /* 10F140 0020E1C0 2D300002 */  daddu      $a2, $s0, $zero
    /* 10F144 0020E1C4 2D202002 */  daddu      $a0, $s1, $zero
    /* 10F148 0020E1C8 9649080C */  jal        func_00212658
    /* 10F14C 0020E1CC 2D380000 */   daddu     $a3, $zero, $zero
    /* 10F150 0020E1D0 1A38080C */  jal        func_0020E068
    /* 10F154 0020E1D4 149382AF */   sw        $v0, -0x6CEC($gp)
    /* 10F158 0020E1D8 1600023C */  lui        $v0, %hi(D_00160014)
    /* 10F15C 0020E1DC 1400428C */  lw         $v0, %lo(D_00160014)($v0)
    /* 10F160 0020E1E0 2000BF7B */  lq         $ra, 0x20($sp)
    /* 10F164 0020E1E4 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 10F168 0020E1E8 1000B17B */  lq         $s1, 0x10($sp)
    /* 10F16C 0020E1EC 0000B07B */  lq         $s0, 0x0($sp)
    /* 10F170 0020E1F0 1600013C */  lui        $at, %hi(D_00160014)
    /* 10F174 0020E1F4 140022AC */  sw         $v0, %lo(D_00160014)($at)
    /* 10F178 0020E1F8 0800E003 */  jr         $ra
    /* 10F17C 0020E1FC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0020E180
