.align 3
nonmatching func_001FA6C0, 0x88

glabel func_001FA6C0
    /* FB640 001FA6C0 000088D8 */  lqc2       $vf8, 0x0($a0)
    /* FB644 001FA6C4 00000000 */  nop
    /* FB648 001FA6C8 9803E04B */  vmulx.xyzw $vf14, $vf0, $vf0x
    /* FB64C 001FA6CC D803E04B */  vmulx.xyzw $vf15, $vf0, $vf0x
    /* FB650 001FA6D0 3D03F04B */  vmr32.xyzw $vf16, $vf0
    /* FB654 001FA6D4 3C03F14B */  vmove.xyzw $vf17, $vf0
    /* FB658 001FA6D8 8373004B */  vaddw.x    $vf14, $vf14, $vf0w
    /* FB65C 001FA6DC C37B804A */  vaddw.y    $vf15, $vf15, $vf0w
    /* FB660 001FA6E0 6842E84B */  vadd.xyzw  $vf9, $vf8, $vf8
    /* FB664 001FA6E4 9B4AC84B */  vmulw.xyz  $vf10, $vf9, $vf8w
    /* FB668 001FA6E8 D84AC84B */  vmulx.xyz  $vf11, $vf9, $vf8x
    /* FB66C 001FA6EC 194BC84A */  vmuly.yz   $vf12, $vf9, $vf8y
    /* FB670 001FA6F0 5A4B484A */  vmulz.z    $vf13, $vf9, $vf8z
    /* FB674 001FA6F4 C2030A4B */  vaddz.x    $vf15, $vf0, $vf10z
    /* FB678 001FA6F8 05040A4B */  vsuby.x    $vf16, $vf0, $vf10y
    /* FB67C 001FA6FC 00048A4A */  vaddx.y    $vf16, $vf0, $vf10x
    /* FB680 001FA700 85730C4B */  vsuby.x    $vf14, $vf14, $vf12y
    /* FB684 001FA704 C47B8B4A */  vsubx.y    $vf15, $vf15, $vf11x
    /* FB688 001FA708 04844B4A */  vsubx.z    $vf16, $vf16, $vf11x
    /* FB68C 001FA70C 865B8A4A */  vsubz.y    $vf14, $vf11, $vf10z
    /* FB690 001FA710 815B4A4A */  vaddy.z    $vf14, $vf11, $vf10y
    /* FB694 001FA714 C4634A4A */  vsubx.z    $vf15, $vf12, $vf10x
    /* FB698 001FA718 C17B0B4B */  vaddy.x    $vf15, $vf15, $vf11y
    /* FB69C 001FA71C 02840B4B */  vaddz.x    $vf16, $vf16, $vf11z
    /* FB6A0 001FA720 02848C4A */  vaddz.y    $vf16, $vf16, $vf12z
    /* FB6A4 001FA724 86730D4B */  vsubz.x    $vf14, $vf14, $vf13z
    /* FB6A8 001FA728 C67B8D4A */  vsubz.y    $vf15, $vf15, $vf13z
    /* FB6AC 001FA72C 05844C4A */  vsuby.z    $vf16, $vf16, $vf12y
    /* FB6B0 001FA730 0000AEF8 */  sqc2       $vf14, 0x0($a1)
    /* FB6B4 001FA734 1000AFF8 */  sqc2       $vf15, 0x10($a1)
    /* FB6B8 001FA738 2000B0F8 */  sqc2       $vf16, 0x20($a1)
    /* FB6BC 001FA73C 3000B1F8 */  sqc2       $vf17, 0x30($a1)
    /* FB6C0 001FA740 0800E003 */  jr         $ra
    /* FB6C4 001FA744 00000000 */   nop
endlabel func_001FA6C0
