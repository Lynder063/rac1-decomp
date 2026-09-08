nonmatching func_00116CBC, 0x70

glabel func_00116CBC
    /* 17C3C 00116CBC CDCDCDCD */  pref       0x0D, -0x3233($t6)
.align 2
  alabel func_00116CC0
    /* 17C40 00116CC0 00008280 */  lb         $v0, 0x0($a0)
    /* 17C44 00116CC4 06004014 */  bnez       $v0, .L00116CE0
    /* 17C48 00116CC8 0000A380 */   lb        $v1, 0x0($a1)
    /* 17C4C 00116CCC 2D100000 */  daddu      $v0, $zero, $zero
    /* 17C50 00116CD0 0800E003 */  jr         $ra
    /* 17C54 00116CD4 0A108300 */   movz      $v0, $a0, $v1
.align 2
  .L00116CD8:
    /* 17C58 00116CD8 0800E003 */  jr         $ra
    /* 17C5C 00116CDC 2D108000 */   daddu     $v0, $a0, $zero
.align 2
  .L00116CE0:
    /* 17C60 00116CE0 FDFF6010 */  beqz       $v1, .L00116CD8
    /* 17C64 00116CE4 2D380000 */   daddu     $a3, $zero, $zero
    /* 17C68 00116CE8 00008280 */  lb         $v0, 0x0($a0)
    /* 17C6C 00116CEC 0A006254 */  bnel       $v1, $v0, .L00116D18
    /* 17C70 00116CF0 01008424 */   addiu     $a0, $a0, 0x1
    /* 17C74 00116CF4 0100E724 */  addiu      $a3, $a3, 0x1
.align 2
  .L00116CF8:
    /* 17C78 00116CF8 2110A700 */  addu       $v0, $a1, $a3
    /* 17C7C 00116CFC 00004680 */  lb         $a2, 0x0($v0)
    /* 17C80 00116D00 F5FFC010 */  beqz       $a2, .L00116CD8
    /* 17C84 00116D04 21108700 */   addu      $v0, $a0, $a3
    /* 17C88 00116D08 00004380 */  lb         $v1, 0x0($v0)
    /* 17C8C 00116D0C FAFFC350 */  beql       $a2, $v1, .L00116CF8
    /* 17C90 00116D10 0100E724 */   addiu     $a3, $a3, 0x1
    /* 17C94 00116D14 01008424 */  addiu      $a0, $a0, 0x1
.align 2
  .L00116D18:
    /* 17C98 00116D18 00008280 */  lb         $v0, 0x0($a0)
    /* 17C9C 00116D1C F0FF4054 */  bnel       $v0, $zero, .L00116CE0
    /* 17CA0 00116D20 0000A380 */   lb        $v1, 0x0($a1)
    /* 17CA4 00116D24 0800E003 */  jr         $ra
    /* 17CA8 00116D28 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_00116CBC
