.align 3
nonmatching func_001EC8D8, 0x1DC

glabel func_001EC8D8
    /* ED858 001EC8D8 10FFBD27 */  addiu      $sp, $sp, -0xF0
    /* ED85C 001EC8DC 9000B47F */  sq         $s4, 0x90($sp)
    /* ED860 001EC8E0 B000B67F */  sq         $s6, 0xB0($sp)
    /* ED864 001EC8E4 2DA08000 */  daddu      $s4, $a0, $zero
    /* ED868 001EC8E8 A000B57F */  sq         $s5, 0xA0($sp)
    /* ED86C 001EC8EC 2D20A003 */  daddu      $a0, $sp, $zero
    /* ED870 001EC8F0 8000B37F */  sq         $s3, 0x80($sp)
    /* ED874 001EC8F4 2DA8E000 */  daddu      $s5, $a3, $zero
    /* ED878 001EC8F8 2D982001 */  daddu      $s3, $t1, $zero
    /* ED87C 001EC8FC 6000B17F */  sq         $s1, 0x60($sp)
    /* ED880 001EC900 5000B07F */  sq         $s0, 0x50($sp)
    /* ED884 001EC904 2DB00001 */  daddu      $s6, $t0, $zero
    /* ED888 001EC908 E000B6E7 */  swc1       $f22, 0xE0($sp)
    /* ED88C 001EC90C D000B4E7 */  swc1       $f20, 0xD0($sp)
    /* ED890 001EC910 C000BF7F */  sq         $ra, 0xC0($sp)
    /* ED894 001EC914 7000B27F */  sq         $s2, 0x70($sp)
    /* ED898 001EC918 E800B7E7 */  swc1       $f23, 0xE8($sp)
    /* ED89C 001EC91C FCE6070C */  jal        func_001F9BF0
    /* ED8A0 001EC920 D800B5E7 */   swc1      $f21, 0xD8($sp)
    /* ED8A4 001EC924 00B08044 */  mtc1       $zero, $f22
    /* ED8A8 001EC928 2D20A003 */  daddu      $a0, $sp, $zero
    /* ED8AC 001EC92C 1EE7070C */  jal        func_001F9C78
    /* ED8B0 001EC930 2D286002 */   daddu     $a1, $s3, $zero
    /* ED8B4 001EC934 1000B027 */  addiu      $s0, $sp, 0x10
    /* ED8B8 001EC938 06030046 */  mov.s      $f12, $f0
    /* ED8BC 001EC93C 2D200002 */  daddu      $a0, $s0, $zero
    /* ED8C0 001EC940 70E7070C */  jal        func_001F9DC0
    /* ED8C4 001EC944 2D286002 */   daddu     $a1, $s3, $zero
    /* ED8C8 001EC948 2000B127 */  addiu      $s1, $sp, 0x20
    /* ED8CC 001EC94C 2D28A003 */  daddu      $a1, $sp, $zero
    /* ED8D0 001EC950 2D300002 */  daddu      $a2, $s0, $zero
    /* ED8D4 001EC954 FCE6070C */  jal        func_001F9BF0
    /* ED8D8 001EC958 2D202002 */   daddu     $a0, $s1, $zero
    /* ED8DC 001EC95C 2D20A002 */  daddu      $a0, $s5, $zero
    /* ED8E0 001EC960 1EE7070C */  jal        func_001F9C78
    /* ED8E4 001EC964 2D282002 */   daddu     $a1, $s1, $zero
    /* ED8E8 001EC968 06050046 */  mov.s      $f20, $f0
    /* ED8EC 001EC96C 2EE7070C */  jal        func_001F9CB8
    /* ED8F0 001EC970 2D202002 */   daddu     $a0, $s1, $zero
    /* ED8F4 001EC974 32001646 */  c.eq.s     $f0, $f22
    /* ED8F8 001EC978 00000000 */  nop
    /* ED8FC 001EC97C 04000045 */  bc1f       .L001EC990
    /* ED900 001EC980 00000000 */   nop
    /* ED904 001EC984 D138013C */  lui        $at, (0x38D1B717 >> 16)
    /* ED908 001EC988 17B72134 */  ori        $at, $at, (0x38D1B717 & 0xFFFF)
    /* ED90C 001EC98C 00008144 */  mtc1       $at, $f0
.align 2
  .L001EC990:
    /* ED910 001EC990 C93F013C */  lui        $at, (0x3FC90FDB >> 16)
    /* ED914 001EC994 DB0F2134 */  ori        $at, $at, (0x3FC90FDB & 0xFFFF)
    /* ED918 001EC998 00A88144 */  mtc1       $at, $f21
    /* ED91C 001EC99C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* ED920 001EC9A0 00B88144 */  mtc1       $at, $f23
    /* ED924 001EC9A4 F0E7070C */  jal        func_001F9FC0
    /* ED928 001EC9A8 03A30046 */   div.s     $f12, $f20, $f0
    /* ED92C 001EC9AC 3000B227 */  addiu      $s2, $sp, 0x30
    /* ED930 001EC9B0 01AD0046 */  sub.s      $f20, $f21, $f0
    /* ED934 001EC9B4 2D282002 */  daddu      $a1, $s1, $zero
    /* ED938 001EC9B8 2D204002 */  daddu      $a0, $s2, $zero
    /* ED93C 001EC9BC 70E7070C */  jal        func_001F9DC0
    /* ED940 001EC9C0 06BB0046 */   mov.s     $f12, $f23
    /* ED944 001EC9C4 2D20C002 */  daddu      $a0, $s6, $zero
    /* ED948 001EC9C8 1EE7070C */  jal        func_001F9C78
    /* ED94C 001EC9CC 2D284002 */   daddu     $a1, $s2, $zero
    /* ED950 001EC9D0 34001646 */  c.lt.s     $f0, $f22
    /* ED954 001EC9D4 00000000 */  nop
    /* ED958 001EC9D8 01000345 */  bc1tl      .L001EC9E0
    /* ED95C 001EC9DC 07A50046 */   neg.s     $f20, $f20
.align 2
  .L001EC9E0:
    /* ED960 001EC9E0 4000B027 */  addiu      $s0, $sp, 0x40
    /* ED964 001EC9E4 000094E6 */  swc1       $f20, 0x0($s4)
    /* ED968 001EC9E8 06A30046 */  mov.s      $f12, $f20
    /* ED96C 001EC9EC 2D306002 */  daddu      $a2, $s3, $zero
    /* ED970 001EC9F0 2D28A002 */  daddu      $a1, $s5, $zero
    /* ED974 001EC9F4 B855080C */  jal        func_002156E0
    /* ED978 001EC9F8 2D200002 */   daddu     $a0, $s0, $zero
    /* ED97C 001EC9FC 2D200002 */  daddu      $a0, $s0, $zero
    /* ED980 001ECA00 1EE7070C */  jal        func_001F9C78
    /* ED984 001ECA04 2D28A003 */   daddu     $a1, $sp, $zero
    /* ED988 001ECA08 06050046 */  mov.s      $f20, $f0
    /* ED98C 001ECA0C 2EE7070C */  jal        func_001F9CB8
    /* ED990 001ECA10 2D20A003 */   daddu     $a0, $sp, $zero
    /* ED994 001ECA14 32001646 */  c.eq.s     $f0, $f22
    /* ED998 001ECA18 00000000 */  nop
    /* ED99C 001ECA1C 04000045 */  bc1f       .L001ECA30
    /* ED9A0 001ECA20 00000000 */   nop
    /* ED9A4 001ECA24 D138013C */  lui        $at, (0x38D1B717 >> 16)
    /* ED9A8 001ECA28 17B72134 */  ori        $at, $at, (0x38D1B717 & 0xFFFF)
    /* ED9AC 001ECA2C 00008144 */  mtc1       $at, $f0
.align 2
  .L001ECA30:
    /* ED9B0 001ECA30 F0E7070C */  jal        func_001F9FC0
    /* ED9B4 001ECA34 03A30046 */   div.s     $f12, $f20, $f0
    /* ED9B8 001ECA38 41AD0046 */  sub.s      $f21, $f21, $f0
    /* ED9BC 001ECA3C 2D28A003 */  daddu      $a1, $sp, $zero
    /* ED9C0 001ECA40 06BB0046 */  mov.s      $f12, $f23
    /* ED9C4 001ECA44 70E7070C */  jal        func_001F9DC0
    /* ED9C8 001ECA48 2D204002 */   daddu     $a0, $s2, $zero
    /* ED9CC 001ECA4C 2D206002 */  daddu      $a0, $s3, $zero
    /* ED9D0 001ECA50 1EE7070C */  jal        func_001F9C78
    /* ED9D4 001ECA54 2D284002 */   daddu     $a1, $s2, $zero
    /* ED9D8 001ECA58 34001646 */  c.lt.s     $f0, $f22
    /* ED9DC 001ECA5C 00000000 */  nop
    /* ED9E0 001ECA60 02000045 */  bc1f       .L001ECA6C
    /* ED9E4 001ECA64 07AD0046 */   neg.s     $f20, $f21
    /* ED9E8 001ECA68 06AD0046 */  mov.s      $f20, $f21
.align 2
  .L001ECA6C:
    /* ED9EC 001ECA6C 040094E6 */  swc1       $f20, 0x4($s4)
    /* ED9F0 001ECA70 2EE7070C */  jal        func_001F9CB8
    /* ED9F4 001ECA74 2D20A003 */   daddu     $a0, $sp, $zero
    /* ED9F8 001ECA78 080080E6 */  swc1       $f0, 0x8($s4)
    /* ED9FC 001ECA7C C000BF7B */  lq         $ra, 0xC0($sp)
    /* EDA00 001ECA80 B000B67B */  lq         $s6, 0xB0($sp)
    /* EDA04 001ECA84 A000B57B */  lq         $s5, 0xA0($sp)
    /* EDA08 001ECA88 9000B47B */  lq         $s4, 0x90($sp)
    /* EDA0C 001ECA8C 8000B37B */  lq         $s3, 0x80($sp)
    /* EDA10 001ECA90 7000B27B */  lq         $s2, 0x70($sp)
    /* EDA14 001ECA94 6000B17B */  lq         $s1, 0x60($sp)
    /* EDA18 001ECA98 5000B07B */  lq         $s0, 0x50($sp)
    /* EDA1C 001ECA9C E800B7C7 */  lwc1       $f23, 0xE8($sp)
    /* EDA20 001ECAA0 E000B6C7 */  lwc1       $f22, 0xE0($sp)
    /* EDA24 001ECAA4 D800B5C7 */  lwc1       $f21, 0xD8($sp)
    /* EDA28 001ECAA8 D000B4C7 */  lwc1       $f20, 0xD0($sp)
    /* EDA2C 001ECAAC 0800E003 */  jr         $ra
    /* EDA30 001ECAB0 F000BD27 */   addiu     $sp, $sp, 0xF0
endlabel func_001EC8D8
    /* EDA34 001ECAB4 00000000 */  nop
