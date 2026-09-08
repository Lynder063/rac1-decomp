.align 3
nonmatching func_00119EA8, 0x90

glabel func_00119EA8
    /* 1AE28 00119EA8 2D288000 */  daddu      $a1, $a0, $zero
    /* 1AE2C 00119EAC 78100500 */  dsll       $v0, $a1, 1
    /* 1AE30 00119EB0 7E350200 */  dsrl32     $a2, $v0, 21
    /* 1AE34 00119EB4 CDFBC664 */  daddiu     $a2, $a2, -0x433
    /* 1AE38 00119EB8 CBFFC228 */  slti       $v0, $a2, -0x35
    /* 1AE3C 00119EBC 03004010 */  beqz       $v0, .L00119ECC
    /* 1AE40 00119EC0 0D00C228 */   slti      $v0, $a2, 0xD
    /* 1AE44 00119EC4 0800E003 */  jr         $ra
    /* 1AE48 00119EC8 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00119ECC:
    /* 1AE4C 00119ECC 03004014 */  bnez       $v0, .L00119EDC
    /* 1AE50 00119ED0 38130500 */   dsll      $v0, $a1, 12
    /* 1AE54 00119ED4 0800E003 */  jr         $ra
    /* 1AE58 00119ED8 0F270224 */   addiu     $v0, $zero, 0x270F
.align 2
  .L00119EDC:
    /* 1AE5C 00119EDC 00800334 */  ori        $v1, $zero, 0x8000
    /* 1AE60 00119EE0 7C190300 */  dsll32     $v1, $v1, 5
    /* 1AE64 00119EE4 3A2B0200 */  dsrl       $a1, $v0, 12
    /* 1AE68 00119EE8 0D00C104 */  bgez       $a2, .L00119F20
    /* 1AE6C 00119EEC 2528A300 */   or        $a1, $a1, $v1
    /* 1AE70 00119EF0 2F300600 */  dsubu      $a2, $zero, $a2
    /* 1AE74 00119EF4 03000224 */  addiu      $v0, $zero, 0x3
    /* 1AE78 00119EF8 FEFFC364 */  daddiu     $v1, $a2, -0x2
    /* 1AE7C 00119EFC 3C180300 */  dsll32     $v1, $v1, 0
    /* 1AE80 00119F00 3F180300 */  dsra32     $v1, $v1, 0
    /* 1AE84 00119F04 16286500 */  dsrlv      $a1, $a1, $v1
    /* 1AE88 00119F08 0300A430 */  andi       $a0, $a1, 0x3
    /* 1AE8C 00119F0C 07008254 */  bnel       $a0, $v0, .L00119F2C
    /* 1AE90 00119F10 BA280500 */   dsrl      $a1, $a1, 2
    /* 1AE94 00119F14 BA100500 */  dsrl       $v0, $a1, 2
    /* 1AE98 00119F18 04000010 */  b          .L00119F2C
    /* 1AE9C 00119F1C 01004564 */   daddiu    $a1, $v0, 0x1
.align 2
  .L00119F20:
    /* 1AEA0 00119F20 3C100600 */  dsll32     $v0, $a2, 0
    /* 1AEA4 00119F24 3F100200 */  dsra32     $v0, $v0, 0
    /* 1AEA8 00119F28 14284500 */  dsllv      $a1, $a1, $v0
.align 2
  .L00119F2C:
    /* 1AEAC 00119F2C 3C100500 */  dsll32     $v0, $a1, 0
    /* 1AEB0 00119F30 0800E003 */  jr         $ra
    /* 1AEB4 00119F34 3F100200 */   dsra32    $v0, $v0, 0
endlabel func_00119EA8
