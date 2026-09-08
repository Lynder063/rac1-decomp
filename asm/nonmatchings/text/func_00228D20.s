.align 3
/* Handwritten function */
nonmatching func_00228D20, 0x378

glabel func_00228D20
    /* 129CA0 00228D20 1800013C */  lui        $at, %hi(D_00187040)
    /* 129CA4 00228D24 40702124 */  addiu      $at, $at, %lo(D_00187040)
    /* 129CA8 00228D28 C00034D8 */  lqc2       $vf20, 0xC0($at)
    /* 129CAC 00228D2C D00035D8 */  lqc2       $vf21, 0xD0($at)
    /* 129CB0 00228D30 E00036D8 */  lqc2       $vf22, 0xE0($at)
    /* 129CB4 00228D34 F00037D8 */  lqc2       $vf23, 0xF0($at)
    /* 129CB8 00228D38 40013FD8 */  lqc2       $vf31, 0x140($at)
    /* 129CBC 00228D3C 1900013C */  lui        $at, %hi(D_0018CE00)
    /* 129CC0 00228D40 00CE2124 */  addiu      $at, $at, %lo(D_0018CE00)
    /* 129CC4 00228D44 90013CD8 */  lqc2       $vf28, 0x190($at)
    /* 129CC8 00228D48 A0013DD8 */  lqc2       $vf29, 0x1A0($at)
    /* 129CCC 00228D4C 000232D8 */  lqc2       $vf18, 0x200($at)
    /* 129CD0 00228D50 003B013C */  lui        $at, (0x3B000000 >> 16)
    /* 129CD4 00228D54 0098A148 */  qmtc2.ni   $at, $vf19
    /* 129CD8 00228D58 8044013C */  lui        $at, (0x44800000 >> 16)
    /* 129CDC 00228D5C 00F0A148 */  qmtc2.ni   $at, $vf30
    /* 129CE0 00228D60 84079E4A */  vsubx.y    $vf30, $vf0, $vf30x
    /* 129CE4 00228D64 8041013C */  lui        $at, (0x41800000 >> 16)
    /* 129CE8 00228D68 0008A148 */  qmtc2.ni   $at, $vf1
    /* 129CEC 00228D6C 9807214A */  vmulx.w    $vf30, $vf0, $vf1x
    /* 129CF0 00228D70 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* 129CF4 00228D74 0008A148 */  qmtc2.ni   $at, $vf1
    /* 129CF8 00228D78 8007414A */  vaddx.z    $vf30, $vf0, $vf1x
    /* 129CFC 00228D7C 5800E04B */  vmulx.xyzw $vf1, $vf0, $vf0x
    /* 129D00 00228D80 9800E04B */  vmulx.xyzw $vf2, $vf0, $vf0x
    /* 129D04 00228D84 D800E04B */  vmulx.xyzw $vf3, $vf0, $vf0x
    /* 129D08 00228D88 3C03E44B */  vmove.xyzw $vf4, $vf0
    /* 129D0C 00228D8C 40081E4B */  vaddx.x    $vf1, $vf1, $vf30x
    /* 129D10 00228D90 80109E4A */  vaddx.y    $vf2, $vf2, $vf30x
    /* 129D14 00228D94 C0185E4A */  vaddx.z    $vf3, $vf3, $vf30x
    /* 129D18 00228D98 19F9DE4B */  vmuly.xyz  $vf4, $vf31, $vf30y
    /* 129D1C 00228D9C 3C03244A */  vmove.w    $vf4, $vf0
    /* 129D20 00228DA0 BCA1E14B */  .word      0x4BE1A1BC    # vmulax.xyzw ACC, $vf20, $vf1x
    /* 129D24 00228DA4 BDA8E14B */  .word      0x4BE1A8BD    # vmadday.xyzw ACC, $vf21, $vf1y
    /* 129D28 00228DA8 BEB0E14B */  .word      0x4BE1B0BE    # vmaddaz.xyzw ACC, $vf22, $vf1z
    /* 129D2C 00228DAC 0BBEE14B */  vmaddw.xyzw $vf24, $vf23, $vf1w
    /* 129D30 00228DB0 BCA1E24B */  .word      0x4BE2A1BC    # vmulax.xyzw ACC, $vf20, $vf2x
    /* 129D34 00228DB4 BDA8E24B */  .word      0x4BE2A8BD    # vmadday.xyzw ACC, $vf21, $vf2y
    /* 129D38 00228DB8 BEB0E24B */  .word      0x4BE2B0BE    # vmaddaz.xyzw ACC, $vf22, $vf2z
    /* 129D3C 00228DBC 4BBEE24B */  vmaddw.xyzw $vf25, $vf23, $vf2w
    /* 129D40 00228DC0 BCA1E34B */  .word      0x4BE3A1BC    # vmulax.xyzw ACC, $vf20, $vf3x
    /* 129D44 00228DC4 BDA8E34B */  .word      0x4BE3A8BD    # vmadday.xyzw ACC, $vf21, $vf3y
    /* 129D48 00228DC8 BEB0E34B */  .word      0x4BE3B0BE    # vmaddaz.xyzw ACC, $vf22, $vf3z
    /* 129D4C 00228DCC 8BBEE34B */  vmaddw.xyzw $vf26, $vf23, $vf3w
    /* 129D50 00228DD0 BCA1E44B */  .word      0x4BE4A1BC    # vmulax.xyzw ACC, $vf20, $vf4x
    /* 129D54 00228DD4 BDA8E44B */  .word      0x4BE4A8BD    # vmadday.xyzw ACC, $vf21, $vf4y
    /* 129D58 00228DD8 BEB0E44B */  .word      0x4BE4B0BE    # vmaddaz.xyzw ACC, $vf22, $vf4z
    /* 129D5C 00228DDC CBBEE44B */  vmaddw.xyzw $vf27, $vf23, $vf4w
    /* 129D60 00228DE0 2700C014 */  bnez       $a2, .L00228E80
    /* 129D64 00228DE4 00000000 */   nop
    /* 129D68 00228DE8 2D508000 */  daddu      $t2, $a0, $zero
    /* 129D6C 00228DEC 000045D9 */  lqc2       $vf5, 0x0($t2)
    /* 129D70 00228DF0 BFD9E04B */  .word      0x4BE0D9BF    # vmulaw.xyzw ACC, $vf27, $vf0w
    /* 129D74 00228DF4 BED0E54B */  .word      0x4BE5D0BE    # vmaddaz.xyzw ACC, $vf26, $vf5z
    /* 129D78 00228DF8 BDC8E54B */  .word      0x4BE5C8BD    # vmadday.xyzw ACC, $vf25, $vf5y
    /* 129D7C 00228DFC 2D58A000 */  daddu      $t3, $a1, $zero
    /* 129D80 00228E00 C8C1E54B */  vmaddx.xyzw $vf7, $vf24, $vf5x
    /* 129D84 00228E04 00000000 */  nop
.align 2
  .L00228E08:
    /* 129D88 00228E08 BC03E74B */  .word      0x4BE703BC    # vdiv       Q, $vf0w, $vf7w
    /* 129D8C 00228E0C 100046D9 */  lqc2       $vf6, 0x10($t2)
    /* 129D90 00228E10 200045D9 */  lqc2       $vf5, 0x20($t2)
    /* 129D94 00228E14 FFFF6B21 */  addi       $t3, $t3, -0x1 /* handwritten instruction */
    /* 129D98 00228E18 BFD9E04B */  .word      0x4BE0D9BF    # vmulaw.xyzw ACC, $vf27, $vf0w
    /* 129D9C 00228E1C BED0E64B */  .word      0x4BE6D0BE    # vmaddaz.xyzw ACC, $vf26, $vf6z
    /* 129DA0 00228E20 BDC8E64B */  .word      0x4BE6C8BD    # vmadday.xyzw ACC, $vf25, $vf6y
    /* 129DA4 00228E24 08C2E64B */  vmaddx.xyzw $vf8, $vf24, $vf6x
    /* 129DA8 00228E28 5C3AC04B */  .word      0x4BC03A5C    # vmulq.xyz  $vf9, $vf7, Q
    /* 129DAC 00228E2C BFD9E04B */  .word      0x4BE0D9BF    # vmulaw.xyzw ACC, $vf27, $vf0w
    /* 129DB0 00228E30 BED0E54B */  .word      0x4BE5D0BE    # vmaddaz.xyzw ACC, $vf26, $vf5z
    /* 129DB4 00228E34 BDC8E54B */  .word      0x4BE5C8BD    # vmadday.xyzw ACC, $vf25, $vf5y
    /* 129DB8 00228E38 C8C1E54B */  vmaddx.xyzw $vf7, $vf24, $vf5x
    /* 129DBC 00228E3C BC03E84B */  .word      0x4BE803BC    # vdiv       Q, $vf0w, $vf8w
    /* 129DC0 00228E40 00000000 */  nop
    /* 129DC4 00228E44 BE4AFC4B */  .word      0x4BFC4ABE    # vmula.xyzw ACC, $vf9, $vf28
    /* 129DC8 00228E48 4BEAE04B */  vmaddw.xyzw $vf9, $vf29, $vf0w
    /* 129DCC 00228E4C 6C02204A */  vsub.w     $vf9, $vf0, $vf0
    /* 129DD0 00228E50 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 129DD4 00228E54 1C42C04B */  .word      0x4BC0421C    # vmulq.xyz  $vf8, $vf8, Q
    /* 129DD8 00228E58 BE42FC4B */  .word      0x4BFC42BE    # vmula.xyzw ACC, $vf8, $vf28
    /* 129DDC 00228E5C 0BEAE04B */  vmaddw.xyzw $vf8, $vf29, $vf0w
    /* 129DE0 00228E60 000049F9 */  sqc2       $vf9, 0x0($t2)
    /* 129DE4 00228E64 00000000 */  nop
    /* 129DE8 00228E68 2C02204A */  vsub.w     $vf8, $vf0, $vf0
    /* 129DEC 00228E6C 20004A25 */  addiu      $t2, $t2, 0x20
    /* 129DF0 00228E70 E5FF6015 */  bnez       $t3, .L00228E08
    /* 129DF4 00228E74 F0FF48F9 */   sqc2      $vf8, -0x10($t2)
    /* 129DF8 00228E78 2E000010 */  b          .L00228F34
    /* 129DFC 00228E7C 00000000 */   nop
.align 2
  .L00228E80:
    /* 129E00 00228E80 2D508000 */  daddu      $t2, $a0, $zero
    /* 129E04 00228E84 2D58A000 */  daddu      $t3, $a1, $zero
.align 2
  .L00228E88:
    /* 129E08 00228E88 000045D9 */  lqc2       $vf5, 0x0($t2)
    /* 129E0C 00228E8C 100046D9 */  lqc2       $vf6, 0x10($t2)
    /* 129E10 00228E90 BCC1E54B */  .word      0x4BE5C1BC    # vmulax.xyzw ACC, $vf24, $vf5x
    /* 129E14 00228E94 BDC8E54B */  .word      0x4BE5C8BD    # vmadday.xyzw ACC, $vf25, $vf5y
    /* 129E18 00228E98 BED0E54B */  .word      0x4BE5D0BE    # vmaddaz.xyzw ACC, $vf26, $vf5z
    /* 129E1C 00228E9C 4BD9E04B */  vmaddw.xyzw $vf5, $vf27, $vf0w
    /* 129E20 00228EA0 FF29C54B */  .word      0x4BC529FF                    # vclipw.xyz $vf5, $vf5w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 129E24 00228EA4 FF02004A */  vnop
    /* 129E28 00228EA8 FF02004A */  vnop
    /* 129E2C 00228EAC FF02004A */  vnop
    /* 129E30 00228EB0 FF02004A */  vnop
    /* 129E34 00228EB4 00904248 */  cfc2.ni    $v0, $vi18
    /* 129E38 00228EB8 BC03E54B */  .word      0x4BE503BC    # vdiv       Q, $vf0w, $vf5w
    /* 129E3C 00228EBC FFFF6B21 */  addi       $t3, $t3, -0x1 /* handwritten instruction */
    /* 129E40 00228EC0 BCC1E64B */  .word      0x4BE6C1BC    # vmulax.xyzw ACC, $vf24, $vf6x
    /* 129E44 00228EC4 BDC8E64B */  .word      0x4BE6C8BD    # vmadday.xyzw ACC, $vf25, $vf6y
    /* 129E48 00228EC8 BED0E64B */  .word      0x4BE6D0BE    # vmaddaz.xyzw ACC, $vf26, $vf6z
    /* 129E4C 00228ECC 8BD9E04B */  vmaddw.xyzw $vf6, $vf27, $vf0w
    /* 129E50 00228ED0 FF31C64B */  .word      0x4BC631FF                    # vclipw.xyz $vf6, $vf6w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 129E54 00228ED4 FF02004A */  vnop
    /* 129E58 00228ED8 FF02004A */  vnop
    /* 129E5C 00228EDC 5C29C04B */  .word      0x4BC0295C    # vmulq.xyz  $vf5, $vf5, Q
    /* 129E60 00228EE0 FF02004A */  vnop
    /* 129E64 00228EE4 00904148 */  cfc2.ni    $at, $vi18
    /* 129E68 00228EE8 BC03E64B */  .word      0x4BE603BC    # vdiv       Q, $vf0w, $vf6w
    /* 129E6C 00228EEC 25082200 */  or         $at, $at, $v0
    /* 129E70 00228EF0 3F002130 */  andi       $at, $at, 0x3F
    /* 129E74 00228EF4 BE2AFC4B */  .word      0x4BFC2ABE    # vmula.xyzw ACC, $vf5, $vf28
    /* 129E78 00228EF8 4BE9E04B */  vmaddw.xyzw $vf5, $vf29, $vf0w
    /* 129E7C 00228EFC BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 129E80 00228F00 9C31C04B */  .word      0x4BC0319C    # vmulq.xyz  $vf6, $vf6, Q
    /* 129E84 00228F04 BE32FC4B */  .word      0x4BFC32BE    # vmula.xyzw ACC, $vf6, $vf28
    /* 129E88 00228F08 8BE9E04B */  vmaddw.xyzw $vf6, $vf29, $vf0w
    /* 129E8C 00228F0C 6C01204A */  vsub.w     $vf5, $vf0, $vf0
    /* 129E90 00228F10 AC01204A */  vsub.w     $vf6, $vf0, $vf0
    /* 129E94 00228F14 000045F9 */  sqc2       $vf5, 0x0($t2)
    /* 129E98 00228F18 100046F9 */  sqc2       $vf6, 0x10($t2)
    /* 129E9C 00228F1C 03002010 */  beqz       $at, .L00228F2C
    /* 129EA0 00228F20 01000224 */   addiu     $v0, $zero, 0x1
    /* 129EA4 00228F24 0C0042A1 */  sb         $v0, 0xC($t2)
    /* 129EA8 00228F28 1C0042A1 */  sb         $v0, 0x1C($t2)
.align 2
  .L00228F2C:
    /* 129EAC 00228F2C D6FF6015 */  bnez       $t3, .L00228E88
    /* 129EB0 00228F30 20004A25 */   addiu     $t2, $t2, 0x20
.align 2
  .L00228F34:
    /* 129EB4 00228F34 2D508000 */  daddu      $t2, $a0, $zero
    /* 129EB8 00228F38 2D58A000 */  daddu      $t3, $a1, $zero
    /* 129EBC 00228F3C 00700C3C */  lui        $t4, (0x70003000 >> 16)
    /* 129EC0 00228F40 00308C35 */  ori        $t4, $t4, (0x70003000 & 0xFFFF)
    /* 129EC4 00228F44 00700D3C */  lui        $t5, (0x70003800 >> 16)
    /* 129EC8 00228F48 0038AD35 */  ori        $t5, $t5, (0x70003800 & 0xFFFF)
    /* 129ECC 00228F4C 1600023C */  lui        $v0, %hi(D_001604A8)
    /* 129ED0 00228F50 A8044224 */  addiu      $v0, $v0, %lo(D_001604A8)
    /* 129ED4 00228F54 000045D9 */  lqc2       $vf5, 0x0($t2)
    /* 129ED8 00228F58 200046D9 */  lqc2       $vf6, 0x20($t2)
    /* 129EDC 00228F5C 400047D9 */  lqc2       $vf7, 0x40($t2)
    /* 129EE0 00228F60 6C38854B */  vsub.xy    $vf1, $vf7, $vf5
    /* 129EE4 00228F64 AC30854B */  vsub.xy    $vf2, $vf6, $vf5
    /* 129EE8 00228F68 D910014B */  vmuly.x    $vf3, $vf2, $vf1y
    /* 129EEC 00228F6C 9908024B */  vmuly.x    $vf2, $vf1, $vf2y
    /* 129EF0 00228F70 6C10034B */  vsub.x     $vf1, $vf2, $vf3
    /* 129EF4 00228F74 00082148 */  qmfc2.ni   $at, $vf1
    /* 129EF8 00228F78 000041AC */  sw         $at, 0x0($v0)
    /* 129EFC 00228F7C 100045D9 */  lqc2       $vf5, 0x10($t2)
    /* 129F00 00228F80 300046D9 */  lqc2       $vf6, 0x30($t2)
    /* 129F04 00228F84 500047D9 */  lqc2       $vf7, 0x50($t2)
    /* 129F08 00228F88 6C38854B */  vsub.xy    $vf1, $vf7, $vf5
    /* 129F0C 00228F8C AC30854B */  vsub.xy    $vf2, $vf6, $vf5
    /* 129F10 00228F90 D910014B */  vmuly.x    $vf3, $vf2, $vf1y
    /* 129F14 00228F94 9908024B */  vmuly.x    $vf2, $vf1, $vf2y
    /* 129F18 00228F98 6C10034B */  vsub.x     $vf1, $vf2, $vf3
    /* 129F1C 00228F9C 00082148 */  qmfc2.ni   $at, $vf1
    /* 129F20 00228FA0 040041AC */  sw         $at, 0x4($v0)
.align 2
  .L00228FA4:
    /* 129F24 00228FA4 000045D9 */  lqc2       $vf5, 0x0($t2)
    /* 129F28 00228FA8 100046D9 */  lqc2       $vf6, 0x10($t2)
    /* 129F2C 00228FAC FFFF6B21 */  addi       $t3, $t3, -0x1 /* handwritten instruction */
    /* 129F30 00228FB0 0C004181 */  lb         $at, 0xC($t2)
    /* 129F34 00228FB4 2C004281 */  lb         $v0, 0x2C($t2)
    /* 129F38 00228FB8 25184100 */  or         $v1, $v0, $at
    /* 129F3C 00228FBC 1C004281 */  lb         $v0, 0x1C($t2)
    /* 129F40 00228FC0 0000A1A1 */  sb         $at, 0x0($t5)
    /* 129F44 00228FC4 0100A2A1 */  sb         $v0, 0x1($t5)
    /* 129F48 00228FC8 0F006014 */  bnez       $v1, .L00229008
    /* 129F4C 00228FCC 0200AD25 */   addiu     $t5, $t5, 0x2
    /* 129F50 00228FD0 200047D9 */  lqc2       $vf7, 0x20($t2)
    /* 129F54 00228FD4 6C38854B */  vsub.xy    $vf1, $vf7, $vf5
    /* 129F58 00228FD8 AC30854B */  vsub.xy    $vf2, $vf6, $vf5
    /* 129F5C 00228FDC D910014B */  vmuly.x    $vf3, $vf2, $vf1y
    /* 129F60 00228FE0 9908024B */  vmuly.x    $vf2, $vf1, $vf2y
    /* 129F64 00228FE4 6C10034B */  vsub.x     $vf1, $vf2, $vf3
    /* 129F68 00228FE8 00082148 */  qmfc2.ni   $at, $vf1
    /* 129F6C 00228FEC 3C080100 */  dsll32     $at, $at, 0
    /* 129F70 00228FF0 03002004 */  bltz       $at, .L00229000
    /* 129F74 00228FF4 00000000 */   nop
    /* 129F78 00228FF8 05000010 */  b          .L00229010
    /* 129F7C 00228FFC 01000124 */   addiu     $at, $zero, 0x1
.align 2
  .L00229000:
    /* 129F80 00229000 03000010 */  b          .L00229010
    /* 129F84 00229004 02000124 */   addiu     $at, $zero, 0x2
.align 2
  .L00229008:
    /* 129F88 00229008 00002048 */  qmfc2.ni   $zero, $vf0
    /* 129F8C 0022900C 00000124 */  addiu      $at, $zero, 0x0
.align 2
  .L00229010:
    /* 129F90 00229010 EC299D4B */  vsub.xy    $vf7, $vf5, $vf29
    /* 129F94 00229014 000081A1 */  sb         $at, 0x0($t4)
    /* 129F98 00229018 2C329D4B */  vsub.xy    $vf8, $vf6, $vf29
    /* 129F9C 0022901C 00000000 */  nop
    /* 129FA0 00229020 46299E4B */  vsubz.xy   $vf5, $vf5, $vf30z
    /* 129FA4 00229024 01008C25 */  addiu      $t4, $t4, 0x1
    /* 129FA8 00229028 86319E4B */  vsubz.xy   $vf6, $vf6, $vf30z
    /* 129FAC 0022902C 00000000 */  nop
    /* 129FB0 00229030 E839924B */  vadd.xy    $vf7, $vf7, $vf18
    /* 129FB4 00229034 2842924B */  vadd.xy    $vf8, $vf8, $vf18
    /* 129FB8 00229038 5B299E4B */  vmulw.xy   $vf5, $vf5, $vf30w
    /* 129FBC 0022903C 9B319E4B */  vmulw.xy   $vf6, $vf6, $vf30w
    /* 129FC0 00229040 D839934B */  vmulx.xy   $vf7, $vf7, $vf19x
    /* 129FC4 00229044 1842934B */  vmulx.xy   $vf8, $vf8, $vf19x
    /* 129FC8 00229048 7C29C54B */  vftoi0.xyz $vf5, $vf5
    /* 129FCC 0022904C 00382148 */  qmfc2.ni   $at, $vf7
    /* 129FD0 00229050 7C31C64B */  vftoi0.xyz $vf6, $vf6
    /* 129FD4 00229054 00402248 */  qmfc2.ni   $v0, $vf8
    /* 129FD8 00229058 000041FD */  sd         $at, 0x0($t2)
    /* 129FDC 0022905C 100042FD */  sd         $v0, 0x10($t2)
    /* 129FE0 00229060 00282148 */  qmfc2.ni   $at, $vf5
    /* 129FE4 00229064 A9160170 */  pexch      $v0, $at
    /* 129FE8 00229068 00303848 */  qmfc2.ni   $t8, $vf6
    /* 129FEC 0022906C 080042AD */  sw         $v0, 0x8($t2)
    /* 129FF0 00229070 A9CE1870 */  pexch      $t9, $t8
    /* 129FF4 00229074 A8140170 */  pextuw     $v0, $zero, $at
    /* 129FF8 00229078 180059AD */  sw         $t9, 0x18($t2)
    /* 129FFC 0022907C A8CC1870 */  pextuw     $t9, $zero, $t8
    /* 12A000 00229080 0C0042AD */  sw         $v0, 0xC($t2)
    /* 12A004 00229084 1C0059AD */  sw         $t9, 0x1C($t2)
    /* 12A008 00229088 C6FF6015 */  bnez       $t3, .L00228FA4
    /* 12A00C 0022908C 20004A25 */   addiu     $t2, $t2, 0x20
    /* 12A010 00229090 0800E003 */  jr         $ra
    /* 12A014 00229094 00000000 */   nop
endlabel func_00228D20
