.align 3
nonmatching func_001FBAB8, 0x1C0

glabel func_001FBAB8
    /* FCA38 001FBAB8 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* FCA3C 001FBABC 3000B37F */  sq         $s3, 0x30($sp)
    /* FCA40 001FBAC0 6000B67F */  sq         $s6, 0x60($sp)
    /* FCA44 001FBAC4 2D988000 */  daddu      $s3, $a0, $zero
    /* FCA48 001FBAC8 5000B57F */  sq         $s5, 0x50($sp)
    /* FCA4C 001FBACC 2DB04001 */  daddu      $s6, $t2, $zero
    /* FCA50 001FBAD0 4000B47F */  sq         $s4, 0x40($sp)
    /* FCA54 001FBAD4 2DA80001 */  daddu      $s5, $t0, $zero
    /* FCA58 001FBAD8 2000B27F */  sq         $s2, 0x20($sp)
    /* FCA5C 001FBADC 2DA02001 */  daddu      $s4, $t1, $zero
    /* FCA60 001FBAE0 1000B17F */  sq         $s1, 0x10($sp)
    /* FCA64 001FBAE4 2D90C000 */  daddu      $s2, $a2, $zero
    /* FCA68 001FBAE8 0000B07F */  sq         $s0, 0x0($sp)
    /* FCA6C 001FBAEC 2D88E000 */  daddu      $s1, $a3, $zero
    /* FCA70 001FBAF0 7000BF7F */  sq         $ra, 0x70($sp)
    /* FCA74 001FBAF4 2D80A000 */  daddu      $s0, $a1, $zero
    /* FCA78 001FBAF8 14D3080C */  jal        func_00234C50
    /* FCA7C 001FBAFC 0013043C */   lui       $a0, (0x13000000 >> 16)
    /* FCA80 001FBB00 42000424 */  addiu      $a0, $zero, 0x42
    /* FCA84 001FBB04 26D3080C */  jal        func_00234C98
    /* FCA88 001FBB08 64000524 */   addiu     $a1, $zero, 0x64
    /* FCA8C 001FBB0C 1600033C */  lui        $v1, %hi(D_00161000)
    /* FCA90 001FBB10 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FCA94 001FBB14 0010023C */  lui        $v0, (0x10000006 >> 16)
    /* FCA98 001FBB18 06004234 */  ori        $v0, $v0, (0x10000006 & 0xFFFF)
    /* FCA9C 001FBB1C 00811000 */  sll        $s0, $s0, 4
    /* FCAA0 001FBB20 000062AC */  sw         $v0, 0x0($v1)
    /* FCAA4 001FBB24 00891100 */  sll        $s1, $s1, 4
    /* FCAA8 001FBB28 00800234 */  ori        $v0, $zero, 0x8000
    /* FCAAC 001FBB2C 00991300 */  sll        $s3, $s3, 4
    /* FCAB0 001FBB30 1600033C */  lui        $v1, %hi(D_00161000)
    /* FCAB4 001FBB34 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FCAB8 001FBB38 00911200 */  sll        $s2, $s2, 4
    /* FCABC 001FBB3C 21882202 */  addu       $s1, $s1, $v0
    /* FCAC0 001FBB40 21800202 */  addu       $s0, $s0, $v0
    /* FCAC4 001FBB44 040060AC */  sw         $zero, 0x4($v1)
    /* FCAC8 001FBB48 21986202 */  addu       $s3, $s3, $v0
    /* FCACC 001FBB4C 21904202 */  addu       $s2, $s2, $v0
    /* FCAD0 001FBB50 0050043C */  lui        $a0, (0x50000006 >> 16)
    /* FCAD4 001FBB54 1600033C */  lui        $v1, %hi(D_00161000)
    /* FCAD8 001FBB58 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FCADC 001FBB5C 06008434 */  ori        $a0, $a0, (0x50000006 & 0xFFFF)
    /* FCAE0 001FBB60 C0A01400 */  sll        $s4, $s4, 3
    /* FCAE4 001FBB64 C0A81500 */  sll        $s5, $s5, 3
    /* FCAE8 001FBB68 080060AC */  sw         $zero, 0x8($v1)
    /* FCAEC 001FBB6C 23883402 */  subu       $s1, $s1, $s4
    /* FCAF0 001FBB70 23801402 */  subu       $s0, $s0, $s4
    /* FCAF4 001FBB74 23987502 */  subu       $s3, $s3, $s5
    /* FCAF8 001FBB78 1600023C */  lui        $v0, %hi(D_00161000)
    /* FCAFC 001FBB7C 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FCB00 001FBB80 23905502 */  subu       $s2, $s2, $s5
    /* FCB04 001FBB84 38841000 */  dsll       $s0, $s0, 16
    /* FCB08 001FBB88 388C1100 */  dsll       $s1, $s1, 16
    /* FCB0C 001FBB8C 0C0044AC */  sw         $a0, 0xC($v0)
    /* FCB10 001FBB90 3CB01600 */  dsll32     $s6, $s6, 0
    /* FCB14 001FBB94 00800434 */  ori        $a0, $zero, 0x8000
    /* FCB18 001FBB98 7C230400 */  dsll32     $a0, $a0, 13
    /* FCB1C 001FBB9C 01008434 */  ori        $a0, $a0, 0x1
    /* FCB20 001FBBA0 25987002 */  or         $s3, $s3, $s0
    /* FCB24 001FBBA4 1600023C */  lui        $v0, %hi(D_00161000)
    /* FCB28 001FBBA8 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FCB2C 001FBBAC 25905102 */  or         $s2, $s2, $s1
    /* FCB30 001FBBB0 3EB01600 */  dsrl32     $s6, $s6, 0
    /* FCB34 001FBBB4 03000B3C */  lui        $t3, (0x33003 >> 16)
    /* FCB38 001FBBB8 03306B35 */  ori        $t3, $t3, (0x33003 & 0xFFFF)
    /* FCB3C 001FBBBC 10004324 */  addiu      $v1, $v0, 0x10
    /* FCB40 001FBBC0 47000824 */  addiu      $t0, $zero, 0x47
    /* FCB44 001FBBC4 1600013C */  lui        $at, %hi(D_00161000)
    /* FCB48 001FBBC8 001023AC */  sw         $v1, %lo(D_00161000)($at)
    /* FCB4C 001FBBCC 00900634 */  ori        $a2, $zero, 0x9000
    /* FCB50 001FBBD0 BC330600 */  dsll32     $a2, $a2, 14
    /* FCB54 001FBBD4 0100C634 */  ori        $a2, $a2, 0x1
    /* FCB58 001FBBD8 100044FC */  sd         $a0, 0x10($v0)
    /* FCB5C 001FBBDC 06010724 */  addiu      $a3, $zero, 0x106
    /* FCB60 001FBBE0 00900934 */  ori        $t1, $zero, 0x9000
    /* FCB64 001FBBE4 BC4B0900 */  dsll32     $t1, $t1, 14
    /* FCB68 001FBBE8 01802935 */  ori        $t1, $t1, 0x8001
    /* FCB6C 001FBBEC 44000A24 */  addiu      $t2, $zero, 0x44
    /* FCB70 001FBBF0 0E000524 */  addiu      $a1, $zero, 0xE
    /* FCB74 001FBBF4 10000224 */  addiu      $v0, $zero, 0x10
    /* FCB78 001FBBF8 580072FC */  sd         $s2, 0x58($v1)
    /* FCB7C 001FBBFC 42000424 */  addiu      $a0, $zero, 0x42
    /* FCB80 001FBC00 080065FC */  sd         $a1, 0x8($v1)
    /* FCB84 001FBC04 380076FC */  sd         $s6, 0x38($v1)
    /* FCB88 001FBC08 00800534 */  ori        $a1, $zero, 0x8000
    /* FCB8C 001FBC0C 382E0500 */  dsll       $a1, $a1, 24
    /* FCB90 001FBC10 4400A534 */  ori        $a1, $a1, 0x44
    /* FCB94 001FBC14 500073FC */  sd         $s3, 0x50($v1)
    /* FCB98 001FBC18 10006BFC */  sd         $t3, 0x10($v1)
    /* FCB9C 001FBC1C 180068FC */  sd         $t0, 0x18($v1)
    /* FCBA0 001FBC20 200066FC */  sd         $a2, 0x20($v1)
    /* FCBA4 001FBC24 280062FC */  sd         $v0, 0x28($v1)
    /* FCBA8 001FBC28 300067FC */  sd         $a3, 0x30($v1)
    /* FCBAC 001FBC2C 400069FC */  sd         $t1, 0x40($v1)
    /* FCBB0 001FBC30 48006AFC */  sd         $t2, 0x48($v1)
    /* FCBB4 001FBC34 1600023C */  lui        $v0, %hi(D_00161000)
    /* FCBB8 001FBC38 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FCBBC 001FBC3C 60004224 */  addiu      $v0, $v0, 0x60
    /* FCBC0 001FBC40 26D3080C */  jal        func_00234C98
    /* FCBC4 001FBC44 00A382AF */   sw        $v0, -0x5D00($gp)
    /* FCBC8 001FBC48 14D3080C */  jal        func_00234C50
    /* FCBCC 001FBC4C 0013043C */   lui       $a0, (0x13000000 >> 16)
    /* FCBD0 001FBC50 7000BF7B */  lq         $ra, 0x70($sp)
    /* FCBD4 001FBC54 6000B67B */  lq         $s6, 0x60($sp)
    /* FCBD8 001FBC58 5000B57B */  lq         $s5, 0x50($sp)
    /* FCBDC 001FBC5C 4000B47B */  lq         $s4, 0x40($sp)
    /* FCBE0 001FBC60 3000B37B */  lq         $s3, 0x30($sp)
    /* FCBE4 001FBC64 2000B27B */  lq         $s2, 0x20($sp)
    /* FCBE8 001FBC68 1000B17B */  lq         $s1, 0x10($sp)
    /* FCBEC 001FBC6C 0000B07B */  lq         $s0, 0x0($sp)
    /* FCBF0 001FBC70 0800E003 */  jr         $ra
    /* FCBF4 001FBC74 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_001FBAB8
