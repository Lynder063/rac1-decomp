.align 3
nonmatching func_0012EB18, 0x114

glabel func_0012EB18
    /* 2FA98 0012EB18 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 2FA9C 0012EB1C C080828F */  lw         $v0, -0x7F40($gp)
    /* 2FAA0 0012EB20 2000B17F */  sq         $s1, 0x20($sp)
    /* 2FAA4 0012EB24 1000B07F */  sq         $s0, 0x10($sp)
    /* 2FAA8 0012EB28 80100200 */  sll        $v0, $v0, 2
    /* 2FAAC 0012EB2C 6000BF7F */  sq         $ra, 0x60($sp)
    /* 2FAB0 0012EB30 A0809127 */  addiu      $s1, $gp, -0x7F60
    /* 2FAB4 0012EB34 5000B47F */  sq         $s4, 0x50($sp)
    /* 2FAB8 0012EB38 21185100 */  addu       $v1, $v0, $s1
    /* 2FABC 0012EB3C 4000B37F */  sq         $s3, 0x40($sp)
    /* 2FAC0 0012EB40 B8809027 */  addiu      $s0, $gp, -0x7F48
    /* 2FAC4 0012EB44 3000B27F */  sq         $s2, 0x30($sp)
    /* 2FAC8 0012EB48 21105000 */  addu       $v0, $v0, $s0
    /* 2FACC 0012EB4C 0000668C */  lw         $a2, 0x0($v1)
    /* 2FAD0 0012EB50 0000448C */  lw         $a0, 0x0($v0)
    /* 2FAD4 0012EB54 0EB8040C */  jal        func_0012E038
    /* 2FAD8 0012EB58 0000C58C */   lw        $a1, 0x0($a2)
    /* 2FADC 0012EB5C 2DA00002 */  daddu      $s4, $s0, $zero
    /* 2FAE0 0012EB60 2D982002 */  daddu      $s3, $s1, $zero
    /* 2FAE4 0012EB64 A8809227 */  addiu      $s2, $gp, -0x7F58
    /* 2FAE8 0012EB68 05000010 */  b          .L0012EB80
    /* 2FAEC 0012EB6C 1600113C */   lui       $s1, %hi(D_0015ECC0)
.align 2
  .L0012EB70:
    /* 2FAF0 0012EB70 1E58040C */  jal        func_00116078
    /* 2FAF4 0012EB74 203E8424 */   addiu     $a0, $a0, %lo(D_00153E20)
    /* 2FAF8 0012EB78 6063040C */  jal        func_00118D80
    /* 2FAFC 0012EB7C 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L0012EB80:
    /* 2FB00 0012EB80 C0EC3026 */  addiu      $s0, $s1, %lo(D_0015ECC0)
    /* 2FB04 0012EB84 AE6D040C */  jal        func_0011B6B8
    /* 2FB08 0012EB88 2D200002 */   daddu     $a0, $s0, $zero
    /* 2FB0C 0012EB8C F8FF4014 */  bnez       $v0, .L0012EB70
    /* 2FB10 0012EB90 1500043C */   lui       $a0, %hi(D_00153E20)
    /* 2FB14 0012EB94 C080828F */  lw         $v0, -0x7F40($gp)
    /* 2FB18 0012EB98 00100C24 */  addiu      $t4, $zero, 0x1000
    /* 2FB1C 0012EB9C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2FB20 0012EBA0 4D000524 */  addiu      $a1, $zero, 0x4D
    /* 2FB24 0012EBA4 80100200 */  sll        $v0, $v0, 2
    /* 2FB28 0012EBA8 01000624 */  addiu      $a2, $zero, 0x1
    /* 2FB2C 0012EBAC 21185300 */  addu       $v1, $v0, $s3
    /* 2FB30 0012EBB0 21485200 */  addu       $t1, $v0, $s2
    /* 2FB34 0012EBB4 0000678C */  lw         $a3, 0x0($v1)
    /* 2FB38 0012EBB8 21105400 */  addu       $v0, $v0, $s4
    /* 2FB3C 0012EBBC 0000288D */  lw         $t0, 0x0($t1)
    /* 2FB40 0012EBC0 2D580000 */  daddu      $t3, $zero, $zero
    /* 2FB44 0012EBC4 0000EA8C */  lw         $t2, 0x0($a3)
    /* 2FB48 0012EBC8 0000498C */  lw         $t1, 0x0($v0)
    /* 2FB4C 0012EBCC 23408801 */  subu       $t0, $t4, $t0
    /* 2FB50 0012EBD0 80500A00 */  sll        $t2, $t2, 2
    /* 2FB54 0012EBD4 0000A0AF */  sw         $zero, 0x0($sp)
    /* 2FB58 0012EBD8 326D040C */  jal        func_0011B4C8
    /* 2FB5C 0012EBDC 08004A25 */   addiu     $t2, $t2, 0x8
    /* 2FB60 0012EBE0 C080838F */  lw         $v1, -0x7F40($gp)
    /* 2FB64 0012EBE4 FC0F0624 */  addiu      $a2, $zero, 0xFFC
    /* 2FB68 0012EBE8 6000BF7B */  lq         $ra, 0x60($sp)
    /* 2FB6C 0012EBEC 01006338 */  xori       $v1, $v1, 0x1
    /* 2FB70 0012EBF0 5000B47B */  lq         $s4, 0x50($sp)
    /* 2FB74 0012EBF4 2B180300 */  sltu       $v1, $zero, $v1
    /* 2FB78 0012EBF8 2000B17B */  lq         $s1, 0x20($sp)
    /* 2FB7C 0012EBFC 80200300 */  sll        $a0, $v1, 2
    /* 2FB80 0012EC00 C08083AF */  sw         $v1, -0x7F40($gp)
    /* 2FB84 0012EC04 21289300 */  addu       $a1, $a0, $s3
    /* 2FB88 0012EC08 1000B07B */  lq         $s0, 0x10($sp)
    /* 2FB8C 0012EC0C 0000A28C */  lw         $v0, 0x0($a1)
    /* 2FB90 0012EC10 21209200 */  addu       $a0, $a0, $s2
    /* 2FB94 0012EC14 4000B37B */  lq         $s3, 0x40($sp)
    /* 2FB98 0012EC18 000040AC */  sw         $zero, 0x0($v0)
    /* 2FB9C 0012EC1C 3000B27B */  lq         $s2, 0x30($sp)
    /* 2FBA0 0012EC20 000086AC */  sw         $a2, 0x0($a0)
    /* 2FBA4 0012EC24 0800E003 */  jr         $ra
    /* 2FBA8 0012EC28 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_0012EB18
    /* 2FBAC 0012EC2C 00000000 */  nop
