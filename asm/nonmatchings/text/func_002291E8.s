.align 3
/* Handwritten function */
nonmatching func_002291E8, 0x64C

glabel func_002291E8
    /* 12A168 002291E8 04008C8C */  lw         $t4, 0x4($a0)
    /* 12A16C 002291EC 08008D8C */  lw         $t5, 0x8($a0)
    /* 12A170 002291F0 10009BD8 */  lqc2       $vf27, 0x10($a0)
    /* 12A174 002291F4 200099D8 */  lqc2       $vf25, 0x20($a0)
    /* 12A178 002291F8 1600013C */  lui        $at, %hi(D_00160490)
    /* 12A17C 002291FC 90042124 */  addiu      $at, $at, %lo(D_00160490)
    /* 12A180 00229200 00003CD8 */  lqc2       $vf28, 0x0($at)
    /* 12A184 00229204 00700A3C */  lui        $t2, (0x70000010 >> 16)
    /* 12A188 00229208 00000B24 */  addiu      $t3, $zero, 0x0
    /* 12A18C 0022920C 1600013C */  lui        $at, %hi(D_00160470)
    /* 12A190 00229210 70042124 */  addiu      $at, $at, %lo(D_00160470)
    /* 12A194 00229214 00003ED8 */  lqc2       $vf30, 0x0($at)
    /* 12A198 00229218 6CC8DB4B */  vsub.xyz   $vf1, $vf25, $vf27
    /* 12A19C 0022921C FE0ADE4B */  vopmula.xyz ACC, $vf1, $vf30
    /* 12A1A0 00229220 2EF6C14B */  vopmsub.xyz $vf24, $vf30, $vf1
    /* 12A1A4 00229224 AC07DE4B */  vsub.xyz   $vf30, $vf0, $vf30
    /* 12A1A8 00229228 0305C04B */  vaddw.xyz  $vf20, $vf0, $vf0w
    /* 12A1AC 0022922C 6AC0D84B */  vmul.xyz   $vf1, $vf24, $vf24
    /* 12A1B0 00229230 3D08014B */  vadday.x   ACC, $vf1, $vf1y
    /* 12A1B4 00229234 4AA5014B */  vmaddz.x   $vf21, $vf20, $vf1z
    /* 12A1B8 00229238 BD03154A */  .word      0x4A1503BD                    # vsqrt      Q, $vf21x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 12A1BC 0022923C BF03004A */  vwaitq
    /* 12A1C0 00229240 6005004B */  vaddq.x    $vf21, $vf0, Q
    /* 12A1C4 00229244 43A8194B */  vaddw.x    $vf1, $vf21, $vf25w
    /* 12A1C8 00229248 47081B4B */  vsubw.x    $vf1, $vf1, $vf27w
    /* 12A1CC 0022924C FF02004A */  vnop
    /* 12A1D0 00229250 FF02004A */  vnop
    /* 12A1D4 00229254 FF02004A */  vnop
    /* 12A1D8 00229258 FF02004A */  vnop
    /* 12A1DC 0022925C 00884148 */  cfc2.ni    $at, $vi17
    /* 12A1E0 00229260 00000000 */  nop
    /* 12A1E4 00229264 80002130 */  andi       $at, $at, 0x80
    /* 12A1E8 00229268 2B012014 */  bnez       $at, .L00229718
    /* 12A1EC 0022926C 00000000 */   nop
    /* 12A1F0 00229270 6CD8394A */  vsub.w     $vf1, $vf27, $vf25
    /* 12A1F4 00229274 FF02004A */  vnop
    /* 12A1F8 00229278 FF02004A */  vnop
    /* 12A1FC 0022927C FF02004A */  vnop
    /* 12A200 00229280 FF02004A */  vnop
    /* 12A204 00229284 00884148 */  cfc2.ni    $at, $vi17
    /* 12A208 00229288 00000000 */  nop
    /* 12A20C 0022928C 01002130 */  andi       $at, $at, 0x1
    /* 12A210 00229290 1D002014 */  bnez       $at, .L00229308
    /* 12A214 00229294 00000000 */   nop
    /* 12A218 00229298 5BA8194B */  vmulw.x    $vf1, $vf21, $vf25w
    /* 12A21C 0022929C 6CD8394A */  vsub.w     $vf1, $vf27, $vf25
    /* 12A220 002292A0 BC0B814B */  vdiv       Q, $vf1x, $vf1w
    /* 12A224 002292A4 BF03004A */  vwaitq
    /* 12A228 002292A8 5C00204A */  vmulq.w    $vf1, $vf0, Q
    /* 12A22C 002292AC BCCBE14B */  vdiv       Q, $vf25w, $vf1w
    /* 12A230 002292B0 BF03004A */  vwaitq
    /* 12A234 002292B4 6000004B */  vaddq.x    $vf1, $vf0, Q
    /* 12A238 002292B8 00082148 */  qmfc2.ni   $at, $vf1
    /* 12A23C 002292BC 00608144 */  mtc1       $at, $f12
    /* 12A240 002292C0 2DC0E003 */  daddu      $t8, $ra, $zero
    /* 12A244 002292C4 F0E7070C */  jal        func_001F9FC0
    /* 12A248 002292C8 00000000 */   nop
    /* 12A24C 002292CC 2DF80003 */  daddu      $ra, $t8, $zero
    /* 12A250 002292D0 00000144 */  mfc1       $at, $f0
    /* 12A254 002292D4 0008A148 */  qmtc2.ni   $at, $vf1
    /* 12A258 002292D8 C83F013C */  lui        $at, (0x3FC8F5C3 >> 16)
    /* 12A25C 002292DC C3F52134 */  ori        $at, $at, (0x3FC8F5C3 & 0xFFFF)
    /* 12A260 002292E0 0010A148 */  qmtc2.ni   $at, $vf2
    /* 12A264 002292E4 2C14014B */  vsub.x     $vf16, $vf2, $vf1
    /* 12A268 002292E8 4840013C */  lui        $at, (0x4048F5C3 >> 16)
    /* 12A26C 002292EC C3F52134 */  ori        $at, $at, (0x4048F5C3 & 0xFFFF)
    /* 12A270 002292F0 0010A148 */  qmtc2.ni   $at, $vf2
    /* 12A274 002292F4 6C10104B */  vsub.x     $vf1, $vf2, $vf16
    /* 12A278 002292F8 680C014B */  vadd.x     $vf17, $vf1, $vf1
    /* 12A27C 002292FC A884114B */  vadd.x     $vf18, $vf16, $vf17
    /* 12A280 00229300 E884104B */  vadd.x     $vf19, $vf16, $vf16
    /* 12A284 00229304 0A000010 */  b          .L00229330
.align 2
  .L00229308:
    /* 12A288 00229308 C83F013C */   lui       $at, (0x3FC80000 >> 16)
    /* 12A28C 0022930C C3F52134 */  ori        $at, $at, 0xF5C3
    /* 12A290 00229310 0080A148 */  qmtc2.ni   $at, $vf16
    /* 12A294 00229314 4840013C */  lui        $at, (0x4048F5C3 >> 16)
    /* 12A298 00229318 C3F52134 */  ori        $at, $at, (0x4048F5C3 & 0xFFFF)
    /* 12A29C 0022931C 0010A148 */  qmtc2.ni   $at, $vf2
    /* 12A2A0 00229320 6C10104B */  vsub.x     $vf1, $vf2, $vf16
    /* 12A2A4 00229324 680C014B */  vadd.x     $vf17, $vf1, $vf1
    /* 12A2A8 00229328 A884114B */  vadd.x     $vf18, $vf16, $vf17
    /* 12A2AC 0022932C E884104B */  vadd.x     $vf19, $vf16, $vf16
.align 2
  .L00229330:
    /* 12A2B0 00229330 AAC0D84B */  vmul.xyz   $vf2, $vf24, $vf24
    /* 12A2B4 00229334 3D10024B */  vadday.x   ACC, $vf2, $vf2y
    /* 12A2B8 00229338 8AA0024B */  vmaddz.x   $vf2, $vf20, $vf2z
    /* 12A2BC 0022933C BE03624A */  vrsqrt     Q, $vf0w, $vf2x
    /* 12A2C0 00229340 FF02004A */  vnop
    /* 12A2C4 00229344 FF02004A */  vnop
    /* 12A2C8 00229348 FF02004A */  vnop
    /* 12A2CC 0022934C FF02004A */  vnop
    /* 12A2D0 00229350 FF02004A */  vnop
    /* 12A2D4 00229354 FF02004A */  vnop
    /* 12A2D8 00229358 BF03004A */  vwaitq
    /* 12A2DC 0022935C 1CC6C04B */  vmulq.xyz  $vf24, $vf24, Q
    /* 12A2E0 00229360 9BC5DB4B */  vmulw.xyz  $vf22, $vf24, $vf27w
    /* 12A2E4 00229364 DBC5D94B */  vmulw.xyz  $vf23, $vf24, $vf25w
    /* 12A2E8 00229368 65008011 */  beqz       $t4, .L00229500
    /* 12A2EC 0022936C 00000000 */   nop
    /* 12A2F0 00229370 C83F013C */  lui        $at, (0x3FC8F5C3 >> 16)
    /* 12A2F4 00229374 C3F52134 */  ori        $at, $at, (0x3FC8F5C3 & 0xFFFF)
    /* 12A2F8 00229378 0008A148 */  qmtc2.ni   $at, $vf1
    /* 12A2FC 0022937C 6808104B */  vadd.x     $vf1, $vf1, $vf16
    /* 12A300 00229380 00082248 */  qmfc2.ni   $v0, $vf1
    /* 12A304 00229384 B864004A */  vcallms    0xC90
    /* 12A308 00229388 01082148 */  qmfc2.i    $at, $vf1
    /* 12A30C 0022938C C007014B */  vaddx.x    $vf31, $vf0, $vf1x
    /* 12A310 00229390 0008A248 */  qmtc2.ni   $v0, $vf1
    /* 12A314 00229394 3864004A */  vcallms    0xC80
    /* 12A318 00229398 01082148 */  qmfc2.i    $at, $vf1
    /* 12A31C 0022939C C007814A */  vaddx.y    $vf31, $vf0, $vf1x
    /* 12A320 002293A0 C5073F4A */  vsuby.w    $vf31, $vf0, $vf31y
    /* 12A324 002293A4 58F7DF4B */  vmulx.xyz  $vf29, $vf30, $vf31x
    /* 12A328 002293A8 58F01E4B */  vmulx.x    $vf1, $vf30, $vf30x
    /* 12A32C 002293AC 5B081F4B */  vmulw.x    $vf1, $vf1, $vf31w
    /* 12A330 002293B0 41081F4B */  vaddy.x    $vf1, $vf1, $vf31y
    /* 12A334 002293B4 58F09E4A */  vmulx.y    $vf1, $vf30, $vf30x
    /* 12A338 002293B8 5B089F4A */  vmulw.y    $vf1, $vf1, $vf31w
    /* 12A33C 002293BC 46089D4A */  vsubz.y    $vf1, $vf1, $vf29z
    /* 12A340 002293C0 58F05E4A */  vmulx.z    $vf1, $vf30, $vf30x
    /* 12A344 002293C4 5B085F4A */  vmulw.z    $vf1, $vf1, $vf31w
    /* 12A348 002293C8 41085D4A */  vaddy.z    $vf1, $vf1, $vf29y
    /* 12A34C 002293CC 99F01E4B */  vmuly.x    $vf2, $vf30, $vf30y
    /* 12A350 002293D0 9B101F4B */  vmulw.x    $vf2, $vf2, $vf31w
    /* 12A354 002293D4 82101D4B */  vaddz.x    $vf2, $vf2, $vf29z
    /* 12A358 002293D8 99F09E4A */  vmuly.y    $vf2, $vf30, $vf30y
    /* 12A35C 002293DC 9B109F4A */  vmulw.y    $vf2, $vf2, $vf31w
    /* 12A360 002293E0 81109F4A */  vaddy.y    $vf2, $vf2, $vf31y
    /* 12A364 002293E4 99F05E4A */  vmuly.z    $vf2, $vf30, $vf30y
    /* 12A368 002293E8 9B105F4A */  vmulw.z    $vf2, $vf2, $vf31w
    /* 12A36C 002293EC 84105D4A */  vsubx.z    $vf2, $vf2, $vf29x
    /* 12A370 002293F0 DAF01E4B */  vmulz.x    $vf3, $vf30, $vf30z
    /* 12A374 002293F4 DB181F4B */  vmulw.x    $vf3, $vf3, $vf31w
    /* 12A378 002293F8 C5181D4B */  vsuby.x    $vf3, $vf3, $vf29y
    /* 12A37C 002293FC DAF09E4A */  vmulz.y    $vf3, $vf30, $vf30z
    /* 12A380 00229400 DB189F4A */  vmulw.y    $vf3, $vf3, $vf31w
    /* 12A384 00229404 C0189D4A */  vaddx.y    $vf3, $vf3, $vf29x
    /* 12A388 00229408 DAF05E4A */  vmulz.z    $vf3, $vf30, $vf30z
    /* 12A38C 0022940C DB185F4A */  vmulw.z    $vf3, $vf3, $vf31w
    /* 12A390 00229410 C1185F4A */  vaddy.z    $vf3, $vf3, $vf31y
    /* 12A394 00229414 BC09D64B */  vmulax.xyz ACC, $vf1, $vf22x
    /* 12A398 00229418 BD10D64B */  vmadday.xyz ACC, $vf2, $vf22y
    /* 12A39C 0022941C 8A1ED64B */  vmaddz.xyz $vf26, $vf3, $vf22z
    /* 12A3A0 00229420 00108C44 */  mtc1       $t4, $f2
    /* 12A3A4 00229424 A0108046 */  cvt.s.w    $f2, $f2
    /* 12A3A8 00229428 00882148 */  qmfc2.ni   $at, $vf17
    /* 12A3AC 0022942C 00088144 */  mtc1       $at, $f1
    /* 12A3B0 00229430 03080246 */  div.s      $f0, $f1, $f2
    /* 12A3B4 00229434 00000244 */  mfc1       $v0, $f0
    /* 12A3B8 00229438 0008A248 */  qmtc2.ni   $v0, $vf1
    /* 12A3BC 0022943C B864004A */  vcallms    0xC90
    /* 12A3C0 00229440 01082148 */  qmfc2.i    $at, $vf1
    /* 12A3C4 00229444 C007014B */  vaddx.x    $vf31, $vf0, $vf1x
    /* 12A3C8 00229448 0008A248 */  qmtc2.ni   $v0, $vf1
    /* 12A3CC 0022944C 3864004A */  vcallms    0xC80
    /* 12A3D0 00229450 01082148 */  qmfc2.i    $at, $vf1
    /* 12A3D4 00229454 C007814A */  vaddx.y    $vf31, $vf0, $vf1x
    /* 12A3D8 00229458 C5073F4A */  vsuby.w    $vf31, $vf0, $vf31y
    /* 12A3DC 0022945C 58F7DF4B */  vmulx.xyz  $vf29, $vf30, $vf31x
    /* 12A3E0 00229460 58F01E4B */  vmulx.x    $vf1, $vf30, $vf30x
    /* 12A3E4 00229464 5B081F4B */  vmulw.x    $vf1, $vf1, $vf31w
    /* 12A3E8 00229468 41081F4B */  vaddy.x    $vf1, $vf1, $vf31y
    /* 12A3EC 0022946C 58F09E4A */  vmulx.y    $vf1, $vf30, $vf30x
    /* 12A3F0 00229470 5B089F4A */  vmulw.y    $vf1, $vf1, $vf31w
    /* 12A3F4 00229474 46089D4A */  vsubz.y    $vf1, $vf1, $vf29z
    /* 12A3F8 00229478 58F05E4A */  vmulx.z    $vf1, $vf30, $vf30x
    /* 12A3FC 0022947C 5B085F4A */  vmulw.z    $vf1, $vf1, $vf31w
    /* 12A400 00229480 41085D4A */  vaddy.z    $vf1, $vf1, $vf29y
    /* 12A404 00229484 99F01E4B */  vmuly.x    $vf2, $vf30, $vf30y
    /* 12A408 00229488 9B101F4B */  vmulw.x    $vf2, $vf2, $vf31w
    /* 12A40C 0022948C 82101D4B */  vaddz.x    $vf2, $vf2, $vf29z
    /* 12A410 00229490 99F09E4A */  vmuly.y    $vf2, $vf30, $vf30y
    /* 12A414 00229494 9B109F4A */  vmulw.y    $vf2, $vf2, $vf31w
    /* 12A418 00229498 81109F4A */  vaddy.y    $vf2, $vf2, $vf31y
    /* 12A41C 0022949C 99F05E4A */  vmuly.z    $vf2, $vf30, $vf30y
    /* 12A420 002294A0 9B105F4A */  vmulw.z    $vf2, $vf2, $vf31w
    /* 12A424 002294A4 84105D4A */  vsubx.z    $vf2, $vf2, $vf29x
    /* 12A428 002294A8 DAF01E4B */  vmulz.x    $vf3, $vf30, $vf30z
    /* 12A42C 002294AC DB181F4B */  vmulw.x    $vf3, $vf3, $vf31w
    /* 12A430 002294B0 C5181D4B */  vsuby.x    $vf3, $vf3, $vf29y
    /* 12A434 002294B4 DAF09E4A */  vmulz.y    $vf3, $vf30, $vf30z
    /* 12A438 002294B8 DB189F4A */  vmulw.y    $vf3, $vf3, $vf31w
    /* 12A43C 002294BC C0189D4A */  vaddx.y    $vf3, $vf3, $vf29x
    /* 12A440 002294C0 DAF05E4A */  vmulz.z    $vf3, $vf30, $vf30z
    /* 12A444 002294C4 DB185F4A */  vmulw.z    $vf3, $vf3, $vf31w
    /* 12A448 002294C8 C1185F4A */  vaddy.z    $vf3, $vf3, $vf31y
.align 2
  .L002294CC:
    /* 12A44C 002294CC 68D1DB4B */  vadd.xyz   $vf5, $vf26, $vf27
    /* 12A450 002294D0 BC09DA4B */  vmulax.xyz ACC, $vf1, $vf26x
    /* 12A454 002294D4 BD10DA4B */  vmadday.xyz ACC, $vf2, $vf26y
    /* 12A458 002294D8 8A1EDA4B */  vmaddz.xyz $vf26, $vf3, $vf26z
    /* 12A45C 002294DC 000045F9 */  sqc2       $vf5, (0x70000000 & 0xFFFF)($t2)
    /* 12A460 002294E0 6829DC4B */  vadd.xyz   $vf5, $vf5, $vf28
    /* 12A464 002294E4 FFFF8C21 */  addi       $t4, $t4, -0x1 /* handwritten instruction */
    /* 12A468 002294E8 01006B25 */  addiu      $t3, $t3, 0x1
    /* 12A46C 002294EC 100045F9 */  sqc2       $vf5, (0x70000010 & 0xFFFF)($t2)
    /* 12A470 002294F0 F6FF8015 */  bnez       $t4, .L002294CC
    /* 12A474 002294F4 20004A25 */   addiu     $t2, $t2, %lo(D_70000020)
    /* 12A478 002294F8 0B000010 */  b          .L00229528
    /* 12A47C 002294FC 00000000 */   nop
.align 2
  .L00229500:
    /* 12A480 00229500 6CD8D64B */  vsub.xyz   $vf1, $vf27, $vf22
    /* 12A484 00229504 000041F9 */  sqc2       $vf1, (0x70000000 & 0xFFFF)($t2)
    /* 12A488 00229508 6808DC4B */  vadd.xyz   $vf1, $vf1, $vf28
    /* 12A48C 0022950C 100041F9 */  sqc2       $vf1, (0x70000010 & 0xFFFF)($t2)
    /* 12A490 00229510 68D8D64B */  vadd.xyz   $vf1, $vf27, $vf22
    /* 12A494 00229514 200041F9 */  sqc2       $vf1, (0x70000020 & 0xFFFF)($t2)
    /* 12A498 00229518 6808DC4B */  vadd.xyz   $vf1, $vf1, $vf28
    /* 12A49C 0022951C 300041F9 */  sqc2       $vf1, (0x70000030 & 0xFFFF)($t2)
    /* 12A4A0 00229520 40004A25 */  addiu      $t2, $t2, %lo(D_70000040)
    /* 12A4A4 00229524 02006B25 */  addiu      $t3, $t3, 0x2
.align 2
  .L00229528:
    /* 12A4A8 00229528 6900A011 */  beqz       $t5, .L002296D0
    /* 12A4AC 0022952C 00000000 */   nop
    /* 12A4B0 00229530 C83F013C */  lui        $at, (0x3FC8F5C3 >> 16)
    /* 12A4B4 00229534 C3F52134 */  ori        $at, $at, (0x3FC8F5C3 & 0xFFFF)
    /* 12A4B8 00229538 0008A148 */  qmtc2.ni   $at, $vf1
    /* 12A4BC 0022953C 6808124B */  vadd.x     $vf1, $vf1, $vf18
    /* 12A4C0 00229540 C840013C */  lui        $at, (0x40C8F5C3 >> 16)
    /* 12A4C4 00229544 C3F52134 */  ori        $at, $at, (0x40C8F5C3 & 0xFFFF)
    /* 12A4C8 00229548 0010A148 */  qmtc2.ni   $at, $vf2
    /* 12A4CC 0022954C 6C08024B */  vsub.x     $vf1, $vf1, $vf2
    /* 12A4D0 00229550 00082248 */  qmfc2.ni   $v0, $vf1
    /* 12A4D4 00229554 B864004A */  vcallms    0xC90
    /* 12A4D8 00229558 01082148 */  qmfc2.i    $at, $vf1
    /* 12A4DC 0022955C C007014B */  vaddx.x    $vf31, $vf0, $vf1x
    /* 12A4E0 00229560 0008A248 */  qmtc2.ni   $v0, $vf1
    /* 12A4E4 00229564 3864004A */  vcallms    0xC80
    /* 12A4E8 00229568 01082148 */  qmfc2.i    $at, $vf1
    /* 12A4EC 0022956C C007814A */  vaddx.y    $vf31, $vf0, $vf1x
    /* 12A4F0 00229570 C5073F4A */  vsuby.w    $vf31, $vf0, $vf31y
    /* 12A4F4 00229574 58F7DF4B */  vmulx.xyz  $vf29, $vf30, $vf31x
    /* 12A4F8 00229578 58F01E4B */  vmulx.x    $vf1, $vf30, $vf30x
    /* 12A4FC 0022957C 5B081F4B */  vmulw.x    $vf1, $vf1, $vf31w
    /* 12A500 00229580 41081F4B */  vaddy.x    $vf1, $vf1, $vf31y
    /* 12A504 00229584 58F09E4A */  vmulx.y    $vf1, $vf30, $vf30x
    /* 12A508 00229588 5B089F4A */  vmulw.y    $vf1, $vf1, $vf31w
    /* 12A50C 0022958C 46089D4A */  vsubz.y    $vf1, $vf1, $vf29z
    /* 12A510 00229590 58F05E4A */  vmulx.z    $vf1, $vf30, $vf30x
    /* 12A514 00229594 5B085F4A */  vmulw.z    $vf1, $vf1, $vf31w
    /* 12A518 00229598 41085D4A */  vaddy.z    $vf1, $vf1, $vf29y
    /* 12A51C 0022959C 99F01E4B */  vmuly.x    $vf2, $vf30, $vf30y
    /* 12A520 002295A0 9B101F4B */  vmulw.x    $vf2, $vf2, $vf31w
    /* 12A524 002295A4 82101D4B */  vaddz.x    $vf2, $vf2, $vf29z
    /* 12A528 002295A8 99F09E4A */  vmuly.y    $vf2, $vf30, $vf30y
    /* 12A52C 002295AC 9B109F4A */  vmulw.y    $vf2, $vf2, $vf31w
    /* 12A530 002295B0 81109F4A */  vaddy.y    $vf2, $vf2, $vf31y
    /* 12A534 002295B4 99F05E4A */  vmuly.z    $vf2, $vf30, $vf30y
    /* 12A538 002295B8 9B105F4A */  vmulw.z    $vf2, $vf2, $vf31w
    /* 12A53C 002295BC 84105D4A */  vsubx.z    $vf2, $vf2, $vf29x
    /* 12A540 002295C0 DAF01E4B */  vmulz.x    $vf3, $vf30, $vf30z
    /* 12A544 002295C4 DB181F4B */  vmulw.x    $vf3, $vf3, $vf31w
    /* 12A548 002295C8 C5181D4B */  vsuby.x    $vf3, $vf3, $vf29y
    /* 12A54C 002295CC DAF09E4A */  vmulz.y    $vf3, $vf30, $vf30z
    /* 12A550 002295D0 DB189F4A */  vmulw.y    $vf3, $vf3, $vf31w
    /* 12A554 002295D4 C0189D4A */  vaddx.y    $vf3, $vf3, $vf29x
    /* 12A558 002295D8 DAF05E4A */  vmulz.z    $vf3, $vf30, $vf30z
    /* 12A55C 002295DC DB185F4A */  vmulw.z    $vf3, $vf3, $vf31w
    /* 12A560 002295E0 C1185F4A */  vaddy.z    $vf3, $vf3, $vf31y
    /* 12A564 002295E4 BC09D74B */  vmulax.xyz ACC, $vf1, $vf23x
    /* 12A568 002295E8 BD10D74B */  vmadday.xyz ACC, $vf2, $vf23y
    /* 12A56C 002295EC 8A1ED74B */  vmaddz.xyz $vf26, $vf3, $vf23z
    /* 12A570 002295F0 00108D44 */  mtc1       $t5, $f2
    /* 12A574 002295F4 A0108046 */  cvt.s.w    $f2, $f2
    /* 12A578 002295F8 00982148 */  qmfc2.ni   $at, $vf19
    /* 12A57C 002295FC 00088144 */  mtc1       $at, $f1
    /* 12A580 00229600 03080246 */  div.s      $f0, $f1, $f2
    /* 12A584 00229604 00000244 */  mfc1       $v0, $f0
    /* 12A588 00229608 0008A248 */  qmtc2.ni   $v0, $vf1
    /* 12A58C 0022960C B864004A */  vcallms    0xC90
    /* 12A590 00229610 01082148 */  qmfc2.i    $at, $vf1
    /* 12A594 00229614 C007014B */  vaddx.x    $vf31, $vf0, $vf1x
    /* 12A598 00229618 0008A248 */  qmtc2.ni   $v0, $vf1
    /* 12A59C 0022961C 3864004A */  vcallms    0xC80
    /* 12A5A0 00229620 01082148 */  qmfc2.i    $at, $vf1
    /* 12A5A4 00229624 C007814A */  vaddx.y    $vf31, $vf0, $vf1x
    /* 12A5A8 00229628 C5073F4A */  vsuby.w    $vf31, $vf0, $vf31y
    /* 12A5AC 0022962C 58F7DF4B */  vmulx.xyz  $vf29, $vf30, $vf31x
    /* 12A5B0 00229630 58F01E4B */  vmulx.x    $vf1, $vf30, $vf30x
    /* 12A5B4 00229634 5B081F4B */  vmulw.x    $vf1, $vf1, $vf31w
    /* 12A5B8 00229638 41081F4B */  vaddy.x    $vf1, $vf1, $vf31y
    /* 12A5BC 0022963C 58F09E4A */  vmulx.y    $vf1, $vf30, $vf30x
    /* 12A5C0 00229640 5B089F4A */  vmulw.y    $vf1, $vf1, $vf31w
    /* 12A5C4 00229644 46089D4A */  vsubz.y    $vf1, $vf1, $vf29z
    /* 12A5C8 00229648 58F05E4A */  vmulx.z    $vf1, $vf30, $vf30x
    /* 12A5CC 0022964C 5B085F4A */  vmulw.z    $vf1, $vf1, $vf31w
    /* 12A5D0 00229650 41085D4A */  vaddy.z    $vf1, $vf1, $vf29y
    /* 12A5D4 00229654 99F01E4B */  vmuly.x    $vf2, $vf30, $vf30y
    /* 12A5D8 00229658 9B101F4B */  vmulw.x    $vf2, $vf2, $vf31w
    /* 12A5DC 0022965C 82101D4B */  vaddz.x    $vf2, $vf2, $vf29z
    /* 12A5E0 00229660 99F09E4A */  vmuly.y    $vf2, $vf30, $vf30y
    /* 12A5E4 00229664 9B109F4A */  vmulw.y    $vf2, $vf2, $vf31w
    /* 12A5E8 00229668 81109F4A */  vaddy.y    $vf2, $vf2, $vf31y
    /* 12A5EC 0022966C 99F05E4A */  vmuly.z    $vf2, $vf30, $vf30y
    /* 12A5F0 00229670 9B105F4A */  vmulw.z    $vf2, $vf2, $vf31w
    /* 12A5F4 00229674 84105D4A */  vsubx.z    $vf2, $vf2, $vf29x
    /* 12A5F8 00229678 DAF01E4B */  vmulz.x    $vf3, $vf30, $vf30z
    /* 12A5FC 0022967C DB181F4B */  vmulw.x    $vf3, $vf3, $vf31w
    /* 12A600 00229680 C5181D4B */  vsuby.x    $vf3, $vf3, $vf29y
    /* 12A604 00229684 DAF09E4A */  vmulz.y    $vf3, $vf30, $vf30z
    /* 12A608 00229688 DB189F4A */  vmulw.y    $vf3, $vf3, $vf31w
    /* 12A60C 0022968C C0189D4A */  vaddx.y    $vf3, $vf3, $vf29x
    /* 12A610 00229690 DAF05E4A */  vmulz.z    $vf3, $vf30, $vf30z
    /* 12A614 00229694 DB185F4A */  vmulw.z    $vf3, $vf3, $vf31w
    /* 12A618 00229698 C1185F4A */  vaddy.z    $vf3, $vf3, $vf31y
.align 2
  .L0022969C:
    /* 12A61C 0022969C 68D1D94B */  vadd.xyz   $vf5, $vf26, $vf25
    /* 12A620 002296A0 BC09DA4B */  vmulax.xyz ACC, $vf1, $vf26x
    /* 12A624 002296A4 BD10DA4B */  vmadday.xyz ACC, $vf2, $vf26y
    /* 12A628 002296A8 8A1EDA4B */  vmaddz.xyz $vf26, $vf3, $vf26z
    /* 12A62C 002296AC 000045F9 */  sqc2       $vf5, 0x0($t2)
    /* 12A630 002296B0 6829DC4B */  vadd.xyz   $vf5, $vf5, $vf28
    /* 12A634 002296B4 01006B25 */  addiu      $t3, $t3, 0x1
    /* 12A638 002296B8 FFFFAD21 */  addi       $t5, $t5, -0x1 /* handwritten instruction */
    /* 12A63C 002296BC 100045F9 */  sqc2       $vf5, 0x10($t2)
    /* 12A640 002296C0 F6FFA015 */  bnez       $t5, .L0022969C
    /* 12A644 002296C4 20004A25 */   addiu     $t2, $t2, 0x20
    /* 12A648 002296C8 0B000010 */  b          .L002296F8
    /* 12A64C 002296CC 00000000 */   nop
.align 2
  .L002296D0:
    /* 12A650 002296D0 68C8D74B */  vadd.xyz   $vf1, $vf25, $vf23
    /* 12A654 002296D4 000041F9 */  sqc2       $vf1, 0x0($t2)
    /* 12A658 002296D8 6808DC4B */  vadd.xyz   $vf1, $vf1, $vf28
    /* 12A65C 002296DC 100041F9 */  sqc2       $vf1, 0x10($t2)
    /* 12A660 002296E0 6CC8D74B */  vsub.xyz   $vf1, $vf25, $vf23
    /* 12A664 002296E4 200041F9 */  sqc2       $vf1, 0x20($t2)
    /* 12A668 002296E8 6808DC4B */  vadd.xyz   $vf1, $vf1, $vf28
    /* 12A66C 002296EC 300041F9 */  sqc2       $vf1, 0x30($t2)
    /* 12A670 002296F0 40004A25 */  addiu      $t2, $t2, 0x40
    /* 12A674 002296F4 02006B25 */  addiu      $t3, $t3, 0x2
.align 2
  .L002296F8:
    /* 12A678 002296F8 0070013C */  lui        $at, (0x70000010 >> 16)
    /* 12A67C 002296FC 000025D8 */  lqc2       $vf5, (0x70000000 & 0xFFFF)($at)
    /* 12A680 00229700 000045F9 */  sqc2       $vf5, 0x0($t2)
    /* 12A684 00229704 100025D8 */  lqc2       $vf5, (0x70000010 & 0xFFFF)($at)
    /* 12A688 00229708 100045F9 */  sqc2       $vf5, 0x10($t2)
    /* 12A68C 0022970C 01006B25 */  addiu      $t3, $t3, 0x1
    /* 12A690 00229710 44000010 */  b          .L00229824
    /* 12A694 00229714 00000000 */   nop
.align 2
  .L00229718:
    /* 12A698 00229718 3C008011 */  beqz       $t4, .L0022980C
    /* 12A69C 0022971C 00000000 */   nop
    /* 12A6A0 00229720 00108C44 */  mtc1       $t4, $f2
    /* 12A6A4 00229724 A0108046 */  cvt.s.w    $f2, $f2
    /* 12A6A8 00229728 C840013C */  lui        $at, (0x40C8F5C3 >> 16)
    /* 12A6AC 0022972C C3F52134 */  ori        $at, $at, (0x40C8F5C3 & 0xFFFF)
    /* 12A6B0 00229730 00088144 */  mtc1       $at, $f1
    /* 12A6B4 00229734 03080246 */  div.s      $f0, $f1, $f2
    /* 12A6B8 00229738 00000244 */  mfc1       $v0, $f0
    /* 12A6BC 0022973C 0008A248 */  qmtc2.ni   $v0, $vf1
    /* 12A6C0 00229740 B864004A */  vcallms    0xC90
    /* 12A6C4 00229744 01082148 */  qmfc2.i    $at, $vf1
    /* 12A6C8 00229748 C007014B */  vaddx.x    $vf31, $vf0, $vf1x
    /* 12A6CC 0022974C 0008A248 */  qmtc2.ni   $v0, $vf1
    /* 12A6D0 00229750 3864004A */  vcallms    0xC80
    /* 12A6D4 00229754 01082148 */  qmfc2.i    $at, $vf1
    /* 12A6D8 00229758 C007814A */  vaddx.y    $vf31, $vf0, $vf1x
    /* 12A6DC 0022975C C5073F4A */  vsuby.w    $vf31, $vf0, $vf31y
    /* 12A6E0 00229760 58F7DF4B */  vmulx.xyz  $vf29, $vf30, $vf31x
    /* 12A6E4 00229764 58F01E4B */  vmulx.x    $vf1, $vf30, $vf30x
    /* 12A6E8 00229768 5B081F4B */  vmulw.x    $vf1, $vf1, $vf31w
    /* 12A6EC 0022976C 41081F4B */  vaddy.x    $vf1, $vf1, $vf31y
    /* 12A6F0 00229770 58F09E4A */  vmulx.y    $vf1, $vf30, $vf30x
    /* 12A6F4 00229774 5B089F4A */  vmulw.y    $vf1, $vf1, $vf31w
    /* 12A6F8 00229778 46089D4A */  vsubz.y    $vf1, $vf1, $vf29z
    /* 12A6FC 0022977C 58F05E4A */  vmulx.z    $vf1, $vf30, $vf30x
    /* 12A700 00229780 5B085F4A */  vmulw.z    $vf1, $vf1, $vf31w
    /* 12A704 00229784 41085D4A */  vaddy.z    $vf1, $vf1, $vf29y
    /* 12A708 00229788 99F01E4B */  vmuly.x    $vf2, $vf30, $vf30y
    /* 12A70C 0022978C 9B101F4B */  vmulw.x    $vf2, $vf2, $vf31w
    /* 12A710 00229790 82101D4B */  vaddz.x    $vf2, $vf2, $vf29z
    /* 12A714 00229794 99F09E4A */  vmuly.y    $vf2, $vf30, $vf30y
    /* 12A718 00229798 9B109F4A */  vmulw.y    $vf2, $vf2, $vf31w
    /* 12A71C 0022979C 81109F4A */  vaddy.y    $vf2, $vf2, $vf31y
    /* 12A720 002297A0 99F05E4A */  vmuly.z    $vf2, $vf30, $vf30y
    /* 12A724 002297A4 9B105F4A */  vmulw.z    $vf2, $vf2, $vf31w
    /* 12A728 002297A8 84105D4A */  vsubx.z    $vf2, $vf2, $vf29x
    /* 12A72C 002297AC DAF01E4B */  vmulz.x    $vf3, $vf30, $vf30z
    /* 12A730 002297B0 DB181F4B */  vmulw.x    $vf3, $vf3, $vf31w
    /* 12A734 002297B4 C5181D4B */  vsuby.x    $vf3, $vf3, $vf29y
    /* 12A738 002297B8 DAF09E4A */  vmulz.y    $vf3, $vf30, $vf30z
    /* 12A73C 002297BC DB189F4A */  vmulw.y    $vf3, $vf3, $vf31w
    /* 12A740 002297C0 C0189D4A */  vaddx.y    $vf3, $vf3, $vf29x
    /* 12A744 002297C4 DAF05E4A */  vmulz.z    $vf3, $vf30, $vf30z
    /* 12A748 002297C8 DB185F4A */  vmulw.z    $vf3, $vf3, $vf31w
    /* 12A74C 002297CC C1185F4A */  vaddy.z    $vf3, $vf3, $vf31y
    /* 12A750 002297D0 1600013C */  lui        $at, %hi(D_00160480)
    /* 12A754 002297D4 80042124 */  addiu      $at, $at, %lo(D_00160480)
    /* 12A758 002297D8 00003AD8 */  lqc2       $vf26, 0x0($at)
    /* 12A75C 002297DC 9BD6DB4B */  vmulw.xyz  $vf26, $vf26, $vf27w
.align 2
  .L002297E0:
    /* 12A760 002297E0 BC09DA4B */  vmulax.xyz ACC, $vf1, $vf26x
    /* 12A764 002297E4 BD10DA4B */  vmadday.xyz ACC, $vf2, $vf26y
    /* 12A768 002297E8 8A1EDA4B */  vmaddz.xyz $vf26, $vf3, $vf26z
    /* 12A76C 002297EC 68D1DB4B */  vadd.xyz   $vf5, $vf26, $vf27
    /* 12A770 002297F0 000045F9 */  sqc2       $vf5, (0x70000000 & 0xFFFF)($t2)
    /* 12A774 002297F4 6829DC4B */  vadd.xyz   $vf5, $vf5, $vf28
    /* 12A778 002297F8 100045F9 */  sqc2       $vf5, (0x70000010 & 0xFFFF)($t2)
    /* 12A77C 002297FC 20004A25 */  addiu      $t2, $t2, %lo(D_70000020)
    /* 12A780 00229800 FFFF8C21 */  addi       $t4, $t4, -0x1 /* handwritten instruction */
    /* 12A784 00229804 F6FF8015 */  bnez       $t4, .L002297E0
    /* 12A788 00229808 01006B25 */   addiu     $t3, $t3, 0x1
.align 2
  .L0022980C:
    /* 12A78C 0022980C 0070013C */  lui        $at, (0x70000010 >> 16)
    /* 12A790 00229810 000025D8 */  lqc2       $vf5, (0x70000000 & 0xFFFF)($at)
    /* 12A794 00229814 000045F9 */  sqc2       $vf5, (0x70000000 & 0xFFFF)($t2)
    /* 12A798 00229818 100025D8 */  lqc2       $vf5, (0x70000010 & 0xFFFF)($at)
    /* 12A79C 0022981C 100045F9 */  sqc2       $vf5, (0x70000010 & 0xFFFF)($t2)
    /* 12A7A0 00229820 01006B25 */  addiu      $t3, $t3, 0x1
.align 2
  .L00229824:
    /* 12A7A4 00229824 1600013C */  lui        $at, %hi(D_001604A0)
    /* 12A7A8 00229828 A0042124 */  addiu      $at, $at, %lo(D_001604A0)
    /* 12A7AC 0022982C 0800E003 */  jr         $ra
    /* 12A7B0 00229830 00002BAC */   sw        $t3, 0x0($at)
endlabel func_002291E8
    /* 12A7B4 00229834 00000000 */  nop
