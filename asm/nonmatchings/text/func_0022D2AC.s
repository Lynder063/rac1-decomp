/* Handwritten function */
nonmatching func_0022D2AC, 0x14C

glabel func_0022D2AC
    /* 12E22C 0022D2AC 1800013C */  lui        $1, %hi(D_00187040)
    /* 12E230 0022D2B0 40702124 */  addiu      $1, $1, %lo(D_00187040)
    /* 12E234 0022D2B4 1900023C */  lui        $2, %hi(D_0018CE00)
    /* 12E238 0022D2B8 00CE4224 */  addiu      $2, $2, %lo(D_0018CE00)
    /* 12E23C 0022D2BC 00012BD8 */  lqc2       $vf11, 0x100($1)
    /* 12E240 0022D2C0 10012CD8 */  lqc2       $vf12, 0x110($1)
    /* 12E244 0022D2C4 20012DD8 */  lqc2       $vf13, 0x120($1)
    /* 12E248 0022D2C8 30012ED8 */  lqc2       $vf14, 0x130($1)
    /* 12E24C 0022D2CC 1E00013C */  lui        $1, %hi(D_001D9A70)
    /* 12E250 0022D2D0 709A2124 */  addiu      $1, $1, %lo(D_001D9A70)
    /* 12E254 0022D2D4 000021D8 */  lqc2       $vf1, 0x0($1)
    /* 12E258 0022D2D8 100022D8 */  lqc2       $vf2, 0x10($1)
    /* 12E25C 0022D2DC 200023D8 */  lqc2       $vf3, 0x20($1)
    /* 12E260 0022D2E0 300024D8 */  lqc2       $vf4, 0x30($1)
    /* 12E264 0022D2E4 BC59E14B */  .word      0x4BE159BC    # vmulax.xyzw ACC, $vf11, $vf1x
    /* 12E268 0022D2E8 BD60E14B */  .word      0x4BE160BD    # vmadday.xyzw ACC, $vf12, $vf1y
    /* 12E26C 0022D2EC BE68E14B */  .word      0x4BE168BE    # vmaddaz.xyzw ACC, $vf13, $vf1z
    /* 12E270 0022D2F0 4B70E14B */  vmaddw.xyzw $vf1, $vf14, $vf1w
    /* 12E274 0022D2F4 BC59E24B */  .word      0x4BE259BC    # vmulax.xyzw ACC, $vf11, $vf2x
    /* 12E278 0022D2F8 BD60E24B */  .word      0x4BE260BD    # vmadday.xyzw ACC, $vf12, $vf2y
    /* 12E27C 0022D2FC BE68E24B */  .word      0x4BE268BE    # vmaddaz.xyzw ACC, $vf13, $vf2z
    /* 12E280 0022D300 8B70E24B */  vmaddw.xyzw $vf2, $vf14, $vf2w
    /* 12E284 0022D304 BC59E34B */  .word      0x4BE359BC    # vmulax.xyzw ACC, $vf11, $vf3x
    /* 12E288 0022D308 BD60E34B */  .word      0x4BE360BD    # vmadday.xyzw ACC, $vf12, $vf3y
    /* 12E28C 0022D30C BE68E34B */  .word      0x4BE368BE    # vmaddaz.xyzw ACC, $vf13, $vf3z
    /* 12E290 0022D310 CB70E34B */  vmaddw.xyzw $vf3, $vf14, $vf3w
    /* 12E294 0022D314 BC59E44B */  .word      0x4BE459BC    # vmulax.xyzw ACC, $vf11, $vf4x
    /* 12E298 0022D318 BD60E44B */  .word      0x4BE460BD    # vmadday.xyzw ACC, $vf12, $vf4y
    /* 12E29C 0022D31C BE68E44B */  .word      0x4BE468BE    # vmaddaz.xyzw ACC, $vf13, $vf4z
    /* 12E2A0 0022D320 0B71E44B */  vmaddw.xyzw $vf4, $vf14, $vf4w
    /* 12E2A4 0022D324 803E013C */  lui        $1, (0x3E800000 >> 16)
    /* 12E2A8 0022D328 0028A148 */  qmtc2.ni   $1, $vf5
    /* 12E2AC 0022D32C 90015AD8 */  lqc2       $vf26, 0x190($2)
    /* 12E2B0 0022D330 A0015BD8 */  lqc2       $vf27, 0x1A0($2)
    /* 12E2B4 0022D334 98D6854B */  vmulx.xy   $vf26, $vf26, $vf5x
    /* 12E2B8 0022D338 D803E04B */  vmulx.xyzw $vf15, $vf0, $vf0x
    /* 12E2BC 0022D33C 00008184 */  lh         $1, 0x0($4)
    /* 12E2C0 0022D340 00000000 */  nop
    /* 12E2C4 0022D344 02008284 */  lh         $2, 0x2($4)
    /* 12E2C8 0022D348 C80C4170 */  ppacw      $1, $2, $1
    /* 12E2CC 0022D34C 04008284 */  lh         $2, 0x4($4)
    /* 12E2D0 0022D350 C80C4170 */  ppacw      $1, $2, $1
    /* 12E2D4 0022D354 0058A148 */  qmtc2.ni   $1, $vf11
    /* 12E2D8 0022D358 3C59CB4B */  vitof0.xyz $vf11, $vf11
    /* 12E2DC 0022D35C 3F000E24 */  addiu      $14, $0, 0x3F
    /* 12E2E0 0022D360 00000000 */  nop
    /* 12E2E4 0022D364 BC09EB4B */  .word      0x4BEB09BC    # vmulax.xyzw ACC, $vf1, $vf11x
    /* 12E2E8 0022D368 BD10EB4B */  .word      0x4BEB10BD    # vmadday.xyzw ACC, $vf2, $vf11y
    /* 12E2EC 0022D36C BE18EB4B */  .word      0x4BEB18BE    # vmaddaz.xyzw ACC, $vf3, $vf11z
    /* 12E2F0 0022D370 8B22E04B */  vmaddw.xyzw $vf10, $vf4, $vf0w
.align 2
  .L0022D374:
    /* 12E2F4 0022D374 FF51CA4B */  .word      0x4BCA51FF                    # vclipw.xyz $vf10, $vf10w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 12E2F8 0022D378 08008424 */  addiu      $4, $4, 0x8
    /* 12E2FC 0022D37C BC03EA4B */  .word      0x4BEA03BC    # vdiv       Q, $vf0w, $vf10w
    /* 12E300 0022D380 FFFFC620 */  addi       $6, $6, -0x1 /* handwritten instruction */
    /* 12E304 0022D384 FEFF8390 */  lbu        $3, -0x2($4)
    /* 12E308 0022D388 00000000 */  nop
    /* 12E30C 0022D38C 00008184 */  lh         $1, 0x0($4)
    /* 12E310 0022D390 02008284 */  lh         $2, 0x2($4)
    /* 12E314 0022D394 C80C4170 */  ppacw      $1, $2, $1
    /* 12E318 0022D398 04008284 */  lh         $2, 0x4($4)
    /* 12E31C 0022D39C C80C4170 */  ppacw      $1, $2, $1
    /* 12E320 0022D3A0 0058A148 */  qmtc2.ni   $1, $vf11
    /* 12E324 0022D3A4 9C52C04B */  .word      0x4BC0529C    # vmulq.xyz  $vf10, $vf10, Q
    /* 12E328 0022D3A8 3C59CB4B */  vitof0.xyz $vf11, $vf11
    /* 12E32C 0022D3AC BE52FA4B */  .word      0x4BFA52BE    # vmula.xyzw ACC, $vf10, $vf26
    /* 12E330 0022D3B0 8BDBE04B */  vmaddw.xyzw $vf14, $vf27, $vf0w
    /* 12E334 0022D3B4 00904148 */  cfc2.ni    $1, $vi18
    /* 12E338 0022D3B8 7D71CF4B */  vftoi4.xyz $vf15, $vf14
    /* 12E33C 0022D3BC 2F002130 */  andi       $1, $1, 0x2F
    /* 12E340 0022D3C0 BC09EB4B */  .word      0x4BEB09BC    # vmulax.xyzw ACC, $vf1, $vf11x
    /* 12E344 0022D3C4 BD10EB4B */  .word      0x4BEB10BD    # vmadday.xyzw ACC, $vf2, $vf11y
    /* 12E348 0022D3C8 BE18EB4B */  .word      0x4BEB18BE    # vmaddaz.xyzw ACC, $vf3, $vf11z
    /* 12E34C 0022D3CC 8B22E04B */  vmaddw.xyzw $vf10, $vf4, $vf0w
    /* 12E350 0022D3D0 0000AFF8 */  sqc2       $vf15, 0x0($5)
    /* 12E354 0022D3D4 00000000 */  nop
    /* 12E358 0022D3D8 0C00A3A0 */  sb         $3, 0xC($5)
    /* 12E35C 0022D3DC 2470C101 */  and        $14, $14, $1
    /* 12E360 0022D3E0 0F00A1A0 */  sb         $1, 0xF($5)
    /* 12E364 0022D3E4 00000000 */  nop
    /* 12E368 0022D3E8 E2FFC014 */  bnez       $6, .L0022D374
    /* 12E36C 0022D3EC 1000A524 */   addiu     $5, $5, 0x10
    /* 12E370 0022D3F0 0800E003 */  jr         $31
    /* 12E374 0022D3F4 2D10C001 */   daddu     $2, $14, $0
endlabel func_0022D2AC
