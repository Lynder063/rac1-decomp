.align 3
/* Handwritten function */
nonmatching func_0011AD70, 0xAC

glabel func_0011AD70
    /* 1BCF0 0011AD70 FFFF193C */  lui        $25, (0xFFFFFFC0 >> 16)
    /* 1BCF4 0011AD74 C0FF3937 */  ori        $25, $25, (0xFFFFFFC0 & 0xFFFF)
    /* 1BCF8 0011AD78 2600A018 */  blez       $5, .L0011AE14
    /* 1BCFC 0011AD7C 21508500 */   addu      $10, $4, $5
    /* 1BD00 0011AD80 24409900 */  and        $8, $4, $25
    /* 1BD04 0011AD84 FFFF4A25 */  addiu      $10, $10, -0x1
    /* 1BD08 0011AD88 24485901 */  and        $9, $10, $25
    /* 1BD0C 0011AD8C 23502801 */  subu       $10, $9, $8
    /* 1BD10 0011AD90 82590A00 */  srl        $11, $10, 6
    /* 1BD14 0011AD94 01006B25 */  addiu      $11, $11, 0x1
    /* 1BD18 0011AD98 07006931 */  andi       $9, $11, 0x7
    /* 1BD1C 0011AD9C 08002011 */  beqz       $9, .L0011ADC0
    /* 1BD20 0011ADA0 C2500B00 */   srl       $10, $11, 3
.align 2
  .L0011ADA4:
    /* 1BD24 0011ADA4 0F000000 */  sync
    /* 1BD28 0011ADA8 000018BD */  cache      0x18, 0x0($8) /* handwritten instruction */
    /* 1BD2C 0011ADAC 0F000000 */  sync
    /* 1BD30 0011ADB0 FFFF2925 */  addiu      $9, $9, -0x1
    /* 1BD34 0011ADB4 00000000 */  nop
    /* 1BD38 0011ADB8 FAFF201D */  bgtz       $9, .L0011ADA4
    /* 1BD3C 0011ADBC 40000825 */   addiu     $8, $8, 0x40
.align 2
  .L0011ADC0:
    /* 1BD40 0011ADC0 14004011 */  beqz       $10, .L0011AE14
.align 2
  .L0011ADC4:
    /* 1BD44 0011ADC4 FFFF4A25 */   addiu     $10, $10, -0x1
    /* 1BD48 0011ADC8 0F000000 */  sync
    /* 1BD4C 0011ADCC 000018BD */  cache      0x18, 0x0($8) /* handwritten instruction */
    /* 1BD50 0011ADD0 0F000000 */  sync
    /* 1BD54 0011ADD4 400018BD */  cache      0x18, 0x40($8) /* handwritten instruction */
    /* 1BD58 0011ADD8 0F000000 */  sync
    /* 1BD5C 0011ADDC 800018BD */  cache      0x18, 0x80($8) /* handwritten instruction */
    /* 1BD60 0011ADE0 0F000000 */  sync
    /* 1BD64 0011ADE4 C00018BD */  cache      0x18, 0xC0($8) /* handwritten instruction */
    /* 1BD68 0011ADE8 0F000000 */  sync
    /* 1BD6C 0011ADEC 000118BD */  cache      0x18, 0x100($8) /* handwritten instruction */
    /* 1BD70 0011ADF0 0F000000 */  sync
    /* 1BD74 0011ADF4 400118BD */  cache      0x18, 0x140($8) /* handwritten instruction */
    /* 1BD78 0011ADF8 0F000000 */  sync
    /* 1BD7C 0011ADFC 800118BD */  cache      0x18, 0x180($8) /* handwritten instruction */
    /* 1BD80 0011AE00 0F000000 */  sync
    /* 1BD84 0011AE04 C00118BD */  cache      0x18, 0x1C0($8) /* handwritten instruction */
    /* 1BD88 0011AE08 0F000000 */  sync
    /* 1BD8C 0011AE0C EDFF401D */  bgtz       $10, .L0011ADC4
    /* 1BD90 0011AE10 00020825 */   addiu     $8, $8, 0x200
.align 2
  .L0011AE14:
    /* 1BD94 0011AE14 0800E003 */  jr         $31
    /* 1BD98 0011AE18 00000000 */   nop
endlabel func_0011AD70
