.align 3
/* Handwritten function */
nonmatching func_001FA9E8, 0x3C

glabel func_001FA9E8
    /* FB968 001FA9E8 2DC0A000 */  daddu      $t8, $a1, $zero
    /* FB96C 001FA9EC 2DC8E003 */  daddu      $t9, $ra, $zero
    /* FB970 001FA9F0 3CEA070C */  jal        func_001FA8F0
    /* FB974 001FA9F4 00000000 */   nop
    /* FB978 001FA9F8 08004004 */  bltz       $v0, .L001FAA1C
    /* FB97C 001FA9FC 7C19834A */   vftoi0.y  $vf3, $vf3
    /* FB980 001FAA00 00182348 */  qmfc2.ni   $v1, $vf3
    /* FB984 001FAA04 FE190300 */  dsrl32     $v1, $v1, 7
    /* FB988 001FAA08 80000120 */  addi       $at, $zero, 0x80 /* handwritten instruction */
    /* FB98C 001FAA0C C8186070 */  pmaxw      $v1, $v1, $zero
    /* FB990 001FAA10 E8186170 */  pminw      $v1, $v1, $at
    /* FB994 001FAA14 08002003 */  jr         $t9
    /* FB998 001FAA18 000003AF */   sw        $v1, 0x0($t8)
.align 2
  .L001FAA1C:
    /* FB99C 001FAA1C 08002003 */  jr         $t9
    /* FB9A0 001FAA20 000000AF */   sw        $zero, 0x0($t8)
endlabel func_001FA9E8
    /* FB9A4 001FAA24 00000000 */  nop
