.align 3
nonmatching func_001FBAB8, 0x1C0

glabel func_001FBAB8
    /* FCA38 001FBAB8 80FFBD27 */  addiu      $29, $29, -0x80
    /* FCA3C 001FBABC 3000B37F */  sq         $19, 0x30($29)
    /* FCA40 001FBAC0 6000B67F */  sq         $22, 0x60($29)
    /* FCA44 001FBAC4 2D988000 */  daddu      $19, $4, $0
    /* FCA48 001FBAC8 5000B57F */  sq         $21, 0x50($29)
    /* FCA4C 001FBACC 2DB04001 */  daddu      $22, $10, $0
    /* FCA50 001FBAD0 4000B47F */  sq         $20, 0x40($29)
    /* FCA54 001FBAD4 2DA80001 */  daddu      $21, $8, $0
    /* FCA58 001FBAD8 2000B27F */  sq         $18, 0x20($29)
    /* FCA5C 001FBADC 2DA02001 */  daddu      $20, $9, $0
    /* FCA60 001FBAE0 1000B17F */  sq         $17, 0x10($29)
    /* FCA64 001FBAE4 2D90C000 */  daddu      $18, $6, $0
    /* FCA68 001FBAE8 0000B07F */  sq         $16, 0x0($29)
    /* FCA6C 001FBAEC 2D88E000 */  daddu      $17, $7, $0
    /* FCA70 001FBAF0 7000BF7F */  sq         $31, 0x70($29)
    /* FCA74 001FBAF4 2D80A000 */  daddu      $16, $5, $0
    /* FCA78 001FBAF8 14D3080C */  jal        func_00234C50
    /* FCA7C 001FBAFC 0013043C */   lui       $4, (0x13000000 >> 16)
    /* FCA80 001FBB00 42000424 */  addiu      $4, $0, 0x42
    /* FCA84 001FBB04 26D3080C */  jal        func_00234C98
    /* FCA88 001FBB08 64000524 */   addiu     $5, $0, 0x64
    /* FCA8C 001FBB0C 1600033C */  lui        $3, %hi(D_00161000)
    /* FCA90 001FBB10 0010638C */  lw         $3, %lo(D_00161000)($3)
    /* FCA94 001FBB14 0010023C */  lui        $2, (0x10000006 >> 16)
    /* FCA98 001FBB18 06004234 */  ori        $2, $2, (0x10000006 & 0xFFFF)
    /* FCA9C 001FBB1C 00811000 */  sll        $16, $16, 4
    /* FCAA0 001FBB20 000062AC */  sw         $2, 0x0($3)
    /* FCAA4 001FBB24 00891100 */  sll        $17, $17, 4
    /* FCAA8 001FBB28 00800234 */  ori        $2, $0, 0x8000
    /* FCAAC 001FBB2C 00991300 */  sll        $19, $19, 4
    /* FCAB0 001FBB30 1600033C */  lui        $3, %hi(D_00161000)
    /* FCAB4 001FBB34 0010638C */  lw         $3, %lo(D_00161000)($3)
    /* FCAB8 001FBB38 00911200 */  sll        $18, $18, 4
    /* FCABC 001FBB3C 21882202 */  addu       $17, $17, $2
    /* FCAC0 001FBB40 21800202 */  addu       $16, $16, $2
    /* FCAC4 001FBB44 040060AC */  sw         $0, 0x4($3)
    /* FCAC8 001FBB48 21986202 */  addu       $19, $19, $2
    /* FCACC 001FBB4C 21904202 */  addu       $18, $18, $2
    /* FCAD0 001FBB50 0050043C */  lui        $4, (0x50000006 >> 16)
    /* FCAD4 001FBB54 1600033C */  lui        $3, %hi(D_00161000)
    /* FCAD8 001FBB58 0010638C */  lw         $3, %lo(D_00161000)($3)
    /* FCADC 001FBB5C 06008434 */  ori        $4, $4, (0x50000006 & 0xFFFF)
    /* FCAE0 001FBB60 C0A01400 */  sll        $20, $20, 3
    /* FCAE4 001FBB64 C0A81500 */  sll        $21, $21, 3
    /* FCAE8 001FBB68 080060AC */  sw         $0, 0x8($3)
    /* FCAEC 001FBB6C 23883402 */  subu       $17, $17, $20
    /* FCAF0 001FBB70 23801402 */  subu       $16, $16, $20
    /* FCAF4 001FBB74 23987502 */  subu       $19, $19, $21
    /* FCAF8 001FBB78 1600023C */  lui        $2, %hi(D_00161000)
    /* FCAFC 001FBB7C 0010428C */  lw         $2, %lo(D_00161000)($2)
    /* FCB00 001FBB80 23905502 */  subu       $18, $18, $21
    /* FCB04 001FBB84 38841000 */  dsll       $16, $16, 16
    /* FCB08 001FBB88 388C1100 */  dsll       $17, $17, 16
    /* FCB0C 001FBB8C 0C0044AC */  sw         $4, 0xC($2)
    /* FCB10 001FBB90 3CB01600 */  dsll32     $22, $22, 0
    /* FCB14 001FBB94 00800434 */  ori        $4, $0, 0x8000
    /* FCB18 001FBB98 7C230400 */  dsll32     $4, $4, 13
    /* FCB1C 001FBB9C 01008434 */  ori        $4, $4, 0x1
    /* FCB20 001FBBA0 25987002 */  or         $19, $19, $16
    /* FCB24 001FBBA4 1600023C */  lui        $2, %hi(D_00161000)
    /* FCB28 001FBBA8 0010428C */  lw         $2, %lo(D_00161000)($2)
    /* FCB2C 001FBBAC 25905102 */  or         $18, $18, $17
    /* FCB30 001FBBB0 3EB01600 */  dsrl32     $22, $22, 0
    /* FCB34 001FBBB4 03000B3C */  lui        $11, (0x33003 >> 16)
    /* FCB38 001FBBB8 03306B35 */  ori        $11, $11, (0x33003 & 0xFFFF)
    /* FCB3C 001FBBBC 10004324 */  addiu      $3, $2, 0x10
    /* FCB40 001FBBC0 47000824 */  addiu      $8, $0, 0x47
    /* FCB44 001FBBC4 1600013C */  lui        $1, %hi(D_00161000)
    /* FCB48 001FBBC8 001023AC */  sw         $3, %lo(D_00161000)($1)
    /* FCB4C 001FBBCC 00900634 */  ori        $6, $0, 0x9000
    /* FCB50 001FBBD0 BC330600 */  dsll32     $6, $6, 14
    /* FCB54 001FBBD4 0100C634 */  ori        $6, $6, 0x1
    /* FCB58 001FBBD8 100044FC */  sd         $4, 0x10($2)
    /* FCB5C 001FBBDC 06010724 */  addiu      $7, $0, 0x106
    /* FCB60 001FBBE0 00900934 */  ori        $9, $0, 0x9000
    /* FCB64 001FBBE4 BC4B0900 */  dsll32     $9, $9, 14
    /* FCB68 001FBBE8 01802935 */  ori        $9, $9, 0x8001
    /* FCB6C 001FBBEC 44000A24 */  addiu      $10, $0, 0x44
    /* FCB70 001FBBF0 0E000524 */  addiu      $5, $0, 0xE
    /* FCB74 001FBBF4 10000224 */  addiu      $2, $0, 0x10
    /* FCB78 001FBBF8 580072FC */  sd         $18, 0x58($3)
    /* FCB7C 001FBBFC 42000424 */  addiu      $4, $0, 0x42
    /* FCB80 001FBC00 080065FC */  sd         $5, 0x8($3)
    /* FCB84 001FBC04 380076FC */  sd         $22, 0x38($3)
    /* FCB88 001FBC08 00800534 */  ori        $5, $0, 0x8000
    /* FCB8C 001FBC0C 382E0500 */  dsll       $5, $5, 24
    /* FCB90 001FBC10 4400A534 */  ori        $5, $5, 0x44
    /* FCB94 001FBC14 500073FC */  sd         $19, 0x50($3)
    /* FCB98 001FBC18 10006BFC */  sd         $11, 0x10($3)
    /* FCB9C 001FBC1C 180068FC */  sd         $8, 0x18($3)
    /* FCBA0 001FBC20 200066FC */  sd         $6, 0x20($3)
    /* FCBA4 001FBC24 280062FC */  sd         $2, 0x28($3)
    /* FCBA8 001FBC28 300067FC */  sd         $7, 0x30($3)
    /* FCBAC 001FBC2C 400069FC */  sd         $9, 0x40($3)
    /* FCBB0 001FBC30 48006AFC */  sd         $10, 0x48($3)
    /* FCBB4 001FBC34 1600023C */  lui        $2, %hi(D_00161000)
    /* FCBB8 001FBC38 0010428C */  lw         $2, %lo(D_00161000)($2)
    /* FCBBC 001FBC3C 60004224 */  addiu      $2, $2, 0x60
    /* FCBC0 001FBC40 26D3080C */  jal        func_00234C98
    /* FCBC4 001FBC44 00A382AF */   sw        $2, -0x5D00($28)
    /* FCBC8 001FBC48 14D3080C */  jal        func_00234C50
    /* FCBCC 001FBC4C 0013043C */   lui       $4, (0x13000000 >> 16)
    /* FCBD0 001FBC50 7000BF7B */  lq         $31, 0x70($29)
    /* FCBD4 001FBC54 6000B67B */  lq         $22, 0x60($29)
    /* FCBD8 001FBC58 5000B57B */  lq         $21, 0x50($29)
    /* FCBDC 001FBC5C 4000B47B */  lq         $20, 0x40($29)
    /* FCBE0 001FBC60 3000B37B */  lq         $19, 0x30($29)
    /* FCBE4 001FBC64 2000B27B */  lq         $18, 0x20($29)
    /* FCBE8 001FBC68 1000B17B */  lq         $17, 0x10($29)
    /* FCBEC 001FBC6C 0000B07B */  lq         $16, 0x0($29)
    /* FCBF0 001FBC70 0800E003 */  jr         $31
    /* FCBF4 001FBC74 8000BD27 */   addiu     $29, $29, 0x80
endlabel func_001FBAB8
