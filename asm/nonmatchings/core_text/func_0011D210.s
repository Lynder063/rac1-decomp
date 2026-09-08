.align 3
nonmatching func_0011D210, 0x38

glabel func_0011D210
    /* 1E190 0011D210 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 1E194 0011D214 0000BFFF */  sd         $31, 0x0($29)
    /* 1E198 0011D218 9C63040C */  jal        func_00118E70
    /* 1E19C 0011D21C 04000424 */   addiu     $4, $0, 0x4
    /* 1E1A0 0011D220 0400033C */  lui        $3, (0x40000 >> 16)
    /* 1E1A4 0011D224 24104300 */  and        $2, $2, $3
    /* 1E1A8 0011D228 04004010 */  beqz       $2, .L0011D23C
    /* 1E1AC 0011D22C 2D100000 */   daddu     $2, $0, $0
    /* 1E1B0 0011D230 B063040C */  jal        func_00118EC0
    /* 1E1B4 0011D234 00000000 */   nop
    /* 1E1B8 0011D238 01000224 */  addiu      $2, $0, 0x1
.align 2
  .L0011D23C:
    /* 1E1BC 0011D23C 0000BFDF */  ld         $31, 0x0($29)
    /* 1E1C0 0011D240 0800E003 */  jr         $31
    /* 1E1C4 0011D244 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0011D210
