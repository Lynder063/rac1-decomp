.align 3
/* Handwritten function */
nonmatching func_0020FC38, 0xCA8

glabel func_0020FC38
    /* 110BB8 0020FC38 89FBE073 */  pcpyld     $31, $31, $0
    /* 110BBC 0020FC3C 24008F8C */  lw         $15, 0x24($4)
    /* 110BC0 0020FC40 00009820 */  addi       $24, $4, 0x0 /* handwritten instruction */
    /* 110BC4 0020FC44 0070193C */  lui        $25, (0x70000000 >> 16)
    /* 110BC8 0020FC48 68000C8F */  lw         $12, 0x68($24)
    /* 110BCC 0020FC4C 0010083C */  lui        $8, (0x1000D400 >> 16)
    /* 110BD0 0020FC50 6C000D8F */  lw         $13, 0x6C($24)
    /* 110BD4 0020FC54 00D40835 */  ori        $8, $8, (0x1000D400 & 0xFFFF)
    /* 110BD8 0020FC58 1800EB8D */  lw         $11, 0x18($15)
    /* 110BDC 0020FC5C 4301C04B */  vaddw.xyz  $vf5, $vf0, $vf0w
    /* 110BE0 0020FC60 0800EA91 */  lbu        $10, 0x8($15)
    /* 110BE4 0020FC64 00200134 */  ori        $1, $0, 0x2000
    /* 110BE8 0020FC68 800001AD */  sw         $1, 0x80($8)
    /* 110BEC 0020FC6C 89CBB970 */  pcpyld     $25, $5, $25
    /* 110BF0 0020FC70 10000BAD */  sw         $11, 0x10($8)
    /* 110BF4 0020FC74 00790A00 */  sll        $15, $10, 4
    /* 110BF8 0020FC78 20000AAD */  sw         $10, 0x20($8)
    /* 110BFC 0020FC7C 2078F901 */  add        $15, $15, $25 /* handwritten instruction */
    /* 110C00 0020FC80 F81FE0FD */  sd         $0, 0x1FF8($15)
    /* 110C04 0020FC84 00010134 */  ori        $1, $0, 0x100
    /* 110C08 0020FC88 000001AD */  sw         $1, 0x0($8)
    /* 110C0C 0020FC8C 10008C21 */  addi       $12, $12, 0x10 /* handwritten instruction */
    /* 110C10 0020FC90 F6FF8485 */  lh         $4, -0xA($12)
    /* 110C14 0020FC94 1000AD21 */  addi       $13, $13, 0x10 /* handwritten instruction */
    /* 110C18 0020FC98 5400098F */  lw         $9, 0x54($24)
    /* 110C1C 0020FC9C 5801204A */  vmulx.w    $vf5, $vf0, $vf0x
    /* 110C20 0020FCA0 00710400 */  sll        $14, $4, 4
    /* 110C24 0020FCA4 5800E04B */  vmulx.xyzw $vf1, $vf0, $vf0x
    /* 110C28 0020FCA8 FAFF8285 */  lh         $2, -0x6($12)
    /* 110C2C 0020FCAC 9800E04B */  vmulx.xyzw $vf2, $vf0, $vf0x
    /* 110C30 0020FCB0 2070D901 */  add        $14, $14, $25 /* handwritten instruction */
    /* 110C34 0020FCB4 3D03E34B */  .word      0x4BE3033D    # vmr32.xyzw $vf3, $vf0
    /* 110C38 0020FCB8 FEFF8385 */  lh         $3, -0x2($12)
    /* 110C3C 0020FCBC 4308004B */  vaddw.x    $vf1, $vf1, $vf0w
    /* 110C40 0020FCC0 F02FC07D */  sq         $0, 0x2FF0($14)
    /* 110C44 0020FCC4 8310804A */  vaddw.y    $vf2, $vf2, $vf0w
    /* 110C48 0020FCC8 80FF2523 */  addi       $5, $25, -0x80 /* handwritten instruction */
    /* 110C4C 0020FCCC 00004621 */  addi       $6, $10, 0x0 /* handwritten instruction */
.align 2
  .L0020FCD0:
    /* 110C50 0020FCD0 8000A5F8 */  sqc2       $vf5, 0x80($5)
    /* 110C54 0020FCD4 00000000 */  nop
    /* 110C58 0020FCD8 9000A5F8 */  sqc2       $vf5, 0x90($5)
    /* 110C5C 0020FCDC 8000A520 */  addi       $5, $5, 0x80 /* handwritten instruction */
    /* 110C60 0020FCE0 4000A5F8 */  sqc2       $vf5, 0x40($5)
    /* 110C64 0020FCE4 FEFFC620 */  addi       $6, $6, -0x2 /* handwritten instruction */
    /* 110C68 0020FCE8 F9FFC01C */  bgtz       $6, .L0020FCD0
    /* 110C6C 0020FCEC 5000A5F8 */   sqc2      $vf5, 0x50($5)
.align 2
  .L0020FCF0:
    /* 110C70 0020FCF0 F81FE1DD */  ld         $1, 0x1FF8($15)
    /* 110C74 0020FCF4 00302523 */  addi       $5, $25, 0x3000 /* handwritten instruction */
    /* 110C78 0020FCF8 00000000 */  nop
    /* 110C7C 0020FCFC 00000000 */  nop
    /* 110C80 0020FD00 00010634 */  ori        $6, $0, 0x100
    /* 110C84 0020FD04 00000000 */  nop
    /* 110C88 0020FD08 F9FF2010 */  beqz       $1, .L0020FCF0
    /* 110C8C 0020FD0C 00000000 */   nop
    /* 110C90 0020FD10 800005AD */  sw         $5, 0x80($8)
    /* 110C94 0020FD14 5802204A */  vmulx.w    $vf9, $vf0, $vf0x
    /* 110C98 0020FD18 10000CAD */  sw         $12, 0x10($8)
    /* 110C9C 0020FD1C 9802204A */  vmulx.w    $vf10, $vf0, $vf0x
    /* 110CA0 0020FD20 200004AD */  sw         $4, 0x20($8)
    /* 110CA4 0020FD24 D802204A */  vmulx.w    $vf11, $vf0, $vf0x
    /* 110CA8 0020FD28 000006AD */  sw         $6, 0x0($8)
    /* 110CAC 0020FD2C 1803204A */  vmulx.w    $vf12, $vf0, $vf0x
    /* 110CB0 0020FD30 00004521 */  addi       $5, $10, 0x0 /* handwritten instruction */
    /* 110CB4 0020FD34 00202623 */  addi       $6, $25, 0x2000 /* handwritten instruction */
    /* 110CB8 0020FD38 00FF2723 */  addi       $7, $25, -0x100 /* handwritten instruction */
    /* 110CBC 0020FD3C 00000000 */  nop
.align 2
  .L0020FD40:
    /* 110CC0 0020FD40 0000C5D8 */  lqc2       $vf5, 0x0($6)
    /* 110CC4 0020FD44 0001E720 */  addi       $7, $7, 0x100 /* handwritten instruction */
    /* 110CC8 0020FD48 1000C6D8 */  lqc2       $vf6, 0x10($6)
    /* 110CCC 0020FD4C FCFFA520 */  addi       $5, $5, -0x4 /* handwritten instruction */
    /* 110CD0 0020FD50 2000C7D8 */  lqc2       $vf7, 0x20($6)
    /* 110CD4 0020FD54 5B2AC04B */  vmulw.xyz  $vf9, $vf5, $vf0w
    /* 110CD8 0020FD58 3000C8D8 */  lqc2       $vf8, 0x30($6)
    /* 110CDC 0020FD5C 9B32C04B */  vmulw.xyz  $vf10, $vf6, $vf0w
    /* 110CE0 0020FD60 2000E5F8 */  sqc2       $vf5, 0x20($7)
    /* 110CE4 0020FD64 DB3AC04B */  vmulw.xyz  $vf11, $vf7, $vf0w
    /* 110CE8 0020FD68 6000E6F8 */  sqc2       $vf6, 0x60($7)
    /* 110CEC 0020FD6C 1B43C04B */  vmulw.xyz  $vf12, $vf8, $vf0w
    /* 110CF0 0020FD70 A000E7F8 */  sqc2       $vf7, 0xA0($7)
    /* 110CF4 0020FD74 E000E8F8 */  sqc2       $vf8, 0xE0($7)
    /* 110CF8 0020FD78 3000E9F8 */  sqc2       $vf9, 0x30($7)
    /* 110CFC 0020FD7C 7000EAF8 */  sqc2       $vf10, 0x70($7)
    /* 110D00 0020FD80 B000EBF8 */  sqc2       $vf11, 0xB0($7)
    /* 110D04 0020FD84 4000C620 */  addi       $6, $6, 0x40 /* handwritten instruction */
    /* 110D08 0020FD88 EDFFA01C */  bgtz       $5, .L0020FD40
    /* 110D0C 0020FD8C F000ECF8 */   sqc2      $vf12, 0xF0($7)
    /* 110D10 0020FD90 EB002011 */  beqz       $9, .L00210140
    /* 110D14 0020FD94 00000000 */   nop
    /* 110D18 0020FD98 52000793 */  lbu        $7, 0x52($24)
    /* 110D1C 0020FD9C 53000893 */  lbu        $8, 0x53($24)
    /* 110D20 0020FDA0 50000593 */  lbu        $5, 0x50($24)
    /* 110D24 0020FDA4 00000000 */  nop
    /* 110D28 0020FDA8 51000693 */  lbu        $6, 0x51($24)
    /* 110D2C 0020FDAC 22F8E800 */  sub        $31, $7, $8 /* handwritten instruction */
    /* 110D30 0020FDB0 F6FFA785 */  lh         $7, -0xA($13)
    /* 110D34 0020FDB4 0100A520 */  addi       $5, $5, 0x1 /* handwritten instruction */
    /* 110D38 0020FDB8 0020A948 */  qmtc2.ni   $9, $vf4
    /* 110D3C 0020FDBC 2228A600 */  sub        $5, $5, $6 /* handwritten instruction */
    /* 110D40 0020FDC0 25F8E503 */  or         $31, $31, $5
    /* 110D44 0020FDC4 00000000 */  nop
    /* 110D48 0020FDC8 00790700 */  sll        $15, $7, 4
    /* 110D4C 0020FDCC FAFFA585 */  lh         $5, -0x6($13)
    /* 110D50 0020FDD0 2078F901 */  add        $15, $15, $25 /* handwritten instruction */
    /* 110D54 0020FDD4 FEFFA685 */  lh         $6, -0x2($13)
    /* 110D58 0020FDD8 F035E07D */  sq         $0, 0x35F0($15)
    /* 110D5C 0020FDDC 0401244A */  vsubx.w    $vf4, $vf0, $vf4x
.align 2
  .L0020FDE0:
    /* 110D60 0020FDE0 F02FC1DD */  ld         $1, 0x2FF0($14)
    /* 110D64 0020FDE4 0010083C */  lui        $8, (0x1000D400 >> 16)
    /* 110D68 0020FDE8 00000000 */  nop
    /* 110D6C 0020FDEC 00000000 */  nop
    /* 110D70 0020FDF0 00D40835 */  ori        $8, $8, (0x1000D400 & 0xFFFF)
    /* 110D74 0020FDF4 00000000 */  nop
    /* 110D78 0020FDF8 F9FF2010 */  beqz       $1, .L0020FDE0
    /* 110D7C 0020FDFC 00000000 */   nop
    /* 110D80 0020FE00 10000DAD */  sw         $13, 0x10($8)
    /* 110D84 0020FE04 00362123 */  addi       $1, $25, 0x3600 /* handwritten instruction */
    /* 110D88 0020FE08 800001AD */  sw         $1, 0x80($8)
    /* 110D8C 0020FE0C 003D2E23 */  addi       $14, $25, 0x3D00 /* handwritten instruction */
    /* 110D90 0020FE10 200007AD */  sw         $7, 0x20($8)
    /* 110D94 0020FE14 00010134 */  ori        $1, $0, 0x100
    /* 110D98 0020FE18 000001AD */  sw         $1, 0x0($8)
    /* 110D9C 0020FE1C 003C2D23 */  addi       $13, $25, 0x3C00 /* handwritten instruction */
    /* 110DA0 0020FE20 C0380A00 */  sll        $7, $10, 3
    /* 110DA4 0020FE24 00302423 */  addi       $4, $25, 0x3000 /* handwritten instruction */
    /* 110DA8 0020FE28 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* 110DAC 0020FE2C 20208700 */  add        $4, $4, $7 /* handwritten instruction */
    /* 110DB0 0020FE30 19004010 */  beqz       $2, .L0020FE98
    /* 110DB4 0020FE34 000087DC */   ld        $7, 0x0($4)
    /* 110DB8 0020FE38 06008890 */  lbu        $8, 0x6($4)
    /* 110DBC 0020FE3C 884DE070 */  pextlh     $9, $7, $0
    /* 110DC0 0020FE40 0000A048 */  qmtc2.ni   $0, $vf0
    /* 110DC4 0020FE44 7E4B0970 */  psrlw      $9, $9, 13
.align 2
  .L0020FE48:
    /* 110DC8 0020FE48 0030A948 */  qmtc2.ni   $9, $vf6
    /* 110DCC 0020FE4C BE670700 */  dsrl32     $12, $7, 30
    /* 110DD0 0020FE50 80590800 */  sll        $11, $8, 6
    /* 110DD4 0020FE54 080087DC */  ld         $7, 0x8($4)
    /* 110DD8 0020FE58 3F31C54B */  vitof15.xyz $vf5, $vf6
    /* 110DDC 0020FE5C 20587901 */  add        $11, $11, $25 /* handwritten instruction */
    /* 110DE0 0020FE60 08008420 */  addi       $4, $4, 0x8 /* handwritten instruction */
    /* 110DE4 0020FE64 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 110DE8 0020FE68 06008890 */  lbu        $8, 0x6($4)
    /* 110DEC 0020FE6C 884DE070 */  pextlh     $9, $7, $0
    /* 110DF0 0020FE70 7E4B0970 */  psrlw      $9, $9, 13
    /* 110DF4 0020FE74 0000ABAD */  sw         $11, 0x0($13)
    /* 110DF8 0020FE78 0400AD21 */  addi       $13, $13, 0x4 /* handwritten instruction */
    /* 110DFC 0020FE7C FFFF8C21 */  addi       $12, $12, -0x1 /* handwritten instruction */
    /* 110E00 0020FE80 1C006CAD */  sw         $12, 0x1C($11)
    /* 110E04 0020FE84 00000000 */  nop
    /* 110E08 0020FE88 000065F9 */  sqc2       $vf5, 0x0($11)
    /* 110E0C 0020FE8C FCFF0120 */  addi       $1, $0, -0x4 /* handwritten instruction */
    /* 110E10 0020FE90 EDFF401C */  bgtz       $2, .L0020FE48
    /* 110E14 0020FE94 0C0061AD */   sw        $1, 0xC($11)
.align 2
  .L0020FE98:
    /* 110E18 0020FE98 17006010 */  beqz       $3, .L0020FEF8
    /* 110E1C 0020FE9C 000087DC */   ld        $7, 0x0($4)
    /* 110E20 0020FEA0 06008890 */  lbu        $8, 0x6($4)
    /* 110E24 0020FEA4 3C03254A */  vmove.w    $vf5, $vf0
    /* 110E28 0020FEA8 883DE070 */  pextlh     $7, $7, $0
    /* 110E2C 0020FEAC 3F3C0770 */  psraw      $7, $7, 16
.align 2
  .L0020FEB0:
    /* 110E30 0020FEB0 0030A748 */  qmtc2.ni   $7, $vf6
    /* 110E34 0020FEB4 80610800 */  sll        $12, $8, 6
    /* 110E38 0020FEB8 20609901 */  add        $12, $12, $25 /* handwritten instruction */
    /* 110E3C 0020FEBC 080087DC */  ld         $7, 0x8($4)
    /* 110E40 0020FEC0 3C31C54B */  vitof0.xyz $vf5, $vf6
    /* 110E44 0020FEC4 08008420 */  addi       $4, $4, 0x8 /* handwritten instruction */
    /* 110E48 0020FEC8 06008890 */  lbu        $8, 0x6($4)
    /* 110E4C 0020FECC 883DE070 */  pextlh     $7, $7, $0
    /* 110E50 0020FED0 0000CCAD */  sw         $12, 0x0($14)
    /* 110E54 0020FED4 0400CE21 */  addi       $14, $14, 0x4 /* handwritten instruction */
    /* 110E58 0020FED8 2C008B8D */  lw         $11, 0x2C($12)
    /* 110E5C 0020FEDC 3F3C0770 */  psraw      $7, $7, 16
    /* 110E60 0020FEE0 200085F9 */  sqc2       $vf5, 0x20($12)
    /* 110E64 0020FEE4 FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* 110E68 0020FEE8 2C008BAD */  sw         $11, 0x2C($12)
    /* 110E6C 0020FEEC FCFF0120 */  addi       $1, $0, -0x4 /* handwritten instruction */
    /* 110E70 0020FEF0 EFFF601C */  bgtz       $3, .L0020FEB0
    /* 110E74 0020FEF4 3C0081AD */   sw        $1, 0x3C($12)
.align 2
  .L0020FEF8:
    /* 110E78 0020FEF8 F035E1DD */  ld         $1, 0x35F0($15)
    /* 110E7C 0020FEFC C0380A00 */  sll        $7, $10, 3
    /* 110E80 0020FF00 00000000 */  nop
    /* 110E84 0020FF04 00000000 */  nop
    /* 110E88 0020FF08 00362423 */  addi       $4, $25, 0x3600 /* handwritten instruction */
    /* 110E8C 0020FF0C 00000000 */  nop
    /* 110E90 0020FF10 F9FF2010 */  beqz       $1, .L0020FEF8
    /* 110E94 0020FF14 20208700 */   add       $4, $4, $7 /* handwritten instruction */
    /* 110E98 0020FF18 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* 110E9C 0020FF1C 00000000 */  nop
    /* 110EA0 0020FF20 1900A010 */  beqz       $5, .L0020FF88
    /* 110EA4 0020FF24 000087DC */   ld        $7, 0x0($4)
    /* 110EA8 0020FF28 06008890 */  lbu        $8, 0x6($4)
    /* 110EAC 0020FF2C 884DE070 */  pextlh     $9, $7, $0
    /* 110EB0 0020FF30 0000A048 */  qmtc2.ni   $0, $vf0
    /* 110EB4 0020FF34 7E4B0970 */  psrlw      $9, $9, 13
.align 2
  .L0020FF38:
    /* 110EB8 0020FF38 0030A948 */  qmtc2.ni   $9, $vf6
    /* 110EBC 0020FF3C BE670700 */  dsrl32     $12, $7, 30
    /* 110EC0 0020FF40 80590800 */  sll        $11, $8, 6
    /* 110EC4 0020FF44 080087DC */  ld         $7, 0x8($4)
    /* 110EC8 0020FF48 3F31C54B */  vitof15.xyz $vf5, $vf6
    /* 110ECC 0020FF4C 20587901 */  add        $11, $11, $25 /* handwritten instruction */
    /* 110ED0 0020FF50 0E008890 */  lbu        $8, 0xE($4)
    /* 110ED4 0020FF54 08008420 */  addi       $4, $4, 0x8 /* handwritten instruction */
    /* 110ED8 0020FF58 884DE070 */  pextlh     $9, $7, $0
    /* 110EDC 0020FF5C 0000ABAD */  sw         $11, 0x0($13)
    /* 110EE0 0020FF60 7E4B0970 */  psrlw      $9, $9, 13
    /* 110EE4 0020FF64 0C00618D */  lw         $1, 0xC($11)
    /* 110EE8 0020FF68 FFFFA520 */  addi       $5, $5, -0x1 /* handwritten instruction */
    /* 110EEC 0020FF6C FFFF8C21 */  addi       $12, $12, -0x1 /* handwritten instruction */
    /* 110EF0 0020FF70 100065F9 */  sqc2       $vf5, 0x10($11)
    /* 110EF4 0020FF74 00000000 */  nop
    /* 110EF8 0020FF78 1C006CAD */  sw         $12, 0x1C($11)
    /* 110EFC 0020FF7C 0400AD21 */  addi       $13, $13, 0x4 /* handwritten instruction */
    /* 110F00 0020FF80 EDFFA014 */  bnez       $5, .L0020FF38
    /* 110F04 0020FF84 2068A101 */   add       $13, $13, $1 /* handwritten instruction */
.align 2
  .L0020FF88:
    /* 110F08 0020FF88 1500C010 */  beqz       $6, .L0020FFE0
    /* 110F0C 0020FF8C 000087DC */   ld        $7, 0x0($4)
    /* 110F10 0020FF90 06008890 */  lbu        $8, 0x6($4)
    /* 110F14 0020FF94 3C03254A */  vmove.w    $vf5, $vf0
    /* 110F18 0020FF98 883DE070 */  pextlh     $7, $7, $0
    /* 110F1C 0020FF9C 3F3C0770 */  psraw      $7, $7, 16
.align 2
  .L0020FFA0:
    /* 110F20 0020FFA0 0030A748 */  qmtc2.ni   $7, $vf6
    /* 110F24 0020FFA4 80610800 */  sll        $12, $8, 6
    /* 110F28 0020FFA8 20609901 */  add        $12, $12, $25 /* handwritten instruction */
    /* 110F2C 0020FFAC 080087DC */  ld         $7, 0x8($4)
    /* 110F30 0020FFB0 3C31C54B */  vitof0.xyz $vf5, $vf6
    /* 110F34 0020FFB4 08008420 */  addi       $4, $4, 0x8 /* handwritten instruction */
    /* 110F38 0020FFB8 06008890 */  lbu        $8, 0x6($4)
    /* 110F3C 0020FFBC 883DE070 */  pextlh     $7, $7, $0
    /* 110F40 0020FFC0 0000CCAD */  sw         $12, 0x0($14)
    /* 110F44 0020FFC4 3F3C0770 */  psraw      $7, $7, 16
    /* 110F48 0020FFC8 3C00818D */  lw         $1, 0x3C($12)
    /* 110F4C 0020FFCC 0400CE21 */  addi       $14, $14, 0x4 /* handwritten instruction */
    /* 110F50 0020FFD0 300085F9 */  sqc2       $vf5, 0x30($12)
    /* 110F54 0020FFD4 FFFFC620 */  addi       $6, $6, -0x1 /* handwritten instruction */
    /* 110F58 0020FFD8 F1FFC01C */  bgtz       $6, .L0020FFA0
    /* 110F5C 0020FFDC 2070C101 */   add       $14, $14, $1 /* handwritten instruction */
.align 2
  .L0020FFE0:
    /* 110F60 0020FFE0 003C2123 */  addi       $1, $25, 0x3C00 /* handwritten instruction */
    /* 110F64 0020FFE4 00000000 */  nop
    /* 110F68 0020FFE8 0000228C */  lw         $2, 0x0($1)
    /* 110F6C 0020FFEC 001E2323 */  addi       $3, $25, 0x1E00 /* handwritten instruction */
    /* 110F70 0020FFF0 0F002D10 */  beq        $1, $13, .L00210030
    /* 110F74 0020FFF4 0000A3AD */   sw        $3, 0x0($13)
    /* 110F78 0020FFF8 000045D8 */  lqc2       $vf5, 0x0($2)
    /* 110F7C 0020FFFC 100046D8 */  lqc2       $vf6, 0x10($2)
.align 2
  .L00210000:
    /* 110F80 00210000 BF29C44B */  .word      0x4BC429BF    # vmulaw.xyz ACC, $vf5, $vf4w
    /* 110F84 00210004 00004320 */  addi       $3, $2, 0x0 /* handwritten instruction */
    /* 110F88 00210008 C831C44B */  vmaddx.xyz $vf7, $vf6, $vf4x
    /* 110F8C 0021000C 1C00448C */  lw         $4, 0x1C($2)
    /* 110F90 00210010 0400228C */  lw         $2, 0x4($1)
    /* 110F94 00210014 04002120 */  addi       $1, $1, 0x4 /* handwritten instruction */
    /* 110F98 00210018 000045D8 */  lqc2       $vf5, 0x0($2)
    /* 110F9C 0021001C 100046D8 */  lqc2       $vf6, 0x10($2)
    /* 110FA0 00210020 100067F8 */  sqc2       $vf7, 0x10($3)
    /* 110FA4 00210024 00000000 */  nop
    /* 110FA8 00210028 F5FF2D14 */  bne        $1, $13, .L00210000
    /* 110FAC 0021002C 1C0064AC */   sw        $4, 0x1C($3)
.align 2
  .L00210030:
    /* 110FB0 00210030 003D2123 */  addi       $1, $25, 0x3D00 /* handwritten instruction */
    /* 110FB4 00210034 00000000 */  nop
    /* 110FB8 00210038 0000228C */  lw         $2, 0x0($1)
    /* 110FBC 0021003C 001E2323 */  addi       $3, $25, 0x1E00 /* handwritten instruction */
    /* 110FC0 00210040 0F002E10 */  beq        $1, $14, .L00210080
    /* 110FC4 00210044 0000C3AD */   sw        $3, 0x0($14)
    /* 110FC8 00210048 200045D8 */  lqc2       $vf5, 0x20($2)
    /* 110FCC 0021004C 300046D8 */  lqc2       $vf6, 0x30($2)
.align 2
  .L00210050:
    /* 110FD0 00210050 BF29C44B */  .word      0x4BC429BF    # vmulaw.xyz ACC, $vf5, $vf4w
    /* 110FD4 00210054 00004320 */  addi       $3, $2, 0x0 /* handwritten instruction */
    /* 110FD8 00210058 C831C44B */  vmaddx.xyz $vf7, $vf6, $vf4x
    /* 110FDC 0021005C 2C00448C */  lw         $4, 0x2C($2)
    /* 110FE0 00210060 0400228C */  lw         $2, 0x4($1)
    /* 110FE4 00210064 04002120 */  addi       $1, $1, 0x4 /* handwritten instruction */
    /* 110FE8 00210068 200045D8 */  lqc2       $vf5, 0x20($2)
    /* 110FEC 0021006C 300046D8 */  lqc2       $vf6, 0x30($2)
    /* 110FF0 00210070 200067F8 */  sqc2       $vf7, 0x20($3)
    /* 110FF4 00210074 00000000 */  nop
    /* 110FF8 00210078 F5FF2E14 */  bne        $1, $14, .L00210050
    /* 110FFC 0021007C 2C0064AC */   sw        $4, 0x2C($3)
.align 2
  .L00210080:
    /* 111000 00210080 00302123 */  addi       $1, $25, 0x3000 /* handwritten instruction */
    /* 111004 00210084 00362223 */  addi       $2, $25, 0x3600 /* handwritten instruction */
    /* 111008 00210088 00002678 */  lq         $6, 0x0($1)
    /* 11100C 0021008C 00004321 */  addi       $3, $10, 0x0 /* handwritten instruction */
    /* 111010 00210090 00004878 */  lq         $8, 0x0($2)
    /* 111014 00210094 80FF2423 */  addi       $4, $25, -0x80 /* handwritten instruction */
    /* 111018 00210098 1101E017 */  bnez       $31, .L002104E0
    /* 11101C 0021009C 882DC070 */   pextlh    $5, $6, $0
    /* 111020 002100A0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111024 002100A4 3F2C0570 */  psraw      $5, $5, 16
    /* 111028 002100A8 0028A548 */  qmtc2.ni   $5, $vf5
    /* 11102C 002100AC A835C070 */  pextuh     $6, $6, $0
.align 2
  .L002100B0:
    /* 111030 002100B0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111034 002100B4 3F340670 */  psraw      $6, $6, 16
    /* 111038 002100B8 0030A648 */  qmtc2.ni   $6, $vf6
    /* 11103C 002100BC 883D0071 */  pextlh     $7, $8, $0
    /* 111040 002100C0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111044 002100C4 3F3C0770 */  psraw      $7, $7, 16
    /* 111048 002100C8 0038A748 */  qmtc2.ni   $7, $vf7
    /* 11104C 002100CC A8450071 */  pextuh     $8, $8, $0
    /* 111050 002100D0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111054 002100D4 3F440870 */  psraw      $8, $8, 16
    /* 111058 002100D8 0040A848 */  qmtc2.ni   $8, $vf8
    /* 11105C 002100DC 80008420 */  addi       $4, $4, 0x80 /* handwritten instruction */
    /* 111060 002100E0 3F29E54B */  vitof15.xyzw $vf5, $vf5
    /* 111064 002100E4 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
    /* 111068 002100E8 3F31E64B */  vitof15.xyzw $vf6, $vf6
    /* 11106C 002100EC 10004220 */  addi       $2, $2, 0x10 /* handwritten instruction */
    /* 111070 002100F0 3F39E74B */  vitof15.xyzw $vf7, $vf7
    /* 111074 002100F4 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 111078 002100F8 BF29E44B */  .word      0x4BE429BF    # vmulaw.xyzw ACC, $vf5, $vf4w
    /* 11107C 002100FC 483AE44B */  vmaddx.xyzw $vf9, $vf7, $vf4x
    /* 111080 00210100 BF31E44B */  .word      0x4BE431BF    # vmulaw.xyzw ACC, $vf6, $vf4w
    /* 111084 00210104 00002678 */  lq         $6, 0x0($1)
    /* 111088 00210108 8842E44B */  vmaddx.xyzw $vf10, $vf8, $vf4x
    /* 11108C 0021010C 00004878 */  lq         $8, 0x0($2)
    /* 111090 00210110 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111094 00210114 882DC070 */  pextlh     $5, $6, $0
    /* 111098 00210118 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11109C 0021011C 3F2C0570 */  psraw      $5, $5, 16
    /* 1110A0 00210120 0028A548 */  qmtc2.ni   $5, $vf5
    /* 1110A4 00210124 A835C070 */  pextuh     $6, $6, $0
    /* 1110A8 00210128 000089F8 */  sqc2       $vf9, 0x0($4)
    /* 1110AC 0021012C FEFF6320 */  addi       $3, $3, -0x2 /* handwritten instruction */
    /* 1110B0 00210130 DFFF601C */  bgtz       $3, .L002100B0
    /* 1110B4 00210134 40008AF8 */   sqc2      $vf10, 0x40($4)
    /* 1110B8 00210138 A8400808 */  j          func_002102A0
    /* 1110BC 0021013C 00000000 */   nop
.align 2
  .L00210140:
    /* 1110C0 00210140 F02FC1DD */  ld         $1, 0x2FF0($14)
    /* 1110C4 00210144 C0280A00 */  sll        $5, $10, 3
    /* 1110C8 00210148 00302C23 */  addi       $12, $25, 0x3000 /* handwritten instruction */
    /* 1110CC 0021014C 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* 1110D0 00210150 00000000 */  nop
    /* 1110D4 00210154 00000000 */  nop
    /* 1110D8 00210158 F9FF2010 */  beqz       $1, .L00210140
    /* 1110DC 0021015C 20608501 */   add       $12, $12, $5 /* handwritten instruction */
    /* 1110E0 00210160 15004010 */  beqz       $2, .L002101B8
    /* 1110E4 00210164 000085DD */   ld        $5, 0x0($12)
    /* 1110E8 00210168 06008691 */  lbu        $6, 0x6($12)
    /* 1110EC 0021016C 883DA070 */  pextlh     $7, $5, $0
    /* 1110F0 00210170 0000A048 */  qmtc2.ni   $0, $vf0
    /* 1110F4 00210174 7E3B0770 */  psrlw      $7, $7, 13
.align 2
  .L00210178:
    /* 1110F8 00210178 0030A748 */  qmtc2.ni   $7, $vf6
    /* 1110FC 0021017C BE4F0500 */  dsrl32     $9, $5, 30
    /* 111100 00210180 80410600 */  sll        $8, $6, 6
    /* 111104 00210184 080085DD */  ld         $5, 0x8($12)
    /* 111108 00210188 3F31C54B */  vitof15.xyz $vf5, $vf6
    /* 11110C 0021018C 20401901 */  add        $8, $8, $25 /* handwritten instruction */
    /* 111110 00210190 08008C21 */  addi       $12, $12, 0x8 /* handwritten instruction */
    /* 111114 00210194 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 111118 00210198 06008691 */  lbu        $6, 0x6($12)
    /* 11111C 0021019C 883DA070 */  pextlh     $7, $5, $0
    /* 111120 002101A0 FFFF2921 */  addi       $9, $9, -0x1 /* handwritten instruction */
    /* 111124 002101A4 00000000 */  nop
    /* 111128 002101A8 7E3B0770 */  psrlw      $7, $7, 13
    /* 11112C 002101AC 100005F9 */  sqc2       $vf5, 0x10($8)
    /* 111130 002101B0 F1FF401C */  bgtz       $2, .L00210178
    /* 111134 002101B4 1C0009AD */   sw        $9, 0x1C($8)
.align 2
  .L002101B8:
    /* 111138 002101B8 13006010 */  beqz       $3, .L00210208
    /* 11113C 002101BC 000085DD */   ld        $5, 0x0($12)
    /* 111140 002101C0 06008691 */  lbu        $6, 0x6($12)
    /* 111144 002101C4 3C03254A */  vmove.w    $vf5, $vf0
    /* 111148 002101C8 882DA070 */  pextlh     $5, $5, $0
    /* 11114C 002101CC 3F2C0570 */  psraw      $5, $5, 16
.align 2
  .L002101D0:
    /* 111150 002101D0 0030A548 */  qmtc2.ni   $5, $vf6
    /* 111154 002101D4 80410600 */  sll        $8, $6, 6
    /* 111158 002101D8 20401901 */  add        $8, $8, $25 /* handwritten instruction */
    /* 11115C 002101DC 080085DD */  ld         $5, 0x8($12)
    /* 111160 002101E0 3C31C54B */  vitof0.xyz $vf5, $vf6
    /* 111164 002101E4 08008C21 */  addi       $12, $12, 0x8 /* handwritten instruction */
    /* 111168 002101E8 06008691 */  lbu        $6, 0x6($12)
    /* 11116C 002101EC 882DA070 */  pextlh     $5, $5, $0
    /* 111170 002101F0 2C00078D */  lw         $7, 0x2C($8)
    /* 111174 002101F4 3F2C0570 */  psraw      $5, $5, 16
    /* 111178 002101F8 200005F9 */  sqc2       $vf5, 0x20($8)
    /* 11117C 002101FC FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* 111180 00210200 F3FF601C */  bgtz       $3, .L002101D0
    /* 111184 00210204 2C0007AD */   sw        $7, 0x2C($8)
.align 2
  .L00210208:
    /* 111188 00210208 00302123 */  addi       $1, $25, 0x3000 /* handwritten instruction */
    /* 11118C 0021020C 00FF2223 */  addi       $2, $25, -0x100 /* handwritten instruction */
    /* 111190 00210210 00002678 */  lq         $6, 0x0($1)
    /* 111194 00210214 00004321 */  addi       $3, $10, 0x0 /* handwritten instruction */
    /* 111198 00210218 10002878 */  lq         $8, 0x10($1)
    /* 11119C 0021021C 00000000 */  nop
.align 2
  .L00210220:
    /* 1111A0 00210220 0000A048 */  qmtc2.ni   $0, $vf0
    /* 1111A4 00210224 882DC070 */  pextlh     $5, $6, $0
    /* 1111A8 00210228 0000A048 */  qmtc2.ni   $0, $vf0
    /* 1111AC 0021022C 3F2C0570 */  psraw      $5, $5, 16
    /* 1111B0 00210230 0028A548 */  qmtc2.ni   $5, $vf5
    /* 1111B4 00210234 A835C070 */  pextuh     $6, $6, $0
    /* 1111B8 00210238 0000A048 */  qmtc2.ni   $0, $vf0
    /* 1111BC 0021023C 3F340670 */  psraw      $6, $6, 16
    /* 1111C0 00210240 0030A648 */  qmtc2.ni   $6, $vf6
    /* 1111C4 00210244 883D0071 */  pextlh     $7, $8, $0
    /* 1111C8 00210248 0000A048 */  qmtc2.ni   $0, $vf0
    /* 1111CC 0021024C 3F3C0770 */  psraw      $7, $7, 16
    /* 1111D0 00210250 0038A748 */  qmtc2.ni   $7, $vf7
    /* 1111D4 00210254 A8450071 */  pextuh     $8, $8, $0
    /* 1111D8 00210258 0000A048 */  qmtc2.ni   $0, $vf0
    /* 1111DC 0021025C 3F440870 */  psraw      $8, $8, 16
    /* 1111E0 00210260 0040A848 */  qmtc2.ni   $8, $vf8
    /* 1111E4 00210264 00000000 */  nop
    /* 1111E8 00210268 3F29E54B */  vitof15.xyzw $vf5, $vf5
    /* 1111EC 0021026C 20002120 */  addi       $1, $1, 0x20 /* handwritten instruction */
    /* 1111F0 00210270 3F31E64B */  vitof15.xyzw $vf6, $vf6
    /* 1111F4 00210274 00014220 */  addi       $2, $2, 0x100 /* handwritten instruction */
    /* 1111F8 00210278 3F39E74B */  vitof15.xyzw $vf7, $vf7
    /* 1111FC 0021027C 00002678 */  lq         $6, 0x0($1)
    /* 111200 00210280 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 111204 00210284 10002878 */  lq         $8, 0x10($1)
    /* 111208 00210288 000045F8 */  sqc2       $vf5, 0x0($2)
    /* 11120C 0021028C 400046F8 */  sqc2       $vf6, 0x40($2)
    /* 111210 00210290 800047F8 */  sqc2       $vf7, 0x80($2)
    /* 111214 00210294 FCFF6320 */  addi       $3, $3, -0x4 /* handwritten instruction */
    /* 111218 00210298 E1FF601C */  bgtz       $3, .L00210220
    /* 11121C 0021029C C00048F8 */   sqc2      $vf8, 0xC0($2)
.align 2
  alabel func_002102A0
    /* 111220 002102A0 60000FDF */  ld         $15, 0x60($24)
    /* 111224 002102A4 A9C32073 */  pcpyud     $24, $25, $0
    /* 111228 002102A8 00020133 */  andi       $1, $24, 0x200
    /* 11122C 002102AC 00000000 */  nop
    /* 111230 002102B0 EB00E015 */  bnez       $15, .L00210660
    /* 111234 002102B4 02700F00 */   srl       $14, $15, 0
.align 2
  alabel func_002102B8
    /* 111238 002102B8 00000C20 */  addi       $12, $0, 0x0 /* handwritten instruction */
    /* 11123C 002102BC 00002B23 */  addi       $11, $25, 0x0 /* handwritten instruction */
    /* 111240 002102C0 00202923 */  addi       $9, $25, 0x2000 /* handwritten instruction */
    /* 111244 002102C4 10002D23 */  addi       $13, $25, 0x10 /* handwritten instruction */
    /* 111248 002102C8 00282E23 */  addi       $14, $25, 0x2800 /* handwritten instruction */
    /* 11124C 002102CC 002C2F23 */  addi       $15, $25, 0x2C00 /* handwritten instruction */
    /* 111250 002102D0 00800720 */  addi       $7, $0, -0x8000 /* handwritten instruction */
    /* 111254 002102D4 FF7F0820 */  addi       $8, $0, 0x7FFF /* handwritten instruction */
    /* 111258 002102D8 883CE770 */  pextlw     $7, $7, $7
    /* 11125C 002102DC 000061D9 */  lqc2       $vf1, 0x0($11)
    /* 111260 002102E0 88440871 */  pextlw     $8, $8, $8
    /* 111264 002102E4 100062D9 */  lqc2       $vf2, 0x10($11)
    /* 111268 002102E8 883CE770 */  pextlw     $7, $7, $7
    /* 11126C 002102EC 200063D9 */  lqc2       $vf3, 0x20($11)
    /* 111270 002102F0 88440871 */  pextlw     $8, $8, $8
    /* 111274 002102F4 000024D9 */  lqc2       $vf4, 0x0($9)
    /* 111278 002102F8 00100534 */  ori        $5, $0, 0x1000
    /* 11127C 002102FC E92E0570 */  pcpyh      $5, $5
    /* 111280 00210300 382C0500 */  dsll       $5, $5, 16
    /* 111284 00210304 FFFF0634 */  ori        $6, $0, 0xFFFF
    /* 111288 00210308 8834C670 */  pextlw     $6, $6, $6
    /* 11128C 0021030C 8834C670 */  pextlw     $6, $6, $6
.align 2
  .L00210310:
    /* 111290 00210310 7F09E14B */  vftoi15.xyzw $vf1, $vf1
    /* 111294 00210314 7F11E24B */  vftoi15.xyzw $vf2, $vf2
    /* 111298 00210318 7C19E34B */  vftoi0.xyzw $vf3, $vf3
    /* 11129C 0021031C 7C21E44B */  vftoi0.xyzw $vf4, $vf4
    /* 1112A0 00210320 00082148 */  qmfc2.ni   $1, $vf1
    /* 1112A4 00210324 00102248 */  qmfc2.ni   $2, $vf2
    /* 1112A8 00210328 00182348 */  qmfc2.ni   $3, $vf3
    /* 1112AC 0021032C C8082770 */  pmaxw      $1, $1, $7
    /* 1112B0 00210330 00202448 */  qmfc2.ni   $4, $vf4
    /* 1112B4 00210334 E8082870 */  pminw      $1, $1, $8
    /* 1112B8 00210338 C80D0170 */  ppach      $1, $0, $1
    /* 1112BC 0021033C 400061D9 */  lqc2       $vf1, 0x40($11)
    /* 1112C0 00210340 FE100270 */  psrlw      $2, $2, 3
    /* 1112C4 00210344 500062D9 */  lqc2       $vf2, 0x50($11)
    /* 1112C8 00210348 C8104070 */  pmaxw      $2, $2, $0
    /* 1112CC 0021034C 600063D9 */  lqc2       $vf3, 0x60($11)
    /* 1112D0 00210350 E8104670 */  pminw      $2, $2, $6
    /* 1112D4 00210354 100024D9 */  lqc2       $vf4, 0x10($9)
    /* 1112D8 00210358 C8150270 */  ppach      $2, $0, $2
    /* 1112DC 0021035C 0000A1FD */  sd         $1, 0x0($13)
    /* 1112E0 00210360 380C0200 */  dsll       $1, $2, 16
    /* 1112E4 00210364 0800AD21 */  addi       $13, $13, 0x8 /* handwritten instruction */
    /* 1112E8 00210368 09002510 */  beq        $1, $5, .L00210390
    /* 1112EC 0021036C C81D0370 */   ppach     $3, $0, $3
    /* 1112F0 00210370 1C00618D */  lw         $1, 0x1C($11)
    /* 1112F4 00210374 00000000 */  nop
    /* 1112F8 00210378 0000C2FD */  sd         $2, 0x0($14)
    /* 1112FC 0021037C 80002130 */  andi       $1, $1, 0x80
    /* 111300 00210380 0600CCA1 */  sb         $12, 0x6($14)
    /* 111304 00210384 80002138 */  xori       $1, $1, 0x80
    /* 111308 00210388 0700C1A1 */  sb         $1, 0x7($14)
    /* 11130C 0021038C 0800CE21 */  addi       $14, $14, 0x8 /* handwritten instruction */
.align 2
  .L00210390:
    /* 111310 00210390 C8250470 */  ppach      $4, $0, $4
    /* 111314 00210394 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111318 00210398 380C0300 */  dsll       $1, $3, 16
    /* 11131C 0021039C 38140400 */  dsll       $2, $4, 16
    /* 111320 002103A0 05002210 */  beq        $1, $2, .L002103B8
    /* 111324 002103A4 00000000 */   nop
    /* 111328 002103A8 0000E3FD */  sd         $3, 0x0($15)
    /* 11132C 002103AC 00000000 */  nop
    /* 111330 002103B0 0600ECA5 */  sh         $12, 0x6($15)
    /* 111334 002103B4 0800EF21 */  addi       $15, $15, 0x8 /* handwritten instruction */
.align 2
  .L002103B8:
    /* 111338 002103B8 10002921 */  addi       $9, $9, 0x10 /* handwritten instruction */
    /* 11133C 002103BC 01008C21 */  addi       $12, $12, 0x1 /* handwritten instruction */
    /* 111340 002103C0 D3FF8A15 */  bne        $12, $10, .L00210310
    /* 111344 002103C4 40006B21 */   addi      $11, $11, 0x40 /* handwritten instruction */
    /* 111348 002103C8 00282B23 */  addi       $11, $25, 0x2800 /* handwritten instruction */
    /* 11134C 002103CC 002C2C23 */  addi       $12, $25, 0x2C00 /* handwritten instruction */
    /* 111350 002103D0 2258CB01 */  sub        $11, $14, $11 /* handwritten instruction */
    /* 111354 002103D4 2260EC01 */  sub        $12, $15, $12 /* handwritten instruction */
    /* 111358 002103D8 C0080A00 */  sll        $1, $10, 3
    /* 11135C 002103DC C2200B00 */  srl        $4, $11, 3
    /* 111360 002103E0 20102B00 */  add        $2, $1, $11 /* handwritten instruction */
    /* 111364 002103E4 C2280C00 */  srl        $5, $12, 3
    /* 111368 002103E8 20184C00 */  add        $3, $2, $12 /* handwritten instruction */
    /* 11136C 002103EC 080021A7 */  sh         $1, 0x8($25)
    /* 111370 002103F0 08006320 */  addi       $3, $3, 0x8 /* handwritten instruction */
    /* 111374 002103F4 0C0022A7 */  sh         $2, 0xC($25)
    /* 111378 002103F8 02190300 */  srl        $3, $3, 4
    /* 11137C 002103FC 000020FF */  sd         $0, 0x0($25)
    /* 111380 00210400 060023A7 */  sh         $3, 0x6($25)
    /* 111384 00210404 01006320 */  addi       $3, $3, 0x1 /* handwritten instruction */
    /* 111388 00210408 0A0024A7 */  sh         $4, 0xA($25)
    /* 11138C 0021040C 0E0025A7 */  sh         $5, 0xE($25)
    /* 111390 00210410 09008010 */  beqz       $4, .L00210438
    /* 111394 00210414 00282C23 */   addi      $12, $25, 0x2800 /* handwritten instruction */
.align 2
  .L00210418:
    /* 111398 00210418 000081DD */  ld         $1, 0x0($12)
    /* 11139C 0021041C 08008C21 */  addi       $12, $12, 0x8 /* handwritten instruction */
    /* 1113A0 00210420 00000000 */  nop
    /* 1113A4 00210424 00000000 */  nop
    /* 1113A8 00210428 0000A1FD */  sd         $1, 0x0($13)
    /* 1113AC 0021042C 0800AD21 */  addi       $13, $13, 0x8 /* handwritten instruction */
    /* 1113B0 00210430 F9FF8E15 */  bne        $12, $14, .L00210418
    /* 1113B4 00210434 00000000 */   nop
.align 2
  .L00210438:
    /* 1113B8 00210438 0900A010 */  beqz       $5, .L00210460
    /* 1113BC 0021043C 002C2C23 */   addi      $12, $25, 0x2C00 /* handwritten instruction */
.align 2
  .L00210440:
    /* 1113C0 00210440 000081DD */  ld         $1, 0x0($12)
    /* 1113C4 00210444 08008C21 */  addi       $12, $12, 0x8 /* handwritten instruction */
    /* 1113C8 00210448 00000000 */  nop
    /* 1113CC 0021044C 00000000 */  nop
    /* 1113D0 00210450 0000A1FD */  sd         $1, 0x0($13)
    /* 1113D4 00210454 0800AD21 */  addi       $13, $13, 0x8 /* handwritten instruction */
    /* 1113D8 00210458 F9FF8F15 */  bne        $12, $15, .L00210440
    /* 1113DC 0021045C 00000000 */   nop
.align 2
  .L00210460:
    /* 1113E0 00210460 01000120 */  addi       $1, $0, 0x1 /* handwritten instruction */
    /* 1113E4 00210464 00100A3C */  lui        $10, (0x1000D000 >> 16)
    /* 1113E8 00210468 0000A1FD */  sd         $1, 0x0($13)
    /* 1113EC 0021046C 00D04A35 */  ori        $10, $10, (0x1000D000 & 0xFFFF)
    /* 1113F0 00210470 FF001833 */  andi       $24, $24, 0xFF
    /* 1113F4 00210474 C00A1800 */  sll        $1, $24, 11
    /* 1113F8 00210478 800040AD */  sw         $0, 0x80($10)
    /* 1113FC 0021047C 1B00183C */  lui        $24, %hi(D_001AAF40)
    /* 111400 00210480 40AF1827 */  addiu      $24, $24, %lo(D_001AAF40)
    /* 111404 00210484 200043AD */  sw         $3, 0x20($10)
    /* 111408 00210488 20C00103 */  add        $24, $24, $1 /* handwritten instruction */
    /* 11140C 0021048C 00000000 */  nop
    /* 111410 00210490 100058AD */  sw         $24, 0x10($10)
    /* 111414 00210494 00010134 */  ori        $1, $0, 0x100
    /* 111418 00210498 101041AD */  sw         $1, 0x1010($10)
    /* 11141C 0021049C 00010120 */  addi       $1, $0, 0x100 /* handwritten instruction */
    /* 111420 002104A0 000041AD */  sw         $1, 0x0($10)
    /* 111424 002104A4 00000000 */  nop
    /* 111428 002104A8 0F040000 */  sync.p
    /* 11142C 002104AC 0F000000 */  sync
.align 2
  .L002104B0:
    /* 111430 002104B0 00000000 */  nop
    /* 111434 002104B4 00000000 */  nop
    /* 111438 002104B8 00000000 */  nop
    /* 11143C 002104BC 00000000 */  nop
    /* 111440 002104C0 00000000 */  nop
    /* 111444 002104C4 00000000 */  nop
    /* 111448 002104C8 F9FF0041 */  bc0f       .L002104B0 /* handwritten instruction */
    /* 11144C 002104CC 00000000 */   nop
    /* 111450 002104D0 A9FBE073 */  pcpyud     $31, $31, $0
    /* 111454 002104D4 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111458 002104D8 0800E003 */  jr         $31
    /* 11145C 002104DC 00000000 */   nop
.align 2
  .L002104E0:
    /* 111460 002104E0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111464 002104E4 3F2C0570 */  psraw      $5, $5, 16
    /* 111468 002104E8 0028A548 */  qmtc2.ni   $5, $vf5
    /* 11146C 002104EC A835C070 */  pextuh     $6, $6, $0
    /* 111470 002104F0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111474 002104F4 3F340670 */  psraw      $6, $6, 16
    /* 111478 002104F8 0030A648 */  qmtc2.ni   $6, $vf6
    /* 11147C 002104FC 883D0071 */  pextlh     $7, $8, $0
    /* 111480 00210500 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111484 00210504 3F3C0770 */  psraw      $7, $7, 16
    /* 111488 00210508 0038A748 */  qmtc2.ni   $7, $vf7
    /* 11148C 0021050C A8450071 */  pextuh     $8, $8, $0
    /* 111490 00210510 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111494 00210514 3F440870 */  psraw      $8, $8, 16
    /* 111498 00210518 0040A848 */  qmtc2.ni   $8, $vf8
    /* 11149C 0021051C 00000000 */  nop
.align 2
  .L00210520:
    /* 1114A0 00210520 3F29E54B */  vitof15.xyzw $vf5, $vf5
    /* 1114A4 00210524 3F39E74B */  vitof15.xyzw $vf7, $vf7
    /* 1114A8 00210528 3F31E64B */  vitof15.xyzw $vf6, $vf6
    /* 1114AC 0021052C 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 1114B0 00210530 5B29E44B */  vmulw.xyzw $vf5, $vf5, $vf4w
    /* 1114B4 00210534 D839E44B */  vmulx.xyzw $vf7, $vf7, $vf4x
    /* 1114B8 00210538 9B31E44B */  vmulw.xyzw $vf6, $vf6, $vf4w
    /* 1114BC 0021053C 1842E44B */  vmulx.xyzw $vf8, $vf8, $vf4x
    /* 1114C0 00210540 682AE74B */  vadd.xyzw  $vf9, $vf5, $vf7
    /* 1114C4 00210544 AA2AE74B */  vmul.xyzw  $vf10, $vf5, $vf7
    /* 1114C8 00210548 E832E84B */  vadd.xyzw  $vf11, $vf6, $vf8
    /* 1114CC 0021054C 2A33E84B */  vmul.xyzw  $vf12, $vf6, $vf8
    /* 1114D0 00210550 6A4BE94B */  vmul.xyzw  $vf13, $vf9, $vf9
    /* 1114D4 00210554 3C508A4A */  .word      0x4A8A503C    # vaddax.y   ACC, $vf10, $vf10x
    /* 1114D8 00210558 BE108A4A */  .word      0x4A8A10BE    # vmaddaz.y  ACC, $vf2, $vf10z
    /* 1114DC 0021055C 8B138A4A */  vmaddw.y   $vf14, $vf2, $vf10w
    /* 1114E0 00210560 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 1114E4 00210564 BE080D4B */  .word      0x4B0D08BE    # vmaddaz.x  ACC, $vf1, $vf13z
    /* 1114E8 00210568 4B0B0D4B */  vmaddw.x   $vf13, $vf1, $vf13w
    /* 1114EC 0021056C 00702548 */  qmfc2.ni   $5, $vf14
    /* 1114F0 00210570 0700A104 */  bgez       $5, .L00210590
    /* 1114F4 00210574 00000000 */   nop
    /* 1114F8 00210578 6C2AE74B */  vsub.xyzw  $vf9, $vf5, $vf7
    /* 1114FC 0021057C 6A4BE94B */  vmul.xyzw  $vf13, $vf9, $vf9
    /* 111500 00210580 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 111504 00210584 BE080D4B */  .word      0x4B0D08BE    # vmaddaz.x  ACC, $vf1, $vf13z
    /* 111508 00210588 4B0B0D4B */  vmaddw.x   $vf13, $vf1, $vf13w
    /* 11150C 0021058C 00000000 */  nop
.align 2
  .L00210590:
    /* 111510 00210590 BE036D4A */  .word      0x4A6D03BE    # vrsqrt     Q, $vf0w, $vf13x
    /* 111514 00210594 00000000 */  nop
    /* 111518 00210598 EA5BEB4B */  vmul.xyzw  $vf15, $vf11, $vf11
    /* 11151C 0021059C 3C608C4A */  .word      0x4A8C603C    # vaddax.y   ACC, $vf12, $vf12x
    /* 111520 002105A0 BE108C4A */  .word      0x4A8C10BE    # vmaddaz.y  ACC, $vf2, $vf12z
    /* 111524 002105A4 0B148C4A */  vmaddw.y   $vf16, $vf2, $vf12w
    /* 111528 002105A8 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 11152C 002105AC BE080F4B */  .word      0x4B0F08BE    # vmaddaz.x  ACC, $vf1, $vf15z
    /* 111530 002105B0 CB0B0F4B */  vmaddw.x   $vf15, $vf1, $vf15w
    /* 111534 002105B4 00802548 */  qmfc2.ni   $5, $vf16
    /* 111538 002105B8 0700A104 */  bgez       $5, .L002105D8
    /* 11153C 002105BC 00000000 */   nop
    /* 111540 002105C0 EC32E84B */  vsub.xyzw  $vf11, $vf6, $vf8
    /* 111544 002105C4 EA5BEB4B */  vmul.xyzw  $vf15, $vf11, $vf11
    /* 111548 002105C8 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 11154C 002105CC BE080F4B */  .word      0x4B0F08BE    # vmaddaz.x  ACC, $vf1, $vf15z
    /* 111550 002105D0 CB0B0F4B */  vmaddw.x   $vf15, $vf1, $vf15w
    /* 111554 002105D4 00000000 */  nop
.align 2
  .L002105D8:
    /* 111558 002105D8 FF02004A */  vnop
    /* 11155C 002105DC FF02004A */  vnop
    /* 111560 002105E0 5C4AE04B */  .word      0x4BE04A5C    # vmulq.xyzw $vf9, $vf9, Q
    /* 111564 002105E4 BE036F4A */  .word      0x4A6F03BE    # vrsqrt     Q, $vf0w, $vf15x
    /* 111568 002105E8 10002678 */  lq         $6, 0x10($1)
    /* 11156C 002105EC 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
    /* 111570 002105F0 10004878 */  lq         $8, 0x10($2)
    /* 111574 002105F4 10004220 */  addi       $2, $2, 0x10 /* handwritten instruction */
    /* 111578 002105F8 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11157C 002105FC 882DC070 */  pextlh     $5, $6, $0
    /* 111580 00210600 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111584 00210604 3F2C0570 */  psraw      $5, $5, 16
    /* 111588 00210608 0028A548 */  qmtc2.ni   $5, $vf5
    /* 11158C 0021060C A835C070 */  pextuh     $6, $6, $0
    /* 111590 00210610 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111594 00210614 3F340670 */  psraw      $6, $6, 16
    /* 111598 00210618 0030A648 */  qmtc2.ni   $6, $vf6
    /* 11159C 0021061C 883D0071 */  pextlh     $7, $8, $0
    /* 1115A0 00210620 0000A048 */  qmtc2.ni   $0, $vf0
    /* 1115A4 00210624 3F3C0770 */  psraw      $7, $7, 16
    /* 1115A8 00210628 0038A748 */  qmtc2.ni   $7, $vf7
    /* 1115AC 0021062C A8450071 */  pextuh     $8, $8, $0
    /* 1115B0 00210630 0000A048 */  qmtc2.ni   $0, $vf0
    /* 1115B4 00210634 3F440870 */  psraw      $8, $8, 16
    /* 1115B8 00210638 0040A848 */  qmtc2.ni   $8, $vf8
    /* 1115BC 0021063C 00000000 */  nop
    /* 1115C0 00210640 DC5AE04B */  .word      0x4BE05ADC    # vmulq.xyzw $vf11, $vf11, Q
    /* 1115C4 00210644 80008420 */  addi       $4, $4, 0x80 /* handwritten instruction */
    /* 1115C8 00210648 000089F8 */  sqc2       $vf9, 0x0($4)
    /* 1115CC 0021064C FEFF6320 */  addi       $3, $3, -0x2 /* handwritten instruction */
    /* 1115D0 00210650 B3FF601C */  bgtz       $3, .L00210520
    /* 1115D4 00210654 40008BF8 */   sqc2      $vf11, 0x40($4)
    /* 1115D8 00210658 A8400808 */  j          func_002102A0
    /* 1115DC 0021065C 00000000 */   nop
.align 2
  .L00210660:
    /* 1115E0 00210660 59002014 */  bnez       $1, .L002107C8
    /* 1115E4 00210664 00000000 */   nop
.align 2
  .L00210668:
    /* 1115E8 00210668 5700C011 */  beqz       $14, .L002107C8
    /* 1115EC 0021066C 0010093C */   lui       $9, (0x1000D400 >> 16)
    /* 1115F0 00210670 0200CD95 */  lhu        $13, 0x2($14)
    /* 1115F4 00210674 00D42935 */  ori        $9, $9, (0x1000D400 & 0xFFFF)
    /* 1115F8 00210678 1000CC8D */  lw         $12, 0x10($14)
    /* 1115FC 0021067C 00280120 */  addi       $1, $0, 0x2800 /* handwritten instruction */
    /* 111600 00210680 800021AD */  sw         $1, 0x80($9)
    /* 111604 00210684 2008AD01 */  add        $1, $13, $13 /* handwritten instruction */
    /* 111608 00210688 10002CAD */  sw         $12, 0x10($9)
    /* 11160C 0021068C 2068A101 */  add        $13, $13, $1 /* handwritten instruction */
    /* 111610 00210690 20002DAD */  sw         $13, 0x20($9)
    /* 111614 00210694 00010120 */  addi       $1, $0, 0x100 /* handwritten instruction */
    /* 111618 00210698 000021AD */  sw         $1, 0x0($9)
    /* 11161C 0021069C 00690D00 */  sll        $13, $13, 4
    /* 111620 002106A0 0800C18D */  lw         $1, 0x8($14)
    /* 111624 002106A4 00282C23 */  addi       $12, $25, 0x2800 /* handwritten instruction */
    /* 111628 002106A8 0020A148 */  qmtc2.ni   $1, $vf4
    /* 11162C 002106AC 2068AC01 */  add        $13, $13, $12 /* handwritten instruction */
    /* 111630 002106B0 1C00CE8D */  lw         $14, 0x1C($14)
    /* 111634 002106B4 001E2123 */  addi       $1, $25, 0x1E00 /* handwritten instruction */
    /* 111638 002106B8 2C00A1AD */  sw         $1, 0x2C($13)
    /* 11163C 002106BC 0401244A */  vsubx.w    $vf4, $vf0, $vf4x
.align 2
  .L002106C0:
    /* 111640 002106C0 0000228D */  lw         $2, 0x0($9)
    /* 111644 002106C4 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111648 002106C8 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11164C 002106CC 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111650 002106D0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 111654 002106D4 00014230 */  andi       $2, $2, 0x100
    /* 111658 002106D8 F9FF4014 */  bnez       $2, .L002106C0
    /* 11165C 002106DC 00000000 */   nop
    /* 111660 002106E0 2C008B8D */  lw         $11, 0x2C($12)
    /* 111664 002106E4 000089D9 */  lqc2       $vf9, 0x0($12)
    /* 111668 002106E8 10008AD9 */  lqc2       $vf10, 0x10($12)
    /* 11166C 002106EC 20008BD9 */  lqc2       $vf11, 0x20($12)
    /* 111670 002106F0 000066D9 */  lqc2       $vf6, 0x0($11)
    /* 111674 002106F4 100067D9 */  lqc2       $vf7, 0x10($11)
    /* 111678 002106F8 200068D9 */  lqc2       $vf8, 0x20($11)
    /* 11167C 002106FC 00000000 */  nop
.align 2
  .L00210700:
    /* 111680 00210700 9B31E44B */  vmulw.xyzw $vf6, $vf6, $vf4w
    /* 111684 00210704 584AE44B */  vmulx.xyzw $vf9, $vf9, $vf4x
    /* 111688 00210708 DB39C44B */  vmulw.xyz  $vf7, $vf7, $vf4w
    /* 11168C 0021070C 9852C44B */  vmulx.xyz  $vf10, $vf10, $vf4x
    /* 111690 00210710 1B42C44B */  vmulw.xyz  $vf8, $vf8, $vf4w
    /* 111694 00210714 D85AC44B */  vmulx.xyz  $vf11, $vf11, $vf4x
    /* 111698 00210718 2833E94B */  vadd.xyzw  $vf12, $vf6, $vf9
    /* 11169C 0021071C AA33E94B */  vmul.xyzw  $vf14, $vf6, $vf9
    /* 1116A0 00210720 E839CA4B */  vadd.xyz   $vf7, $vf7, $vf10
    /* 1116A4 00210724 2842CB4B */  vadd.xyz   $vf8, $vf8, $vf11
    /* 1116A8 00210728 6A63EC4B */  vmul.xyzw  $vf13, $vf12, $vf12
    /* 1116AC 0021072C 3C708E4A */  .word      0x4A8E703C    # vaddax.y   ACC, $vf14, $vf14x
    /* 1116B0 00210730 BE108E4A */  .word      0x4A8E10BE    # vmaddaz.y  ACC, $vf2, $vf14z
    /* 1116B4 00210734 8B138E4A */  vmaddw.y   $vf14, $vf2, $vf14w
    /* 1116B8 00210738 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 1116BC 0021073C BE080D4B */  .word      0x4B0D08BE    # vmaddaz.x  ACC, $vf1, $vf13z
    /* 1116C0 00210740 4B0B0D4B */  vmaddw.x   $vf13, $vf1, $vf13w
    /* 1116C4 00210744 00702248 */  qmfc2.ni   $2, $vf14
    /* 1116C8 00210748 07004104 */  bgez       $2, .L00210768
    /* 1116CC 0021074C 00000000 */   nop
    /* 1116D0 00210750 2C33E94B */  vsub.xyzw  $vf12, $vf6, $vf9
    /* 1116D4 00210754 6A63EC4B */  vmul.xyzw  $vf13, $vf12, $vf12
    /* 1116D8 00210758 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 1116DC 0021075C BE080D4B */  .word      0x4B0D08BE    # vmaddaz.x  ACC, $vf1, $vf13z
    /* 1116E0 00210760 4B0B0D4B */  vmaddw.x   $vf13, $vf1, $vf13w
    /* 1116E4 00210764 00000000 */  nop
.align 2
  .L00210768:
    /* 1116E8 00210768 BE036D4A */  .word      0x4A6D03BE    # vrsqrt     Q, $vf0w, $vf13x
    /* 1116EC 0021076C 1C00838D */  lw         $3, 0x1C($12)
    /* 1116F0 00210770 5C00818D */  lw         $1, 0x5C($12)
    /* 1116F4 00210774 300089D9 */  lqc2       $vf9, 0x30($12)
    /* 1116F8 00210778 40008AD9 */  lqc2       $vf10, 0x40($12)
    /* 1116FC 0021077C 50008BD9 */  lqc2       $vf11, 0x50($12)
    /* 111700 00210780 100067F9 */  sqc2       $vf7, 0x10($11)
    /* 111704 00210784 200068F9 */  sqc2       $vf8, 0x20($11)
    /* 111708 00210788 000026D8 */  lqc2       $vf6, 0x0($1)
    /* 11170C 0021078C 100027D8 */  lqc2       $vf7, 0x10($1)
    /* 111710 00210790 200028D8 */  lqc2       $vf8, 0x20($1)
    /* 111714 00210794 1C00628D */  lw         $2, 0x1C($11)
    /* 111718 00210798 03004014 */  bnez       $2, .L002107A8
    /* 11171C 0021079C 00000000 */   nop
    /* 111720 002107A0 1C0063AD */  sw         $3, 0x1C($11)
    /* 111724 002107A4 00000000 */  nop
.align 2
  .L002107A8:
    /* 111728 002107A8 1C63E04B */  .word      0x4BE0631C    # vmulq.xyzw $vf12, $vf12, Q
    /* 11172C 002107AC 30008C21 */  addi       $12, $12, 0x30 /* handwritten instruction */
    /* 111730 002107B0 00006CF9 */  sqc2       $vf12, 0x0($11)
    /* 111734 002107B4 00002B20 */  addi       $11, $1, 0x0 /* handwritten instruction */
    /* 111738 002107B8 D1FF8D15 */  bne        $12, $13, .L00210700
    /* 11173C 002107BC 00000000 */   nop
    /* 111740 002107C0 A9FFC015 */  bnez       $14, .L00210668
    /* 111744 002107C4 00000000 */   nop
.align 2
  .L002107C8:
    /* 111748 002107C8 3E780F00 */  dsrl32     $15, $15, 0
    /* 11174C 002107CC 00010133 */  andi       $1, $24, 0x100
    /* 111750 002107D0 41002014 */  bnez       $1, .L002108D8
    /* 111754 002107D4 4301C04B */   vaddw.xyz $vf5, $vf0, $vf0w
.align 2
  .L002107D8:
    /* 111758 002107D8 3F00E011 */  beqz       $15, .L002108D8
    /* 11175C 002107DC 0000EE21 */   addi      $14, $15, 0x0 /* handwritten instruction */
    /* 111760 002107E0 0400C18D */  lw         $1, 0x4($14)
    /* 111764 002107E4 0300C291 */  lbu        $2, 0x3($14)
    /* 111768 002107E8 000026D8 */  lqc2       $vf6, 0x0($1)
    /* 11176C 002107EC 100028D8 */  lqc2       $vf8, 0x10($1)
    /* 111770 002107F0 20002AD8 */  lqc2       $vf10, 0x20($1)
    /* 111774 002107F4 1000C7D9 */  lqc2       $vf7, 0x10($14)
    /* 111778 002107F8 2000C9D9 */  lqc2       $vf9, 0x20($14)
    /* 11177C 002107FC 3000CBD9 */  lqc2       $vf11, 0x30($14)
    /* 111780 00210800 0F004014 */  bnez       $2, .L00210840
    /* 111784 00210804 0800CF8D */   lw        $15, 0x8($14)
    /* 111788 00210808 2A3B264A */  vmul.w     $vf12, $vf7, $vf6
    /* 11178C 0021080C 6A3BC64B */  vmul.xyz   $vf13, $vf7, $vf6
    /* 111790 00210810 9B3BC64B */  vmulw.xyz  $vf14, $vf7, $vf6w
    /* 111794 00210814 DB33C74B */  vmulw.xyz  $vf15, $vf6, $vf7w
    /* 111798 00210818 FE32C74B */  .word      0x4BC732FE    # vopmula.xyz ACC, $vf6, $vf7
    /* 11179C 0021081C 2E3CC64B */  .word      0x4BC63C2E    # vopmsub.xyz $vf16, $vf7, $vf6
    /* 1117A0 00210820 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 1117A4 00210824 4A2B0D4B */  vmaddz.x   $vf13, $vf5, $vf13z
    /* 1117A8 00210828 A871CF4B */  vadd.xyz   $vf6, $vf14, $vf15
    /* 1117AC 0021082C A831D04B */  vadd.xyz   $vf6, $vf6, $vf16
    /* 1117B0 00210830 84612D4A */  vsubx.w    $vf6, $vf12, $vf13x
    /* 1117B4 00210834 2A42C94B */  vmul.xyz   $vf8, $vf8, $vf9
    /* 1117B8 00210838 32420808 */  j          func_002108C8
    /* 1117BC 0021083C A852CB4B */   vadd.xyz  $vf10, $vf10, $vf11
.align 2
  .L00210840:
    /* 1117C0 00210840 0C00C38D */  lw         $3, 0xC($14)
    /* 1117C4 00210844 0090A348 */  qmtc2.ni   $3, $vf18
    /* 1117C8 00210848 8404324A */  vsubx.w    $vf18, $vf0, $vf18x
    /* 1117CC 0021084C 00000000 */  nop
    /* 1117D0 00210850 9B31F24B */  vmulw.xyzw $vf6, $vf6, $vf18w
    /* 1117D4 00210854 D839F24B */  vmulx.xyzw $vf7, $vf7, $vf18x
    /* 1117D8 00210858 1B42D24B */  vmulw.xyz  $vf8, $vf8, $vf18w
    /* 1117DC 0021085C 584AD24B */  vmulx.xyz  $vf9, $vf9, $vf18x
    /* 1117E0 00210860 9B52D24B */  vmulw.xyz  $vf10, $vf10, $vf18w
    /* 1117E4 00210864 D85AD24B */  vmulx.xyz  $vf11, $vf11, $vf18x
    /* 1117E8 00210868 A833E74B */  vadd.xyzw  $vf14, $vf6, $vf7
    /* 1117EC 0021086C 2A34E74B */  vmul.xyzw  $vf16, $vf6, $vf7
    /* 1117F0 00210870 2842C94B */  vadd.xyz   $vf8, $vf8, $vf9
    /* 1117F4 00210874 A852CB4B */  vadd.xyz   $vf10, $vf10, $vf11
    /* 1117F8 00210878 EA73EE4B */  vmul.xyzw  $vf15, $vf14, $vf14
    /* 1117FC 0021087C 3C80904A */  .word      0x4A90803C    # vaddax.y   ACC, $vf16, $vf16x
    /* 111800 00210880 BE10904A */  .word      0x4A9010BE    # vmaddaz.y  ACC, $vf2, $vf16z
    /* 111804 00210884 0B14904A */  vmaddw.y   $vf16, $vf2, $vf16w
    /* 111808 00210888 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 11180C 0021088C BE080F4B */  .word      0x4B0F08BE    # vmaddaz.x  ACC, $vf1, $vf15z
    /* 111810 00210890 CB0B0F4B */  vmaddw.x   $vf15, $vf1, $vf15w
    /* 111814 00210894 00802248 */  qmfc2.ni   $2, $vf16
    /* 111818 00210898 07004104 */  bgez       $2, .L002108B8
    /* 11181C 0021089C 00000000 */   nop
    /* 111820 002108A0 AC33E74B */  vsub.xyzw  $vf14, $vf6, $vf7
    /* 111824 002108A4 EA73EE4B */  vmul.xyzw  $vf15, $vf14, $vf14
    /* 111828 002108A8 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 11182C 002108AC BE080F4B */  .word      0x4B0F08BE    # vmaddaz.x  ACC, $vf1, $vf15z
    /* 111830 002108B0 CB0B0F4B */  vmaddw.x   $vf15, $vf1, $vf15w
    /* 111834 002108B4 00000000 */  nop
.align 2
  .L002108B8:
    /* 111838 002108B8 BE036F4A */  .word      0x4A6F03BE    # vrsqrt     Q, $vf0w, $vf15x
    /* 11183C 002108BC 00000000 */  nop
    /* 111840 002108C0 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 111844 002108C4 9C71E04B */  .word      0x4BE0719C    # vmulq.xyzw $vf6, $vf14, Q
.align 2
  alabel func_002108C8
    /* 111848 002108C8 000026F8 */  sqc2       $vf6, 0x0($1)
    /* 11184C 002108CC 100028F8 */  sqc2       $vf8, 0x10($1)
    /* 111850 002108D0 C1FFE015 */  bnez       $15, .L002107D8
    /* 111854 002108D4 20002AF8 */   sqc2      $vf10, 0x20($1)
.align 2
  .L002108D8:
    /* 111858 002108D8 AE400808 */  j          func_002102B8
    /* 11185C 002108DC 00000000 */   nop
endlabel func_0020FC38
