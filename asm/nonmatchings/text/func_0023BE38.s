.align 3
nonmatching func_0023BE38, 0x10C

glabel func_0023BE38
    /* 13CDB8 0023BE38 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13CDBC 0023BE3C 2D200000 */  daddu      $a0, $zero, $zero
    /* 13CDC0 0023BE40 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13CDC4 0023BE44 CC83040C */  jal        func_00120F30
    /* 13CDC8 0023BE48 0000B07F */   sq        $s0, 0x0($sp)
    /* 13CDCC 0023BE4C 0D00103C */  lui        $s0, (0xD8000 >> 16)
    /* 13CDD0 0023BE50 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13CDD4 0023BE54 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13CDD8 0023BE58 4AF3080C */  jal        func_0023CD28
    /* 13CDDC 0023BE5C 00801036 */   ori       $s0, $s0, (0xD8000 & 0xFFFF)
    /* 13CDE0 0023BE60 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13CDE4 0023BE64 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
    /* 13CDE8 0023BE68 0D00043C */  lui        $a0, (0xD9168 >> 16)
    /* 13CDEC 0023BE6C 68918434 */  ori        $a0, $a0, (0xD9168 & 0xFFFF)
    /* 13CDF0 0023BE70 6CF9080C */  jal        func_0023E5B0
    /* 13CDF4 0023BE74 21204400 */   addu      $a0, $v0, $a0
    /* 13CDF8 0023BE78 E062040C */  jal        func_00118B80
    /* 13CDFC 0023BE7C 10A6848F */   lw        $a0, -0x59F0($gp)
    /* 13CE00 0023BE80 D862040C */  jal        func_00118B60
    /* 13CE04 0023BE84 10A6848F */   lw        $a0, -0x59F0($gp)
    /* 13CE08 0023BE88 FE64040C */  jal        func_001193F8
    /* 13CE0C 0023BE8C 02000424 */   addiu     $a0, $zero, 0x2
    /* 13CE10 0023BE90 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13CE14 0023BE94 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13CE18 0023BE98 02000424 */  addiu      $a0, $zero, 0x2
    /* 13CE1C 0023BE9C 21187000 */  addu       $v1, $v1, $s0
    /* 13CE20 0023BEA0 B462040C */  jal        func_00118AD0
    /* 13CE24 0023BEA4 F810658C */   lw        $a1, 0x10F8($v1)
    /* 13CE28 0023BEA8 CA64040C */  jal        func_00119328
    /* 13CE2C 0023BEAC 02000424 */   addiu     $a0, $zero, 0x2
    /* 13CE30 0023BEB0 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13CE34 0023BEB4 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13CE38 0023BEB8 02000424 */  addiu      $a0, $zero, 0x2
    /* 13CE3C 0023BEBC 21187000 */  addu       $v1, $v1, $s0
    /* 13CE40 0023BEC0 A862040C */  jal        func_00118AA0
    /* 13CE44 0023BEC4 FC10658C */   lw        $a1, 0x10FC($v1)
    /* 13CE48 0023BEC8 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13CE4C 0023BECC 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13CE50 0023BED0 0D00043C */  lui        $a0, (0xD9048 >> 16)
    /* 13CE54 0023BED4 48908434 */  ori        $a0, $a0, (0xD9048 & 0xFFFF)
    /* 13CE58 0023BED8 02F8080C */  jal        func_0023E008
    /* 13CE5C 0023BEDC 21206400 */   addu      $a0, $v1, $a0
    /* 13CE60 0023BEE0 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13CE64 0023BEE4 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13CE68 0023BEE8 0D00043C */  lui        $a0, (0xD9100 >> 16)
    /* 13CE6C 0023BEEC 00918434 */  ori        $a0, $a0, (0xD9100 & 0xFFFF)
    /* 13CE70 0023BEF0 18F0080C */  jal        func_0023C060
    /* 13CE74 0023BEF4 21206400 */   addu      $a0, $v1, $a0
    /* 13CE78 0023BEF8 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13CE7C 0023BEFC 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13CE80 0023BF00 0D00043C */  lui        $a0, (0xD9040 >> 16)
    /* 13CE84 0023BF04 40908434 */  ori        $a0, $a0, (0xD9040 & 0xFFFF)
    /* 13CE88 0023BF08 8AF3080C */  jal        func_0023CE28
    /* 13CE8C 0023BF0C 21206400 */   addu      $a0, $v1, $a0
    /* 13CE90 0023BF10 CC83040C */  jal        func_00120F30
    /* 13CE94 0023BF14 2D200000 */   daddu     $a0, $zero, $zero
    /* 13CE98 0023BF18 0010043C */  lui        $a0, (0x1000E000 >> 16)
    /* 13CE9C 0023BF1C FFFF033C */  lui        $v1, (0xFFFFFFFD >> 16)
    /* 13CEA0 0023BF20 00E08434 */  ori        $a0, $a0, (0x1000E000 & 0xFFFF)
    /* 13CEA4 0023BF24 FDFF6334 */  ori        $v1, $v1, (0xFFFFFFFD & 0xFFFF)
    /* 13CEA8 0023BF28 0000828C */  lw         $v0, 0x0($a0)
    /* 13CEAC 0023BF2C 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13CEB0 0023BF30 24104300 */  and        $v0, $v0, $v1
    /* 13CEB4 0023BF34 0000B07B */  lq         $s0, 0x0($sp)
    /* 13CEB8 0023BF38 000082AC */  sw         $v0, 0x0($a0)
    /* 13CEBC 0023BF3C 0800E003 */  jr         $ra
    /* 13CEC0 0023BF40 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0023BE38
    /* 13CEC4 0023BF44 00000000 */  nop
