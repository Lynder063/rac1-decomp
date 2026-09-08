.align 3
nonmatching func_0023C9C0, 0x138

glabel func_0023C9C0
    /* 13D940 0023C9C0 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 13D944 0023C9C4 0500023C */  lui        $v0, (0x50008 >> 16)
    /* 13D948 0023C9C8 3000B27F */  sq         $s2, 0x30($sp)
    /* 13D94C 0023C9CC 0800A737 */  ori        $a3, $sp, 0x8
    /* 13D950 0023C9D0 6000B57F */  sq         $s5, 0x60($sp)
    /* 13D954 0023C9D4 2D90C000 */  daddu      $s2, $a2, $zero
    /* 13D958 0023C9D8 5000B47F */  sq         $s4, 0x50($sp)
    /* 13D95C 0023C9DC 21104202 */  addu       $v0, $s2, $v0
    /* 13D960 0023C9E0 7000BF7F */  sq         $ra, 0x70($sp)
    /* 13D964 0023C9E4 2DA8A000 */  daddu      $s5, $a1, $zero
    /* 13D968 0023C9E8 4000B37F */  sq         $s3, 0x40($sp)
    /* 13D96C 0023C9EC 0D00143C */  lui        $s4, (0xD9048 >> 16)
    /* 13D970 0023C9F0 2000B17F */  sq         $s1, 0x20($sp)
    /* 13D974 0023C9F4 48909436 */  ori        $s4, $s4, (0xD9048 & 0xFFFF)
    /* 13D978 0023C9F8 1000B07F */  sq         $s0, 0x10($sp)
    /* 13D97C 0023C9FC 0400A637 */  ori        $a2, $sp, 0x4
    /* 13D980 0023CA00 0800508C */  lw         $s0, (0x50008 & 0xFFFF)($v0)
    /* 13D984 0023CA04 2D28A003 */  daddu      $a1, $sp, $zero
    /* 13D988 0023CA08 0800B38E */  lw         $s3, 0x8($s5)
    /* 13D98C 0023CA0C 0C00A837 */  ori        $t0, $sp, 0xC
    /* 13D990 0023CA10 0C00B18E */  lw         $s1, 0xC($s5)
    /* 13D994 0023CA14 21805002 */  addu       $s0, $s2, $s0
    /* 13D998 0023CA18 23801302 */  subu       $s0, $s0, $s3
    /* 13D99C 0023CA1C 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13D9A0 0023CA20 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13D9A4 0023CA24 2A103002 */  slt        $v0, $s1, $s0
    /* 13D9A8 0023CA28 0B802202 */  movn       $s0, $s1, $v0
    /* 13D9AC 0023CA2C 21209400 */  addu       $a0, $a0, $s4
    /* 13D9B0 0023CA30 F0F7080C */  jal        func_0023DFC0
    /* 13D9B4 0023CA34 23883002 */   subu      $s1, $s1, $s0
    /* 13D9B8 0023CA38 0000A48F */  lw         $a0, 0x0($sp)
    /* 13D9BC 0023CA3C FF0F023C */  lui        $v0, (0xFFFFFFF >> 16)
    /* 13D9C0 0023CA40 0800A68F */  lw         $a2, 0x8($sp)
    /* 13D9C4 0023CA44 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFF & 0xFFFF)
    /* 13D9C8 0023CA48 0020033C */  lui        $v1, (0x20000000 >> 16)
    /* 13D9CC 0023CA4C 24208200 */  and        $a0, $a0, $v0
    /* 13D9D0 0023CA50 2430C200 */  and        $a2, $a2, $v0
    /* 13D9D4 0023CA54 0400A58F */  lw         $a1, 0x4($sp)
    /* 13D9D8 0023CA58 0C00A78F */  lw         $a3, 0xC($sp)
    /* 13D9DC 0023CA5C 2D480002 */  daddu      $t1, $s0, $zero
    /* 13D9E0 0023CA60 2530C300 */  or         $a2, $a2, $v1
    /* 13D9E4 0023CA64 25208300 */  or         $a0, $a0, $v1
    /* 13D9E8 0023CA68 2D406002 */  daddu      $t0, $s3, $zero
    /* 13D9EC 0023CA6C 2D504002 */  daddu      $t2, $s2, $zero
    /* 13D9F0 0023CA70 F8F2080C */  jal        func_0023CBE0
    /* 13D9F4 0023CA74 2D582002 */   daddu     $t3, $s1, $zero
    /* 13D9F8 0023CA78 2D804000 */  daddu      $s0, $v0, $zero
    /* 13D9FC 0023CA7C 0D00001A */  blez       $s0, .L0023CAB4
    /* 13DA00 0023CA80 2D400002 */   daddu     $t0, $s0, $zero
    /* 13DA04 0023CA84 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13DA08 0023CA88 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13DA0C 0023CA8C 1800A6DE */  ld         $a2, 0x18($s5)
    /* 13DA10 0023CA90 1000A5DE */  ld         $a1, 0x10($s5)
    /* 13DA14 0023CA94 21209400 */  addu       $a0, $a0, $s4
    /* 13DA18 0023CA98 1AF8080C */  jal        func_0023E068
    /* 13DA1C 0023CA9C 0000A78F */   lw        $a3, 0x0($sp)
    /* 13DA20 0023CAA0 06004014 */  bnez       $v0, .L0023CABC
    /* 13DA24 0023CAA4 0CA6828F */   lw        $v0, -0x59F4($gp)
    /* 13DA28 0023CAA8 1F00043C */  lui        $a0, %hi(D_001E8E38)
    /* 13DA2C 0023CAAC D2EF080C */  jal        func_0023BF48
    /* 13DA30 0023CAB0 388E8424 */   addiu     $a0, $a0, %lo(D_001E8E38)
.align 2
  .L0023CAB4:
    /* 13DA34 0023CAB4 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13DA38 0023CAB8 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
.align 2
  .L0023CABC:
    /* 13DA3C 0023CABC 0D00043C */  lui        $a0, (0xD9048 >> 16)
    /* 13DA40 0023CAC0 48908434 */  ori        $a0, $a0, (0xD9048 & 0xFFFF)
    /* 13DA44 0023CAC4 2D280002 */  daddu      $a1, $s0, $zero
    /* 13DA48 0023CAC8 F8F7080C */  jal        func_0023DFE0
    /* 13DA4C 0023CACC 21204400 */   addu      $a0, $v0, $a0
    /* 13DA50 0023CAD0 2A101000 */  slt        $v0, $zero, $s0
    /* 13DA54 0023CAD4 7000BF7B */  lq         $ra, 0x70($sp)
    /* 13DA58 0023CAD8 6000B57B */  lq         $s5, 0x60($sp)
    /* 13DA5C 0023CADC 5000B47B */  lq         $s4, 0x50($sp)
    /* 13DA60 0023CAE0 4000B37B */  lq         $s3, 0x40($sp)
    /* 13DA64 0023CAE4 3000B27B */  lq         $s2, 0x30($sp)
    /* 13DA68 0023CAE8 2000B17B */  lq         $s1, 0x20($sp)
    /* 13DA6C 0023CAEC 1000B07B */  lq         $s0, 0x10($sp)
    /* 13DA70 0023CAF0 0800E003 */  jr         $ra
    /* 13DA74 0023CAF4 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_0023C9C0
