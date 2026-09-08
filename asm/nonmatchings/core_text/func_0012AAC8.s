.align 3
nonmatching func_0012AAC8, 0x98

glabel func_0012AAC8
    /* 2BA48 0012AAC8 2D308000 */  daddu      $6, $4, $0
    /* 2BA4C 0012AACC 0000C2DC */  ld         $2, 0x0($6)
    /* 2BA50 0012AAD0 1000C38C */  lw         $3, 0x10($6)
    /* 2BA54 0012AAD4 1410A200 */  dsllv      $2, $2, $5
    /* 2BA58 0012AAD8 23186500 */  subu       $3, $3, $5
    /* 2BA5C 0012AADC 0000C2FC */  sd         $2, 0x0($6)
    /* 2BA60 0012AAE0 3900642C */  sltiu      $4, $3, 0x39
    /* 2BA64 0012AAE4 19008010 */  beqz       $4, .L0012AB4C
    /* 2BA68 0012AAE8 1000C3AC */   sw        $3, 0x10($6)
    /* 2BA6C 0012AAEC 2400C88C */  lw         $8, 0x24($6)
    /* 2BA70 0012AAF0 2D48A000 */  daddu      $9, $5, $0
    /* 2BA74 0012AAF4 1800CADC */  ld         $10, 0x18($6)
.align 2
  .L0012AAF8:
    /* 2BA78 0012AAF8 0C00C58C */  lw         $5, 0xC($6)
    /* 2BA7C 0012AAFC 38000224 */  addiu      $2, $0, 0x38
    /* 2BA80 0012AB00 1000C78C */  lw         $7, 0x10($6)
    /* 2BA84 0012AB04 0000A390 */  lbu        $3, 0x0($5)
    /* 2BA88 0012AB08 23104700 */  subu       $2, $2, $7
    /* 2BA8C 0012AB0C 0000C4DC */  ld         $4, 0x0($6)
    /* 2BA90 0012AB10 14184300 */  dsllv      $3, $3, $2
    /* 2BA94 0012AB14 0100A524 */  addiu      $5, $5, 0x1
    /* 2BA98 0012AB18 25208300 */  or         $4, $4, $3
    /* 2BA9C 0012AB1C 2B10A800 */  sltu       $2, $5, $8
    /* 2BAA0 0012AB20 0000C4FC */  sd         $4, 0x0($6)
    /* 2BAA4 0012AB24 03004014 */  bnez       $2, .L0012AB34
    /* 2BAA8 0012AB28 0C00C5AC */   sw        $5, 0xC($6)
    /* 2BAAC 0012AB2C 2000C28C */  lw         $2, 0x20($6)
    /* 2BAB0 0012AB30 0C00C2AC */  sw         $2, 0xC($6)
.align 2
  .L0012AB34:
    /* 2BAB4 0012AB34 0800E224 */  addiu      $2, $7, 0x8
    /* 2BAB8 0012AB38 3900432C */  sltiu      $3, $2, 0x39
    /* 2BABC 0012AB3C EEFF6014 */  bnez       $3, .L0012AAF8
    /* 2BAC0 0012AB40 1000C2AC */   sw        $2, 0x10($6)
    /* 2BAC4 0012AB44 04000010 */  b          .L0012AB58
    /* 2BAC8 0012AB48 2D104901 */   daddu     $2, $10, $9
.align 2
  .L0012AB4C:
    /* 2BACC 0012AB4C 1800CADC */  ld         $10, 0x18($6)
    /* 2BAD0 0012AB50 2D48A000 */  daddu      $9, $5, $0
    /* 2BAD4 0012AB54 2D104901 */  daddu      $2, $10, $9
.align 2
  .L0012AB58:
    /* 2BAD8 0012AB58 0800E003 */  jr         $31
    /* 2BADC 0012AB5C 1800C2FC */   sd        $2, 0x18($6)
endlabel func_0012AAC8
