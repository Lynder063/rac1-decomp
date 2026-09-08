.align 3
nonmatching func_0012B100, 0x150

glabel func_0012B100
    /* 2C080 0012B100 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 2C084 0012B104 6000B6FF */  sd         $s6, 0x60($sp)
    /* 2C088 0012B108 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2C08C 0012B10C 2DB0A000 */  daddu      $s6, $a1, $zero
    /* 2C090 0012B110 2D988000 */  daddu      $s3, $a0, $zero
    /* 2C094 0012B114 5000B5FF */  sd         $s5, 0x50($sp)
    /* 2C098 0012B118 4000B4FF */  sd         $s4, 0x40($sp)
    /* 2C09C 0012B11C 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2C0A0 0012B120 22000524 */  addiu      $a1, $zero, 0x22
    /* 2C0A4 0012B124 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2C0A8 0012B128 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2C0AC 0012B12C 7000BFFF */  sd         $ra, 0x70($sp)
    /* 2C0B0 0012B130 D8AA040C */  jal        func_0012AB60
    /* 2C0B4 0012B134 2DA80000 */   daddu     $s5, $zero, $zero
    /* 2C0B8 0012B138 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C0BC 0012B13C D8AA040C */  jal        func_0012AB60
    /* 2C0C0 0012B140 03000524 */   addiu     $a1, $zero, 0x3
    /* 2C0C4 0012B144 2D804000 */  daddu      $s0, $v0, $zero
    /* 2C0C8 0012B148 ECAA040C */  jal        func_0012ABB0
    /* 2C0CC 0012B14C 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C0D0 0012B150 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C0D4 0012B154 D8AA040C */  jal        func_0012AB60
    /* 2C0D8 0012B158 0F000524 */   addiu     $a1, $zero, 0xF
    /* 2C0DC 0012B15C 2D884000 */  daddu      $s1, $v0, $zero
    /* 2C0E0 0012B160 ECAA040C */  jal        func_0012ABB0
    /* 2C0E4 0012B164 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C0E8 0012B168 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C0EC 0012B16C D8AA040C */  jal        func_0012AB60
    /* 2C0F0 0012B170 0F000524 */   addiu     $a1, $zero, 0xF
    /* 2C0F4 0012B174 2D904000 */  daddu      $s2, $v0, $zero
    /* 2C0F8 0012B178 ECAA040C */  jal        func_0012ABB0
    /* 2C0FC 0012B17C 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C100 0012B180 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C104 0012B184 D8AA040C */  jal        func_0012AB60
    /* 2C108 0012B188 09000524 */   addiu     $a1, $zero, 0x9
    /* 2C10C 0012B18C 0000C2AE */  sw         $v0, 0x0($s6)
    /* 2C110 0012B190 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C114 0012B194 D8AA040C */  jal        func_0012AB60
    /* 2C118 0012B198 1E000524 */   addiu     $a1, $zero, 0x1E
    /* 2C11C 0012B19C 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C120 0012B1A0 D8AA040C */  jal        func_0012AB60
    /* 2C124 0012B1A4 03000524 */   addiu     $a1, $zero, 0x3
    /* 2C128 0012B1A8 2DA04000 */  daddu      $s4, $v0, $zero
    /* 2C12C 0012B1AC C08B1100 */  sll        $s1, $s1, 15
    /* 2C130 0012B1B0 80171000 */  sll        $v0, $s0, 30
    /* 2C134 0012B1B4 82801000 */  srl        $s0, $s0, 2
    /* 2C138 0012B1B8 25105100 */  or         $v0, $v0, $s1
    /* 2C13C 0012B1BC 01001032 */  andi       $s0, $s0, 0x1
    /* 2C140 0012B1C0 25105200 */  or         $v0, $v0, $s2
    /* 2C144 0012B1C4 0800D0AE */  sw         $s0, 0x8($s6)
    /* 2C148 0012B1C8 09008012 */  beqz       $s4, .L0012B1F0
    /* 2C14C 0012B1CC 0400C2AE */   sw        $v0, 0x4($s6)
    /* 2C150 0012B1D0 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C154 0012B1D4 00000000 */  nop
.align 2
  .L0012B1D8:
    /* 2C158 0012B1D8 D8AA040C */  jal        func_0012AB60
    /* 2C15C 0012B1DC 08000524 */   addiu     $a1, $zero, 0x8
    /* 2C160 0012B1E0 0100B526 */  addiu      $s5, $s5, 0x1
    /* 2C164 0012B1E4 2B10B402 */  sltu       $v0, $s5, $s4
    /* 2C168 0012B1E8 FBFF4014 */  bnez       $v0, .L0012B1D8
    /* 2C16C 0012B1EC 2D206002 */   daddu     $a0, $s3, $zero
.align 2
  .L0012B1F0:
    /* 2C170 0012B1F0 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C174 0012B1F4 AAAA040C */  jal        func_0012AAA8
    /* 2C178 0012B1F8 20000524 */   addiu     $a1, $zero, 0x20
    /* 2C17C 0012B1FC BB010324 */  addiu      $v1, $zero, 0x1BB
    /* 2C180 0012B200 08004354 */  bnel       $v0, $v1, .L0012B224
    /* 2C184 0012B204 0C00C0AE */   sw        $zero, 0xC($s6)
    /* 2C188 0012B208 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C18C 0012B20C 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C190 0012B210 0C00C2AE */  sw         $v0, 0xC($s6)
    /* 2C194 0012B214 94AC040C */  jal        func_0012B250
    /* 2C198 0012B218 2D28C002 */   daddu     $a1, $s6, $zero
    /* 2C19C 0012B21C 02000010 */  b          .L0012B228
    /* 2C1A0 0012B220 7000BFDF */   ld        $ra, 0x70($sp)
.align 2
  .L0012B224:
    /* 2C1A4 0012B224 7000BFDF */  ld         $ra, 0x70($sp)
.align 2
  .L0012B228:
    /* 2C1A8 0012B228 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C1AC 0012B22C 6000B6DF */  ld         $s6, 0x60($sp)
    /* 2C1B0 0012B230 5000B5DF */  ld         $s5, 0x50($sp)
    /* 2C1B4 0012B234 4000B4DF */  ld         $s4, 0x40($sp)
    /* 2C1B8 0012B238 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2C1BC 0012B23C 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2C1C0 0012B240 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2C1C4 0012B244 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2C1C8 0012B248 0800E003 */  jr         $ra
    /* 2C1CC 0012B24C 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_0012B100
