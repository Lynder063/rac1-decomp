.align 3
nonmatching func_00127A90, 0x1F0

glabel func_00127A90
    /* 28A10 00127A90 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 28A14 00127A94 9000B3FF */  sd         $s3, 0x90($sp)
    /* 28A18 00127A98 4000A627 */  addiu      $a2, $sp, 0x40
    /* 28A1C 00127A9C 6000B0FF */  sd         $s0, 0x60($sp)
    /* 28A20 00127AA0 2D98A000 */  daddu      $s3, $a1, $zero
    /* 28A24 00127AA4 2D808000 */  daddu      $s0, $a0, $zero
    /* 28A28 00127AA8 4000A0AF */  sw         $zero, 0x40($sp)
    /* 28A2C 00127AAC 4400A0AF */  sw         $zero, 0x44($sp)
    /* 28A30 00127AB0 4400A727 */  addiu      $a3, $sp, 0x44
    /* 28A34 00127AB4 2D40A003 */  daddu      $t0, $sp, $zero
    /* 28A38 00127AB8 A000BFFF */  sd         $ra, 0xA0($sp)
    /* 28A3C 00127ABC 8000B2FF */  sd         $s2, 0x80($sp)
    /* 28A40 00127AC0 589E040C */  jal        func_00127960
    /* 28A44 00127AC4 7000B1FF */   sd        $s1, 0x70($sp)
    /* 28A48 00127AC8 67004014 */  bnez       $v0, .L00127C68
    /* 28A4C 00127ACC A000BFDF */   ld        $ra, 0xA0($sp)
    /* 28A50 00127AD0 1C0100AE */  sw         $zero, 0x11C($s0)
    /* 28A54 00127AD4 00000000 */  nop
.align 2
  .L00127AD8:
    /* 28A58 00127AD8 4000A28F */  lw         $v0, 0x40($sp)
    /* 28A5C 00127ADC 2A105300 */  slt        $v0, $v0, $s3
    /* 28A60 00127AE0 03004054 */  bnel       $v0, $zero, .L00127AF0
    /* 28A64 00127AE4 1008028E */   lw        $v0, 0x810($s0)
    /* 28A68 00127AE8 5E000010 */  b          .L00127C64
    /* 28A6C 00127AEC 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00127AF0:
    /* 28A70 00127AF0 40010324 */  addiu      $v1, $zero, 0x140
    /* 28A74 00127AF4 2D200002 */  daddu      $a0, $s0, $zero
    /* 28A78 00127AF8 18284300 */  mult       $a1, $v0, $v1
    /* 28A7C 00127AFC 2110B000 */  addu       $v0, $a1, $s0
    /* 28A80 00127B00 E89C040C */  jal        func_001273A0
    /* 28A84 00127B04 CC0640AC */   sw        $zero, 0x6CC($v0)
    /* 28A88 00127B08 03004014 */  bnez       $v0, .L00127B18
    /* 28A8C 00127B0C 4400A28F */   lw        $v0, 0x44($sp)
    /* 28A90 00127B10 54000010 */  b          .L00127C64
    /* 28A94 00127B14 02000224 */   addiu     $v0, $zero, 0x2
.align 2
  .L00127B18:
    /* 28A98 00127B18 12004014 */  bnez       $v0, .L00127B64
    /* 28A9C 00127B1C 4000A28F */   lw        $v0, 0x40($sp)
    /* 28AA0 00127B20 2D200002 */  daddu      $a0, $s0, $zero
    /* 28AA4 00127B24 18A2040C */  jal        func_00128860
    /* 28AA8 00127B28 17000524 */   addiu     $a1, $zero, 0x17
    /* 28AAC 00127B2C 05004050 */  beql       $v0, $zero, .L00127B44
    /* 28AB0 00127B30 1C0100AE */   sw        $zero, 0x11C($s0)
    /* 28AB4 00127B34 1C01028E */  lw         $v0, 0x11C($s0)
    /* 28AB8 00127B38 04004010 */  beqz       $v0, .L00127B4C
    /* 28ABC 00127B3C 00000000 */   nop
    /* 28AC0 00127B40 1C0100AE */  sw         $zero, 0x11C($s0)
.align 2
  .L00127B44:
    /* 28AC4 00127B44 47000010 */  b          .L00127C64
    /* 28AC8 00127B48 03000224 */   addiu     $v0, $zero, 0x3
.align 2
  .L00127B4C:
    /* 28ACC 00127B4C D29D040C */  jal        func_00127748
    /* 28AD0 00127B50 2D200002 */   daddu     $a0, $s0, $zero
    /* 28AD4 00127B54 1C01038E */  lw         $v1, 0x11C($s0)
    /* 28AD8 00127B58 19006014 */  bnez       $v1, .L00127BC0
    /* 28ADC 00127B5C 4400A2AF */   sw        $v0, 0x44($sp)
    /* 28AE0 00127B60 4000A28F */  lw         $v0, 0x40($sp)
.align 2
  .L00127B64:
    /* 28AE4 00127B64 2A105300 */  slt        $v0, $v0, $s3
    /* 28AE8 00127B68 07004014 */  bnez       $v0, .L00127B88
    /* 28AEC 00127B6C 4400A38F */   lw        $v1, 0x44($sp)
    /* 28AF0 00127B70 1500053C */  lui        $a1, %hi(D_00153948)
    /* 28AF4 00127B74 2D200002 */  daddu      $a0, $s0, $zero
    /* 28AF8 00127B78 1AB1040C */  jal        func_0012C468
    /* 28AFC 00127B7C 4839A524 */   addiu     $a1, $a1, %lo(D_00153948)
    /* 28B00 00127B80 38000010 */  b          .L00127C64
    /* 28B04 00127B84 02000224 */   addiu     $v0, $zero, 0x2
.align 2
  .L00127B88:
    /* 28B08 00127B88 01000224 */  addiu      $v0, $zero, 0x1
    /* 28B0C 00127B8C 0F006214 */  bne        $v1, $v0, .L00127BCC
    /* 28B10 00127B90 2000B227 */   addiu     $s2, $sp, 0x20
    /* 28B14 00127B94 3000B127 */  addiu      $s1, $sp, 0x30
    /* 28B18 00127B98 2D200002 */  daddu      $a0, $s0, $zero
    /* 28B1C 00127B9C 4800A527 */  addiu      $a1, $sp, 0x48
    /* 28B20 00127BA0 4C00A627 */  addiu      $a2, $sp, 0x4C
    /* 28B24 00127BA4 5000A727 */  addiu      $a3, $sp, 0x50
    /* 28B28 00127BA8 2D40A003 */  daddu      $t0, $sp, $zero
    /* 28B2C 00127BAC 2D484002 */  daddu      $t1, $s2, $zero
    /* 28B30 00127BB0 509F040C */  jal        func_00127D40
    /* 28B34 00127BB4 2D502002 */   daddu     $t2, $s1, $zero
    /* 28B38 00127BB8 0D004014 */  bnez       $v0, .L00127BF0
    /* 28B3C 00127BBC 4000A58F */   lw        $a1, 0x40($sp)
.align 2
  .L00127BC0:
    /* 28B40 00127BC0 1C0100AE */  sw         $zero, 0x11C($s0)
    /* 28B44 00127BC4 27000010 */  b          .L00127C64
    /* 28B48 00127BC8 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L00127BCC:
    /* 28B4C 00127BCC 2D200002 */  daddu      $a0, $s0, $zero
    /* 28B50 00127BD0 2D28A003 */  daddu      $a1, $sp, $zero
    /* 28B54 00127BD4 4C00A627 */  addiu      $a2, $sp, 0x4C
    /* 28B58 00127BD8 2D384002 */  daddu      $a3, $s2, $zero
    /* 28B5C 00127BDC 209F040C */  jal        func_00127C80
    /* 28B60 00127BE0 4800A827 */   addiu     $t0, $sp, 0x48
    /* 28B64 00127BE4 0C004010 */  beqz       $v0, .L00127C18
    /* 28B68 00127BE8 3000B127 */   addiu     $s1, $sp, 0x30
    /* 28B6C 00127BEC 4000A58F */  lw         $a1, 0x40($sp)
.align 2
  .L00127BF0:
    /* 28B70 00127BF0 2D504002 */  daddu      $t2, $s2, $zero
    /* 28B74 00127BF4 4400A68F */  lw         $a2, 0x44($sp)
    /* 28B78 00127BF8 2D582002 */  daddu      $t3, $s1, $zero
    /* 28B7C 00127BFC 4800A78F */  lw         $a3, 0x48($sp)
    /* 28B80 00127C00 2D200002 */  daddu      $a0, $s0, $zero
    /* 28B84 00127C04 4C00A88F */  lw         $t0, 0x4C($sp)
    /* 28B88 00127C08 8C95040C */  jal        func_00125630
    /* 28B8C 00127C0C 2D48A003 */   daddu     $t1, $sp, $zero
    /* 28B90 00127C10 04004014 */  bnez       $v0, .L00127C24
    /* 28B94 00127C14 4000A48F */   lw        $a0, 0x40($sp)
.align 2
  .L00127C18:
    /* 28B98 00127C18 1C0100AE */  sw         $zero, 0x11C($s0)
    /* 28B9C 00127C1C 11000010 */  b          .L00127C64
    /* 28BA0 00127C20 02000224 */   addiu     $v0, $zero, 0x2
.align 2
  .L00127C24:
    /* 28BA4 00127C24 07008050 */  beql       $a0, $zero, .L00127C44
    /* 28BA8 00127C28 1008028E */   lw        $v0, 0x810($s0)
    /* 28BAC 00127C2C 1008058E */  lw         $a1, 0x810($s0)
    /* 28BB0 00127C30 2D200002 */  daddu      $a0, $s0, $zero
    /* 28BB4 00127C34 EA98040C */  jal        func_001263A8
    /* 28BB8 00127C38 0100A538 */   xori      $a1, $a1, 0x1
    /* 28BBC 00127C3C 4000A48F */  lw         $a0, 0x40($sp)
    /* 28BC0 00127C40 1008028E */  lw         $v0, 0x810($s0)
.align 2
  .L00127C44:
    /* 28BC4 00127C44 01008424 */  addiu      $a0, $a0, 0x1
    /* 28BC8 00127C48 4400A38F */  lw         $v1, 0x44($sp)
    /* 28BCC 00127C4C 01004238 */  xori       $v0, $v0, 0x1
    /* 28BD0 00127C50 4000A4AF */  sw         $a0, 0x40($sp)
    /* 28BD4 00127C54 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 28BD8 00127C58 100802AE */  sw         $v0, 0x810($s0)
    /* 28BDC 00127C5C 9EFF0010 */  b          .L00127AD8
    /* 28BE0 00127C60 4400A3AF */   sw        $v1, 0x44($sp)
.align 2
  .L00127C64:
    /* 28BE4 00127C64 A000BFDF */  ld         $ra, 0xA0($sp)
.align 2
  .L00127C68:
    /* 28BE8 00127C68 9000B3DF */  ld         $s3, 0x90($sp)
    /* 28BEC 00127C6C 8000B2DF */  ld         $s2, 0x80($sp)
    /* 28BF0 00127C70 7000B1DF */  ld         $s1, 0x70($sp)
    /* 28BF4 00127C74 6000B0DF */  ld         $s0, 0x60($sp)
    /* 28BF8 00127C78 0800E003 */  jr         $ra
    /* 28BFC 00127C7C B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_00127A90
