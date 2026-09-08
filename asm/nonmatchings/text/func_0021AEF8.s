.align 3
nonmatching func_0021AEF8, 0x20C

glabel func_0021AEF8
    /* 11BE78 0021AEF8 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 11BE7C 0021AEFC 6000B57F */  sq         $s5, 0x60($sp)
    /* 11BE80 0021AF00 5000B47F */  sq         $s4, 0x50($sp)
    /* 11BE84 0021AF04 4000B37F */  sq         $s3, 0x40($sp)
    /* 11BE88 0021AF08 2DA08000 */  daddu      $s4, $a0, $zero
    /* 11BE8C 0021AF0C A000BF7F */  sq         $ra, 0xA0($sp)
    /* 11BE90 0021AF10 2D200000 */  daddu      $a0, $zero, $zero
    /* 11BE94 0021AF14 9000BE7F */  sq         $fp, 0x90($sp)
    /* 11BE98 0021AF18 2D980000 */  daddu      $s3, $zero, $zero
    /* 11BE9C 0021AF1C 8000B77F */  sq         $s7, 0x80($sp)
    /* 11BEA0 0021AF20 7000B67F */  sq         $s6, 0x70($sp)
    /* 11BEA4 0021AF24 3000B27F */  sq         $s2, 0x30($sp)
    /* 11BEA8 0021AF28 2000B17F */  sq         $s1, 0x20($sp)
    /* 11BEAC 0021AF2C 1000B07F */  sq         $s0, 0x10($sp)
    /* 11BEB0 0021AF30 2000828E */  lw         $v0, 0x20($s4)
    /* 11BEB4 0021AF34 5C00928E */  lw         $s2, 0x5C($s4)
    /* 11BEB8 0021AF38 00110200 */  sll        $v0, $v0, 4
    /* 11BEBC 0021AF3C 00FE4224 */  addiu      $v0, $v0, -0x200
    /* 11BEC0 0021AF40 0000B2AF */  sw         $s2, 0x0($sp)
    /* 11BEC4 0021AF44 8CD1070C */  jal        func_001F4630
    /* 11BEC8 0021AF48 43A80200 */   sra       $s5, $v0, 1
    /* 11BECC 0021AF4C 4000828E */  lw         $v0, 0x40($s4)
    /* 11BED0 0021AF50 34004018 */  blez       $v0, .L0021B024
    /* 11BED4 0021AF54 0000A28F */   lw        $v0, 0x0($sp)
    /* 11BED8 0021AF58 0100173C */  lui        $s7, (0x10202 >> 16)
    /* 11BEDC 0021AF5C 2DF00000 */  daddu      $fp, $zero, $zero
    /* 11BEE0 0021AF60 0202F736 */  ori        $s7, $s7, (0x10202 & 0xFFFF)
    /* 11BEE4 0021AF64 00000000 */  nop
.align 2
  .L0021AF68:
    /* 11BEE8 0021AF68 4800828E */  lw         $v0, 0x48($s4)
    /* 11BEEC 0021AF6C 3C00838E */  lw         $v1, 0x3C($s4)
    /* 11BEF0 0021AF70 1B007314 */  bne        $v1, $s3, .L0021AFE0
    /* 11BEF4 0021AF74 21B05E00 */   addu      $s6, $v0, $fp
    /* 11BEF8 0021AF78 1600043C */  lui        $a0, %hi(D_0015F538)
    /* 11BEFC 0021AF7C 38F5848C */  lw         $a0, %lo(D_0015F538)($a0)
    /* 11BF00 0021AF80 D0FF5026 */  addiu      $s0, $s2, -0x30
    /* 11BF04 0021AF84 30025126 */  addiu      $s1, $s2, 0x230
    /* 11BF08 0021AF88 3F008430 */  andi       $a0, $a0, 0x3F
    /* 11BF0C 0021AF8C DCE6070C */  jal        func_001F9B70
    /* 11BF10 0021AF90 E0FF8424 */   addiu     $a0, $a0, -0x20
    /* 11BF14 0021AF94 40004224 */  addiu      $v0, $v0, 0x40
    /* 11BF18 0021AF98 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 11BF1C 0021AF9C 18105700 */  mult       $v0, $v0, $s7
    /* 11BF20 0021AFA0 2D280002 */  daddu      $a1, $s0, $zero
    /* 11BF24 0021AFA4 2D382002 */  daddu      $a3, $s1, $zero
    /* 11BF28 0021AFA8 D0FFA426 */  addiu      $a0, $s5, -0x30
    /* 11BF2C 0021AFAC 3002A626 */  addiu      $a2, $s5, 0x230
    /* 11BF30 0021AFB0 01000924 */  addiu      $t1, $zero, 0x1
    /* 11BF34 0021AFB4 25104300 */  or         $v0, $v0, $v1
    /* 11BF38 0021AFB8 3C100200 */  dsll32     $v0, $v0, 0
    /* 11BF3C 0021AFBC 9005080C */  jal        func_00201640
    /* 11BF40 0021AFC0 3E400200 */   dsrl32    $t0, $v0, 0
    /* 11BF44 0021AFC4 B095888F */  lw         $t0, -0x6A50($gp)
    /* 11BF48 0021AFC8 F0FFA426 */  addiu      $a0, $s5, -0x10
    /* 11BF4C 0021AFCC F0FF4526 */  addiu      $a1, $s2, -0x10
    /* 11BF50 0021AFD0 1002A626 */  addiu      $a2, $s5, 0x210
    /* 11BF54 0021AFD4 10024726 */  addiu      $a3, $s2, 0x210
    /* 11BF58 0021AFD8 9005080C */  jal        func_00201640
    /* 11BF5C 0021AFDC 01000924 */   addiu     $t1, $zero, 0x1
.align 2
  .L0021AFE0:
    /* 11BF60 0021AFE0 0200C586 */  lh         $a1, 0x2($s6)
    /* 11BF64 0021AFE4 01007326 */  addiu      $s3, $s3, 0x1
    /* 11BF68 0021AFE8 0000C496 */  lhu        $a0, 0x0($s6)
    /* 11BF6C 0021AFEC 6600080C */  jal        func_00200198
    /* 11BF70 0021AFF0 0A00DE27 */   addiu     $fp, $fp, 0xA
    /* 11BF74 0021AFF4 2D204000 */  daddu      $a0, $v0, $zero
    /* 11BF78 0021AFF8 2D304002 */  daddu      $a2, $s2, $zero
    /* 11BF7C 0021AFFC 2D28A002 */  daddu      $a1, $s5, $zero
    /* 11BF80 0021B000 00020724 */  addiu      $a3, $zero, 0x200
    /* 11BF84 0021B004 00020824 */  addiu      $t0, $zero, 0x200
    /* 11BF88 0021B008 2E02080C */  jal        func_002008B8
    /* 11BF8C 0021B00C 80000924 */   addiu     $t1, $zero, 0x80
    /* 11BF90 0021B010 4000828E */  lw         $v0, 0x40($s4)
    /* 11BF94 0021B014 2A106202 */  slt        $v0, $s3, $v0
    /* 11BF98 0021B018 D3FF4014 */  bnez       $v0, .L0021AF68
    /* 11BF9C 0021B01C 52025226 */   addiu     $s2, $s2, 0x252
    /* 11BFA0 0021B020 0000A28F */  lw         $v0, 0x0($sp)
.align 2
  .L0021B024:
    /* 11BFA4 0021B024 13004304 */  bgezl      $v0, .L0021B074
    /* 11BFA8 0021B028 2400858E */   lw        $a1, 0x24($s4)
    /* 11BFAC 0021B02C 2000868E */  lw         $a2, 0x20($s4)
    /* 11BFB0 0021B030 14000724 */  addiu      $a3, $zero, 0x14
    /* 11BFB4 0021B034 B095888F */  lw         $t0, -0x6A50($gp)
    /* 11BFB8 0021B038 2D480000 */  daddu      $t1, $zero, $zero
    /* 11BFBC 0021B03C 2D200000 */  daddu      $a0, $zero, $zero
    /* 11BFC0 0021B040 9005080C */  jal        func_00201640
    /* 11BFC4 0021B044 2D280000 */   daddu     $a1, $zero, $zero
    /* 11BFC8 0021B048 9EE90434 */  ori        $a0, $zero, 0xE99E
    /* 11BFCC 0021B04C 6600080C */  jal        func_00200198
    /* 11BFD0 0021B050 06000524 */   addiu     $a1, $zero, 0x6
    /* 11BFD4 0021B054 2D204000 */  daddu      $a0, $v0, $zero
    /* 11BFD8 0021B058 03291500 */  sra        $a1, $s5, 4
    /* 11BFDC 0021B05C 02000624 */  addiu      $a2, $zero, 0x2
    /* 11BFE0 0021B060 20000724 */  addiu      $a3, $zero, 0x20
    /* 11BFE4 0021B064 10000824 */  addiu      $t0, $zero, 0x10
    /* 11BFE8 0021B068 1A01080C */  jal        func_00200468
    /* 11BFEC 0021B06C 80000924 */   addiu     $t1, $zero, 0x80
    /* 11BFF0 0021B070 2400858E */  lw         $a1, 0x24($s4)
.align 2
  .L0021B074:
    /* 11BFF4 0021B074 00110500 */  sll        $v0, $a1, 4
    /* 11BFF8 0021B078 2A105200 */  slt        $v0, $v0, $s2
    /* 11BFFC 0021B07C 12004010 */  beqz       $v0, .L0021B0C8
    /* 11C000 0021B080 2D38A000 */   daddu     $a3, $a1, $zero
    /* 11C004 0021B084 2000868E */  lw         $a2, 0x20($s4)
    /* 11C008 0021B088 B095888F */  lw         $t0, -0x6A50($gp)
    /* 11C00C 0021B08C 2D480000 */  daddu      $t1, $zero, $zero
    /* 11C010 0021B090 2D200000 */  daddu      $a0, $zero, $zero
    /* 11C014 0021B094 9005080C */  jal        func_00201640
    /* 11C018 0021B098 ECFFA524 */   addiu     $a1, $a1, -0x14
    /* 11C01C 0021B09C 9EE90434 */  ori        $a0, $zero, 0xE99E
    /* 11C020 0021B0A0 6600080C */  jal        func_00200198
    /* 11C024 0021B0A4 06000524 */   addiu     $a1, $zero, 0x6
    /* 11C028 0021B0A8 2400868E */  lw         $a2, 0x24($s4)
    /* 11C02C 0021B0AC 2D204000 */  daddu      $a0, $v0, $zero
    /* 11C030 0021B0B0 03291500 */  sra        $a1, $s5, 4
    /* 11C034 0021B0B4 20000724 */  addiu      $a3, $zero, 0x20
    /* 11C038 0021B0B8 EEFFC624 */  addiu      $a2, $a2, -0x12
    /* 11C03C 0021B0BC 10000824 */  addiu      $t0, $zero, 0x10
    /* 11C040 0021B0C0 9401080C */  jal        func_00200650
    /* 11C044 0021B0C4 80000924 */   addiu     $t1, $zero, 0x80
.align 2
  .L0021B0C8:
    /* 11C048 0021B0C8 D2D1070C */  jal        func_001F4748
    /* 11C04C 0021B0CC 00000000 */   nop
    /* 11C050 0021B0D0 A000BF7B */  lq         $ra, 0xA0($sp)
    /* 11C054 0021B0D4 02000224 */  addiu      $v0, $zero, 0x2
    /* 11C058 0021B0D8 9000BE7B */  lq         $fp, 0x90($sp)
    /* 11C05C 0021B0DC 8000B77B */  lq         $s7, 0x80($sp)
    /* 11C060 0021B0E0 7000B67B */  lq         $s6, 0x70($sp)
    /* 11C064 0021B0E4 6000B57B */  lq         $s5, 0x60($sp)
    /* 11C068 0021B0E8 5000B47B */  lq         $s4, 0x50($sp)
    /* 11C06C 0021B0EC 4000B37B */  lq         $s3, 0x40($sp)
    /* 11C070 0021B0F0 3000B27B */  lq         $s2, 0x30($sp)
    /* 11C074 0021B0F4 2000B17B */  lq         $s1, 0x20($sp)
    /* 11C078 0021B0F8 1000B07B */  lq         $s0, 0x10($sp)
    /* 11C07C 0021B0FC 0800E003 */  jr         $ra
    /* 11C080 0021B100 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_0021AEF8
    /* 11C084 0021B104 00000000 */  nop
