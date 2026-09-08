.align 3
/* Handwritten function */
nonmatching func_001FA238, 0x228

glabel func_001FA238
    /* FB1B8 001FA238 4940013C */  lui        $at, (0x40490FDB >> 16)
    /* FB1BC 001FA23C C93F023C */  lui        $v0, (0x3FC90FDB >> 16)
    /* FB1C0 001FA240 DB0F2134 */  ori        $at, $at, (0x40490FDB & 0xFFFF)
    /* FB1C4 001FA244 DB0F4234 */  ori        $v0, $v0, (0x3FC90FDB & 0xFFFF)
    /* FB1C8 001FA248 00588244 */  mtc1       $v0, $f11
    /* FB1CC 001FA24C 00488144 */  mtc1       $at, $f9
    /* FB1D0 001FA250 075B0046 */  neg.s      $f12, $f11
    /* FB1D4 001FA254 874A0046 */  neg.s      $f10, $f9
    /* FB1D8 001FA258 5800E04B */  vmulx.xyzw $vf1, $vf0, $vf0x
    /* FB1DC 001FA25C 9800E04B */  vmulx.xyzw $vf2, $vf0, $vf0x
    /* FB1E0 001FA260 3D03E34B */  vmr32.xyzw $vf3, $vf0
    /* FB1E4 001FA264 3C03E44B */  vmove.xyzw $vf4, $vf0
    /* FB1E8 001FA268 4308004B */  vaddw.x    $vf1, $vf1, $vf0w
    /* FB1EC 001FA26C 8310804A */  vaddw.y    $vf2, $vf2, $vf0w
    /* FB1F0 001FA270 0800A18C */  lw         $at, 0x8($a1)
    /* FB1F4 001FA274 00000F20 */  addi       $t7, $zero, 0x0 /* handwritten instruction */
    /* FB1F8 001FA278 07002010 */  beqz       $at, .L001FA298
    /* FB1FC 001FA27C 00688144 */   mtc1      $at, $f13
    /* FB200 001FA280 DCE80708 */  j          func_001FA370
    /* FB204 001FA284 806B0B46 */   add.s     $f14, $f13, $f11
.align 2
  .L001FA288:
    /* FB208 001FA288 40000F4B */  vaddx.x    $vf1, $vf0, $vf15x
    /* FB20C 001FA28C 40008E4A */  vaddx.y    $vf1, $vf0, $vf14x
    /* FB210 001FA290 80008F4A */  vaddx.y    $vf2, $vf0, $vf15x
    /* FB214 001FA294 84000E4B */  vsubx.x    $vf2, $vf0, $vf14x
.align 2
  .L001FA298:
    /* FB218 001FA298 0400A18C */  lw         $at, 0x4($a1)
    /* FB21C 001FA29C 01000F20 */  addi       $t7, $zero, 0x1 /* handwritten instruction */
    /* FB220 001FA2A0 15002010 */  beqz       $at, .L001FA2F8
    /* FB224 001FA2A4 00688144 */   mtc1      $at, $f13
    /* FB228 001FA2A8 DCE80708 */  j          func_001FA370
    /* FB22C 001FA2AC 806B0B46 */   add.s     $f14, $f13, $f11
.align 2
  .L001FA2B0:
    /* FB230 001FA2B0 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* FB234 001FA2B4 9801E04B */  vmulx.xyzw $vf6, $vf0, $vf0x
    /* FB238 001FA2B8 D801E04B */  vmulx.xyzw $vf7, $vf0, $vf0x
    /* FB23C 001FA2BC 40010F4B */  vaddx.x    $vf5, $vf0, $vf15x
    /* FB240 001FA2C0 44014E4A */  vsubx.z    $vf5, $vf0, $vf14x
    /* FB244 001FA2C4 8331804A */  vaddw.y    $vf6, $vf6, $vf0w
    /* FB248 001FA2C8 C0014F4A */  vaddx.z    $vf7, $vf0, $vf15x
    /* FB24C 001FA2CC C0010E4B */  vaddx.x    $vf7, $vf0, $vf14x
    /* FB250 001FA2D0 BC29E14B */  vmulax.xyzw ACC, $vf5, $vf1x
    /* FB254 001FA2D4 BD30E14B */  vmadday.xyzw ACC, $vf6, $vf1y
    /* FB258 001FA2D8 4A38E14B */  vmaddz.xyzw $vf1, $vf7, $vf1z
    /* FB25C 001FA2DC BC29E24B */  vmulax.xyzw ACC, $vf5, $vf2x
    /* FB260 001FA2E0 BD30E24B */  vmadday.xyzw ACC, $vf6, $vf2y
    /* FB264 001FA2E4 8A38E24B */  vmaddz.xyzw $vf2, $vf7, $vf2z
    /* FB268 001FA2E8 BC29E34B */  vmulax.xyzw ACC, $vf5, $vf3x
    /* FB26C 001FA2EC BD30E34B */  vmadday.xyzw ACC, $vf6, $vf3y
    /* FB270 001FA2F0 CA38E34B */  vmaddz.xyzw $vf3, $vf7, $vf3z
    /* FB274 001FA2F4 00000000 */  nop
.align 2
  .L001FA2F8:
    /* FB278 001FA2F8 0000A18C */  lw         $at, 0x0($a1)
    /* FB27C 001FA2FC 02000F20 */  addi       $t7, $zero, 0x2 /* handwritten instruction */
    /* FB280 001FA300 15002010 */  beqz       $at, .L001FA358
    /* FB284 001FA304 00688144 */   mtc1      $at, $f13
    /* FB288 001FA308 DCE80708 */  j          func_001FA370
    /* FB28C 001FA30C 806B0B46 */   add.s     $f14, $f13, $f11
.align 2
  alabel func_001FA310
    /* FB290 001FA310 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* FB294 001FA314 9801E04B */  vmulx.xyzw $vf6, $vf0, $vf0x
    /* FB298 001FA318 D801E04B */  vmulx.xyzw $vf7, $vf0, $vf0x
    /* FB29C 001FA31C 4329004B */  vaddw.x    $vf5, $vf5, $vf0w
    /* FB2A0 001FA320 80018F4A */  vaddx.y    $vf6, $vf0, $vf15x
    /* FB2A4 001FA324 80014E4A */  vaddx.z    $vf6, $vf0, $vf14x
    /* FB2A8 001FA328 C0014F4A */  vaddx.z    $vf7, $vf0, $vf15x
    /* FB2AC 001FA32C C4018E4A */  vsubx.y    $vf7, $vf0, $vf14x
    /* FB2B0 001FA330 BC29E14B */  vmulax.xyzw ACC, $vf5, $vf1x
    /* FB2B4 001FA334 BD30E14B */  vmadday.xyzw ACC, $vf6, $vf1y
    /* FB2B8 001FA338 4A38E14B */  vmaddz.xyzw $vf1, $vf7, $vf1z
    /* FB2BC 001FA33C BC29E24B */  vmulax.xyzw ACC, $vf5, $vf2x
    /* FB2C0 001FA340 BD30E24B */  vmadday.xyzw ACC, $vf6, $vf2y
    /* FB2C4 001FA344 8A38E24B */  vmaddz.xyzw $vf2, $vf7, $vf2z
    /* FB2C8 001FA348 BC29E34B */  vmulax.xyzw ACC, $vf5, $vf3x
    /* FB2CC 001FA34C BD30E34B */  vmadday.xyzw ACC, $vf6, $vf3y
    /* FB2D0 001FA350 CA38E34B */  vmaddz.xyzw $vf3, $vf7, $vf3z
    /* FB2D4 001FA354 00000000 */  nop
.align 2
  .L001FA358:
    /* FB2D8 001FA358 000081F8 */  sqc2       $vf1, 0x0($a0)
    /* FB2DC 001FA35C 100082F8 */  sqc2       $vf2, 0x10($a0)
    /* FB2E0 001FA360 200083F8 */  sqc2       $vf3, 0x20($a0)
    /* FB2E4 001FA364 300084F8 */  sqc2       $vf4, 0x30($a0)
    /* FB2E8 001FA368 0800E003 */  jr         $ra
    /* FB2EC 001FA36C 00000000 */   nop
.align 2
  alabel func_001FA370
    /* FB2F0 001FA370 34680B46 */  c.lt.s     $f13, $f11
    /* FB2F4 001FA374 00000000 */  nop
    /* FB2F8 001FA378 02000145 */  bc1t       .L001FA384
    /* FB2FC 001FA37C 34680C46 */   c.lt.s    $f13, $f12
    /* FB300 001FA380 414B0D46 */  sub.s      $f13, $f9, $f13
.align 2
  .L001FA384:
    /* FB304 001FA384 03000045 */  bc1f       .L001FA394
    /* FB308 001FA388 00788044 */   mtc1      $zero, $f15
    /* FB30C 001FA38C 41530D46 */  sub.s      $f13, $f10, $f13
    /* FB310 001FA390 00000000 */  nop
.align 2
  .L001FA394:
    /* FB314 001FA394 02680D46 */  mul.s      $f0, $f13, $f13
    /* FB318 001FA398 18680F46 */  adda.s     $f13, $f15
    /* FB31C 001FA39C 42680046 */  mul.s      $f1, $f13, $f0
    /* FB320 001FA3A0 2ABE0B3C */  lui        $t3, (0xBE2AAAA4 >> 16)
    /* FB324 001FA3A4 083C0C3C */  lui        $t4, (0x3C08873E >> 16)
    /* FB328 001FA3A8 4FB90D3C */  lui        $t5, (0xB94FB21F >> 16)
    /* FB32C 001FA3AC 2E360E3C */  lui        $t6, (0x362E9C14 >> 16)
    /* FB330 001FA3B0 82080046 */  mul.s      $f2, $f1, $f0
    /* FB334 001FA3B4 A4AA6B35 */  ori        $t3, $t3, (0xBE2AAAA4 & 0xFFFF)
    /* FB338 001FA3B8 3E878C35 */  ori        $t4, $t4, (0x3C08873E & 0xFFFF)
    /* FB33C 001FA3BC 1FB2AD35 */  ori        $t5, $t5, (0xB94FB21F & 0xFFFF)
    /* FB340 001FA3C0 149CCE35 */  ori        $t6, $t6, (0x362E9C14 & 0xFFFF)
    /* FB344 001FA3C4 C2100046 */  mul.s      $f3, $f2, $f0
    /* FB348 001FA3C8 00288B44 */  mtc1       $t3, $f5
    /* FB34C 001FA3CC 00308C44 */  mtc1       $t4, $f6
    /* FB350 001FA3D0 00388D44 */  mtc1       $t5, $f7
    /* FB354 001FA3D4 00408E44 */  mtc1       $t6, $f8
    /* FB358 001FA3D8 02190046 */  mul.s      $f4, $f3, $f0
    /* FB35C 001FA3DC 1E080546 */  madda.s    $f1, $f5
    /* FB360 001FA3E0 1E100646 */  madda.s    $f2, $f6
    /* FB364 001FA3E4 1E180746 */  madda.s    $f3, $f7
    /* FB368 001FA3E8 1C200846 */  madd.s     $f0, $f4, $f8
    /* FB36C 001FA3EC 34700B46 */  c.lt.s     $f14, $f11
    /* FB370 001FA3F0 00000000 */  nop
    /* FB374 001FA3F4 02000145 */  bc1t       .L001FA400
    /* FB378 001FA3F8 34700C46 */   c.lt.s    $f14, $f12
    /* FB37C 001FA3FC 814B0E46 */  sub.s      $f14, $f9, $f14
.align 2
  .L001FA400:
    /* FB380 001FA400 03000045 */  bc1f       .L001FA410
    /* FB384 001FA404 00000144 */   mfc1      $at, $f0
    /* FB388 001FA408 81530E46 */  sub.s      $f14, $f10, $f14
    /* FB38C 001FA40C 00000000 */  nop
.align 2
  .L001FA410:
    /* FB390 001FA410 02700E46 */  mul.s      $f0, $f14, $f14
    /* FB394 001FA414 18700F46 */  adda.s     $f14, $f15
    /* FB398 001FA418 42700046 */  mul.s      $f1, $f14, $f0
    /* FB39C 001FA41C 82080046 */  mul.s      $f2, $f1, $f0
    /* FB3A0 001FA420 C2100046 */  mul.s      $f3, $f2, $f0
    /* FB3A4 001FA424 02190046 */  mul.s      $f4, $f3, $f0
    /* FB3A8 001FA428 1E080546 */  madda.s    $f1, $f5
    /* FB3AC 001FA42C 1E100646 */  madda.s    $f2, $f6
    /* FB3B0 001FA430 1E180746 */  madda.s    $f3, $f7
    /* FB3B4 001FA434 1C200846 */  madd.s     $f0, $f4, $f8
    /* FB3B8 001FA438 00000244 */  mfc1       $v0, $f0
    /* FB3BC 001FA43C 00000000 */  nop
    /* FB3C0 001FA440 0070A148 */  qmtc2.ni   $at, $vf14
    /* FB3C4 001FA444 0078A248 */  qmtc2.ni   $v0, $vf15
    /* FB3C8 001FA448 8FFFE011 */  beqz       $t7, .L001FA288
    /* FB3CC 001FA44C FFFFEF21 */   addi      $t7, $t7, -0x1 /* handwritten instruction */
    /* FB3D0 001FA450 97FFE011 */  beqz       $t7, .L001FA2B0
    /* FB3D4 001FA454 FFFFEF21 */   addi      $t7, $t7, -0x1 /* handwritten instruction */
    /* FB3D8 001FA458 C4E80708 */  j          func_001FA310
    /* FB3DC 001FA45C 00000000 */   nop
endlabel func_001FA238
