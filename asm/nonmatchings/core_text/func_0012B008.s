.align 3
nonmatching func_0012B008, 0xF4

glabel func_0012B008
    /* 2BF88 0012B008 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 2BF8C 0012B00C 5000B5FF */  sd         $s5, 0x50($sp)
    /* 2BF90 0012B010 4000B4FF */  sd         $s4, 0x40($sp)
    /* 2BF94 0012B014 2DA8E000 */  daddu      $s5, $a3, $zero
    /* 2BF98 0012B018 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2BF9C 0012B01C 2DA00001 */  daddu      $s4, $t0, $zero
    /* 2BFA0 0012B020 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2BFA4 0012B024 2D98A000 */  daddu      $s3, $a1, $zero
    /* 2BFA8 0012B028 6000BFFF */  sd         $ra, 0x60($sp)
    /* 2BFAC 0012B02C 2D28C000 */  daddu      $a1, $a2, $zero
    /* 2BFB0 0012B030 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2BFB4 0012B034 2D880000 */  daddu      $s1, $zero, $zero
    /* 2BFB8 0012B038 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2BFBC 0012B03C 4000928C */  lw         $s2, 0x40($a0)
    /* 2BFC0 0012B040 2D206002 */  daddu      $a0, $s3, $zero
    /* 2BFC4 0012B044 20AB040C */  jal        func_0012AC80
    /* 2BFC8 0012B048 4400508E */   lw        $s0, 0x44($s2)
    /* 2BFCC 0012B04C 4800458E */  lw         $a1, 0x48($s2)
    /* 2BFD0 0012B050 2D304000 */  daddu      $a2, $v0, $zero
    /* 2BFD4 0012B054 0F00A018 */  blez       $a1, .L0012B094
    /* 2BFD8 0012B058 2D200000 */   daddu     $a0, $zero, $zero
    /* 2BFDC 0012B05C 000002DE */  ld         $v0, 0x0($s0)
    /* 2BFE0 0012B060 0300C254 */  bnel       $a2, $v0, .L0012B070
    /* 2BFE4 0012B064 01008424 */   addiu     $a0, $a0, 0x1
    /* 2BFE8 0012B068 0A000010 */  b          .L0012B094
    /* 2BFEC 0012B06C 1000118E */   lw        $s1, 0x10($s0)
.align 2
  .L0012B070:
    /* 2BFF0 0012B070 2A108500 */  slt        $v0, $a0, $a1
    /* 2BFF4 0012B074 07004010 */  beqz       $v0, .L0012B094
    /* 2BFF8 0012B078 18000224 */   addiu     $v0, $zero, 0x18
    /* 2BFFC 0012B07C 18188200 */  mult       $v1, $a0, $v0
    /* 2C000 0012B080 21107000 */  addu       $v0, $v1, $s0
    /* 2C004 0012B084 000043DC */  ld         $v1, 0x0($v0)
    /* 2C008 0012B088 F9FFC354 */  bnel       $a2, $v1, .L0012B070
    /* 2C00C 0012B08C 01008424 */   addiu     $a0, $a0, 0x1
    /* 2C010 0012B090 1000518C */  lw         $s1, 0x10($v0)
.align 2
  .L0012B094:
    /* 2C014 0012B094 40008228 */  slti       $v0, $a0, 0x40
    /* 2C018 0012B098 0E004010 */  beqz       $v0, .L0012B0D4
    /* 2C01C 0012B09C 18000324 */   addiu     $v1, $zero, 0x18
    /* 2C020 0012B0A0 1300023C */  lui        $v0, %hi(D_00132FD8)
    /* 2C024 0012B0A4 18388300 */  mult       $a3, $a0, $v1
    /* 2C028 0012B0A8 D82F4224 */  addiu      $v0, $v0, %lo(D_00132FD8)
    /* 2C02C 0012B0AC 00211300 */  sll        $a0, $s3, 4
    /* 2C030 0012B0B0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2C034 0012B0B4 21104400 */  addu       $v0, $v0, $a0
    /* 2C038 0012B0B8 480045AE */  sw         $a1, 0x48($s2)
    /* 2C03C 0012B0BC 2118F000 */  addu       $v1, $a3, $s0
    /* 2C040 0012B0C0 000066FC */  sd         $a2, 0x0($v1)
    /* 2C044 0012B0C4 140074AC */  sw         $s4, 0x14($v1)
    /* 2C048 0012B0C8 080044DC */  ld         $a0, 0x8($v0)
    /* 2C04C 0012B0CC 100075AC */  sw         $s5, 0x10($v1)
    /* 2C050 0012B0D0 080064FC */  sd         $a0, 0x8($v1)
.align 2
  .L0012B0D4:
    /* 2C054 0012B0D4 2D102002 */  daddu      $v0, $s1, $zero
    /* 2C058 0012B0D8 6000BFDF */  ld         $ra, 0x60($sp)
    /* 2C05C 0012B0DC 5000B5DF */  ld         $s5, 0x50($sp)
    /* 2C060 0012B0E0 4000B4DF */  ld         $s4, 0x40($sp)
    /* 2C064 0012B0E4 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2C068 0012B0E8 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2C06C 0012B0EC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2C070 0012B0F0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2C074 0012B0F4 0800E003 */  jr         $ra
    /* 2C078 0012B0F8 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_0012B008
    /* 2C07C 0012B0FC 00000000 */  nop
