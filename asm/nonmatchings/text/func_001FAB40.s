.align 3
nonmatching func_001FAB40, 0x904

glabel func_001FAB40
    /* FBAC0 001FAB40 60FFBD27 */  addiu      $29, $29, -0xA0
    /* FBAC4 001FAB44 1600033C */  lui        $3, %hi(D_0015EF80)
    /* FBAC8 001FAB48 80EF638C */  lw         $3, %lo(D_0015EF80)($3)
    /* FBACC 001FAB4C 0000B07F */  sq         $16, 0x0($29)
    /* FBAD0 001FAB50 31000224 */  addiu      $2, $0, 0x31
    /* FBAD4 001FAB54 16000A3C */  lui        $10, %hi(D_0015EF84)
    /* FBAD8 001FAB58 84EF4A8D */  lw         $10, %lo(D_0015EF84)($10)
    /* FBADC 001FAB5C 1500103C */  lui        $16, %hi(D_00151880)
    /* FBAE0 001FAB60 16000B3C */  lui        $11, %hi(D_0015EF88)
    /* FBAE4 001FAB64 88EF6B8D */  lw         $11, %lo(D_0015EF88)($11)
    /* FBAE8 001FAB68 80181026 */  addiu      $16, $16, %lo(D_00151880)
    /* FBAEC 001FAB6C 8000BE7F */  sq         $30, 0x80($29)
    /* FBAF0 001FAB70 43530A00 */  sra        $10, $10, 13
    /* FBAF4 001FAB74 7000B77F */  sq         $23, 0x70($29)
    /* FBAF8 001FAB78 435B0B00 */  sra        $11, $11, 13
    /* FBAFC 001FAB7C 6000B67F */  sq         $22, 0x60($29)
    /* FBB00 001FAB80 431B0300 */  sra        $3, $3, 13
    /* FBB04 001FAB84 5000B57F */  sq         $21, 0x50($29)
    /* FBB08 001FAB88 2D60C000 */  daddu      $12, $6, $0
    /* FBB0C 001FAB8C 4000B47F */  sq         $20, 0x40($29)
    /* FBB10 001FAB90 2D68E000 */  daddu      $13, $7, $0
    /* FBB14 001FAB94 3000B37F */  sq         $19, 0x30($29)
    /* FBB18 001FAB98 2D700001 */  daddu      $14, $8, $0
    /* FBB1C 001FAB9C 2000B27F */  sq         $18, 0x20($29)
    /* FBB20 001FABA0 2D782001 */  daddu      $15, $9, $0
    /* FBB24 001FABA4 1000B17F */  sq         $17, 0x10($29)
    /* FBB28 001FABA8 00340C00 */  sll        $6, $12, 16
    /* FBB2C 001FABAC 9000BF7F */  sq         $31, 0x90($29)
    /* FBB30 001FABB0 003C0D00 */  sll        $7, $13, 16
    /* FBB34 001FABB4 56010AA6 */  sh         $10, 0x156($16)
    /* FBB38 001FABB8 00440E00 */  sll        $8, $14, 16
    /* FBB3C 001FABBC 6E010BA6 */  sh         $11, 0x16E($16)
    /* FBB40 001FABC0 004C0F00 */  sll        $9, $15, 16
    /* FBB44 001FABC4 500104A6 */  sh         $4, 0x150($16)
    /* FBB48 001FABC8 03340600 */  sra        $6, $6, 16
    /* FBB4C 001FABCC 520105A6 */  sh         $5, 0x152($16)
    /* FBB50 001FABD0 2D200002 */  daddu      $4, $16, $0
    /* FBB54 001FABD4 6C0102A6 */  sh         $2, 0x16C($16)
    /* FBB58 001FABD8 2D280000 */  daddu      $5, $0, $0
    /* FBB5C 001FABDC 5E0103A6 */  sh         $3, 0x15E($16)
    /* FBB60 001FABE0 033C0700 */  sra        $7, $7, 16
    /* FBB64 001FABE4 1600013C */  lui        $1, %hi(D_0015EFB8)
    /* FBB68 001FABE8 B8EF30AC */  sw         $16, %lo(D_0015EFB8)($1)
    /* FBB6C 001FABEC 03440800 */  sra        $8, $8, 16
    /* FBB70 001FABF0 58010CA6 */  sh         $12, 0x158($16)
    /* FBB74 001FABF4 034C0900 */  sra        $9, $9, 16
    /* FBB78 001FABF8 5A010DA6 */  sh         $13, 0x15A($16)
    /* FBB7C 001FABFC 00FE1124 */  addiu      $17, $0, -0x200
    /* FBB80 001FAC00 68010EA6 */  sh         $14, 0x168($16)
    /* FBB84 001FAC04 00801624 */  addiu      $22, $0, -0x8000
    /* FBB88 001FAC08 6A010FA6 */  sh         $15, 0x16A($16)
    /* FBB8C 001FAC0C 08001224 */  addiu      $18, $0, 0x8
    /* FBB90 001FAC10 700100AE */  sw         $0, 0x170($16)
    /* FBB94 001FAC14 00801734 */  ori        $23, $0, 0x8000
    /* FBB98 001FAC18 5C0100A6 */  sh         $0, 0x15C($16)
    /* FBB9C 001FAC1C FFFF1E24 */  addiu      $30, $0, -0x1
    /* FBBA0 001FAC20 3AF11E00 */  dsrl       $30, $30, 4
    /* FBBA4 001FAC24 540100A6 */  sh         $0, 0x154($16)
    /* FBBA8 001FAC28 F0FF1424 */  addiu      $20, $0, -0x10
    /* FBBAC 001FAC2C 640100A6 */  sh         $0, 0x164($16)
    /* FBBB0 001FAC30 7287040C */  jal        func_00121DC8
    /* FBBB4 001FAC34 0E001324 */   addiu     $19, $0, 0xE
    /* FBBB8 001FAC38 00801534 */  ori        $21, $0, 0x8000
    /* FBBBC 001FAC3C 7CAB1500 */  dsll32     $21, $21, 13
    /* FBBC0 001FAC40 1600053C */  lui        $5, %hi(D_0015EFB8)
    /* FBBC4 001FAC44 B8EFA58C */  lw         $5, %lo(D_0015EFB8)($5)
    /* FBBC8 001FAC48 03000824 */  addiu      $8, $0, 0x3
    /* FBBCC 001FAC4C 5E010386 */  lh         $3, 0x15E($16)
    /* FBBD0 001FAC50 1000A2DC */  ld         $2, 0x10($5)
    /* FBBD4 001FAC54 4000A424 */  addiu      $4, $5, 0x40
    /* FBBD8 001FAC58 FF016330 */  andi       $3, $3, 0x1FF
    /* FBBDC 001FAC5C 24105100 */  and        $2, $2, $17
    /* FBBE0 001FAC60 25104300 */  or         $2, $2, $3
    /* FBBE4 001FAC64 1000A2FC */  sd         $2, 0x10($5)
    /* FBBE8 001FAC68 54010586 */  lh         $5, 0x154($16)
    /* FBBEC 001FAC6C 50010686 */  lh         $6, 0x150($16)
    /* FBBF0 001FAC70 52010786 */  lh         $7, 0x152($16)
    /* FBBF4 001FAC74 B288040C */  jal        func_001222C8
    /* FBBF8 001FAC78 6C010986 */   lh        $9, 0x16C($16)
    /* FBBFC 001FAC7C 1600043C */  lui        $4, %hi(D_0015EFB8)
    /* FBC00 001FAC80 B8EF848C */  lw         $4, %lo(D_0015EFB8)($4)
    /* FBC04 001FAC84 2D400000 */  daddu      $8, $0, $0
    /* FBC08 001FAC88 56010386 */  lh         $3, 0x156($16)
    /* FBC0C 001FAC8C 2D480000 */  daddu      $9, $0, $0
    /* FBC10 001FAC90 400082DC */  ld         $2, 0x40($4)
    /* FBC14 001FAC94 FF016330 */  andi       $3, $3, 0x1FF
    /* FBC18 001FAC98 24105100 */  and        $2, $2, $17
    /* FBC1C 001FAC9C 25104300 */  or         $2, $2, $3
    /* FBC20 001FACA0 400082FC */  sd         $2, 0x40($4)
    /* FBC24 001FACA4 6C010396 */  lhu        $3, 0x16C($16)
    /* FBC28 001FACA8 6E010286 */  lh         $2, 0x16E($16)
    /* FBC2C 001FACAC 0F006330 */  andi       $3, $3, 0xF
    /* FBC30 001FACB0 381E0300 */  dsll       $3, $3, 24
    /* FBC34 001FACB4 25104300 */  or         $2, $2, $3
    /* FBC38 001FACB8 500082FC */  sd         $2, 0x50($4)
    /* FBC3C 001FACBC A9140070 */  por        $2, $0, $0
    /* FBC40 001FACC0 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FBC44 001FACC4 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FBC48 001FACC8 3000627C */  sq         $2, 0x30($3)
    /* FBC4C 001FACCC 1600053C */  lui        $5, %hi(D_0015EFB8)
    /* FBC50 001FACD0 B8EFA58C */  lw         $5, %lo(D_0015EFB8)($5)
    /* FBC54 001FACD4 3000A2DC */  ld         $2, 0x30($5)
    /* FBC58 001FACD8 D000A424 */  addiu      $4, $5, 0xD0
    /* FBC5C 001FACDC 3800A3DC */  ld         $3, 0x38($5)
    /* FBC60 001FACE0 24105600 */  and        $2, $2, $22
    /* FBC64 001FACE4 25105200 */  or         $2, $2, $18
    /* FBC68 001FACE8 24187400 */  and        $3, $3, $20
    /* FBC6C 001FACEC 25105700 */  or         $2, $2, $23
    /* FBC70 001FACF0 25187300 */  or         $3, $3, $19
    /* FBC74 001FACF4 24105E00 */  and        $2, $2, $30
    /* FBC78 001FACF8 3800A3FC */  sd         $3, 0x38($5)
    /* FBC7C 001FACFC 25105500 */  or         $2, $2, $21
    /* FBC80 001FAD00 3000A2FC */  sd         $2, 0x30($5)
    /* FBC84 001FAD04 5C010586 */  lh         $5, 0x15C($16)
    /* FBC88 001FAD08 58010686 */  lh         $6, 0x158($16)
    /* FBC8C 001FAD0C B288040C */  jal        func_001222C8
    /* FBC90 001FAD10 5A010786 */   lh        $7, 0x15A($16)
    /* FBC94 001FAD14 1600043C */  lui        $4, %hi(D_0015EFB8)
    /* FBC98 001FAD18 B8EF848C */  lw         $4, %lo(D_0015EFB8)($4)
    /* FBC9C 001FAD1C 00800534 */  ori        $5, $0, 0x8000
    /* FBCA0 001FAD20 782C0500 */  dsll       $5, $5, 17
    /* FBCA4 001FAD24 5E010386 */  lh         $3, 0x15E($16)
    /* FBCA8 001FAD28 1500063C */  lui        $6, %hi(D_00151C60)
    /* FBCAC 001FAD2C D00082DC */  ld         $2, 0xD0($4)
    /* FBCB0 001FAD30 16810F34 */  ori        $15, $0, 0x8116
    /* FBCB4 001FAD34 387C0F00 */  dsll       $15, $15, 16
    /* FBCB8 001FAD38 0080EF35 */  ori        $15, $15, 0x8000
    /* FBCBC 001FAD3C F87F0F00 */  dsll       $15, $15, 31
    /* FBCC0 001FAD40 0100EF35 */  ori        $15, $15, 0x1
    /* FBCC4 001FAD44 E00085FC */  sd         $5, 0xE0($4)
    /* FBCC8 001FAD48 FF016330 */  andi       $3, $3, 0x1FF
    /* FBCCC 001FAD4C 24105100 */  and        $2, $2, $17
    /* FBCD0 001FAD50 EEEE0734 */  ori        $7, $0, 0xEEEE
    /* FBCD4 001FAD54 1600053C */  lui        $5, %hi(D_0015EFB8)
    /* FBCD8 001FAD58 B8EFA58C */  lw         $5, %lo(D_0015EFB8)($5)
    /* FBCDC 001FAD5C 25104300 */  or         $2, $2, $3
    /* FBCE0 001FAD60 D00082FC */  sd         $2, 0xD0($4)
    /* FBCE4 001FAD64 A91C0070 */  por        $3, $0, $0
    /* FBCE8 001FAD68 C000A37C */  sq         $3, 0xC0($5)
    /* FBCEC 001FAD6C 601CD124 */  addiu      $17, $6, %lo(D_00151C60)
    /* FBCF0 001FAD70 0300053C */  lui        $5, (0x30000 >> 16)
    /* FBCF4 001FAD74 47000924 */  addiu      $9, $0, 0x47
    /* FBCF8 001FAD78 1600043C */  lui        $4, %hi(D_0015EFB8)
    /* FBCFC 001FAD7C B8EF848C */  lw         $4, %lo(D_0015EFB8)($4)
    /* FBD00 001FAD80 05000A24 */  addiu      $10, $0, 0x5
    /* FBD04 001FAD84 00800B34 */  ori        $11, $0, 0x8000
    /* FBD08 001FAD88 785C0B00 */  dsll       $11, $11, 17
    /* FBD0C 001FAD8C 61026B35 */  ori        $11, $11, 0x261
    /* FBD10 001FAD90 14000824 */  addiu      $8, $0, 0x14
    /* FBD14 001FAD94 C00082DC */  ld         $2, 0xC0($4)
    /* FBD18 001FAD98 80EA1034 */  ori        $16, $0, 0xEA80
    /* FBD1C 001FAD9C 38851000 */  dsll       $16, $16, 20
    /* FBD20 001FADA0 C80083DC */  ld         $3, 0xC8($4)
    /* FBD24 001FADA4 06000C24 */  addiu      $12, $0, 0x6
    /* FBD28 001FADA8 24105600 */  and        $2, $2, $22
    /* FBD2C 001FADAC 00880D34 */  ori        $13, $0, 0x8800
    /* FBD30 001FADB0 FC6B0D00 */  dsll32     $13, $13, 15
    /* FBD34 001FADB4 1080AD35 */  ori        $13, $13, 0x8010
    /* FBD38 001FADB8 25105200 */  or         $2, $2, $18
    /* FBD3C 001FADBC 24187400 */  and        $3, $3, $20
    /* FBD40 001FADC0 25105700 */  or         $2, $2, $23
    /* FBD44 001FADC4 25187300 */  or         $3, $3, $19
    /* FBD48 001FADC8 24105E00 */  and        $2, $2, $30
    /* FBD4C 001FADCC C80083FC */  sd         $3, 0xC8($4)
    /* FBD50 001FADD0 25105500 */  or         $2, $2, $21
    /* FBD54 001FADD4 53530E24 */  addiu      $14, $0, 0x5353
    /* FBD58 001FADD8 C00082FC */  sd         $2, 0xC0($4)
    /* FBD5C 001FADDC 00801834 */  ori        $24, $0, 0x8000
    /* FBD60 001FADE0 601CCFFC */  sd         $15, %lo(D_00151C60)($6)
    /* FBD64 001FADE4 F87F1924 */  addiu      $25, $0, 0x7FF8
    /* FBD68 001FADE8 080027FE */  sd         $7, 0x8($17)
    /* FBD6C 001FADEC 2D980000 */  daddu      $19, $0, $0
    /* FBD70 001FADF0 100025FE */  sd         $5, 0x10($17)
    /* FBD74 001FADF4 60002F26 */  addiu      $15, $17, 0x60
    /* FBD78 001FADF8 180029FE */  sd         $9, 0x18($17)
    /* FBD7C 001FADFC 20002AFE */  sd         $10, 0x20($17)
    /* FBD80 001FAE00 280032FE */  sd         $18, 0x28($17)
    /* FBD84 001FAE04 30002BFE */  sd         $11, 0x30($17)
    /* FBD88 001FAE08 380028FE */  sd         $8, 0x38($17)
    /* FBD8C 001FAE0C 1600043C */  lui        $4, %hi(D_0015EFB8)
    /* FBD90 001FAE10 B8EF848C */  lw         $4, %lo(D_0015EFB8)($4)
    /* FBD94 001FAE14 50018294 */  lhu        $2, 0x150($4)
    /* FBD98 001FAE18 56018384 */  lh         $3, 0x156($4)
    /* FBD9C 001FAE1C 82110200 */  srl        $2, $2, 6
    /* FBDA0 001FAE20 54018584 */  lh         $5, 0x154($4)
    /* FBDA4 001FAE24 3F004230 */  andi       $2, $2, 0x3F
    /* FBDA8 001FAE28 78190300 */  dsll       $3, $3, 5
    /* FBDAC 001FAE2C B8130200 */  dsll       $2, $2, 14
    /* FBDB0 001FAE30 382D0500 */  dsll       $5, $5, 20
    /* FBDB4 001FAE34 25186200 */  or         $3, $3, $2
    /* FBDB8 001FAE38 48002CFE */  sd         $12, 0x48($17)
    /* FBDBC 001FAE3C 25186500 */  or         $3, $3, $5
    /* FBDC0 001FAE40 50002DFE */  sd         $13, 0x50($17)
    /* FBDC4 001FAE44 25187000 */  or         $3, $3, $16
    /* FBDC8 001FAE48 58002EFE */  sd         $14, 0x58($17)
    /* FBDCC 001FAE4C 400023FE */  sd         $3, 0x40($17)
.align 2
  .L001FAE50:
    /* FBDD0 001FAE50 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FBDD4 001FAE54 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FBDD8 001FAE58 01006626 */  addiu      $6, $19, 0x1
    /* FBDDC 001FAE5C 50016284 */  lh         $2, 0x150($3)
    /* FBDE0 001FAE60 18106202 */  mult       $2, $19, $2
    /* FBDE4 001FAE64 0000E2FD */  sd         $2, 0x0($15)
    /* FBDE8 001FAE68 0800EF25 */  addiu      $15, $15, 0x8
    /* FBDEC 001FAE6C 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FBDF0 001FAE70 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FBDF4 001FAE74 58016584 */  lh         $5, 0x158($3)
    /* FBDF8 001FAE78 5A016284 */  lh         $2, 0x15A($3)
    /* FBDFC 001FAE7C 18186502 */  mult       $3, $19, $5
    /* FBE00 001FAE80 C0100200 */  sll        $2, $2, 3
    /* FBE04 001FAE84 C0280500 */  sll        $5, $5, 3
    /* FBE08 001FAE88 23102203 */  subu       $2, $25, $2
    /* FBE0C 001FAE8C 2D98C000 */  daddu      $19, $6, $0
    /* FBE10 001FAE90 38140200 */  dsll       $2, $2, 16
    /* FBE14 001FAE94 1000672A */  slti       $7, $19, 0x10
    /* FBE18 001FAE98 21207800 */  addu       $4, $3, $24
    /* FBE1C 001FAE9C 23208500 */  subu       $4, $4, $5
    /* FBE20 001FAEA0 25208200 */  or         $4, $4, $2
    /* FBE24 001FAEA4 0000E4FD */  sd         $4, 0x0($15)
    /* FBE28 001FAEA8 0800EF25 */  addiu      $15, $15, 0x8
    /* FBE2C 001FAEAC 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FBE30 001FAEB0 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FBE34 001FAEB4 50016484 */  lh         $4, 0x150($3)
    /* FBE38 001FAEB8 52016284 */  lh         $2, 0x152($3)
    /* FBE3C 001FAEBC 1820C400 */  mult       $4, $6, $4
    /* FBE40 001FAEC0 38150200 */  dsll       $2, $2, 20
    /* FBE44 001FAEC4 25108200 */  or         $2, $4, $2
    /* FBE48 001FAEC8 0000E2FD */  sd         $2, 0x0($15)
    /* FBE4C 001FAECC 0800EF25 */  addiu      $15, $15, 0x8
    /* FBE50 001FAED0 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FBE54 001FAED4 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FBE58 001FAED8 58016484 */  lh         $4, 0x158($3)
    /* FBE5C 001FAEDC 5A016284 */  lh         $2, 0x15A($3)
    /* FBE60 001FAEE0 1818C400 */  mult       $3, $6, $4
    /* FBE64 001FAEE4 C0100200 */  sll        $2, $2, 3
    /* FBE68 001FAEE8 C0200400 */  sll        $4, $4, 3
    /* FBE6C 001FAEEC F87F4224 */  addiu      $2, $2, 0x7FF8
    /* FBE70 001FAEF0 38140200 */  dsll       $2, $2, 16
    /* FBE74 001FAEF4 21307800 */  addu       $6, $3, $24
    /* FBE78 001FAEF8 2330C400 */  subu       $6, $6, $4
    /* FBE7C 001FAEFC 2530C200 */  or         $6, $6, $2
    /* FBE80 001FAF00 0000E6FD */  sd         $6, 0x0($15)
    /* FBE84 001FAF04 D2FFE014 */  bnez       $7, .L001FAE50
    /* FBE88 001FAF08 0800EF25 */   addiu     $15, $15, 0x8
    /* FBE8C 001FAF0C 00880234 */  ori        $2, $0, 0x8800
    /* FBE90 001FAF10 FC130200 */  dsll32     $2, $2, 15
    /* FBE94 001FAF14 01804234 */  ori        $2, $2, 0x8001
    /* FBE98 001FAF18 10440424 */  addiu      $4, $0, 0x4410
    /* FBE9C 001FAF1C 81010524 */  addiu      $5, $0, 0x181
    /* FBEA0 001FAF20 00800634 */  ori        $6, $0, 0x8000
    /* FBEA4 001FAF24 38340600 */  dsll       $6, $6, 16
    /* FBEA8 001FAF28 700225FE */  sd         $5, 0x270($17)
    /* FBEAC 001FAF2C F87F0324 */  addiu      $3, $0, 0x7FF8
    /* FBEB0 001FAF30 780226FE */  sd         $6, 0x278($17)
    /* FBEB4 001FAF34 F86F0724 */  addiu      $7, $0, 0x6FF8
    /* FBEB8 001FAF38 600222FE */  sd         $2, 0x260($17)
    /* FBEBC 001FAF3C 2DC20834 */  ori        $8, $0, 0xC22D
    /* FBEC0 001FAF40 BC430800 */  dsll32     $8, $8, 14
    /* FBEC4 001FAF44 01000835 */  ori        $8, $8, 0x1
    /* FBEC8 001FAF48 680224FE */  sd         $4, 0x268($17)
    /* FBECC 001FAF4C EE0E0524 */  addiu      $5, $0, 0xEEE
    /* FBED0 001FAF50 03000A3C */  lui        $10, (0x30000 >> 16)
    /* FBED4 001FAF54 47000B24 */  addiu      $11, $0, 0x47
    /* FBED8 001FAF58 1600043C */  lui        $4, %hi(D_0015EFB8)
    /* FBEDC 001FAF5C B8EF848C */  lw         $4, %lo(D_0015EFB8)($4)
    /* FBEE0 001FAF60 00800634 */  ori        $6, $0, 0x8000
    /* FBEE4 001FAF64 78340600 */  dsll       $6, $6, 17
    /* FBEE8 001FAF68 6102C634 */  ori        $6, $6, 0x261
    /* FBEEC 001FAF6C 14000924 */  addiu      $9, $0, 0x14
    /* FBEF0 001FAF70 80EA0F34 */  ori        $15, $0, 0xEA80
    /* FBEF4 001FAF74 387D0F00 */  dsll       $15, $15, 20
    /* FBEF8 001FAF78 5A018284 */  lh         $2, 0x15A($4)
    /* FBEFC 001FAF7C 06000C24 */  addiu      $12, $0, 0x6
    /* FBF00 001FAF80 00880D34 */  ori        $13, $0, 0x8800
    /* FBF04 001FAF84 FC6B0D00 */  dsll32     $13, $13, 15
    /* FBF08 001FAF88 1080AD35 */  ori        $13, $13, 0x8010
    /* FBF0C 001FAF8C 53530E24 */  addiu      $14, $0, 0x5353
    /* FBF10 001FAF90 C0100200 */  sll        $2, $2, 3
    /* FBF14 001FAF94 2D800000 */  daddu      $16, $0, $0
    /* FBF18 001FAF98 23186200 */  subu       $3, $3, $2
    /* FBF1C 001FAF9C F87F1524 */  addiu      $21, $0, 0x7FF8
    /* FBF20 001FAFA0 381C0300 */  dsll       $3, $3, 16
    /* FBF24 001FAFA4 001A143C */  lui        $20, (0x1A000000 >> 16)
    /* FBF28 001FAFA8 25186700 */  or         $3, $3, $7
    /* FBF2C 001FAFAC F8711324 */  addiu      $19, $0, 0x71F8
    /* FBF30 001FAFB0 800223FE */  sd         $3, 0x280($17)
    /* FBF34 001FAFB4 F86F1224 */  addiu      $18, $0, 0x6FF8
    /* FBF38 001FAFB8 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FBF3C 001FAFBC B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FBF40 001FAFC0 5A016284 */  lh         $2, 0x15A($3)
    /* FBF44 001FAFC4 C0100200 */  sll        $2, $2, 3
    /* FBF48 001FAFC8 F87F4224 */  addiu      $2, $2, 0x7FF8
    /* FBF4C 001FAFCC 38140200 */  dsll       $2, $2, 16
    /* FBF50 001FAFD0 25104700 */  or         $2, $2, $7
    /* FBF54 001FAFD4 880222FE */  sd         $2, 0x288($17)
    /* FBF58 001FAFD8 1500023C */  lui        $2, %hi(D_00151EF0)
    /* FBF5C 001FAFDC F01E48FC */  sd         $8, %lo(D_00151EF0)($2)
    /* FBF60 001FAFE0 F01E5124 */  addiu      $17, $2, %lo(D_00151EF0)
    /* FBF64 001FAFE4 080025FE */  sd         $5, 0x8($17)
    /* FBF68 001FAFE8 50002726 */  addiu      $7, $17, 0x50
    /* FBF6C 001FAFEC 10002AFE */  sd         $10, 0x10($17)
    /* FBF70 001FAFF0 18002BFE */  sd         $11, 0x18($17)
    /* FBF74 001FAFF4 200026FE */  sd         $6, 0x20($17)
    /* FBF78 001FAFF8 280029FE */  sd         $9, 0x28($17)
    /* FBF7C 001FAFFC 1600043C */  lui        $4, %hi(D_0015EFB8)
    /* FBF80 001FB000 B8EF848C */  lw         $4, %lo(D_0015EFB8)($4)
    /* FBF84 001FB004 50018294 */  lhu        $2, 0x150($4)
    /* FBF88 001FB008 56018384 */  lh         $3, 0x156($4)
    /* FBF8C 001FB00C 82110200 */  srl        $2, $2, 6
    /* FBF90 001FB010 54018584 */  lh         $5, 0x154($4)
    /* FBF94 001FB014 3F004230 */  andi       $2, $2, 0x3F
    /* FBF98 001FB018 78190300 */  dsll       $3, $3, 5
    /* FBF9C 001FB01C B8130200 */  dsll       $2, $2, 14
    /* FBFA0 001FB020 382D0500 */  dsll       $5, $5, 20
    /* FBFA4 001FB024 25186200 */  or         $3, $3, $2
    /* FBFA8 001FB028 38002CFE */  sd         $12, 0x38($17)
    /* FBFAC 001FB02C 25186500 */  or         $3, $3, $5
    /* FBFB0 001FB030 40002DFE */  sd         $13, 0x40($17)
    /* FBFB4 001FB034 25186F00 */  or         $3, $3, $15
    /* FBFB8 001FB038 48002EFE */  sd         $14, 0x48($17)
    /* FBFBC 001FB03C 300023FE */  sd         $3, 0x30($17)
.align 2
  .L001FB040:
    /* FBFC0 001FB040 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FBFC4 001FB044 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FBFC8 001FB048 01000426 */  addiu      $4, $16, 0x1
    /* FBFCC 001FB04C 50016284 */  lh         $2, 0x150($3)
    /* FBFD0 001FB050 18100202 */  mult       $2, $16, $2
    /* FBFD4 001FB054 2D808000 */  daddu      $16, $4, $0
    /* FBFD8 001FB058 1000052A */  slti       $5, $16, 0x10
    /* FBFDC 001FB05C 0000E2FC */  sd         $2, 0x0($7)
    /* FBFE0 001FB060 0800E724 */  addiu      $7, $7, 0x8
    /* FBFE4 001FB064 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FBFE8 001FB068 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FBFEC 001FB06C 5A016284 */  lh         $2, 0x15A($3)
    /* FBFF0 001FB070 C0100200 */  sll        $2, $2, 3
    /* FBFF4 001FB074 2310A202 */  subu       $2, $21, $2
    /* FBFF8 001FB078 38140200 */  dsll       $2, $2, 16
    /* FBFFC 001FB07C 25104202 */  or         $2, $18, $2
    /* FC000 001FB080 0000E2FC */  sd         $2, 0x0($7)
    /* FC004 001FB084 00025226 */  addiu      $18, $18, 0x200
    /* FC008 001FB088 0800E724 */  addiu      $7, $7, 0x8
    /* FC00C 001FB08C 1600023C */  lui        $2, %hi(D_0015EFB8)
    /* FC010 001FB090 B8EF428C */  lw         $2, %lo(D_0015EFB8)($2)
    /* FC014 001FB094 50014384 */  lh         $3, 0x150($2)
    /* FC018 001FB098 18208300 */  mult       $4, $4, $3
    /* FC01C 001FB09C 25209400 */  or         $4, $4, $20
    /* FC020 001FB0A0 0000E4FC */  sd         $4, 0x0($7)
    /* FC024 001FB0A4 0800E724 */  addiu      $7, $7, 0x8
    /* FC028 001FB0A8 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FC02C 001FB0AC B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FC030 001FB0B0 5A016284 */  lh         $2, 0x15A($3)
    /* FC034 001FB0B4 C0100200 */  sll        $2, $2, 3
    /* FC038 001FB0B8 F87F4224 */  addiu      $2, $2, 0x7FF8
    /* FC03C 001FB0BC 38140200 */  dsll       $2, $2, 16
    /* FC040 001FB0C0 25106202 */  or         $2, $19, $2
    /* FC044 001FB0C4 0000E2FC */  sd         $2, 0x0($7)
    /* FC048 001FB0C8 00027326 */  addiu      $19, $19, 0x200
    /* FC04C 001FB0CC DCFFA014 */  bnez       $5, .L001FB040
    /* FC050 001FB0D0 0800E724 */   addiu     $7, $7, 0x8
    /* FC054 001FB0D4 1500033C */  lui        $3, %hi(D_00151A00)
    /* FC058 001FB0D8 16810234 */  ori        $2, $0, 0x8116
    /* FC05C 001FB0DC 38140200 */  dsll       $2, $2, 16
    /* FC060 001FB0E0 00804234 */  ori        $2, $2, 0x8000
    /* FC064 001FB0E4 F8170200 */  dsll       $2, $2, 31
    /* FC068 001FB0E8 01004234 */  ori        $2, $2, 0x1
    /* FC06C 001FB0EC 001A62FC */  sd         $2, %lo(D_00151A00)($3)
    /* FC070 001FB0F0 001A7124 */  addiu      $17, $3, %lo(D_00151A00)
    /* FC074 001FB0F4 EEEE0334 */  ori        $3, $0, 0xEEEE
    /* FC078 001FB0F8 0300023C */  lui        $2, (0x30000 >> 16)
    /* FC07C 001FB0FC 47000424 */  addiu      $4, $0, 0x47
    /* FC080 001FB100 05000524 */  addiu      $5, $0, 0x5
    /* FC084 001FB104 08000624 */  addiu      $6, $0, 0x8
    /* FC088 001FB108 00800734 */  ori        $7, $0, 0x8000
    /* FC08C 001FB10C 783C0700 */  dsll       $7, $7, 17
    /* FC090 001FB110 6102E734 */  ori        $7, $7, 0x261
    /* FC094 001FB114 14000824 */  addiu      $8, $0, 0x14
    /* FC098 001FB118 280026FE */  sd         $6, 0x28($17)
    /* FC09C 001FB11C 300027FE */  sd         $7, 0x30($17)
    /* FC0A0 001FB120 80EA0C34 */  ori        $12, $0, 0xEA80
    /* FC0A4 001FB124 38650C00 */  dsll       $12, $12, 20
    /* FC0A8 001FB128 380028FE */  sd         $8, 0x38($17)
    /* FC0AC 001FB12C 06000924 */  addiu      $9, $0, 0x6
    /* FC0B0 001FB130 080023FE */  sd         $3, 0x8($17)
    /* FC0B4 001FB134 00880A34 */  ori        $10, $0, 0x8800
    /* FC0B8 001FB138 FC530A00 */  dsll32     $10, $10, 15
    /* FC0BC 001FB13C 10804A35 */  ori        $10, $10, 0x8010
    /* FC0C0 001FB140 100022FE */  sd         $2, 0x10($17)
    /* FC0C4 001FB144 53530B24 */  addiu      $11, $0, 0x5353
    /* FC0C8 001FB148 180024FE */  sd         $4, 0x18($17)
    /* FC0CC 001FB14C 60002626 */  addiu      $6, $17, 0x60
    /* FC0D0 001FB150 200025FE */  sd         $5, 0x20($17)
    /* FC0D4 001FB154 2D380000 */  daddu      $7, $0, $0
    /* FC0D8 001FB158 00800F34 */  ori        $15, $0, 0x8000
    /* FC0DC 001FB15C 00720E24 */  addiu      $14, $0, 0x7200
    /* FC0E0 001FB160 1600043C */  lui        $4, %hi(D_0015EFB8)
    /* FC0E4 001FB164 B8EF848C */  lw         $4, %lo(D_0015EFB8)($4)
    /* FC0E8 001FB168 00020D24 */  addiu      $13, $0, 0x200
    /* FC0EC 001FB16C 00700824 */  addiu      $8, $0, 0x7000
    /* FC0F0 001FB170 50018294 */  lhu        $2, 0x150($4)
    /* FC0F4 001FB174 56018384 */  lh         $3, 0x156($4)
    /* FC0F8 001FB178 82110200 */  srl        $2, $2, 6
    /* FC0FC 001FB17C 54018584 */  lh         $5, 0x154($4)
    /* FC100 001FB180 3F004230 */  andi       $2, $2, 0x3F
    /* FC104 001FB184 78190300 */  dsll       $3, $3, 5
    /* FC108 001FB188 B8130200 */  dsll       $2, $2, 14
    /* FC10C 001FB18C 382D0500 */  dsll       $5, $5, 20
    /* FC110 001FB190 25186200 */  or         $3, $3, $2
    /* FC114 001FB194 480029FE */  sd         $9, 0x48($17)
    /* FC118 001FB198 25186500 */  or         $3, $3, $5
    /* FC11C 001FB19C 50002AFE */  sd         $10, 0x50($17)
    /* FC120 001FB1A0 25186C00 */  or         $3, $3, $12
    /* FC124 001FB1A4 58002BFE */  sd         $11, 0x58($17)
    /* FC128 001FB1A8 400023FE */  sd         $3, 0x40($17)
    /* FC12C 001FB1AC 00000000 */  nop
.align 2
  .L001FB1B0:
    /* FC130 001FB1B0 40120700 */  sll        $2, $7, 9
    /* FC134 001FB1B4 0000C2FC */  sd         $2, 0x0($6)
    /* FC138 001FB1B8 0100E724 */  addiu      $7, $7, 0x1
    /* FC13C 001FB1BC 0800C624 */  addiu      $6, $6, 0x8
    /* FC140 001FB1C0 1000E428 */  slti       $4, $7, 0x10
    /* FC144 001FB1C4 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FC148 001FB1C8 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FC14C 001FB1CC 52016284 */  lh         $2, 0x152($3)
    /* FC150 001FB1D0 C0100200 */  sll        $2, $2, 3
    /* FC154 001FB1D4 2310E201 */  subu       $2, $15, $2
    /* FC158 001FB1D8 38140200 */  dsll       $2, $2, 16
    /* FC15C 001FB1DC 25100201 */  or         $2, $8, $2
    /* FC160 001FB1E0 0000C2FC */  sd         $2, 0x0($6)
    /* FC164 001FB1E4 00020825 */  addiu      $8, $8, 0x200
    /* FC168 001FB1E8 0800C624 */  addiu      $6, $6, 0x8
    /* FC16C 001FB1EC 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FC170 001FB1F0 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FC174 001FB1F4 52016284 */  lh         $2, 0x152($3)
    /* FC178 001FB1F8 38150200 */  dsll       $2, $2, 20
    /* FC17C 001FB1FC 2510A201 */  or         $2, $13, $2
    /* FC180 001FB200 0000C2FC */  sd         $2, 0x0($6)
    /* FC184 001FB204 0002AD25 */  addiu      $13, $13, 0x200
    /* FC188 001FB208 0800C624 */  addiu      $6, $6, 0x8
    /* FC18C 001FB20C 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FC190 001FB210 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FC194 001FB214 52016284 */  lh         $2, 0x152($3)
    /* FC198 001FB218 C0100200 */  sll        $2, $2, 3
    /* FC19C 001FB21C F07F4224 */  addiu      $2, $2, 0x7FF0
    /* FC1A0 001FB220 38140200 */  dsll       $2, $2, 16
    /* FC1A4 001FB224 2510C201 */  or         $2, $14, $2
    /* FC1A8 001FB228 0000C2FC */  sd         $2, 0x0($6)
    /* FC1AC 001FB22C 0002CE25 */  addiu      $14, $14, 0x200
    /* FC1B0 001FB230 DFFF8014 */  bnez       $4, .L001FB1B0
    /* FC1B4 001FB234 0800C624 */   addiu     $6, $6, 0x8
    /* FC1B8 001FB238 1500033C */  lui        $3, %hi(D_00152140)
    /* FC1BC 001FB23C 00800234 */  ori        $2, $0, 0x8000
    /* FC1C0 001FB240 7C130200 */  dsll32     $2, $2, 13
    /* FC1C4 001FB244 01004234 */  ori        $2, $2, 0x1
    /* FC1C8 001FB248 40217124 */  addiu      $17, $3, %lo(D_00152140)
    /* FC1CC 001FB24C 402162FC */  sd         $2, %lo(D_00152140)($3)
    /* FC1D0 001FB250 00900534 */  ori        $5, $0, 0x9000
    /* FC1D4 001FB254 BC2B0500 */  dsll32     $5, $5, 14
    /* FC1D8 001FB258 0180A534 */  ori        $5, $5, 0x8001
    /* FC1DC 001FB25C 0E000324 */  addiu      $3, $0, 0xE
    /* FC1E0 001FB260 0300023C */  lui        $2, (0x30000 >> 16)
    /* FC1E4 001FB264 47000424 */  addiu      $4, $0, 0x47
    /* FC1E8 001FB268 10000624 */  addiu      $6, $0, 0x10
    /* FC1EC 001FB26C 06010724 */  addiu      $7, $0, 0x106
    /* FC1F0 001FB270 00800834 */  ori        $8, $0, 0x8000
    /* FC1F4 001FB274 38440800 */  dsll       $8, $8, 16
    /* FC1F8 001FB278 00800835 */  ori        $8, $8, 0x8000
    /* FC1FC 001FB27C 00900934 */  ori        $9, $0, 0x9000
    /* FC200 001FB280 BC4B0900 */  dsll32     $9, $9, 14
    /* FC204 001FB284 10802935 */  ori        $9, $9, 0x8010
    /* FC208 001FB288 44000A24 */  addiu      $10, $0, 0x44
    /* FC20C 001FB28C 200025FE */  sd         $5, 0x20($17)
    /* FC210 001FB290 080023FE */  sd         $3, 0x8($17)
    /* FC214 001FB294 50002B26 */  addiu      $11, $17, 0x50
    /* FC218 001FB298 100022FE */  sd         $2, 0x10($17)
    /* FC21C 001FB29C 2D680000 */  daddu      $13, $0, $0
    /* FC220 001FB2A0 180024FE */  sd         $4, 0x18($17)
    /* FC224 001FB2A4 F87F0E24 */  addiu      $14, $0, 0x7FF8
    /* FC228 001FB2A8 280026FE */  sd         $6, 0x28($17)
    /* FC22C 001FB2AC F8710C24 */  addiu      $12, $0, 0x71F8
    /* FC230 001FB2B0 300027FE */  sd         $7, 0x30($17)
    /* FC234 001FB2B4 F86F0524 */  addiu      $5, $0, 0x6FF8
    /* FC238 001FB2B8 380028FE */  sd         $8, 0x38($17)
    /* FC23C 001FB2BC 400029FE */  sd         $9, 0x40($17)
    /* FC240 001FB2C0 48002AFE */  sd         $10, 0x48($17)
    /* FC244 001FB2C4 00000000 */  nop
.align 2
  .L001FB2C8:
    /* FC248 001FB2C8 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FC24C 001FB2CC B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FC250 001FB2D0 0100AD25 */  addiu      $13, $13, 0x1
    /* FC254 001FB2D4 1000A429 */  slti       $4, $13, 0x10
    /* FC258 001FB2D8 52016284 */  lh         $2, 0x152($3)
    /* FC25C 001FB2DC C0100200 */  sll        $2, $2, 3
    /* FC260 001FB2E0 2310C201 */  subu       $2, $14, $2
    /* FC264 001FB2E4 38140200 */  dsll       $2, $2, 16
    /* FC268 001FB2E8 2510A200 */  or         $2, $5, $2
    /* FC26C 001FB2EC 000062FD */  sd         $2, 0x0($11)
    /* FC270 001FB2F0 0002A524 */  addiu      $5, $5, 0x200
    /* FC274 001FB2F4 08006B25 */  addiu      $11, $11, 0x8
    /* FC278 001FB2F8 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FC27C 001FB2FC B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FC280 001FB300 52016284 */  lh         $2, 0x152($3)
    /* FC284 001FB304 C0100200 */  sll        $2, $2, 3
    /* FC288 001FB308 F87F4224 */  addiu      $2, $2, 0x7FF8
    /* FC28C 001FB30C 38140200 */  dsll       $2, $2, 16
    /* FC290 001FB310 25108201 */  or         $2, $12, $2
    /* FC294 001FB314 000062FD */  sd         $2, 0x0($11)
    /* FC298 001FB318 00028C25 */  addiu      $12, $12, 0x200
    /* FC29C 001FB31C EAFF8014 */  bnez       $4, .L001FB2C8
    /* FC2A0 001FB320 08006B25 */   addiu     $11, $11, 0x8
    /* FC2A4 001FB324 1400023C */  lui        $2, %hi(D_0013CD90)
    /* FC2A8 001FB328 2D400000 */  daddu      $8, $0, $0
    /* FC2AC 001FB32C 90CD5124 */  addiu      $17, $2, %lo(D_0013CD90)
    /* FC2B0 001FB330 F87F0924 */  addiu      $9, $0, 0x7FF8
    /* FC2B4 001FB334 40002626 */  addiu      $6, $17, 0x40
    /* FC2B8 001FB338 F8710724 */  addiu      $7, $0, 0x71F8
    /* FC2BC 001FB33C F86F0524 */  addiu      $5, $0, 0x6FF8
.align 2
  .L001FB340:
    /* FC2C0 001FB340 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FC2C4 001FB344 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FC2C8 001FB348 01000825 */  addiu      $8, $8, 0x1
    /* FC2CC 001FB34C 10000429 */  slti       $4, $8, 0x10
    /* FC2D0 001FB350 52016284 */  lh         $2, 0x152($3)
    /* FC2D4 001FB354 C0100200 */  sll        $2, $2, 3
    /* FC2D8 001FB358 23102201 */  subu       $2, $9, $2
    /* FC2DC 001FB35C 38140200 */  dsll       $2, $2, 16
    /* FC2E0 001FB360 2510A200 */  or         $2, $5, $2
    /* FC2E4 001FB364 0000C2FC */  sd         $2, 0x0($6)
    /* FC2E8 001FB368 0002A524 */  addiu      $5, $5, 0x200
    /* FC2EC 001FB36C 0800C624 */  addiu      $6, $6, 0x8
    /* FC2F0 001FB370 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FC2F4 001FB374 B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FC2F8 001FB378 52016284 */  lh         $2, 0x152($3)
    /* FC2FC 001FB37C C0100200 */  sll        $2, $2, 3
    /* FC300 001FB380 F87F4224 */  addiu      $2, $2, 0x7FF8
    /* FC304 001FB384 38140200 */  dsll       $2, $2, 16
    /* FC308 001FB388 2510E200 */  or         $2, $7, $2
    /* FC30C 001FB38C 0000C2FC */  sd         $2, 0x0($6)
    /* FC310 001FB390 0002E724 */  addiu      $7, $7, 0x200
    /* FC314 001FB394 EAFF8014 */  bnez       $4, .L001FB340
    /* FC318 001FB398 0800C624 */   addiu     $6, $6, 0x8
    /* FC31C 001FB39C 1400023C */  lui        $2, %hi(D_0013CED0)
    /* FC320 001FB3A0 2D400000 */  daddu      $8, $0, $0
    /* FC324 001FB3A4 D0CE5124 */  addiu      $17, $2, %lo(D_0013CED0)
    /* FC328 001FB3A8 F87F0924 */  addiu      $9, $0, 0x7FF8
    /* FC32C 001FB3AC 40002626 */  addiu      $6, $17, 0x40
    /* FC330 001FB3B0 F8710724 */  addiu      $7, $0, 0x71F8
    /* FC334 001FB3B4 F86F0524 */  addiu      $5, $0, 0x6FF8
.align 2
  .L001FB3B8:
    /* FC338 001FB3B8 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FC33C 001FB3BC B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FC340 001FB3C0 01000825 */  addiu      $8, $8, 0x1
    /* FC344 001FB3C4 10000429 */  slti       $4, $8, 0x10
    /* FC348 001FB3C8 5A016284 */  lh         $2, 0x15A($3)
    /* FC34C 001FB3CC C0100200 */  sll        $2, $2, 3
    /* FC350 001FB3D0 23102201 */  subu       $2, $9, $2
    /* FC354 001FB3D4 38140200 */  dsll       $2, $2, 16
    /* FC358 001FB3D8 2510A200 */  or         $2, $5, $2
    /* FC35C 001FB3DC 0000C2FC */  sd         $2, 0x0($6)
    /* FC360 001FB3E0 0002A524 */  addiu      $5, $5, 0x200
    /* FC364 001FB3E4 0800C624 */  addiu      $6, $6, 0x8
    /* FC368 001FB3E8 1600033C */  lui        $3, %hi(D_0015EFB8)
    /* FC36C 001FB3EC B8EF638C */  lw         $3, %lo(D_0015EFB8)($3)
    /* FC370 001FB3F0 5A016284 */  lh         $2, 0x15A($3)
    /* FC374 001FB3F4 C0100200 */  sll        $2, $2, 3
    /* FC378 001FB3F8 F87F4224 */  addiu      $2, $2, 0x7FF8
    /* FC37C 001FB3FC 38140200 */  dsll       $2, $2, 16
    /* FC380 001FB400 2510E200 */  or         $2, $7, $2
    /* FC384 001FB404 0000C2FC */  sd         $2, 0x0($6)
    /* FC388 001FB408 0002E724 */  addiu      $7, $7, 0x200
    /* FC38C 001FB40C EAFF8014 */  bnez       $4, .L001FB3B8
    /* FC390 001FB410 0800C624 */   addiu     $6, $6, 0x8
    /* FC394 001FB414 9000BF7B */  lq         $31, 0x90($29)
    /* FC398 001FB418 8000BE7B */  lq         $30, 0x80($29)
    /* FC39C 001FB41C 7000B77B */  lq         $23, 0x70($29)
    /* FC3A0 001FB420 6000B67B */  lq         $22, 0x60($29)
    /* FC3A4 001FB424 5000B57B */  lq         $21, 0x50($29)
    /* FC3A8 001FB428 4000B47B */  lq         $20, 0x40($29)
    /* FC3AC 001FB42C 3000B37B */  lq         $19, 0x30($29)
    /* FC3B0 001FB430 2000B27B */  lq         $18, 0x20($29)
    /* FC3B4 001FB434 1000B17B */  lq         $17, 0x10($29)
    /* FC3B8 001FB438 0000B07B */  lq         $16, 0x0($29)
    /* FC3BC 001FB43C 0800E003 */  jr         $31
    /* FC3C0 001FB440 A000BD27 */   addiu     $29, $29, 0xA0
endlabel func_001FAB40
    /* FC3C4 001FB444 00000000 */  nop
