.align 3
/* Handwritten function */
nonmatching func_001FA9E8, 0x3C

glabel func_001FA9E8
    /* FB968 001FA9E8 2DC0A000 */  daddu      $24, $5, $0
    /* FB96C 001FA9EC 2DC8E003 */  daddu      $25, $31, $0
    /* FB970 001FA9F0 3CEA070C */  jal        func_001FA8F0
    /* FB974 001FA9F4 00000000 */   nop
    /* FB978 001FA9F8 08004004 */  bltz       $2, .L001FAA1C
    /* FB97C 001FA9FC 7C19834A */   vftoi0.y  $vf3, $vf3
    /* FB980 001FAA00 00182348 */  qmfc2.ni   $3, $vf3
    /* FB984 001FAA04 FE190300 */  dsrl32     $3, $3, 7
    /* FB988 001FAA08 80000120 */  addi       $1, $0, 0x80 /* handwritten instruction */
    /* FB98C 001FAA0C C8186070 */  pmaxw      $3, $3, $0
    /* FB990 001FAA10 E8186170 */  pminw      $3, $3, $1
    /* FB994 001FAA14 08002003 */  jr         $25
    /* FB998 001FAA18 000003AF */   sw        $3, 0x0($24)
.align 2
  .L001FAA1C:
    /* FB99C 001FAA1C 08002003 */  jr         $25
    /* FB9A0 001FAA20 000000AF */   sw        $0, 0x0($24)
endlabel func_001FA9E8
    /* FB9A4 001FAA24 00000000 */  nop
