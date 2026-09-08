/* Handwritten function */
nonmatching func_00219704, 0x70

glabel func_00219704
    /* 11A684 00219704 02310800 */  srl        $a2, $t0, 4
    /* 11A688 00219708 0F000731 */  andi       $a3, $t0, 0xF
    /* 11A68C 0021970C 3E290800 */  dsrl32     $a1, $t0, 4
    /* 11A690 00219710 000046AE */  sw         $a2, 0x0($s2)
    /* 11A694 00219714 00A02848 */  qmfc2.ni   $t0, $vf20
    /* 11A698 00219718 00000000 */  nop
    /* 11A69C 0021971C 080045AE */  sw         $a1, 0x8($s2)
    /* 11A6A0 00219720 05050534 */  ori        $a1, $zero, 0x505
    /* 11A6A4 00219724 0C0045A6 */  sh         $a1, 0xC($s2)
    /* 11A6A8 00219728 00040520 */  addi       $a1, $zero, 0x400 /* handwritten instruction */
    /* 11A6AC 0021972C 040047A6 */  sh         $a3, 0x4($s2)
    /* 11A6B0 00219730 003A0700 */  sll        $a3, $a3, 8
    /* 11A6B4 00219734 2228A700 */  sub        $a1, $a1, $a3 /* handwritten instruction */
    /* 11A6B8 00219738 02321000 */  srl        $a2, $s0, 8
    /* 11A6BC 0021973C 060046A6 */  sh         $a2, 0x6($s2)
    /* 11A6C0 00219740 FC3A0700 */  dsll32     $a3, $a3, 11
    /* 11A6C4 00219744 7C310600 */  dsll32     $a2, $a2, 5
    /* 11A6C8 00219748 20800502 */  add        $s0, $s0, $a1 /* handwritten instruction */
    /* 11A6CC 0021974C 25400601 */  or         $t0, $t0, $a2
    /* 11A6D0 00219750 02321000 */  srl        $a2, $s0, 8
    /* 11A6D4 00219754 25400601 */  or         $t0, $t0, $a2
    /* 11A6D8 00219758 0E0046A6 */  sh         $a2, 0xE($s2)
    /* 11A6DC 0021975C 10005222 */  addi       $s2, $s2, 0x10 /* handwritten instruction */
    /* 11A6E0 00219760 01003122 */  addi       $s1, $s1, 0x1 /* handwritten instruction */
    /* 11A6E4 00219764 00041022 */  addi       $s0, $s0, 0x400 /* handwritten instruction */
    /* 11A6E8 00219768 25400701 */  or         $t0, $t0, $a3
    /* 11A6EC 0021976C 0800E003 */  jr         $ra
    /* 11A6F0 00219770 003028FD */   sd        $t0, 0x3000($t1)
endlabel func_00219704
    /* 11A6F4 00219774 00000000 */  nop
