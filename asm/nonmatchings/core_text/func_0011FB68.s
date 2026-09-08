.align 3
nonmatching func_0011FB68, 0x9C

glabel func_0011FB68
    /* 20AE8 0011FB68 000082DC */  ld         $v0, 0x0($a0)
    /* 20AEC 0011FB6C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 20AF0 0011FB70 3A1B0300 */  dsrl       $v1, $v1, 12
    /* 20AF4 0011FB74 FE270200 */  dsrl32     $a0, $v0, 31
    /* 20AF8 0011FB78 24184300 */  and        $v1, $v0, $v1
    /* 20AFC 0011FB7C 3E150200 */  dsrl32     $v0, $v0, 20
    /* 20B00 0011FB80 0400A4AC */  sw         $a0, 0x4($a1)
    /* 20B04 0011FB84 FF074430 */  andi       $a0, $v0, 0x7FF
    /* 20B08 0011FB88 05008014 */  bnez       $a0, .L0011FBA0
    /* 20B0C 0011FB8C FF070224 */   addiu     $v0, $zero, 0x7FF
    /* 20B10 0011FB90 02000224 */  addiu      $v0, $zero, 0x2
    /* 20B14 0011FB94 0800E003 */  jr         $ra
    /* 20B18 0011FB98 0000A2AC */   sw        $v0, 0x0($a1)
    /* 20B1C 0011FB9C 00000000 */  nop
.align 2
  .L0011FBA0:
    /* 20B20 0011FBA0 0F008254 */  bnel       $a0, $v0, .L0011FBE0
    /* 20B24 0011FBA4 381A0300 */   dsll      $v1, $v1, 8
    /* 20B28 0011FBA8 03006014 */  bnez       $v1, .L0011FBB8
    /* 20B2C 0011FBAC 04000224 */   addiu     $v0, $zero, 0x4
    /* 20B30 0011FBB0 0800E003 */  jr         $ra
    /* 20B34 0011FBB4 0000A2AC */   sw        $v0, 0x0($a1)
.align 2
  .L0011FBB8:
    /* 20B38 0011FBB8 00800234 */  ori        $v0, $zero, 0x8000
    /* 20B3C 0011FBBC 3C110200 */  dsll32     $v0, $v0, 4
    /* 20B40 0011FBC0 24106200 */  and        $v0, $v1, $v0
    /* 20B44 0011FBC4 03004010 */  beqz       $v0, .L0011FBD4
    /* 20B48 0011FBC8 01000224 */   addiu     $v0, $zero, 0x1
    /* 20B4C 0011FBCC 02000010 */  b          .L0011FBD8
    /* 20B50 0011FBD0 0000A2AC */   sw        $v0, 0x0($a1)
.align 2
  .L0011FBD4:
    /* 20B54 0011FBD4 0000A0AC */  sw         $zero, 0x0($a1)
.align 2
  .L0011FBD8:
    /* 20B58 0011FBD8 0800E003 */  jr         $ra
    /* 20B5C 0011FBDC 1000A3FC */   sd        $v1, 0x10($a1)
.align 2
  .L0011FBE0:
    /* 20B60 0011FBE0 00800234 */  ori        $v0, $zero, 0x8000
    /* 20B64 0011FBE4 7C130200 */  dsll32     $v0, $v0, 13
    /* 20B68 0011FBE8 25186200 */  or         $v1, $v1, $v0
    /* 20B6C 0011FBEC 01FC8424 */  addiu      $a0, $a0, -0x3FF
    /* 20B70 0011FBF0 03000224 */  addiu      $v0, $zero, 0x3
    /* 20B74 0011FBF4 1000A3FC */  sd         $v1, 0x10($a1)
    /* 20B78 0011FBF8 0800A4AC */  sw         $a0, 0x8($a1)
    /* 20B7C 0011FBFC 0800E003 */  jr         $ra
    /* 20B80 0011FC00 0000A2AC */   sw        $v0, 0x0($a1)
endlabel func_0011FB68
    /* 20B84 0011FC04 00000000 */  nop
