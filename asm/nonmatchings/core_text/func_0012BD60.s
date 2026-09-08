.align 3
nonmatching func_0012BD60, 0x6C

glabel func_0012BD60
    /* 2CCE0 0012BD60 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2CCE4 0012BD64 2D408000 */  daddu      $t0, $a0, $zero
    /* 2CCE8 0012BD68 0000BFFF */  sd         $ra, 0x0($sp)
    /* 2CCEC 0012BD6C 0100E050 */  beql       $a3, $zero, .L0012BD74
    /* 2CCF0 0012BD70 CD010000 */   break     0, 7
.align 2
  .L0012BD74:
    /* 2CCF4 0012BD74 0800A28C */  lw         $v0, 0x8($a1)
    /* 2CCF8 0012BD78 0400A48C */  lw         $a0, 0x4($a1)
    /* 2CCFC 0012BD7C 21104700 */  addu       $v0, $v0, $a3
    /* 2CD00 0012BD80 0000A38C */  lw         $v1, 0x0($a1)
    /* 2CD04 0012BD84 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2CD08 0012BD88 1B004700 */  divu       $zero, $v0, $a3
    /* 2CD0C 0012BD8C 21186400 */  addu       $v1, $v1, $a0
    /* 2CD10 0012BD90 12100000 */  mflo       $v0
    /* 2CD14 0012BD94 18104700 */  mult       $v0, $v0, $a3
    /* 2CD18 0012BD98 21204600 */  addu       $a0, $v0, $a2
    /* 2CD1C 0012BD9C 2B186400 */  sltu       $v1, $v1, $a0
    /* 2CD20 0012BDA0 03006054 */  bnel       $v1, $zero, .L0012BDB0
    /* 2CD24 0012BDA4 1500053C */   lui       $a1, %hi(D_00153B38)
    /* 2CD28 0012BDA8 05000010 */  b          .L0012BDC0
    /* 2CD2C 0012BDAC 0800A4AC */   sw        $a0, 0x8($a1)
.align 2
  .L0012BDB0:
    /* 2CD30 0012BDB0 2D200001 */  daddu      $a0, $t0, $zero
    /* 2CD34 0012BDB4 1AB1040C */  jal        func_0012C468
    /* 2CD38 0012BDB8 383BA524 */   addiu     $a1, $a1, %lo(D_00153B38)
    /* 2CD3C 0012BDBC 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0012BDC0:
    /* 2CD40 0012BDC0 0000BFDF */  ld         $ra, 0x0($sp)
    /* 2CD44 0012BDC4 0800E003 */  jr         $ra
    /* 2CD48 0012BDC8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012BD60
    /* 2CD4C 0012BDCC 00000000 */  nop
