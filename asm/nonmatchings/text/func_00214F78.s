.align 3
nonmatching func_00214F78, 0xBC

glabel func_00214F78
    /* 115EF8 00214F78 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 115EFC 00214F7C 2D180000 */  daddu      $v1, $zero, $zero
    /* 115F00 00214F80 2000B17F */  sq         $s1, 0x20($sp)
    /* 115F04 00214F84 4000BF7F */  sq         $ra, 0x40($sp)
    /* 115F08 00214F88 2D888000 */  daddu      $s1, $a0, $zero
    /* 115F0C 00214F8C 3000B27F */  sq         $s2, 0x30($sp)
    /* 115F10 00214F90 1000B07F */  sq         $s0, 0x10($sp)
    /* 115F14 00214F94 80800300 */  sll        $s0, $v1, 2
.align 2
  .L00214F98:
    /* 115F18 00214F98 01007224 */  addiu      $s2, $v1, 0x1
    /* 115F1C 00214F9C 0C00A0AF */  sw         $zero, 0xC($sp)
    /* 115F20 00214FA0 2D18A003 */  daddu      $v1, $sp, $zero
    /* 115F24 00214FA4 21103002 */  addu       $v0, $s1, $s0
    /* 115F28 00214FA8 02000424 */  addiu      $a0, $zero, 0x2
    /* 115F2C 00214FAC 00000000 */  nop
.align 2
  .L00214FB0:
    /* 115F30 00214FB0 000040C4 */  lwc1       $f0, 0x0($v0)
    /* 115F34 00214FB4 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 115F38 00214FB8 10004224 */  addiu      $v0, $v0, 0x10
    /* 115F3C 00214FBC 000060E4 */  swc1       $f0, 0x0($v1)
    /* 115F40 00214FC0 00000000 */  nop
    /* 115F44 00214FC4 FAFF8104 */  bgez       $a0, .L00214FB0
    /* 115F48 00214FC8 04006324 */   addiu     $v1, $v1, 0x4
    /* 115F4C 00214FCC 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 115F50 00214FD0 00608144 */  mtc1       $at, $f12
    /* 115F54 00214FD4 2D20A003 */  daddu      $a0, $sp, $zero
    /* 115F58 00214FD8 70E7070C */  jal        func_001F9DC0
    /* 115F5C 00214FDC 2D28A003 */   daddu     $a1, $sp, $zero
    /* 115F60 00214FE0 21183002 */  addu       $v1, $s1, $s0
    /* 115F64 00214FE4 2D10A003 */  daddu      $v0, $sp, $zero
    /* 115F68 00214FE8 02000424 */  addiu      $a0, $zero, 0x2
    /* 115F6C 00214FEC 00000000 */  nop
.align 2
  .L00214FF0:
    /* 115F70 00214FF0 000040C4 */  lwc1       $f0, 0x0($v0)
    /* 115F74 00214FF4 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 115F78 00214FF8 04004224 */  addiu      $v0, $v0, 0x4
    /* 115F7C 00214FFC 000060E4 */  swc1       $f0, 0x0($v1)
    /* 115F80 00215000 00000000 */  nop
    /* 115F84 00215004 FAFF8104 */  bgez       $a0, .L00214FF0
    /* 115F88 00215008 10006324 */   addiu     $v1, $v1, 0x10
    /* 115F8C 0021500C 2D184002 */  daddu      $v1, $s2, $zero
    /* 115F90 00215010 03006228 */  slti       $v0, $v1, 0x3
    /* 115F94 00215014 E0FF4014 */  bnez       $v0, .L00214F98
    /* 115F98 00215018 80800300 */   sll       $s0, $v1, 2
    /* 115F9C 0021501C 4000BF7B */  lq         $ra, 0x40($sp)
    /* 115FA0 00215020 3000B27B */  lq         $s2, 0x30($sp)
    /* 115FA4 00215024 2000B17B */  lq         $s1, 0x20($sp)
    /* 115FA8 00215028 1000B07B */  lq         $s0, 0x10($sp)
    /* 115FAC 0021502C 0800E003 */  jr         $ra
    /* 115FB0 00215030 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00214F78
    /* 115FB4 00215034 00000000 */  nop
