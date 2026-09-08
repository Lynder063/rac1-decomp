.align 3
nonmatching func_001FAB40, 0x904

glabel func_001FAB40
    /* FBAC0 001FAB40 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* FBAC4 001FAB44 1600033C */  lui        $v1, %hi(D_0015EF80)
    /* FBAC8 001FAB48 80EF638C */  lw         $v1, %lo(D_0015EF80)($v1)
    /* FBACC 001FAB4C 0000B07F */  sq         $s0, 0x0($sp)
    /* FBAD0 001FAB50 31000224 */  addiu      $v0, $zero, 0x31
    /* FBAD4 001FAB54 16000A3C */  lui        $t2, %hi(D_0015EF84)
    /* FBAD8 001FAB58 84EF4A8D */  lw         $t2, %lo(D_0015EF84)($t2)
    /* FBADC 001FAB5C 1500103C */  lui        $s0, %hi(D_00151880)
    /* FBAE0 001FAB60 16000B3C */  lui        $t3, %hi(D_0015EF88)
    /* FBAE4 001FAB64 88EF6B8D */  lw         $t3, %lo(D_0015EF88)($t3)
    /* FBAE8 001FAB68 80181026 */  addiu      $s0, $s0, %lo(D_00151880)
    /* FBAEC 001FAB6C 8000BE7F */  sq         $fp, 0x80($sp)
    /* FBAF0 001FAB70 43530A00 */  sra        $t2, $t2, 13
    /* FBAF4 001FAB74 7000B77F */  sq         $s7, 0x70($sp)
    /* FBAF8 001FAB78 435B0B00 */  sra        $t3, $t3, 13
    /* FBAFC 001FAB7C 6000B67F */  sq         $s6, 0x60($sp)
    /* FBB00 001FAB80 431B0300 */  sra        $v1, $v1, 13
    /* FBB04 001FAB84 5000B57F */  sq         $s5, 0x50($sp)
    /* FBB08 001FAB88 2D60C000 */  daddu      $t4, $a2, $zero
    /* FBB0C 001FAB8C 4000B47F */  sq         $s4, 0x40($sp)
    /* FBB10 001FAB90 2D68E000 */  daddu      $t5, $a3, $zero
    /* FBB14 001FAB94 3000B37F */  sq         $s3, 0x30($sp)
    /* FBB18 001FAB98 2D700001 */  daddu      $t6, $t0, $zero
    /* FBB1C 001FAB9C 2000B27F */  sq         $s2, 0x20($sp)
    /* FBB20 001FABA0 2D782001 */  daddu      $t7, $t1, $zero
    /* FBB24 001FABA4 1000B17F */  sq         $s1, 0x10($sp)
    /* FBB28 001FABA8 00340C00 */  sll        $a2, $t4, 16
    /* FBB2C 001FABAC 9000BF7F */  sq         $ra, 0x90($sp)
    /* FBB30 001FABB0 003C0D00 */  sll        $a3, $t5, 16
    /* FBB34 001FABB4 56010AA6 */  sh         $t2, 0x156($s0)
    /* FBB38 001FABB8 00440E00 */  sll        $t0, $t6, 16
    /* FBB3C 001FABBC 6E010BA6 */  sh         $t3, 0x16E($s0)
    /* FBB40 001FABC0 004C0F00 */  sll        $t1, $t7, 16
    /* FBB44 001FABC4 500104A6 */  sh         $a0, 0x150($s0)
    /* FBB48 001FABC8 03340600 */  sra        $a2, $a2, 16
    /* FBB4C 001FABCC 520105A6 */  sh         $a1, 0x152($s0)
    /* FBB50 001FABD0 2D200002 */  daddu      $a0, $s0, $zero
    /* FBB54 001FABD4 6C0102A6 */  sh         $v0, 0x16C($s0)
    /* FBB58 001FABD8 2D280000 */  daddu      $a1, $zero, $zero
    /* FBB5C 001FABDC 5E0103A6 */  sh         $v1, 0x15E($s0)
    /* FBB60 001FABE0 033C0700 */  sra        $a3, $a3, 16
    /* FBB64 001FABE4 1600013C */  lui        $at, %hi(D_0015EFB8)
    /* FBB68 001FABE8 B8EF30AC */  sw         $s0, %lo(D_0015EFB8)($at)
    /* FBB6C 001FABEC 03440800 */  sra        $t0, $t0, 16
    /* FBB70 001FABF0 58010CA6 */  sh         $t4, 0x158($s0)
    /* FBB74 001FABF4 034C0900 */  sra        $t1, $t1, 16
    /* FBB78 001FABF8 5A010DA6 */  sh         $t5, 0x15A($s0)
    /* FBB7C 001FABFC 00FE1124 */  addiu      $s1, $zero, -0x200
    /* FBB80 001FAC00 68010EA6 */  sh         $t6, 0x168($s0)
    /* FBB84 001FAC04 00801624 */  addiu      $s6, $zero, -0x8000
    /* FBB88 001FAC08 6A010FA6 */  sh         $t7, 0x16A($s0)
    /* FBB8C 001FAC0C 08001224 */  addiu      $s2, $zero, 0x8
    /* FBB90 001FAC10 700100AE */  sw         $zero, 0x170($s0)
    /* FBB94 001FAC14 00801734 */  ori        $s7, $zero, 0x8000
    /* FBB98 001FAC18 5C0100A6 */  sh         $zero, 0x15C($s0)
    /* FBB9C 001FAC1C FFFF1E24 */  addiu      $fp, $zero, -0x1
    /* FBBA0 001FAC20 3AF11E00 */  dsrl       $fp, $fp, 4
    /* FBBA4 001FAC24 540100A6 */  sh         $zero, 0x154($s0)
    /* FBBA8 001FAC28 F0FF1424 */  addiu      $s4, $zero, -0x10
    /* FBBAC 001FAC2C 640100A6 */  sh         $zero, 0x164($s0)
    /* FBBB0 001FAC30 7287040C */  jal        func_00121DC8
    /* FBBB4 001FAC34 0E001324 */   addiu     $s3, $zero, 0xE
    /* FBBB8 001FAC38 00801534 */  ori        $s5, $zero, 0x8000
    /* FBBBC 001FAC3C 7CAB1500 */  dsll32     $s5, $s5, 13
    /* FBBC0 001FAC40 1600053C */  lui        $a1, %hi(D_0015EFB8)
    /* FBBC4 001FAC44 B8EFA58C */  lw         $a1, %lo(D_0015EFB8)($a1)
    /* FBBC8 001FAC48 03000824 */  addiu      $t0, $zero, 0x3
    /* FBBCC 001FAC4C 5E010386 */  lh         $v1, 0x15E($s0)
    /* FBBD0 001FAC50 1000A2DC */  ld         $v0, 0x10($a1)
    /* FBBD4 001FAC54 4000A424 */  addiu      $a0, $a1, 0x40
    /* FBBD8 001FAC58 FF016330 */  andi       $v1, $v1, 0x1FF
    /* FBBDC 001FAC5C 24105100 */  and        $v0, $v0, $s1
    /* FBBE0 001FAC60 25104300 */  or         $v0, $v0, $v1
    /* FBBE4 001FAC64 1000A2FC */  sd         $v0, 0x10($a1)
    /* FBBE8 001FAC68 54010586 */  lh         $a1, 0x154($s0)
    /* FBBEC 001FAC6C 50010686 */  lh         $a2, 0x150($s0)
    /* FBBF0 001FAC70 52010786 */  lh         $a3, 0x152($s0)
    /* FBBF4 001FAC74 B288040C */  jal        func_001222C8
    /* FBBF8 001FAC78 6C010986 */   lh        $t1, 0x16C($s0)
    /* FBBFC 001FAC7C 1600043C */  lui        $a0, %hi(D_0015EFB8)
    /* FBC00 001FAC80 B8EF848C */  lw         $a0, %lo(D_0015EFB8)($a0)
    /* FBC04 001FAC84 2D400000 */  daddu      $t0, $zero, $zero
    /* FBC08 001FAC88 56010386 */  lh         $v1, 0x156($s0)
    /* FBC0C 001FAC8C 2D480000 */  daddu      $t1, $zero, $zero
    /* FBC10 001FAC90 400082DC */  ld         $v0, 0x40($a0)
    /* FBC14 001FAC94 FF016330 */  andi       $v1, $v1, 0x1FF
    /* FBC18 001FAC98 24105100 */  and        $v0, $v0, $s1
    /* FBC1C 001FAC9C 25104300 */  or         $v0, $v0, $v1
    /* FBC20 001FACA0 400082FC */  sd         $v0, 0x40($a0)
    /* FBC24 001FACA4 6C010396 */  lhu        $v1, 0x16C($s0)
    /* FBC28 001FACA8 6E010286 */  lh         $v0, 0x16E($s0)
    /* FBC2C 001FACAC 0F006330 */  andi       $v1, $v1, 0xF
    /* FBC30 001FACB0 381E0300 */  dsll       $v1, $v1, 24
    /* FBC34 001FACB4 25104300 */  or         $v0, $v0, $v1
    /* FBC38 001FACB8 500082FC */  sd         $v0, 0x50($a0)
    /* FBC3C 001FACBC A9140070 */  por        $v0, $zero, $zero
    /* FBC40 001FACC0 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FBC44 001FACC4 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FBC48 001FACC8 3000627C */  sq         $v0, 0x30($v1)
    /* FBC4C 001FACCC 1600053C */  lui        $a1, %hi(D_0015EFB8)
    /* FBC50 001FACD0 B8EFA58C */  lw         $a1, %lo(D_0015EFB8)($a1)
    /* FBC54 001FACD4 3000A2DC */  ld         $v0, 0x30($a1)
    /* FBC58 001FACD8 D000A424 */  addiu      $a0, $a1, 0xD0
    /* FBC5C 001FACDC 3800A3DC */  ld         $v1, 0x38($a1)
    /* FBC60 001FACE0 24105600 */  and        $v0, $v0, $s6
    /* FBC64 001FACE4 25105200 */  or         $v0, $v0, $s2
    /* FBC68 001FACE8 24187400 */  and        $v1, $v1, $s4
    /* FBC6C 001FACEC 25105700 */  or         $v0, $v0, $s7
    /* FBC70 001FACF0 25187300 */  or         $v1, $v1, $s3
    /* FBC74 001FACF4 24105E00 */  and        $v0, $v0, $fp
    /* FBC78 001FACF8 3800A3FC */  sd         $v1, 0x38($a1)
    /* FBC7C 001FACFC 25105500 */  or         $v0, $v0, $s5
    /* FBC80 001FAD00 3000A2FC */  sd         $v0, 0x30($a1)
    /* FBC84 001FAD04 5C010586 */  lh         $a1, 0x15C($s0)
    /* FBC88 001FAD08 58010686 */  lh         $a2, 0x158($s0)
    /* FBC8C 001FAD0C B288040C */  jal        func_001222C8
    /* FBC90 001FAD10 5A010786 */   lh        $a3, 0x15A($s0)
    /* FBC94 001FAD14 1600043C */  lui        $a0, %hi(D_0015EFB8)
    /* FBC98 001FAD18 B8EF848C */  lw         $a0, %lo(D_0015EFB8)($a0)
    /* FBC9C 001FAD1C 00800534 */  ori        $a1, $zero, 0x8000
    /* FBCA0 001FAD20 782C0500 */  dsll       $a1, $a1, 17
    /* FBCA4 001FAD24 5E010386 */  lh         $v1, 0x15E($s0)
    /* FBCA8 001FAD28 1500063C */  lui        $a2, %hi(D_00151C60)
    /* FBCAC 001FAD2C D00082DC */  ld         $v0, 0xD0($a0)
    /* FBCB0 001FAD30 16810F34 */  ori        $t7, $zero, 0x8116
    /* FBCB4 001FAD34 387C0F00 */  dsll       $t7, $t7, 16
    /* FBCB8 001FAD38 0080EF35 */  ori        $t7, $t7, 0x8000
    /* FBCBC 001FAD3C F87F0F00 */  dsll       $t7, $t7, 31
    /* FBCC0 001FAD40 0100EF35 */  ori        $t7, $t7, 0x1
    /* FBCC4 001FAD44 E00085FC */  sd         $a1, 0xE0($a0)
    /* FBCC8 001FAD48 FF016330 */  andi       $v1, $v1, 0x1FF
    /* FBCCC 001FAD4C 24105100 */  and        $v0, $v0, $s1
    /* FBCD0 001FAD50 EEEE0734 */  ori        $a3, $zero, 0xEEEE
    /* FBCD4 001FAD54 1600053C */  lui        $a1, %hi(D_0015EFB8)
    /* FBCD8 001FAD58 B8EFA58C */  lw         $a1, %lo(D_0015EFB8)($a1)
    /* FBCDC 001FAD5C 25104300 */  or         $v0, $v0, $v1
    /* FBCE0 001FAD60 D00082FC */  sd         $v0, 0xD0($a0)
    /* FBCE4 001FAD64 A91C0070 */  por        $v1, $zero, $zero
    /* FBCE8 001FAD68 C000A37C */  sq         $v1, 0xC0($a1)
    /* FBCEC 001FAD6C 601CD124 */  addiu      $s1, $a2, %lo(D_00151C60)
    /* FBCF0 001FAD70 0300053C */  lui        $a1, (0x30000 >> 16)
    /* FBCF4 001FAD74 47000924 */  addiu      $t1, $zero, 0x47
    /* FBCF8 001FAD78 1600043C */  lui        $a0, %hi(D_0015EFB8)
    /* FBCFC 001FAD7C B8EF848C */  lw         $a0, %lo(D_0015EFB8)($a0)
    /* FBD00 001FAD80 05000A24 */  addiu      $t2, $zero, 0x5
    /* FBD04 001FAD84 00800B34 */  ori        $t3, $zero, 0x8000
    /* FBD08 001FAD88 785C0B00 */  dsll       $t3, $t3, 17
    /* FBD0C 001FAD8C 61026B35 */  ori        $t3, $t3, 0x261
    /* FBD10 001FAD90 14000824 */  addiu      $t0, $zero, 0x14
    /* FBD14 001FAD94 C00082DC */  ld         $v0, 0xC0($a0)
    /* FBD18 001FAD98 80EA1034 */  ori        $s0, $zero, 0xEA80
    /* FBD1C 001FAD9C 38851000 */  dsll       $s0, $s0, 20
    /* FBD20 001FADA0 C80083DC */  ld         $v1, 0xC8($a0)
    /* FBD24 001FADA4 06000C24 */  addiu      $t4, $zero, 0x6
    /* FBD28 001FADA8 24105600 */  and        $v0, $v0, $s6
    /* FBD2C 001FADAC 00880D34 */  ori        $t5, $zero, 0x8800
    /* FBD30 001FADB0 FC6B0D00 */  dsll32     $t5, $t5, 15
    /* FBD34 001FADB4 1080AD35 */  ori        $t5, $t5, 0x8010
    /* FBD38 001FADB8 25105200 */  or         $v0, $v0, $s2
    /* FBD3C 001FADBC 24187400 */  and        $v1, $v1, $s4
    /* FBD40 001FADC0 25105700 */  or         $v0, $v0, $s7
    /* FBD44 001FADC4 25187300 */  or         $v1, $v1, $s3
    /* FBD48 001FADC8 24105E00 */  and        $v0, $v0, $fp
    /* FBD4C 001FADCC C80083FC */  sd         $v1, 0xC8($a0)
    /* FBD50 001FADD0 25105500 */  or         $v0, $v0, $s5
    /* FBD54 001FADD4 53530E24 */  addiu      $t6, $zero, 0x5353
    /* FBD58 001FADD8 C00082FC */  sd         $v0, 0xC0($a0)
    /* FBD5C 001FADDC 00801834 */  ori        $t8, $zero, 0x8000
    /* FBD60 001FADE0 601CCFFC */  sd         $t7, %lo(D_00151C60)($a2)
    /* FBD64 001FADE4 F87F1924 */  addiu      $t9, $zero, 0x7FF8
    /* FBD68 001FADE8 080027FE */  sd         $a3, 0x8($s1)
    /* FBD6C 001FADEC 2D980000 */  daddu      $s3, $zero, $zero
    /* FBD70 001FADF0 100025FE */  sd         $a1, 0x10($s1)
    /* FBD74 001FADF4 60002F26 */  addiu      $t7, $s1, 0x60
    /* FBD78 001FADF8 180029FE */  sd         $t1, 0x18($s1)
    /* FBD7C 001FADFC 20002AFE */  sd         $t2, 0x20($s1)
    /* FBD80 001FAE00 280032FE */  sd         $s2, 0x28($s1)
    /* FBD84 001FAE04 30002BFE */  sd         $t3, 0x30($s1)
    /* FBD88 001FAE08 380028FE */  sd         $t0, 0x38($s1)
    /* FBD8C 001FAE0C 1600043C */  lui        $a0, %hi(D_0015EFB8)
    /* FBD90 001FAE10 B8EF848C */  lw         $a0, %lo(D_0015EFB8)($a0)
    /* FBD94 001FAE14 50018294 */  lhu        $v0, 0x150($a0)
    /* FBD98 001FAE18 56018384 */  lh         $v1, 0x156($a0)
    /* FBD9C 001FAE1C 82110200 */  srl        $v0, $v0, 6
    /* FBDA0 001FAE20 54018584 */  lh         $a1, 0x154($a0)
    /* FBDA4 001FAE24 3F004230 */  andi       $v0, $v0, 0x3F
    /* FBDA8 001FAE28 78190300 */  dsll       $v1, $v1, 5
    /* FBDAC 001FAE2C B8130200 */  dsll       $v0, $v0, 14
    /* FBDB0 001FAE30 382D0500 */  dsll       $a1, $a1, 20
    /* FBDB4 001FAE34 25186200 */  or         $v1, $v1, $v0
    /* FBDB8 001FAE38 48002CFE */  sd         $t4, 0x48($s1)
    /* FBDBC 001FAE3C 25186500 */  or         $v1, $v1, $a1
    /* FBDC0 001FAE40 50002DFE */  sd         $t5, 0x50($s1)
    /* FBDC4 001FAE44 25187000 */  or         $v1, $v1, $s0
    /* FBDC8 001FAE48 58002EFE */  sd         $t6, 0x58($s1)
    /* FBDCC 001FAE4C 400023FE */  sd         $v1, 0x40($s1)
.align 2
  .L001FAE50:
    /* FBDD0 001FAE50 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FBDD4 001FAE54 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FBDD8 001FAE58 01006626 */  addiu      $a2, $s3, 0x1
    /* FBDDC 001FAE5C 50016284 */  lh         $v0, 0x150($v1)
    /* FBDE0 001FAE60 18106202 */  mult       $v0, $s3, $v0
    /* FBDE4 001FAE64 0000E2FD */  sd         $v0, 0x0($t7)
    /* FBDE8 001FAE68 0800EF25 */  addiu      $t7, $t7, 0x8
    /* FBDEC 001FAE6C 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FBDF0 001FAE70 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FBDF4 001FAE74 58016584 */  lh         $a1, 0x158($v1)
    /* FBDF8 001FAE78 5A016284 */  lh         $v0, 0x15A($v1)
    /* FBDFC 001FAE7C 18186502 */  mult       $v1, $s3, $a1
    /* FBE00 001FAE80 C0100200 */  sll        $v0, $v0, 3
    /* FBE04 001FAE84 C0280500 */  sll        $a1, $a1, 3
    /* FBE08 001FAE88 23102203 */  subu       $v0, $t9, $v0
    /* FBE0C 001FAE8C 2D98C000 */  daddu      $s3, $a2, $zero
    /* FBE10 001FAE90 38140200 */  dsll       $v0, $v0, 16
    /* FBE14 001FAE94 1000672A */  slti       $a3, $s3, 0x10
    /* FBE18 001FAE98 21207800 */  addu       $a0, $v1, $t8
    /* FBE1C 001FAE9C 23208500 */  subu       $a0, $a0, $a1
    /* FBE20 001FAEA0 25208200 */  or         $a0, $a0, $v0
    /* FBE24 001FAEA4 0000E4FD */  sd         $a0, 0x0($t7)
    /* FBE28 001FAEA8 0800EF25 */  addiu      $t7, $t7, 0x8
    /* FBE2C 001FAEAC 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FBE30 001FAEB0 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FBE34 001FAEB4 50016484 */  lh         $a0, 0x150($v1)
    /* FBE38 001FAEB8 52016284 */  lh         $v0, 0x152($v1)
    /* FBE3C 001FAEBC 1820C400 */  mult       $a0, $a2, $a0
    /* FBE40 001FAEC0 38150200 */  dsll       $v0, $v0, 20
    /* FBE44 001FAEC4 25108200 */  or         $v0, $a0, $v0
    /* FBE48 001FAEC8 0000E2FD */  sd         $v0, 0x0($t7)
    /* FBE4C 001FAECC 0800EF25 */  addiu      $t7, $t7, 0x8
    /* FBE50 001FAED0 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FBE54 001FAED4 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FBE58 001FAED8 58016484 */  lh         $a0, 0x158($v1)
    /* FBE5C 001FAEDC 5A016284 */  lh         $v0, 0x15A($v1)
    /* FBE60 001FAEE0 1818C400 */  mult       $v1, $a2, $a0
    /* FBE64 001FAEE4 C0100200 */  sll        $v0, $v0, 3
    /* FBE68 001FAEE8 C0200400 */  sll        $a0, $a0, 3
    /* FBE6C 001FAEEC F87F4224 */  addiu      $v0, $v0, 0x7FF8
    /* FBE70 001FAEF0 38140200 */  dsll       $v0, $v0, 16
    /* FBE74 001FAEF4 21307800 */  addu       $a2, $v1, $t8
    /* FBE78 001FAEF8 2330C400 */  subu       $a2, $a2, $a0
    /* FBE7C 001FAEFC 2530C200 */  or         $a2, $a2, $v0
    /* FBE80 001FAF00 0000E6FD */  sd         $a2, 0x0($t7)
    /* FBE84 001FAF04 D2FFE014 */  bnez       $a3, .L001FAE50
    /* FBE88 001FAF08 0800EF25 */   addiu     $t7, $t7, 0x8
    /* FBE8C 001FAF0C 00880234 */  ori        $v0, $zero, 0x8800
    /* FBE90 001FAF10 FC130200 */  dsll32     $v0, $v0, 15
    /* FBE94 001FAF14 01804234 */  ori        $v0, $v0, 0x8001
    /* FBE98 001FAF18 10440424 */  addiu      $a0, $zero, 0x4410
    /* FBE9C 001FAF1C 81010524 */  addiu      $a1, $zero, 0x181
    /* FBEA0 001FAF20 00800634 */  ori        $a2, $zero, 0x8000
    /* FBEA4 001FAF24 38340600 */  dsll       $a2, $a2, 16
    /* FBEA8 001FAF28 700225FE */  sd         $a1, 0x270($s1)
    /* FBEAC 001FAF2C F87F0324 */  addiu      $v1, $zero, 0x7FF8
    /* FBEB0 001FAF30 780226FE */  sd         $a2, 0x278($s1)
    /* FBEB4 001FAF34 F86F0724 */  addiu      $a3, $zero, 0x6FF8
    /* FBEB8 001FAF38 600222FE */  sd         $v0, 0x260($s1)
    /* FBEBC 001FAF3C 2DC20834 */  ori        $t0, $zero, 0xC22D
    /* FBEC0 001FAF40 BC430800 */  dsll32     $t0, $t0, 14
    /* FBEC4 001FAF44 01000835 */  ori        $t0, $t0, 0x1
    /* FBEC8 001FAF48 680224FE */  sd         $a0, 0x268($s1)
    /* FBECC 001FAF4C EE0E0524 */  addiu      $a1, $zero, 0xEEE
    /* FBED0 001FAF50 03000A3C */  lui        $t2, (0x30000 >> 16)
    /* FBED4 001FAF54 47000B24 */  addiu      $t3, $zero, 0x47
    /* FBED8 001FAF58 1600043C */  lui        $a0, %hi(D_0015EFB8)
    /* FBEDC 001FAF5C B8EF848C */  lw         $a0, %lo(D_0015EFB8)($a0)
    /* FBEE0 001FAF60 00800634 */  ori        $a2, $zero, 0x8000
    /* FBEE4 001FAF64 78340600 */  dsll       $a2, $a2, 17
    /* FBEE8 001FAF68 6102C634 */  ori        $a2, $a2, 0x261
    /* FBEEC 001FAF6C 14000924 */  addiu      $t1, $zero, 0x14
    /* FBEF0 001FAF70 80EA0F34 */  ori        $t7, $zero, 0xEA80
    /* FBEF4 001FAF74 387D0F00 */  dsll       $t7, $t7, 20
    /* FBEF8 001FAF78 5A018284 */  lh         $v0, 0x15A($a0)
    /* FBEFC 001FAF7C 06000C24 */  addiu      $t4, $zero, 0x6
    /* FBF00 001FAF80 00880D34 */  ori        $t5, $zero, 0x8800
    /* FBF04 001FAF84 FC6B0D00 */  dsll32     $t5, $t5, 15
    /* FBF08 001FAF88 1080AD35 */  ori        $t5, $t5, 0x8010
    /* FBF0C 001FAF8C 53530E24 */  addiu      $t6, $zero, 0x5353
    /* FBF10 001FAF90 C0100200 */  sll        $v0, $v0, 3
    /* FBF14 001FAF94 2D800000 */  daddu      $s0, $zero, $zero
    /* FBF18 001FAF98 23186200 */  subu       $v1, $v1, $v0
    /* FBF1C 001FAF9C F87F1524 */  addiu      $s5, $zero, 0x7FF8
    /* FBF20 001FAFA0 381C0300 */  dsll       $v1, $v1, 16
    /* FBF24 001FAFA4 001A143C */  lui        $s4, (0x1A000000 >> 16)
    /* FBF28 001FAFA8 25186700 */  or         $v1, $v1, $a3
    /* FBF2C 001FAFAC F8711324 */  addiu      $s3, $zero, 0x71F8
    /* FBF30 001FAFB0 800223FE */  sd         $v1, 0x280($s1)
    /* FBF34 001FAFB4 F86F1224 */  addiu      $s2, $zero, 0x6FF8
    /* FBF38 001FAFB8 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FBF3C 001FAFBC B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FBF40 001FAFC0 5A016284 */  lh         $v0, 0x15A($v1)
    /* FBF44 001FAFC4 C0100200 */  sll        $v0, $v0, 3
    /* FBF48 001FAFC8 F87F4224 */  addiu      $v0, $v0, 0x7FF8
    /* FBF4C 001FAFCC 38140200 */  dsll       $v0, $v0, 16
    /* FBF50 001FAFD0 25104700 */  or         $v0, $v0, $a3
    /* FBF54 001FAFD4 880222FE */  sd         $v0, 0x288($s1)
    /* FBF58 001FAFD8 1500023C */  lui        $v0, %hi(D_00151EF0)
    /* FBF5C 001FAFDC F01E48FC */  sd         $t0, %lo(D_00151EF0)($v0)
    /* FBF60 001FAFE0 F01E5124 */  addiu      $s1, $v0, %lo(D_00151EF0)
    /* FBF64 001FAFE4 080025FE */  sd         $a1, 0x8($s1)
    /* FBF68 001FAFE8 50002726 */  addiu      $a3, $s1, 0x50
    /* FBF6C 001FAFEC 10002AFE */  sd         $t2, 0x10($s1)
    /* FBF70 001FAFF0 18002BFE */  sd         $t3, 0x18($s1)
    /* FBF74 001FAFF4 200026FE */  sd         $a2, 0x20($s1)
    /* FBF78 001FAFF8 280029FE */  sd         $t1, 0x28($s1)
    /* FBF7C 001FAFFC 1600043C */  lui        $a0, %hi(D_0015EFB8)
    /* FBF80 001FB000 B8EF848C */  lw         $a0, %lo(D_0015EFB8)($a0)
    /* FBF84 001FB004 50018294 */  lhu        $v0, 0x150($a0)
    /* FBF88 001FB008 56018384 */  lh         $v1, 0x156($a0)
    /* FBF8C 001FB00C 82110200 */  srl        $v0, $v0, 6
    /* FBF90 001FB010 54018584 */  lh         $a1, 0x154($a0)
    /* FBF94 001FB014 3F004230 */  andi       $v0, $v0, 0x3F
    /* FBF98 001FB018 78190300 */  dsll       $v1, $v1, 5
    /* FBF9C 001FB01C B8130200 */  dsll       $v0, $v0, 14
    /* FBFA0 001FB020 382D0500 */  dsll       $a1, $a1, 20
    /* FBFA4 001FB024 25186200 */  or         $v1, $v1, $v0
    /* FBFA8 001FB028 38002CFE */  sd         $t4, 0x38($s1)
    /* FBFAC 001FB02C 25186500 */  or         $v1, $v1, $a1
    /* FBFB0 001FB030 40002DFE */  sd         $t5, 0x40($s1)
    /* FBFB4 001FB034 25186F00 */  or         $v1, $v1, $t7
    /* FBFB8 001FB038 48002EFE */  sd         $t6, 0x48($s1)
    /* FBFBC 001FB03C 300023FE */  sd         $v1, 0x30($s1)
.align 2
  .L001FB040:
    /* FBFC0 001FB040 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FBFC4 001FB044 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FBFC8 001FB048 01000426 */  addiu      $a0, $s0, 0x1
    /* FBFCC 001FB04C 50016284 */  lh         $v0, 0x150($v1)
    /* FBFD0 001FB050 18100202 */  mult       $v0, $s0, $v0
    /* FBFD4 001FB054 2D808000 */  daddu      $s0, $a0, $zero
    /* FBFD8 001FB058 1000052A */  slti       $a1, $s0, 0x10
    /* FBFDC 001FB05C 0000E2FC */  sd         $v0, 0x0($a3)
    /* FBFE0 001FB060 0800E724 */  addiu      $a3, $a3, 0x8
    /* FBFE4 001FB064 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FBFE8 001FB068 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FBFEC 001FB06C 5A016284 */  lh         $v0, 0x15A($v1)
    /* FBFF0 001FB070 C0100200 */  sll        $v0, $v0, 3
    /* FBFF4 001FB074 2310A202 */  subu       $v0, $s5, $v0
    /* FBFF8 001FB078 38140200 */  dsll       $v0, $v0, 16
    /* FBFFC 001FB07C 25104202 */  or         $v0, $s2, $v0
    /* FC000 001FB080 0000E2FC */  sd         $v0, 0x0($a3)
    /* FC004 001FB084 00025226 */  addiu      $s2, $s2, 0x200
    /* FC008 001FB088 0800E724 */  addiu      $a3, $a3, 0x8
    /* FC00C 001FB08C 1600023C */  lui        $v0, %hi(D_0015EFB8)
    /* FC010 001FB090 B8EF428C */  lw         $v0, %lo(D_0015EFB8)($v0)
    /* FC014 001FB094 50014384 */  lh         $v1, 0x150($v0)
    /* FC018 001FB098 18208300 */  mult       $a0, $a0, $v1
    /* FC01C 001FB09C 25209400 */  or         $a0, $a0, $s4
    /* FC020 001FB0A0 0000E4FC */  sd         $a0, 0x0($a3)
    /* FC024 001FB0A4 0800E724 */  addiu      $a3, $a3, 0x8
    /* FC028 001FB0A8 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FC02C 001FB0AC B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FC030 001FB0B0 5A016284 */  lh         $v0, 0x15A($v1)
    /* FC034 001FB0B4 C0100200 */  sll        $v0, $v0, 3
    /* FC038 001FB0B8 F87F4224 */  addiu      $v0, $v0, 0x7FF8
    /* FC03C 001FB0BC 38140200 */  dsll       $v0, $v0, 16
    /* FC040 001FB0C0 25106202 */  or         $v0, $s3, $v0
    /* FC044 001FB0C4 0000E2FC */  sd         $v0, 0x0($a3)
    /* FC048 001FB0C8 00027326 */  addiu      $s3, $s3, 0x200
    /* FC04C 001FB0CC DCFFA014 */  bnez       $a1, .L001FB040
    /* FC050 001FB0D0 0800E724 */   addiu     $a3, $a3, 0x8
    /* FC054 001FB0D4 1500033C */  lui        $v1, %hi(D_00151A00)
    /* FC058 001FB0D8 16810234 */  ori        $v0, $zero, 0x8116
    /* FC05C 001FB0DC 38140200 */  dsll       $v0, $v0, 16
    /* FC060 001FB0E0 00804234 */  ori        $v0, $v0, 0x8000
    /* FC064 001FB0E4 F8170200 */  dsll       $v0, $v0, 31
    /* FC068 001FB0E8 01004234 */  ori        $v0, $v0, 0x1
    /* FC06C 001FB0EC 001A62FC */  sd         $v0, %lo(D_00151A00)($v1)
    /* FC070 001FB0F0 001A7124 */  addiu      $s1, $v1, %lo(D_00151A00)
    /* FC074 001FB0F4 EEEE0334 */  ori        $v1, $zero, 0xEEEE
    /* FC078 001FB0F8 0300023C */  lui        $v0, (0x30000 >> 16)
    /* FC07C 001FB0FC 47000424 */  addiu      $a0, $zero, 0x47
    /* FC080 001FB100 05000524 */  addiu      $a1, $zero, 0x5
    /* FC084 001FB104 08000624 */  addiu      $a2, $zero, 0x8
    /* FC088 001FB108 00800734 */  ori        $a3, $zero, 0x8000
    /* FC08C 001FB10C 783C0700 */  dsll       $a3, $a3, 17
    /* FC090 001FB110 6102E734 */  ori        $a3, $a3, 0x261
    /* FC094 001FB114 14000824 */  addiu      $t0, $zero, 0x14
    /* FC098 001FB118 280026FE */  sd         $a2, 0x28($s1)
    /* FC09C 001FB11C 300027FE */  sd         $a3, 0x30($s1)
    /* FC0A0 001FB120 80EA0C34 */  ori        $t4, $zero, 0xEA80
    /* FC0A4 001FB124 38650C00 */  dsll       $t4, $t4, 20
    /* FC0A8 001FB128 380028FE */  sd         $t0, 0x38($s1)
    /* FC0AC 001FB12C 06000924 */  addiu      $t1, $zero, 0x6
    /* FC0B0 001FB130 080023FE */  sd         $v1, 0x8($s1)
    /* FC0B4 001FB134 00880A34 */  ori        $t2, $zero, 0x8800
    /* FC0B8 001FB138 FC530A00 */  dsll32     $t2, $t2, 15
    /* FC0BC 001FB13C 10804A35 */  ori        $t2, $t2, 0x8010
    /* FC0C0 001FB140 100022FE */  sd         $v0, 0x10($s1)
    /* FC0C4 001FB144 53530B24 */  addiu      $t3, $zero, 0x5353
    /* FC0C8 001FB148 180024FE */  sd         $a0, 0x18($s1)
    /* FC0CC 001FB14C 60002626 */  addiu      $a2, $s1, 0x60
    /* FC0D0 001FB150 200025FE */  sd         $a1, 0x20($s1)
    /* FC0D4 001FB154 2D380000 */  daddu      $a3, $zero, $zero
    /* FC0D8 001FB158 00800F34 */  ori        $t7, $zero, 0x8000
    /* FC0DC 001FB15C 00720E24 */  addiu      $t6, $zero, 0x7200
    /* FC0E0 001FB160 1600043C */  lui        $a0, %hi(D_0015EFB8)
    /* FC0E4 001FB164 B8EF848C */  lw         $a0, %lo(D_0015EFB8)($a0)
    /* FC0E8 001FB168 00020D24 */  addiu      $t5, $zero, 0x200
    /* FC0EC 001FB16C 00700824 */  addiu      $t0, $zero, 0x7000
    /* FC0F0 001FB170 50018294 */  lhu        $v0, 0x150($a0)
    /* FC0F4 001FB174 56018384 */  lh         $v1, 0x156($a0)
    /* FC0F8 001FB178 82110200 */  srl        $v0, $v0, 6
    /* FC0FC 001FB17C 54018584 */  lh         $a1, 0x154($a0)
    /* FC100 001FB180 3F004230 */  andi       $v0, $v0, 0x3F
    /* FC104 001FB184 78190300 */  dsll       $v1, $v1, 5
    /* FC108 001FB188 B8130200 */  dsll       $v0, $v0, 14
    /* FC10C 001FB18C 382D0500 */  dsll       $a1, $a1, 20
    /* FC110 001FB190 25186200 */  or         $v1, $v1, $v0
    /* FC114 001FB194 480029FE */  sd         $t1, 0x48($s1)
    /* FC118 001FB198 25186500 */  or         $v1, $v1, $a1
    /* FC11C 001FB19C 50002AFE */  sd         $t2, 0x50($s1)
    /* FC120 001FB1A0 25186C00 */  or         $v1, $v1, $t4
    /* FC124 001FB1A4 58002BFE */  sd         $t3, 0x58($s1)
    /* FC128 001FB1A8 400023FE */  sd         $v1, 0x40($s1)
    /* FC12C 001FB1AC 00000000 */  nop
.align 2
  .L001FB1B0:
    /* FC130 001FB1B0 40120700 */  sll        $v0, $a3, 9
    /* FC134 001FB1B4 0000C2FC */  sd         $v0, 0x0($a2)
    /* FC138 001FB1B8 0100E724 */  addiu      $a3, $a3, 0x1
    /* FC13C 001FB1BC 0800C624 */  addiu      $a2, $a2, 0x8
    /* FC140 001FB1C0 1000E428 */  slti       $a0, $a3, 0x10
    /* FC144 001FB1C4 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FC148 001FB1C8 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FC14C 001FB1CC 52016284 */  lh         $v0, 0x152($v1)
    /* FC150 001FB1D0 C0100200 */  sll        $v0, $v0, 3
    /* FC154 001FB1D4 2310E201 */  subu       $v0, $t7, $v0
    /* FC158 001FB1D8 38140200 */  dsll       $v0, $v0, 16
    /* FC15C 001FB1DC 25100201 */  or         $v0, $t0, $v0
    /* FC160 001FB1E0 0000C2FC */  sd         $v0, 0x0($a2)
    /* FC164 001FB1E4 00020825 */  addiu      $t0, $t0, 0x200
    /* FC168 001FB1E8 0800C624 */  addiu      $a2, $a2, 0x8
    /* FC16C 001FB1EC 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FC170 001FB1F0 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FC174 001FB1F4 52016284 */  lh         $v0, 0x152($v1)
    /* FC178 001FB1F8 38150200 */  dsll       $v0, $v0, 20
    /* FC17C 001FB1FC 2510A201 */  or         $v0, $t5, $v0
    /* FC180 001FB200 0000C2FC */  sd         $v0, 0x0($a2)
    /* FC184 001FB204 0002AD25 */  addiu      $t5, $t5, 0x200
    /* FC188 001FB208 0800C624 */  addiu      $a2, $a2, 0x8
    /* FC18C 001FB20C 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FC190 001FB210 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FC194 001FB214 52016284 */  lh         $v0, 0x152($v1)
    /* FC198 001FB218 C0100200 */  sll        $v0, $v0, 3
    /* FC19C 001FB21C F07F4224 */  addiu      $v0, $v0, 0x7FF0
    /* FC1A0 001FB220 38140200 */  dsll       $v0, $v0, 16
    /* FC1A4 001FB224 2510C201 */  or         $v0, $t6, $v0
    /* FC1A8 001FB228 0000C2FC */  sd         $v0, 0x0($a2)
    /* FC1AC 001FB22C 0002CE25 */  addiu      $t6, $t6, 0x200
    /* FC1B0 001FB230 DFFF8014 */  bnez       $a0, .L001FB1B0
    /* FC1B4 001FB234 0800C624 */   addiu     $a2, $a2, 0x8
    /* FC1B8 001FB238 1500033C */  lui        $v1, %hi(D_00152140)
    /* FC1BC 001FB23C 00800234 */  ori        $v0, $zero, 0x8000
    /* FC1C0 001FB240 7C130200 */  dsll32     $v0, $v0, 13
    /* FC1C4 001FB244 01004234 */  ori        $v0, $v0, 0x1
    /* FC1C8 001FB248 40217124 */  addiu      $s1, $v1, %lo(D_00152140)
    /* FC1CC 001FB24C 402162FC */  sd         $v0, %lo(D_00152140)($v1)
    /* FC1D0 001FB250 00900534 */  ori        $a1, $zero, 0x9000
    /* FC1D4 001FB254 BC2B0500 */  dsll32     $a1, $a1, 14
    /* FC1D8 001FB258 0180A534 */  ori        $a1, $a1, 0x8001
    /* FC1DC 001FB25C 0E000324 */  addiu      $v1, $zero, 0xE
    /* FC1E0 001FB260 0300023C */  lui        $v0, (0x30000 >> 16)
    /* FC1E4 001FB264 47000424 */  addiu      $a0, $zero, 0x47
    /* FC1E8 001FB268 10000624 */  addiu      $a2, $zero, 0x10
    /* FC1EC 001FB26C 06010724 */  addiu      $a3, $zero, 0x106
    /* FC1F0 001FB270 00800834 */  ori        $t0, $zero, 0x8000
    /* FC1F4 001FB274 38440800 */  dsll       $t0, $t0, 16
    /* FC1F8 001FB278 00800835 */  ori        $t0, $t0, 0x8000
    /* FC1FC 001FB27C 00900934 */  ori        $t1, $zero, 0x9000
    /* FC200 001FB280 BC4B0900 */  dsll32     $t1, $t1, 14
    /* FC204 001FB284 10802935 */  ori        $t1, $t1, 0x8010
    /* FC208 001FB288 44000A24 */  addiu      $t2, $zero, 0x44
    /* FC20C 001FB28C 200025FE */  sd         $a1, 0x20($s1)
    /* FC210 001FB290 080023FE */  sd         $v1, 0x8($s1)
    /* FC214 001FB294 50002B26 */  addiu      $t3, $s1, 0x50
    /* FC218 001FB298 100022FE */  sd         $v0, 0x10($s1)
    /* FC21C 001FB29C 2D680000 */  daddu      $t5, $zero, $zero
    /* FC220 001FB2A0 180024FE */  sd         $a0, 0x18($s1)
    /* FC224 001FB2A4 F87F0E24 */  addiu      $t6, $zero, 0x7FF8
    /* FC228 001FB2A8 280026FE */  sd         $a2, 0x28($s1)
    /* FC22C 001FB2AC F8710C24 */  addiu      $t4, $zero, 0x71F8
    /* FC230 001FB2B0 300027FE */  sd         $a3, 0x30($s1)
    /* FC234 001FB2B4 F86F0524 */  addiu      $a1, $zero, 0x6FF8
    /* FC238 001FB2B8 380028FE */  sd         $t0, 0x38($s1)
    /* FC23C 001FB2BC 400029FE */  sd         $t1, 0x40($s1)
    /* FC240 001FB2C0 48002AFE */  sd         $t2, 0x48($s1)
    /* FC244 001FB2C4 00000000 */  nop
.align 2
  .L001FB2C8:
    /* FC248 001FB2C8 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FC24C 001FB2CC B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FC250 001FB2D0 0100AD25 */  addiu      $t5, $t5, 0x1
    /* FC254 001FB2D4 1000A429 */  slti       $a0, $t5, 0x10
    /* FC258 001FB2D8 52016284 */  lh         $v0, 0x152($v1)
    /* FC25C 001FB2DC C0100200 */  sll        $v0, $v0, 3
    /* FC260 001FB2E0 2310C201 */  subu       $v0, $t6, $v0
    /* FC264 001FB2E4 38140200 */  dsll       $v0, $v0, 16
    /* FC268 001FB2E8 2510A200 */  or         $v0, $a1, $v0
    /* FC26C 001FB2EC 000062FD */  sd         $v0, 0x0($t3)
    /* FC270 001FB2F0 0002A524 */  addiu      $a1, $a1, 0x200
    /* FC274 001FB2F4 08006B25 */  addiu      $t3, $t3, 0x8
    /* FC278 001FB2F8 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FC27C 001FB2FC B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FC280 001FB300 52016284 */  lh         $v0, 0x152($v1)
    /* FC284 001FB304 C0100200 */  sll        $v0, $v0, 3
    /* FC288 001FB308 F87F4224 */  addiu      $v0, $v0, 0x7FF8
    /* FC28C 001FB30C 38140200 */  dsll       $v0, $v0, 16
    /* FC290 001FB310 25108201 */  or         $v0, $t4, $v0
    /* FC294 001FB314 000062FD */  sd         $v0, 0x0($t3)
    /* FC298 001FB318 00028C25 */  addiu      $t4, $t4, 0x200
    /* FC29C 001FB31C EAFF8014 */  bnez       $a0, .L001FB2C8
    /* FC2A0 001FB320 08006B25 */   addiu     $t3, $t3, 0x8
    /* FC2A4 001FB324 1400023C */  lui        $v0, %hi(D_0013CD90)
    /* FC2A8 001FB328 2D400000 */  daddu      $t0, $zero, $zero
    /* FC2AC 001FB32C 90CD5124 */  addiu      $s1, $v0, %lo(D_0013CD90)
    /* FC2B0 001FB330 F87F0924 */  addiu      $t1, $zero, 0x7FF8
    /* FC2B4 001FB334 40002626 */  addiu      $a2, $s1, 0x40
    /* FC2B8 001FB338 F8710724 */  addiu      $a3, $zero, 0x71F8
    /* FC2BC 001FB33C F86F0524 */  addiu      $a1, $zero, 0x6FF8
.align 2
  .L001FB340:
    /* FC2C0 001FB340 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FC2C4 001FB344 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FC2C8 001FB348 01000825 */  addiu      $t0, $t0, 0x1
    /* FC2CC 001FB34C 10000429 */  slti       $a0, $t0, 0x10
    /* FC2D0 001FB350 52016284 */  lh         $v0, 0x152($v1)
    /* FC2D4 001FB354 C0100200 */  sll        $v0, $v0, 3
    /* FC2D8 001FB358 23102201 */  subu       $v0, $t1, $v0
    /* FC2DC 001FB35C 38140200 */  dsll       $v0, $v0, 16
    /* FC2E0 001FB360 2510A200 */  or         $v0, $a1, $v0
    /* FC2E4 001FB364 0000C2FC */  sd         $v0, 0x0($a2)
    /* FC2E8 001FB368 0002A524 */  addiu      $a1, $a1, 0x200
    /* FC2EC 001FB36C 0800C624 */  addiu      $a2, $a2, 0x8
    /* FC2F0 001FB370 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FC2F4 001FB374 B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FC2F8 001FB378 52016284 */  lh         $v0, 0x152($v1)
    /* FC2FC 001FB37C C0100200 */  sll        $v0, $v0, 3
    /* FC300 001FB380 F87F4224 */  addiu      $v0, $v0, 0x7FF8
    /* FC304 001FB384 38140200 */  dsll       $v0, $v0, 16
    /* FC308 001FB388 2510E200 */  or         $v0, $a3, $v0
    /* FC30C 001FB38C 0000C2FC */  sd         $v0, 0x0($a2)
    /* FC310 001FB390 0002E724 */  addiu      $a3, $a3, 0x200
    /* FC314 001FB394 EAFF8014 */  bnez       $a0, .L001FB340
    /* FC318 001FB398 0800C624 */   addiu     $a2, $a2, 0x8
    /* FC31C 001FB39C 1400023C */  lui        $v0, %hi(D_0013CED0)
    /* FC320 001FB3A0 2D400000 */  daddu      $t0, $zero, $zero
    /* FC324 001FB3A4 D0CE5124 */  addiu      $s1, $v0, %lo(D_0013CED0)
    /* FC328 001FB3A8 F87F0924 */  addiu      $t1, $zero, 0x7FF8
    /* FC32C 001FB3AC 40002626 */  addiu      $a2, $s1, 0x40
    /* FC330 001FB3B0 F8710724 */  addiu      $a3, $zero, 0x71F8
    /* FC334 001FB3B4 F86F0524 */  addiu      $a1, $zero, 0x6FF8
.align 2
  .L001FB3B8:
    /* FC338 001FB3B8 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FC33C 001FB3BC B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FC340 001FB3C0 01000825 */  addiu      $t0, $t0, 0x1
    /* FC344 001FB3C4 10000429 */  slti       $a0, $t0, 0x10
    /* FC348 001FB3C8 5A016284 */  lh         $v0, 0x15A($v1)
    /* FC34C 001FB3CC C0100200 */  sll        $v0, $v0, 3
    /* FC350 001FB3D0 23102201 */  subu       $v0, $t1, $v0
    /* FC354 001FB3D4 38140200 */  dsll       $v0, $v0, 16
    /* FC358 001FB3D8 2510A200 */  or         $v0, $a1, $v0
    /* FC35C 001FB3DC 0000C2FC */  sd         $v0, 0x0($a2)
    /* FC360 001FB3E0 0002A524 */  addiu      $a1, $a1, 0x200
    /* FC364 001FB3E4 0800C624 */  addiu      $a2, $a2, 0x8
    /* FC368 001FB3E8 1600033C */  lui        $v1, %hi(D_0015EFB8)
    /* FC36C 001FB3EC B8EF638C */  lw         $v1, %lo(D_0015EFB8)($v1)
    /* FC370 001FB3F0 5A016284 */  lh         $v0, 0x15A($v1)
    /* FC374 001FB3F4 C0100200 */  sll        $v0, $v0, 3
    /* FC378 001FB3F8 F87F4224 */  addiu      $v0, $v0, 0x7FF8
    /* FC37C 001FB3FC 38140200 */  dsll       $v0, $v0, 16
    /* FC380 001FB400 2510E200 */  or         $v0, $a3, $v0
    /* FC384 001FB404 0000C2FC */  sd         $v0, 0x0($a2)
    /* FC388 001FB408 0002E724 */  addiu      $a3, $a3, 0x200
    /* FC38C 001FB40C EAFF8014 */  bnez       $a0, .L001FB3B8
    /* FC390 001FB410 0800C624 */   addiu     $a2, $a2, 0x8
    /* FC394 001FB414 9000BF7B */  lq         $ra, 0x90($sp)
    /* FC398 001FB418 8000BE7B */  lq         $fp, 0x80($sp)
    /* FC39C 001FB41C 7000B77B */  lq         $s7, 0x70($sp)
    /* FC3A0 001FB420 6000B67B */  lq         $s6, 0x60($sp)
    /* FC3A4 001FB424 5000B57B */  lq         $s5, 0x50($sp)
    /* FC3A8 001FB428 4000B47B */  lq         $s4, 0x40($sp)
    /* FC3AC 001FB42C 3000B37B */  lq         $s3, 0x30($sp)
    /* FC3B0 001FB430 2000B27B */  lq         $s2, 0x20($sp)
    /* FC3B4 001FB434 1000B17B */  lq         $s1, 0x10($sp)
    /* FC3B8 001FB438 0000B07B */  lq         $s0, 0x0($sp)
    /* FC3BC 001FB43C 0800E003 */  jr         $ra
    /* FC3C0 001FB440 A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_001FAB40
    /* FC3C4 001FB444 00000000 */  nop
