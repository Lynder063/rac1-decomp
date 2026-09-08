.align 3
nonmatching func_001FA648, 0x78

glabel func_001FA648
    /* FB5C8 001FA648 000088D8 */  lqc2       $vf8, 0x0($4)
    /* FB5CC 001FA64C 9803E04B */  vmulx.xyzw $vf14, $vf0, $vf0x
    /* FB5D0 001FA650 D803E04B */  vmulx.xyzw $vf15, $vf0, $vf0x
    /* FB5D4 001FA654 3D03F04B */  .word      0x4BF0033D    # vmr32.xyzw $vf16, $vf0
    /* FB5D8 001FA658 8373004B */  vaddw.x    $vf14, $vf14, $vf0w
    /* FB5DC 001FA65C C37B804A */  vaddw.y    $vf15, $vf15, $vf0w
    /* FB5E0 001FA660 6842E84B */  vadd.xyzw  $vf9, $vf8, $vf8
    /* FB5E4 001FA664 9B4AC84B */  vmulw.xyz  $vf10, $vf9, $vf8w
    /* FB5E8 001FA668 D84AC84B */  vmulx.xyz  $vf11, $vf9, $vf8x
    /* FB5EC 001FA66C 194BC84A */  vmuly.yz   $vf12, $vf9, $vf8y
    /* FB5F0 001FA670 5A4B484A */  vmulz.z    $vf13, $vf9, $vf8z
    /* FB5F4 001FA674 C2030A4B */  vaddz.x    $vf15, $vf0, $vf10z
    /* FB5F8 001FA678 05040A4B */  vsuby.x    $vf16, $vf0, $vf10y
    /* FB5FC 001FA67C 00048A4A */  vaddx.y    $vf16, $vf0, $vf10x
    /* FB600 001FA680 85730C4B */  vsuby.x    $vf14, $vf14, $vf12y
    /* FB604 001FA684 C47B8B4A */  vsubx.y    $vf15, $vf15, $vf11x
    /* FB608 001FA688 04844B4A */  vsubx.z    $vf16, $vf16, $vf11x
    /* FB60C 001FA68C 865B8A4A */  vsubz.y    $vf14, $vf11, $vf10z
    /* FB610 001FA690 815B4A4A */  vaddy.z    $vf14, $vf11, $vf10y
    /* FB614 001FA694 C4634A4A */  vsubx.z    $vf15, $vf12, $vf10x
    /* FB618 001FA698 C17B0B4B */  vaddy.x    $vf15, $vf15, $vf11y
    /* FB61C 001FA69C 02840B4B */  vaddz.x    $vf16, $vf16, $vf11z
    /* FB620 001FA6A0 02848C4A */  vaddz.y    $vf16, $vf16, $vf12z
    /* FB624 001FA6A4 86730D4B */  vsubz.x    $vf14, $vf14, $vf13z
    /* FB628 001FA6A8 C67B8D4A */  vsubz.y    $vf15, $vf15, $vf13z
    /* FB62C 001FA6AC 05844C4A */  vsuby.z    $vf16, $vf16, $vf12y
    /* FB630 001FA6B0 0000AEF8 */  sqc2       $vf14, 0x0($5)
    /* FB634 001FA6B4 1000AFF8 */  sqc2       $vf15, 0x10($5)
    /* FB638 001FA6B8 0800E003 */  jr         $31
    /* FB63C 001FA6BC 2000B0F8 */   sqc2      $vf16, 0x20($5)
endlabel func_001FA648
