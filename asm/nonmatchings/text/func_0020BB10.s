.align 3
nonmatching func_0020BB10, 0x74

glabel func_0020BB10
    /* 10CA90 0020BB10 0118A228 */  slti       $2, $5, 0x1801
    /* 10CA94 0020BB14 03004014 */  bnez       $2, .L0020BB24
    /* 10CA98 0020BB18 21288500 */   addu      $5, $4, $5
    /* 10CA9C 0020BB1C 0800E003 */  jr         $31
    /* 10CAA0 0020BB20 2D100000 */   daddu     $2, $0, $0
.align 2
  .L0020BB24:
    /* 10CAA4 0020BB24 B8ED033C */  lui        $3, (0xEDB88320 >> 16)
    /* 10CAA8 0020BB28 2B108500 */  sltu       $2, $4, $5
    /* 10CAAC 0020BB2C 13004010 */  beqz       $2, .L0020BB7C
    /* 10CAB0 0020BB30 20836334 */   ori       $3, $3, (0xEDB88320 & 0xFFFF)
    /* 10CAB4 0020BB34 00008290 */  lbu        $2, 0x0($4)
.align 2
  .L0020BB38:
    /* 10CAB8 0020BB38 07000624 */  addiu      $6, $0, 0x7
    /* 10CABC 0020BB3C 01008424 */  addiu      $4, $4, 0x1
    /* 10CAC0 0020BB40 00120200 */  sll        $2, $2, 8
    /* 10CAC4 0020BB44 26186200 */  xor        $3, $3, $2
    /* 10CAC8 0020BB48 00806230 */  andi       $2, $3, 0x8000
    /* 10CACC 0020BB4C 00000000 */  nop
.align 2
  .L0020BB50:
    /* 10CAD0 0020BB50 03004010 */  beqz       $2, .L0020BB60
    /* 10CAD4 0020BB54 40100300 */   sll       $2, $3, 1
    /* 10CAD8 0020BB58 02000010 */  b          .L0020BB64
    /* 10CADC 0020BB5C 451F4338 */   xori      $3, $2, 0x1F45
.align 2
  .L0020BB60:
    /* 10CAE0 0020BB60 40180300 */  sll        $3, $3, 1
.align 2
  .L0020BB64:
    /* 10CAE4 0020BB64 FFFFC624 */  addiu      $6, $6, -0x1
    /* 10CAE8 0020BB68 F9FFC104 */  bgez       $6, .L0020BB50
    /* 10CAEC 0020BB6C 00806230 */   andi      $2, $3, 0x8000
    /* 10CAF0 0020BB70 2B108500 */  sltu       $2, $4, $5
    /* 10CAF4 0020BB74 F0FF4054 */  bnel       $2, $0, .L0020BB38
    /* 10CAF8 0020BB78 00008290 */   lbu       $2, 0x0($4)
.align 2
  .L0020BB7C:
    /* 10CAFC 0020BB7C 0800E003 */  jr         $31
    /* 10CB00 0020BB80 FFFF6230 */   andi      $2, $3, 0xFFFF
endlabel func_0020BB10
    /* 10CB04 0020BB84 00000000 */  nop
