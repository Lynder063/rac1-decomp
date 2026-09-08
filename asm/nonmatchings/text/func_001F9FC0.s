.align 3
nonmatching func_001F9FC0, 0x98

glabel func_001F9FC0
    /* FAF40 001F9FC0 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* FAF44 001F9FC4 00688044 */  mtc1       $zero, $f13
    /* FAF48 001F9FC8 00008144 */  mtc1       $at, $f0
    /* FAF4C 001F9FCC 00000000 */  nop
    /* FAF50 001F9FD0 34600D46 */  c.lt.s     $f12, $f13
    /* FAF54 001F9FD4 00000000 */  nop
    /* FAF58 001F9FD8 05000045 */  bc1f       .L001F9FF0
    /* FAF5C 001F9FDC 00508144 */   mtc1      $at, $f10
    /* FAF60 001F9FE0 80BF013C */  lui        $at, (0xBF800000 >> 16)
    /* FAF64 001F9FE4 05630046 */  abs.s      $f12, $f12
    /* FAF68 001F9FE8 00000000 */  nop
    /* FAF6C 001F9FEC 00508144 */  mtc1       $at, $f10
.align 2
  .L001F9FF0:
    /* FAF70 001F9FF0 41000C46 */  sub.s      $f1, $f0, $f12
    /* FAF74 001F9FF4 A09A8127 */  addiu      $at, $gp, -0x6560
    /* FAF78 001F9FF8 00080444 */  mfc1       $a0, $f1
    /* FAF7C 001F9FFC 82600C46 */  mul.s      $f2, $f12, $f12
    /* FAF80 001FA000 0008A448 */  qmtc2.ni   $a0, $vf1
    /* FAF84 001FA004 040025C4 */  lwc1       $f5, 0x4($at)
    /* FAF88 001FA008 000024C4 */  lwc1       $f4, 0x0($at)
    /* FAF8C 001FA00C BD03014A */  .word      0x4A0103BD                    # vsqrt      Q, $vf1x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* FAF90 001FA010 C2600246 */  mul.s      $f3, $f12, $f2
    /* FAF94 001FA014 18200D46 */  adda.s     $f4, $f13
    /* FAF98 001FA018 1E600546 */  madda.s    $f12, $f5
    /* FAF9C 001FA01C 080026C4 */  lwc1       $f6, 0x8($at)
    /* FAFA0 001FA020 0C0027C4 */  lwc1       $f7, 0xC($at)
    /* FAFA4 001FA024 1E100646 */  madda.s    $f2, $f6
    /* FAFA8 001FA028 1C1A0746 */  madd.s     $f8, $f3, $f7
    /* FAFAC 001FA02C 6000004B */  .word      0x4B000060    # vaddq.x    $vf1, $vf0, Q
    /* FAFB0 001FA030 C93F013C */  lui        $at, (0x3FC90FDB >> 16)
    /* FAFB4 001FA034 DB0F2134 */  ori        $at, $at, (0x3FC90FDB & 0xFFFF)
    /* FAFB8 001FA038 00108144 */  mtc1       $at, $f2
    /* FAFBC 001FA03C 00082448 */  qmfc2.ni   $a0, $vf1
    /* FAFC0 001FA040 00088444 */  mtc1       $a0, $f1
    /* FAFC4 001FA044 42420146 */  mul.s      $f9, $f8, $f1
    /* FAFC8 001FA048 C1120946 */  sub.s      $f11, $f2, $f9
    /* FAFCC 001FA04C 00000000 */  nop
    /* FAFD0 001FA050 0800E003 */  jr         $ra
    /* FAFD4 001FA054 02500B46 */   mul.s     $f0, $f10, $f11
endlabel func_001F9FC0
