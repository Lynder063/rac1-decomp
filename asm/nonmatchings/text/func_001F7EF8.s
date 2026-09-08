.align 3
/* Handwritten function */
nonmatching func_001F7EF8, 0x5B4

glabel func_001F7EF8
    /* F8E78 001F7EF8 00008AD8 */  lqc2       $vf10, 0x0($a0)
    /* F8E7C 001F7EFC 89830072 */  pcpyld     $s0, $s0, $zero
    /* F8E80 001F7F00 10008BD8 */  lqc2       $vf11, 0x10($a0)
    /* F8E84 001F7F04 1800183C */  lui        $t8, %hi(D_00187040)
    /* F8E88 001F7F08 40701827 */  addiu      $t8, $t8, %lo(D_00187040)
    /* F8E8C 001F7F0C 20008CD8 */  lqc2       $vf12, 0x20($a0)
    /* F8E90 001F7F10 30008DD8 */  lqc2       $vf13, 0x30($a0)
    /* F8E94 001F7F14 1900103C */  lui        $s0, %hi(D_0018CE00)
    /* F8E98 001F7F18 00CE1026 */  addiu      $s0, $s0, %lo(D_0018CE00)
    /* F8E9C 001F7F1C 400119DB */  lqc2       $vf25, 0x140($t8)
    /* F8EA0 001F7F20 15000510 */  beq        $zero, $a1, .L001F7F78
    /* F8EA4 001F7F24 209F9EDB */   lqc2      $vf30, -0x60E0($gp)
    /* F8EA8 001F7F28 0000A1D8 */  lqc2       $vf1, 0x0($a1)
    /* F8EAC 001F7F2C 1000A2D8 */  lqc2       $vf2, 0x10($a1)
    /* F8EB0 001F7F30 2000A3D8 */  lqc2       $vf3, 0x20($a1)
    /* F8EB4 001F7F34 3000A4D8 */  lqc2       $vf4, 0x30($a1)
    /* F8EB8 001F7F38 BC09EA4B */  .word      0x4BEA09BC    # vmulax.xyzw ACC, $vf1, $vf10x
    /* F8EBC 001F7F3C BD10EA4B */  .word      0x4BEA10BD    # vmadday.xyzw ACC, $vf2, $vf10y
    /* F8EC0 001F7F40 BE18EA4B */  .word      0x4BEA18BE    # vmaddaz.xyzw ACC, $vf3, $vf10z
    /* F8EC4 001F7F44 8B22EA4B */  vmaddw.xyzw $vf10, $vf4, $vf10w
    /* F8EC8 001F7F48 BC09EB4B */  .word      0x4BEB09BC    # vmulax.xyzw ACC, $vf1, $vf11x
    /* F8ECC 001F7F4C BD10EB4B */  .word      0x4BEB10BD    # vmadday.xyzw ACC, $vf2, $vf11y
    /* F8ED0 001F7F50 BE18EB4B */  .word      0x4BEB18BE    # vmaddaz.xyzw ACC, $vf3, $vf11z
    /* F8ED4 001F7F54 CB22EB4B */  vmaddw.xyzw $vf11, $vf4, $vf11w
    /* F8ED8 001F7F58 BC09EC4B */  .word      0x4BEC09BC    # vmulax.xyzw ACC, $vf1, $vf12x
    /* F8EDC 001F7F5C BD10EC4B */  .word      0x4BEC10BD    # vmadday.xyzw ACC, $vf2, $vf12y
    /* F8EE0 001F7F60 BE18EC4B */  .word      0x4BEC18BE    # vmaddaz.xyzw ACC, $vf3, $vf12z
    /* F8EE4 001F7F64 0B23EC4B */  vmaddw.xyzw $vf12, $vf4, $vf12w
    /* F8EE8 001F7F68 BC09ED4B */  .word      0x4BED09BC    # vmulax.xyzw ACC, $vf1, $vf13x
    /* F8EEC 001F7F6C BD10ED4B */  .word      0x4BED10BD    # vmadday.xyzw ACC, $vf2, $vf13y
    /* F8EF0 001F7F70 BE18ED4B */  .word      0x4BED18BE    # vmaddaz.xyzw ACC, $vf3, $vf13z
    /* F8EF4 001F7F74 4B23ED4B */  vmaddw.xyzw $vf13, $vf4, $vf13w
.align 2
  .L001F7F78:
    /* F8EF8 001F7F78 AC52D94B */  vsub.xyz   $vf10, $vf10, $vf25
    /* F8EFC 001F7F7C EC5AD94B */  vsub.xyz   $vf11, $vf11, $vf25
    /* F8F00 001F7F80 2C63D94B */  vsub.xyz   $vf12, $vf12, $vf25
    /* F8F04 001F7F84 6C6BD94B */  vsub.xyz   $vf13, $vf13, $vf25
    /* F8F08 001F7F88 9A52DE4B */  vmulz.xyz  $vf10, $vf10, $vf30z
    /* F8F0C 001F7F8C DA5ADE4B */  vmulz.xyz  $vf11, $vf11, $vf30z
    /* F8F10 001F7F90 1A63DE4B */  vmulz.xyz  $vf12, $vf12, $vf30z
    /* F8F14 001F7F94 5A6BDE4B */  vmulz.xyz  $vf13, $vf13, $vf30z
    /* F8F18 001F7F98 400001DB */  lqc2       $vf1, 0x40($t8)
    /* F8F1C 001F7F9C 898B2072 */  pcpyld     $s1, $s1, $zero
    /* F8F20 001F7FA0 500002DB */  lqc2       $vf2, 0x50($t8)
    /* F8F24 001F7FA4 89934472 */  pcpyld     $s2, $s2, $a0
    /* F8F28 001F7FA8 600003DB */  lqc2       $vf3, 0x60($t8)
    /* F8F2C 001F7FAC 899B6072 */  pcpyld     $s3, $s3, $zero
    /* F8F30 001F7FB0 700004DB */  lqc2       $vf4, 0x70($t8)
    /* F8F34 001F7FB4 89BBF773 */  pcpyld     $s7, $ra, $s7
    /* F8F38 001F7FB8 80011ADA */  lqc2       $vf26, 0x180($s0)
    /* F8F3C 001F7FBC 00000000 */  nop
    /* F8F40 001F7FC0 BC09ED4B */  .word      0x4BED09BC    # vmulax.xyzw ACC, $vf1, $vf13x
    /* F8F44 001F7FC4 BD10ED4B */  .word      0x4BED10BD    # vmadday.xyzw ACC, $vf2, $vf13y
    /* F8F48 001F7FC8 BE18ED4B */  .word      0x4BED18BE    # vmaddaz.xyzw ACC, $vf3, $vf13z
    /* F8F4C 001F7FCC 4B23E04B */  vmaddw.xyzw $vf13, $vf4, $vf0w
    /* F8F50 001F7FD0 D9D49E4B */  vmuly.xy   $vf19, $vf26, $vf30y
    /* F8F54 001F7FD4 3CD3734A */  vmove.zw   $vf19, $vf26
    /* F8F58 001F7FD8 BC09EC4B */  .word      0x4BEC09BC    # vmulax.xyzw ACC, $vf1, $vf12x
    /* F8F5C 001F7FDC BD10EC4B */  .word      0x4BEC10BD    # vmadday.xyzw ACC, $vf2, $vf12y
    /* F8F60 001F7FE0 BE18EC4B */  .word      0x4BEC18BE    # vmaddaz.xyzw ACC, $vf3, $vf12z
    /* F8F64 001F7FE4 0B23E04B */  vmaddw.xyzw $vf12, $vf4, $vf0w
    /* F8F68 001F7FE8 BC09EB4B */  .word      0x4BEB09BC    # vmulax.xyzw ACC, $vf1, $vf11x
    /* F8F6C 001F7FEC BD10EB4B */  .word      0x4BEB10BD    # vmadday.xyzw ACC, $vf2, $vf11y
    /* F8F70 001F7FF0 BE18EB4B */  .word      0x4BEB18BE    # vmaddaz.xyzw ACC, $vf3, $vf11z
    /* F8F74 001F7FF4 CB22E04B */  vmaddw.xyzw $vf11, $vf4, $vf0w
    /* F8F78 001F7FF8 BC09EA4B */  .word      0x4BEA09BC    # vmulax.xyzw ACC, $vf1, $vf10x
    /* F8F7C 001F7FFC BD10EA4B */  .word      0x4BEA10BD    # vmadday.xyzw ACC, $vf2, $vf10y
    /* F8F80 001F8000 BE18EA4B */  .word      0x4BEA18BE    # vmaddaz.xyzw ACC, $vf3, $vf10z
    /* F8F84 001F8004 8B22E04B */  vmaddw.xyzw $vf10, $vf4, $vf0w
    /* F8F88 001F8008 AA53F34B */  vmul.xyzw  $vf14, $vf10, $vf19
    /* F8F8C 001F800C EA5BF34B */  vmul.xyzw  $vf15, $vf11, $vf19
    /* F8F90 001F8010 2A64F34B */  vmul.xyzw  $vf16, $vf12, $vf19
    /* F8F94 001F8014 6A6CF34B */  vmul.xyzw  $vf17, $vf13, $vf19
    /* F8F98 001F8018 FF89D14B */  .word      0x4BD189FF                    # vclipw.xyz $vf17, $vf17w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F8F9C 001F801C FF81D04B */  .word      0x4BD081FF                    # vclipw.xyz $vf16, $vf16w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F8FA0 001F8020 FF79CF4B */  .word      0x4BCF79FF                    # vclipw.xyz $vf15, $vf15w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F8FA4 001F8024 FF71CE4B */  .word      0x4BCE71FF                    # vclipw.xyz $vf14, $vf14w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F8FA8 001F8028 00702848 */  qmfc2.ni   $t0, $vf14
    /* F8FAC 001F802C 00782948 */  qmfc2.ni   $t1, $vf15
    /* F8FB0 001F8030 00802A48 */  qmfc2.ni   $t2, $vf16
    /* F8FB4 001F8034 A9430071 */  pcpyud     $t0, $t0, $zero
    /* F8FB8 001F8038 00882B48 */  qmfc2.ni   $t3, $vf17
    /* F8FBC 001F803C A94B2071 */  pcpyud     $t1, $t1, $zero
    /* F8FC0 001F8040 00905948 */  cfc2.ni    $t9, $vi18
    /* F8FC4 001F8044 A9534071 */  pcpyud     $t2, $t2, $zero
    /* F8FC8 001F8048 0B000105 */  bgez       $t0, .L001F8078
    /* F8FCC 001F804C A95B6071 */   pcpyud    $t3, $t3, $zero
    /* F8FD0 001F8050 03002C37 */  ori        $t4, $t9, 0x3
    /* F8FD4 001F8054 0C002D37 */  ori        $t5, $t9, 0xC
    /* F8FD8 001F8058 03008015 */  bnez       $t4, .L001F8068
    /* F8FDC 001F805C 00000000 */   nop
    /* F8FE0 001F8060 03003937 */  ori        $t9, $t9, 0x3
    /* F8FE4 001F8064 00000000 */  nop
.align 2
  .L001F8068:
    /* F8FE8 001F8068 0300A015 */  bnez       $t5, .L001F8078
    /* F8FEC 001F806C 00000000 */   nop
    /* F8FF0 001F8070 0C003937 */  ori        $t9, $t9, 0xC
    /* F8FF4 001F8074 00000000 */  nop
.align 2
  .L001F8078:
    /* F8FF8 001F8078 3F002F33 */  andi       $t7, $t9, 0x3F
    /* F8FFC 001F807C 82C91900 */  srl        $t9, $t9, 6
    /* F9000 001F8080 3100E011 */  beqz       $t7, .L001F8148
    /* F9004 001F8084 03002C33 */   andi      $t4, $t9, 0x3
    /* F9008 001F8088 09002105 */  bgez       $t1, .L001F80B0
    /* F900C 001F808C 00000000 */   nop
    /* F9010 001F8090 03008015 */  bnez       $t4, .L001F80A0
    /* F9014 001F8094 0C002D33 */   andi      $t5, $t9, 0xC
    /* F9018 001F8098 03003937 */  ori        $t9, $t9, 0x3
    /* F901C 001F809C 00000000 */  nop
.align 2
  .L001F80A0:
    /* F9020 001F80A0 0300A015 */  bnez       $t5, .L001F80B0
    /* F9024 001F80A4 00000000 */   nop
    /* F9028 001F80A8 0C003937 */  ori        $t9, $t9, 0xC
    /* F902C 001F80AC 00000000 */  nop
.align 2
  .L001F80B0:
    /* F9030 001F80B0 2478F901 */  and        $t7, $t7, $t9
    /* F9034 001F80B4 82C91900 */  srl        $t9, $t9, 6
    /* F9038 001F80B8 2300E011 */  beqz       $t7, .L001F8148
    /* F903C 001F80BC 03002C33 */   andi      $t4, $t9, 0x3
    /* F9040 001F80C0 09004105 */  bgez       $t2, .L001F80E8
    /* F9044 001F80C4 00000000 */   nop
    /* F9048 001F80C8 03008015 */  bnez       $t4, .L001F80D8
    /* F904C 001F80CC 0C002D33 */   andi      $t5, $t9, 0xC
    /* F9050 001F80D0 03003937 */  ori        $t9, $t9, 0x3
    /* F9054 001F80D4 00000000 */  nop
.align 2
  .L001F80D8:
    /* F9058 001F80D8 0300A015 */  bnez       $t5, .L001F80E8
    /* F905C 001F80DC 00000000 */   nop
    /* F9060 001F80E0 0C003937 */  ori        $t9, $t9, 0xC
    /* F9064 001F80E4 00000000 */  nop
.align 2
  .L001F80E8:
    /* F9068 001F80E8 2478F901 */  and        $t7, $t7, $t9
    /* F906C 001F80EC 82C91900 */  srl        $t9, $t9, 6
    /* F9070 001F80F0 1500E011 */  beqz       $t7, .L001F8148
    /* F9074 001F80F4 03002C33 */   andi      $t4, $t9, 0x3
    /* F9078 001F80F8 09006105 */  bgez       $t3, .L001F8120
    /* F907C 001F80FC 00000000 */   nop
    /* F9080 001F8100 03008015 */  bnez       $t4, .L001F8110
    /* F9084 001F8104 0C002D33 */   andi      $t5, $t9, 0xC
    /* F9088 001F8108 03003937 */  ori        $t9, $t9, 0x3
    /* F908C 001F810C 00000000 */  nop
.align 2
  .L001F8110:
    /* F9090 001F8110 0300A015 */  bnez       $t5, .L001F8120
    /* F9094 001F8114 00000000 */   nop
    /* F9098 001F8118 0C003937 */  ori        $t9, $t9, 0xC
    /* F909C 001F811C 00000000 */  nop
.align 2
  .L001F8120:
    /* F90A0 001F8120 2478F901 */  and        $t7, $t7, $t9
    /* F90A4 001F8124 00000000 */  nop
    /* F90A8 001F8128 0700E011 */  beqz       $t7, .L001F8148
    /* F90AC 001F812C 00000000 */   nop
    /* F90B0 001F8130 A9830072 */  pcpyud     $s0, $s0, $zero
    /* F90B4 001F8134 A9FBE072 */  pcpyud     $ra, $s7, $zero
    /* F90B8 001F8138 A98B2072 */  pcpyud     $s1, $s1, $zero
    /* F90BC 001F813C A9934072 */  pcpyud     $s2, $s2, $zero
    /* F90C0 001F8140 0800E003 */  jr         $ra
    /* F90C4 001F8144 A99B6072 */   pcpyud    $s3, $s3, $zero
.align 2
  .L001F8148:
    /* F90C8 001F8148 AA53FA4B */  vmul.xyzw  $vf14, $vf10, $vf26
    /* F90CC 001F814C 3E704F4A */  .word      0x4A4F703E    # vaddaz.z   ACC, $vf14, $vf15z
    /* F90D0 001F8150 BF80404A */  .word      0x4A4080BF    # vmaddaw.z  ACC, $vf16, $vf0w
    /* F90D4 001F8154 4B88404A */  vmaddw.z   $vf1, $vf17, $vf0w
    /* F90D8 001F8158 EA5BFA4B */  vmul.xyzw  $vf15, $vf11, $vf26
    /* F90DC 001F815C 2A64FA4B */  vmul.xyzw  $vf16, $vf12, $vf26
    /* F90E0 001F8160 6A6CFA4B */  vmul.xyzw  $vf17, $vf13, $vf26
    /* F90E4 001F8164 7C09E14B */  vftoi0.xyzw $vf1, $vf1
    /* F90E8 001F8168 FF71CE4B */  .word      0x4BCE71FF                    # vclipw.xyz $vf14, $vf14w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F90EC 001F816C FF79CF4B */  .word      0x4BCF79FF                    # vclipw.xyz $vf15, $vf15w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F90F0 001F8170 FF81D04B */  .word      0x4BD081FF                    # vclipw.xyz $vf16, $vf16w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F90F4 001F8174 FF89D14B */  .word      0x4BD189FF                    # vclipw.xyz $vf17, $vf17w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F90F8 001F8178 00082848 */  qmfc2.ni   $t0, $vf1
    /* F90FC 001F817C FF030934 */  ori        $t1, $zero, 0x3FF
    /* F9100 001F8180 309F9FDB */  lqc2       $vf31, -0x60D0($gp)
    /* F9104 001F8184 0C000420 */  addi       $a0, $zero, 0xC /* handwritten instruction */
    /* F9108 001F8188 89470870 */  pexew      $t0, $t0
    /* F910C 001F818C 90011BDA */  lqc2       $vf27, 0x190($s0)
    /* F9110 001F8190 43410800 */  sra        $t0, $t0, 5
    /* F9114 001F8194 BCFB8A4B */  .word      0x4B8AFBBC    # vdiv       Q, $vf31x, $vf10w
    /* F9118 001F8198 00904248 */  cfc2.ni    $v0, $vi18
    /* F911C 001F819C E8400971 */  pminw      $t0, $t0, $t1
    /* F9120 001F81A0 A0011CDA */  lqc2       $vf28, 0x1A0($s0)
    /* F9124 001F81A4 C8400071 */  pmaxw      $t0, $t0, $zero
    /* F9128 001F81A8 87004014 */  bnez       $v0, .L001F83C8
    /* F912C 001F81AC 40980800 */   sll       $s3, $t0, 1
    /* F9130 001F81B0 4BE1070C */  jal        func_001F852C
    /* F9134 001F81B4 50004EDA */   lqc2      $vf14, 0x50($s2)
    /* F9138 001F81B8 0020083C */  lui        $t0, (0x20000000 >> 16)
    /* F913C 001F81BC EE000934 */  ori        $t1, $zero, 0xEE
    /* F9140 001F81C0 3C400800 */  dsll32     $t0, $t0, 0
    /* F9144 001F81C4 80004ADE */  ld         $t2, 0x80($s2)
    /* F9148 001F81C8 01000835 */  ori        $t0, $t0, 0x1
    /* F914C 001F81CC 14000B34 */  ori        $t3, $zero, 0x14
    /* F9150 001F81D0 BFE1E04B */  .word      0x4BE0E1BF    # vmulaw.xyzw ACC, $vf28, $vf0w
    /* F9154 001F81D4 A152E04B */  .word      0x4BE052A1    # vmaddq.xyzw $vf10, $vf10, Q
    /* F9158 001F81D8 9C73804B */  .word      0x4B80739C    # vmulq.xy   $vf14, $vf14, Q
    /* F915C 001F81DC 5C00204A */  .word      0x4A20005C    # vmulq.w    $vf1, $vf0, Q
    /* F9160 001F81E0 A9830072 */  pcpyud     $s0, $s0, $zero
    /* F9164 001F81E4 7D51EA4B */  vftoi4.xyzw $vf10, $vf10
    /* F9168 001F81E8 89632871 */  pcpyld     $t4, $t1, $t0
    /* F916C 001F81EC 896B6A71 */  pcpyld     $t5, $t3, $t2
    /* F9170 001F81F0 BCFB8B4B */  .word      0x4B8BFBBC    # vdiv       Q, $vf31x, $vf11w
    /* F9174 001F81F4 00702848 */  qmfc2.ni   $t0, $vf14
    /* F9178 001F81F8 00502948 */  qmfc2.ni   $t1, $vf10
    /* F917C 001F81FC 580028FC */  sd         $t0, 0x58($at)
    /* F9180 001F8200 C8552971 */  ppach      $t2, $t1, $t1
    /* F9184 001F8204 00002C7C */  sq         $t4, 0x0($at)
    /* F9188 001F8208 A94B2071 */  pcpyud     $t1, $t1, $zero
    /* F918C 001F820C 10002D7C */  sq         $t5, 0x10($at)
    /* F9190 001F8210 3F490970 */  psraw      $t1, $t1, 4
    /* F9194 001F8214 68002AAC */  sw         $t2, 0x68($at)
    /* F9198 001F8218 6C0029AC */  sw         $t1, 0x6C($at)
    /* F919C 001F821C 3F480900 */  dsra32     $t1, $t1, 0
    /* F91A0 001F8220 FF000B20 */  addi       $t3, $zero, 0xFF /* handwritten instruction */
    /* F91A4 001F8224 E8482B71 */  pminw      $t1, $t1, $t3
    /* F91A8 001F8228 C8482071 */  pmaxw      $t1, $t1, $zero
    /* F91AC 001F822C 6F0029A0 */  sb         $t1, 0x6F($at)
    /* F91B0 001F8230 00F4083C */  lui        $t0, (0xF4000000 >> 16)
    /* F91B4 001F8234 1204093C */  lui        $t1, (0x4124124 >> 16)
    /* F91B8 001F8238 3C400800 */  dsll32     $t0, $t0, 0
    /* F91BC 001F823C 24412935 */  ori        $t1, $t1, (0x4124124 & 0xFFFF)
    /* F91C0 001F8240 01800835 */  ori        $t0, $t0, 0x8001
    /* F91C4 001F8244 41120A3C */  lui        $t2, (0x12412068 >> 16)
    /* F91C8 001F8248 68204A35 */  ori        $t2, $t2, (0x12412068 & 0xFFFF)
    /* F91CC 001F824C B80020FC */  sd         $zero, 0xB8($at)
    /* F91D0 001F8250 884C2A71 */  pextlw     $t1, $t1, $t2
    /* F91D4 001F8254 89432871 */  pcpyld     $t0, $t1, $t0
    /* F91D8 001F8258 3000287C */  sq         $t0, 0x30($at)
    /* F91DC 001F825C 3D0BE14B */  .word      0x4BE10B3D    # vmr32.xyzw $vf1, $vf1
    /* F91E0 001F8260 E15AE04B */  .word      0x4BE05AE1    # vmaddq.xyzw $vf11, $vf11, Q
    /* F91E4 001F8264 9C73604A */  .word      0x4A60739C    # vmulq.zw   $vf14, $vf14, Q
    /* F91E8 001F8268 5C00204A */  .word      0x4A20005C    # vmulq.w    $vf1, $vf0, Q
    /* F91EC 001F826C BCFB8C4B */  .word      0x4B8CFBBC    # vdiv       Q, $vf31x, $vf12w
    /* F91F0 001F8270 7D59EB4B */  vftoi4.xyzw $vf11, $vf11
    /* F91F4 001F8274 00702848 */  qmfc2.ni   $t0, $vf14
    /* F91F8 001F8278 00582948 */  qmfc2.ni   $t1, $vf11
    /* F91FC 001F827C 700028FC */  sd         $t0, 0x70($at)
    /* F9200 001F8280 C8552971 */  ppach      $t2, $t1, $t1
    /* F9204 001F8284 A94B2071 */  pcpyud     $t1, $t1, $zero
    /* F9208 001F8288 3F490970 */  psraw      $t1, $t1, 4
    /* F920C 001F828C 80002AAC */  sw         $t2, 0x80($at)
    /* F9210 001F8290 840029AC */  sw         $t1, 0x84($at)
    /* F9214 001F8294 3F480900 */  dsra32     $t1, $t1, 0
    /* F9218 001F8298 FF000B20 */  addi       $t3, $zero, 0xFF /* handwritten instruction */
    /* F921C 001F829C E8482B71 */  pminw      $t1, $t1, $t3
    /* F9220 001F82A0 C8482071 */  pmaxw      $t1, $t1, $zero
    /* F9224 001F82A4 870029A0 */  sb         $t1, 0x87($at)
    /* F9228 001F82A8 00702948 */  qmfc2.ni   $t1, $vf14
    /* F922C 001F82AC 580029FC */  sd         $t1, 0x58($at)
    /* F9230 001F82B0 A94B2971 */  pcpyud     $t1, $t1, $t1
    /* F9234 001F82B4 700029FC */  sd         $t1, 0x70($at)
    /* F9238 001F82B8 60004FDA */  lqc2       $vf15, 0x60($s2)
    /* F923C 001F82BC 3D0BE14B */  .word      0x4BE10B3D    # vmr32.xyzw $vf1, $vf1
    /* F9240 001F82C0 2163E04B */  .word      0x4BE06321    # vmaddq.xyzw $vf12, $vf12, Q
    /* F9244 001F82C4 DC7B804B */  .word      0x4B807BDC    # vmulq.xy   $vf15, $vf15, Q
    /* F9248 001F82C8 5C00204A */  .word      0x4A20005C    # vmulq.w    $vf1, $vf0, Q
    /* F924C 001F82CC BCFB8D4B */  .word      0x4B8DFBBC    # vdiv       Q, $vf31x, $vf13w
    /* F9250 001F82D0 7D61EC4B */  vftoi4.xyzw $vf12, $vf12
    /* F9254 001F82D4 00702848 */  qmfc2.ni   $t0, $vf14
    /* F9258 001F82D8 00602948 */  qmfc2.ni   $t1, $vf12
    /* F925C 001F82DC 880028FC */  sd         $t0, 0x88($at)
    /* F9260 001F82E0 C8552971 */  ppach      $t2, $t1, $t1
    /* F9264 001F82E4 A94B2071 */  pcpyud     $t1, $t1, $zero
    /* F9268 001F82E8 3F490970 */  psraw      $t1, $t1, 4
    /* F926C 001F82EC 98002AAC */  sw         $t2, 0x98($at)
    /* F9270 001F82F0 9C0029AC */  sw         $t1, 0x9C($at)
    /* F9274 001F82F4 3F480900 */  dsra32     $t1, $t1, 0
    /* F9278 001F82F8 FF000B20 */  addi       $t3, $zero, 0xFF /* handwritten instruction */
    /* F927C 001F82FC E8482B71 */  pminw      $t1, $t1, $t3
    /* F9280 001F8300 C8482071 */  pmaxw      $t1, $t1, $zero
    /* F9284 001F8304 9F0029A0 */  sb         $t1, 0x9F($at)
    /* F9288 001F8308 880048DE */  ld         $t0, 0x88($s2)
    /* F928C 001F830C 42000934 */  ori        $t1, $zero, 0x42
    /* F9290 001F8310 70004ADE */  ld         $t2, 0x70($s2)
    /* F9294 001F8314 7C000B34 */  ori        $t3, $zero, 0x7C
    /* F9298 001F8318 89432871 */  pcpyld     $t0, $t1, $t0
    /* F929C 001F831C 50002BFC */  sd         $t3, 0x50($at)
    /* F92A0 001F8320 78004BDE */  ld         $t3, 0x78($s2)
    /* F92A4 001F8324 2000287C */  sq         $t0, 0x20($at)
    /* F92A8 001F8328 89536A71 */  pcpyld     $t2, $t3, $t2
    /* F92AC 001F832C 40002A7C */  sq         $t2, 0x40($at)
    /* F92B0 001F8330 3D0BE14B */  .word      0x4BE10B3D    # vmr32.xyzw $vf1, $vf1
    /* F92B4 001F8334 00000000 */  nop
    /* F92B8 001F8338 616BE04B */  .word      0x4BE06B61    # vmaddq.xyzw $vf13, $vf13, Q
    /* F92BC 001F833C DC7B604A */  .word      0x4A607BDC    # vmulq.zw   $vf15, $vf15, Q
    /* F92C0 001F8340 5C00204A */  .word      0x4A20005C    # vmulq.w    $vf1, $vf0, Q
    /* F92C4 001F8344 7D69ED4B */  vftoi4.xyzw $vf13, $vf13
    /* F92C8 001F8348 00702848 */  qmfc2.ni   $t0, $vf14
    /* F92CC 001F834C 00682948 */  qmfc2.ni   $t1, $vf13
    /* F92D0 001F8350 A00028FC */  sd         $t0, 0xA0($at)
    /* F92D4 001F8354 C8552971 */  ppach      $t2, $t1, $t1
    /* F92D8 001F8358 A94B2071 */  pcpyud     $t1, $t1, $zero
    /* F92DC 001F835C 3F490970 */  psraw      $t1, $t1, 4
    /* F92E0 001F8360 B0002AAC */  sw         $t2, 0xB0($at)
    /* F92E4 001F8364 B40029AC */  sw         $t1, 0xB4($at)
    /* F92E8 001F8368 3F480900 */  dsra32     $t1, $t1, 0
    /* F92EC 001F836C FF000B20 */  addi       $t3, $zero, 0xFF /* handwritten instruction */
    /* F92F0 001F8370 E8482B71 */  pminw      $t1, $t1, $t3
    /* F92F4 001F8374 C8482071 */  pmaxw      $t1, $t1, $zero
    /* F92F8 001F8378 B70029A0 */  sb         $t1, 0xB7($at)
    /* F92FC 001F837C 00782948 */  qmfc2.ni   $t1, $vf15
    /* F9300 001F8380 880029FC */  sd         $t1, 0x88($at)
    /* F9304 001F8384 A94B2971 */  pcpyud     $t1, $t1, $t1
    /* F9308 001F8388 A00029FC */  sd         $t1, 0xA0($at)
    /* F930C 001F838C A9FBE072 */  pcpyud     $ra, $s7, $zero
    /* F9310 001F8390 00082848 */  qmfc2.ni   $t0, $vf1
    /* F9314 001F8394 A98B2072 */  pcpyud     $s1, $s1, $zero
    /* F9318 001F8398 4000497A */  lq         $t1, 0x40($s2)
    /* F931C 001F839C 88540971 */  pextlw     $t2, $t0, $t1
    /* F9320 001F83A0 60002AFC */  sd         $t2, 0x60($at)
    /* F9324 001F83A4 A9534A71 */  pcpyud     $t2, $t2, $t2
    /* F9328 001F83A8 78002AFC */  sd         $t2, 0x78($at)
    /* F932C 001F83AC A8540971 */  pextuw     $t2, $t0, $t1
    /* F9330 001F83B0 90002AFC */  sd         $t2, 0x90($at)
    /* F9334 001F83B4 A9534A71 */  pcpyud     $t2, $t2, $t2
    /* F9338 001F83B8 A8002AFC */  sd         $t2, 0xA8($at)
    /* F933C 001F83BC A9934072 */  pcpyud     $s2, $s2, $zero
    /* F9340 001F83C0 0800E003 */  jr         $ra
    /* F9344 001F83C4 A99B6072 */   pcpyud    $s3, $s3, $zero
.align 2
  .L001F83C8:
    /* F9348 001F83C8 03002016 */  bnez       $s1, .L001F83D8
    /* F934C 001F83CC B0011DDA */   lqc2      $vf29, 0x1B0($s0)
    /* F9350 001F83D0 2BE1070C */  jal        func_001F84AC
    /* F9354 001F83D4 00000000 */   nop
.align 2
  .L001F83D8:
    /* F9358 001F83D8 40004B7A */  lq         $t3, 0x40($s2)
    /* F935C 001F83DC 0070183C */  lui        $t8, (0x70001C40 >> 16)
    /* F9360 001F83E0 5000487A */  lq         $t0, 0x50($s2)
    /* F9364 001F83E4 401C1837 */  ori        $t8, $t8, (0x70001C40 & 0xFFFF)
    /* F9368 001F83E8 600049DE */  ld         $t1, 0x60($s2)
    /* F936C 001F83EC 88540B70 */  pextlw     $t2, $zero, $t3
    /* F9370 001F83F0 00000EFB */  sqc2       $vf14, 0x0($t8)
    /* F9374 001F83F4 A85C0B70 */  pextuw     $t3, $zero, $t3
    /* F9378 001F83F8 60000EFB */  sqc2       $vf14, 0x60($t8)
    /* F937C 001F83FC 89634871 */  pcpyld     $t4, $t2, $t0
    /* F9380 001F8400 10000C7F */  sq         $t4, 0x10($t8)
    /* F9384 001F8404 20011923 */  addi       $t9, $t8, 0x120 /* handwritten instruction */
    /* F9388 001F8408 70000C7F */  sq         $t4, 0x70($t8)
    /* F938C 001F840C 89C33873 */  pcpyld     $t8, $t9, $t8
    /* F9390 001F8410 20000FFB */  sqc2       $vf15, 0x20($t8)
    /* F9394 001F8414 A9630A71 */  pcpyud     $t4, $t0, $t2
    /* F9398 001F8418 30000C7F */  sq         $t4, 0x30($t8)
    /* F939C 001F841C EA75FD4B */  vmul.xyzw  $vf23, $vf14, $vf29
    /* F93A0 001F8420 400010FB */  sqc2       $vf16, 0x40($t8)
    /* F93A4 001F8424 89636971 */  pcpyld     $t4, $t3, $t1
    /* F93A8 001F8428 5BE1070C */  jal        func_001F856C
    /* F93AC 001F842C 50000C7F */   sq        $t4, 0x50($t8)
    /* F93B0 001F8430 40004B7A */  lq         $t3, 0x40($s2)
    /* F93B4 001F8434 5000487A */  lq         $t0, 0x50($s2)
    /* F93B8 001F8438 6000497A */  lq         $t1, 0x60($s2)
    /* F93BC 001F843C 88540B70 */  pextlw     $t2, $zero, $t3
    /* F93C0 001F8440 00000FFB */  sqc2       $vf15, 0x0($t8)
    /* F93C4 001F8444 A85C0B70 */  pextuw     $t3, $zero, $t3
    /* F93C8 001F8448 60000FFB */  sqc2       $vf15, 0x60($t8)
    /* F93CC 001F844C A9630A71 */  pcpyud     $t4, $t0, $t2
    /* F93D0 001F8450 10000C7F */  sq         $t4, 0x10($t8)
    /* F93D4 001F8454 70000C7F */  sq         $t4, 0x70($t8)
    /* F93D8 001F8458 200010FB */  sqc2       $vf16, 0x20($t8)
    /* F93DC 001F845C 89636971 */  pcpyld     $t4, $t3, $t1
    /* F93E0 001F8460 30000C7F */  sq         $t4, 0x30($t8)
    /* F93E4 001F8464 EA7DFD4B */  vmul.xyzw  $vf23, $vf15, $vf29
    /* F93E8 001F8468 400011FB */  sqc2       $vf17, 0x40($t8)
    /* F93EC 001F846C A9632B71 */  pcpyud     $t4, $t1, $t3
    /* F93F0 001F8470 5BE1070C */  jal        func_001F856C
    /* F93F4 001F8474 50000C7F */   sq        $t4, 0x50($t8)
    /* F93F8 001F8478 03002012 */  beqz       $s1, .L001F8488
    /* F93FC 001F847C A9830072 */   pcpyud    $s0, $s0, $zero
    /* F9400 001F8480 2BE1070C */  jal        func_001F84AC
    /* F9404 001F8484 00000000 */   nop
.align 2
  .L001F8488:
    /* F9408 001F8488 A9FBE072 */  pcpyud     $ra, $s7, $zero
    /* F940C 001F848C A98B2072 */  pcpyud     $s1, $s1, $zero
    /* F9410 001F8490 00000000 */  nop
    /* F9414 001F8494 00000000 */  nop
    /* F9418 001F8498 00000000 */  nop
    /* F941C 001F849C FAFF0014 */  bnez       $zero, .L001F8488
    /* F9420 001F84A0 A9934072 */   pcpyud    $s2, $s2, $zero
    /* F9424 001F84A4 0800E003 */  jr         $ra
    /* F9428 001F84A8 A99B6072 */   pcpyud    $s3, $s3, $zero
endlabel func_001F7EF8
