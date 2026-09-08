.align 3
nonmatching func_001F0FF8, 0x8C

glabel func_001F0FF8
    /* F1F78 001F0FF8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F1F7C 001F0FFC 0000E290 */  lbu        $v0, 0x0($a3)
    /* F1F80 001F1000 0000B07F */  sq         $s0, 0x0($sp)
    /* F1F84 001F1004 2D60A000 */  daddu      $t4, $a1, $zero
    /* F1F88 001F1008 1000BF7F */  sq         $ra, 0x10($sp)
    /* F1F8C 001F100C 2D808000 */  daddu      $s0, $a0, $zero
    /* F1F90 001F1010 2D480000 */  daddu      $t1, $zero, $zero
    /* F1F94 001F1014 11004010 */  beqz       $v0, .L001F105C
    /* F1F98 001F1018 2D40E000 */   daddu     $t0, $a3, $zero
    /* F1F9C 001F101C 1900023C */  lui        $v0, %hi(D_00189EC0)
    /* F1FA0 001F1020 20000B24 */  addiu      $t3, $zero, 0x20
    /* F1FA4 001F1024 C09E4A24 */  addiu      $t2, $v0, %lo(D_00189EC0)
.align 2
  .L001F1028:
    /* F1FA8 001F1028 00000491 */  lbu        $a0, 0x0($t0)
    /* F1FAC 001F102C 2D186001 */  daddu      $v1, $t3, $zero
    /* F1FB0 001F1030 01000825 */  addiu      $t0, $t0, 0x1
    /* F1FB4 001F1034 E0FF8424 */  addiu      $a0, $a0, -0x20
    /* F1FB8 001F1038 00000591 */  lbu        $a1, 0x0($t0)
    /* F1FBC 001F103C FF008430 */  andi       $a0, $a0, 0xFF
    /* F1FC0 001F1040 6000822C */  sltiu      $v0, $a0, 0x60
    /* F1FC4 001F1044 0B188200 */  movn       $v1, $a0, $v0
    /* F1FC8 001F1048 80180300 */  sll        $v1, $v1, 2
    /* F1FCC 001F104C 21186A00 */  addu       $v1, $v1, $t2
    /* F1FD0 001F1050 0000628C */  lw         $v0, 0x0($v1)
    /* F1FD4 001F1054 F4FFA014 */  bnez       $a1, .L001F1028
    /* F1FD8 001F1058 21482201 */   addu      $t1, $t1, $v0
.align 2
  .L001F105C:
    /* F1FDC 001F105C 43100900 */  sra        $v0, $t1, 1
    /* F1FE0 001F1060 2D288001 */  daddu      $a1, $t4, $zero
    /* F1FE4 001F1064 23800202 */  subu       $s0, $s0, $v0
    /* F1FE8 001F1068 DEC3070C */  jal        func_001F0F78
    /* F1FEC 001F106C 2D200002 */   daddu     $a0, $s0, $zero
    /* F1FF0 001F1070 2D100002 */  daddu      $v0, $s0, $zero
    /* F1FF4 001F1074 1000BF7B */  lq         $ra, 0x10($sp)
    /* F1FF8 001F1078 0000B07B */  lq         $s0, 0x0($sp)
    /* F1FFC 001F107C 0800E003 */  jr         $ra
    /* F2000 001F1080 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001F0FF8
    /* F2004 001F1084 00000000 */  nop
