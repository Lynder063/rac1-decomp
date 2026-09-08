.align 3
nonmatching func_0012C200, 0x68

glabel func_0012C200
    /* 2D180 0012C200 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2D184 0012C204 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2D188 0012C208 2000BFFF */  sd         $ra, 0x20($sp)
    /* 2D18C 0012C20C 2D888000 */  daddu      $s1, $a0, $zero
    /* 2D190 0012C210 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2D194 0012C214 4000308E */  lw         $s0, 0x40($s1)
    /* 2D198 0012C218 0400028E */  lw         $v0, 0x4($s0)
    /* 2D19C 0012C21C 0C004010 */  beqz       $v0, .L0012C250
    /* 2D1A0 0012C220 2D200000 */   daddu     $a0, $zero, $zero
    /* 2D1A4 0012C224 0800028E */  lw         $v0, 0x8($s0)
    /* 2D1A8 0012C228 0A004010 */  beqz       $v0, .L0012C254
    /* 2D1AC 0012C22C 2000BFDF */   ld        $ra, 0x20($sp)
    /* 2D1B0 0012C230 9EB0040C */  jal        func_0012C278
    /* 2D1B4 0012C234 2D200002 */   daddu     $a0, $s0, $zero
    /* 2D1B8 0012C238 1801028E */  lw         $v0, 0x118($s0)
    /* 2D1BC 0012C23C 01000424 */  addiu      $a0, $zero, 0x1
    /* 2D1C0 0012C240 AC00038E */  lw         $v1, 0xAC($s0)
    /* 2D1C4 0012C244 23104300 */  subu       $v0, $v0, $v1
    /* 2D1C8 0012C248 080022AE */  sw         $v0, 0x8($s1)
    /* 2D1CC 0012C24C 040000AE */  sw         $zero, 0x4($s0)
.align 2
  .L0012C250:
    /* 2D1D0 0012C250 2000BFDF */  ld         $ra, 0x20($sp)
.align 2
  .L0012C254:
    /* 2D1D4 0012C254 2D108000 */  daddu      $v0, $a0, $zero
    /* 2D1D8 0012C258 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2D1DC 0012C25C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2D1E0 0012C260 0800E003 */  jr         $ra
    /* 2D1E4 0012C264 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012C200
