.align 3
nonmatching func_00115B70, 0x178

glabel func_00115B70
    /* 16AF0 00115B70 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 16AF4 00115B74 6000B6FF */  sd         $s6, 0x60($sp)
    /* 16AF8 00115B78 4000B4FF */  sd         $s4, 0x40($sp)
    /* 16AFC 00115B7C 2DB08000 */  daddu      $s6, $a0, $zero
    /* 16B00 00115B80 1000B1FF */  sd         $s1, 0x10($sp)
    /* 16B04 00115B84 43A10600 */  sra        $s4, $a2, 5
    /* 16B08 00115B88 0000B0FF */  sd         $s0, 0x0($sp)
    /* 16B0C 00115B8C 2D88A000 */  daddu      $s1, $a1, $zero
    /* 16B10 00115B90 7000BFFF */  sd         $ra, 0x70($sp)
    /* 16B14 00115B94 5000B5FF */  sd         $s5, 0x50($sp)
    /* 16B18 00115B98 3000B3FF */  sd         $s3, 0x30($sp)
    /* 16B1C 00115B9C 2000B2FF */  sd         $s2, 0x20($sp)
    /* 16B20 00115BA0 1000238E */  lw         $v1, 0x10($s1)
    /* 16B24 00115BA4 0800278E */  lw         $a3, 0x8($s1)
    /* 16B28 00115BA8 21188302 */  addu       $v1, $s4, $v1
    /* 16B2C 00115BAC 01007024 */  addiu      $s0, $v1, 0x1
    /* 16B30 00115BB0 2A10F000 */  slt        $v0, $a3, $s0
    /* 16B34 00115BB4 0D004010 */  beqz       $v0, .L00115BEC
    /* 16B38 00115BB8 0400258E */   lw        $a1, 0x4($s1)
    /* 16B3C 00115BBC 1F00D330 */  andi       $s3, $a2, 0x1F
    /* 16B40 00115BC0 14003226 */  addiu      $s2, $s1, 0x14
    /* 16B44 00115BC4 00000000 */  nop
.align 2
  .L00115BC8:
    /* 16B48 00115BC8 40380700 */  sll        $a3, $a3, 1
    /* 16B4C 00115BCC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 16B50 00115BD0 2A10F000 */  slt        $v0, $a3, $s0
    /* 16B54 00115BD4 00000000 */  nop
    /* 16B58 00115BD8 00000000 */  nop
    /* 16B5C 00115BDC FAFF4014 */  bnez       $v0, .L00115BC8
    /* 16B60 00115BE0 00000000 */   nop
    /* 16B64 00115BE4 03000010 */  b          .L00115BF4
    /* 16B68 00115BE8 00000000 */   nop
.align 2
  .L00115BEC:
    /* 16B6C 00115BEC 1F00D330 */  andi       $s3, $a2, 0x1F
    /* 16B70 00115BF0 14003226 */  addiu      $s2, $s1, 0x14
.align 2
  .L00115BF4:
    /* 16B74 00115BF4 3455040C */  jal        func_001154D0
    /* 16B78 00115BF8 2D20C002 */   daddu     $a0, $s6, $zero
    /* 16B7C 00115BFC 2DA84000 */  daddu      $s5, $v0, $zero
    /* 16B80 00115C00 0A00801A */  blez       $s4, .L00115C2C
    /* 16B84 00115C04 1400A626 */   addiu     $a2, $s5, 0x14
    /* 16B88 00115C08 2D388002 */  daddu      $a3, $s4, $zero
    /* 16B8C 00115C0C 00000000 */  nop
.align 2
  .L00115C10:
    /* 16B90 00115C10 0000C0AC */  sw         $zero, 0x0($a2)
    /* 16B94 00115C14 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 16B98 00115C18 0400C624 */  addiu      $a2, $a2, 0x4
    /* 16B9C 00115C1C 00000000 */  nop
    /* 16BA0 00115C20 00000000 */  nop
    /* 16BA4 00115C24 FAFFE014 */  bnez       $a3, .L00115C10
    /* 16BA8 00115C28 00000000 */   nop
.align 2
  .L00115C2C:
    /* 16BAC 00115C2C 1000228E */  lw         $v0, 0x10($s1)
    /* 16BB0 00115C30 2D204002 */  daddu      $a0, $s2, $zero
    /* 16BB4 00115C34 80100200 */  sll        $v0, $v0, 2
    /* 16BB8 00115C38 13006012 */  beqz       $s3, .L00115C88
    /* 16BBC 00115C3C 21388200 */   addu      $a3, $a0, $v0
    /* 16BC0 00115C40 20000224 */  addiu      $v0, $zero, 0x20
    /* 16BC4 00115C44 2D180000 */  daddu      $v1, $zero, $zero
    /* 16BC8 00115C48 23285300 */  subu       $a1, $v0, $s3
    /* 16BCC 00115C4C 01000826 */  addiu      $t0, $s0, 0x1
.align 2
  .L00115C50:
    /* 16BD0 00115C50 0000828C */  lw         $v0, 0x0($a0)
    /* 16BD4 00115C54 04106202 */  sllv       $v0, $v0, $s3
    /* 16BD8 00115C58 25104300 */  or         $v0, $v0, $v1
    /* 16BDC 00115C5C 0000C2AC */  sw         $v0, 0x0($a2)
    /* 16BE0 00115C60 0400C624 */  addiu      $a2, $a2, 0x4
    /* 16BE4 00115C64 0000838C */  lw         $v1, 0x0($a0)
    /* 16BE8 00115C68 04008424 */  addiu      $a0, $a0, 0x4
    /* 16BEC 00115C6C 2B108700 */  sltu       $v0, $a0, $a3
    /* 16BF0 00115C70 F7FF4014 */  bnez       $v0, .L00115C50
    /* 16BF4 00115C74 0618A300 */   srlv      $v1, $v1, $a1
    /* 16BF8 00115C78 0B800301 */  movn       $s0, $t0, $v1
    /* 16BFC 00115C7C 0000C3AC */  sw         $v1, 0x0($a2)
    /* 16C00 00115C80 0A000010 */  b          .L00115CAC
    /* 16C04 00115C84 FFFF0526 */   addiu     $a1, $s0, -0x1
.align 2
  .L00115C88:
    /* 16C08 00115C88 FFFF0526 */  addiu      $a1, $s0, -0x1
    /* 16C0C 00115C8C 00000000 */  nop
.align 2
  .L00115C90:
    /* 16C10 00115C90 0000828C */  lw         $v0, 0x0($a0)
    /* 16C14 00115C94 04008424 */  addiu      $a0, $a0, 0x4
    /* 16C18 00115C98 0000C2AC */  sw         $v0, 0x0($a2)
    /* 16C1C 00115C9C 2B188700 */  sltu       $v1, $a0, $a3
    /* 16C20 00115CA0 0400C624 */  addiu      $a2, $a2, 0x4
    /* 16C24 00115CA4 FAFF6014 */  bnez       $v1, .L00115C90
    /* 16C28 00115CA8 00000000 */   nop
.align 2
  .L00115CAC:
    /* 16C2C 00115CAC 1000A5AE */  sw         $a1, 0x10($s5)
    /* 16C30 00115CB0 2D20C002 */  daddu      $a0, $s6, $zero
    /* 16C34 00115CB4 5E55040C */  jal        func_00115578
    /* 16C38 00115CB8 2D282002 */   daddu     $a1, $s1, $zero
    /* 16C3C 00115CBC 2D10A002 */  daddu      $v0, $s5, $zero
    /* 16C40 00115CC0 7000BFDF */  ld         $ra, 0x70($sp)
    /* 16C44 00115CC4 6000B6DF */  ld         $s6, 0x60($sp)
    /* 16C48 00115CC8 5000B5DF */  ld         $s5, 0x50($sp)
    /* 16C4C 00115CCC 4000B4DF */  ld         $s4, 0x40($sp)
    /* 16C50 00115CD0 3000B3DF */  ld         $s3, 0x30($sp)
    /* 16C54 00115CD4 2000B2DF */  ld         $s2, 0x20($sp)
    /* 16C58 00115CD8 1000B1DF */  ld         $s1, 0x10($sp)
    /* 16C5C 00115CDC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 16C60 00115CE0 0800E003 */  jr         $ra
    /* 16C64 00115CE4 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_00115B70
