.align 3
nonmatching func_0012AAC8, 0x98

glabel func_0012AAC8
    /* 2BA48 0012AAC8 2D308000 */  daddu      $a2, $a0, $zero
    /* 2BA4C 0012AACC 0000C2DC */  ld         $v0, 0x0($a2)
    /* 2BA50 0012AAD0 1000C38C */  lw         $v1, 0x10($a2)
    /* 2BA54 0012AAD4 1410A200 */  dsllv      $v0, $v0, $a1
    /* 2BA58 0012AAD8 23186500 */  subu       $v1, $v1, $a1
    /* 2BA5C 0012AADC 0000C2FC */  sd         $v0, 0x0($a2)
    /* 2BA60 0012AAE0 3900642C */  sltiu      $a0, $v1, 0x39
    /* 2BA64 0012AAE4 19008010 */  beqz       $a0, .L0012AB4C
    /* 2BA68 0012AAE8 1000C3AC */   sw        $v1, 0x10($a2)
    /* 2BA6C 0012AAEC 2400C88C */  lw         $t0, 0x24($a2)
    /* 2BA70 0012AAF0 2D48A000 */  daddu      $t1, $a1, $zero
    /* 2BA74 0012AAF4 1800CADC */  ld         $t2, 0x18($a2)
.align 2
  .L0012AAF8:
    /* 2BA78 0012AAF8 0C00C58C */  lw         $a1, 0xC($a2)
    /* 2BA7C 0012AAFC 38000224 */  addiu      $v0, $zero, 0x38
    /* 2BA80 0012AB00 1000C78C */  lw         $a3, 0x10($a2)
    /* 2BA84 0012AB04 0000A390 */  lbu        $v1, 0x0($a1)
    /* 2BA88 0012AB08 23104700 */  subu       $v0, $v0, $a3
    /* 2BA8C 0012AB0C 0000C4DC */  ld         $a0, 0x0($a2)
    /* 2BA90 0012AB10 14184300 */  dsllv      $v1, $v1, $v0
    /* 2BA94 0012AB14 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2BA98 0012AB18 25208300 */  or         $a0, $a0, $v1
    /* 2BA9C 0012AB1C 2B10A800 */  sltu       $v0, $a1, $t0
    /* 2BAA0 0012AB20 0000C4FC */  sd         $a0, 0x0($a2)
    /* 2BAA4 0012AB24 03004014 */  bnez       $v0, .L0012AB34
    /* 2BAA8 0012AB28 0C00C5AC */   sw        $a1, 0xC($a2)
    /* 2BAAC 0012AB2C 2000C28C */  lw         $v0, 0x20($a2)
    /* 2BAB0 0012AB30 0C00C2AC */  sw         $v0, 0xC($a2)
.align 2
  .L0012AB34:
    /* 2BAB4 0012AB34 0800E224 */  addiu      $v0, $a3, 0x8
    /* 2BAB8 0012AB38 3900432C */  sltiu      $v1, $v0, 0x39
    /* 2BABC 0012AB3C EEFF6014 */  bnez       $v1, .L0012AAF8
    /* 2BAC0 0012AB40 1000C2AC */   sw        $v0, 0x10($a2)
    /* 2BAC4 0012AB44 04000010 */  b          .L0012AB58
    /* 2BAC8 0012AB48 2D104901 */   daddu     $v0, $t2, $t1
.align 2
  .L0012AB4C:
    /* 2BACC 0012AB4C 1800CADC */  ld         $t2, 0x18($a2)
    /* 2BAD0 0012AB50 2D48A000 */  daddu      $t1, $a1, $zero
    /* 2BAD4 0012AB54 2D104901 */  daddu      $v0, $t2, $t1
.align 2
  .L0012AB58:
    /* 2BAD8 0012AB58 0800E003 */  jr         $ra
    /* 2BADC 0012AB5C 1800C2FC */   sd        $v0, 0x18($a2)
endlabel func_0012AAC8
