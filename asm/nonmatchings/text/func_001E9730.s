.align 3
nonmatching func_001E9730, 0x38

glabel func_001E9730
    /* EA6B0 001E9730 80FFBD27 */  addiu      $29, $29, -0x80
    /* EA6B4 001E9734 4800A5FF */  sd         $5, 0x48($29)
    /* EA6B8 001E9738 5000A6FF */  sd         $6, 0x50($29)
    /* EA6BC 001E973C 5800A7FF */  sd         $7, 0x58($29)
    /* EA6C0 001E9740 6000A8FF */  sd         $8, 0x60($29)
    /* EA6C4 001E9744 6800A9FF */  sd         $9, 0x68($29)
    /* EA6C8 001E9748 7000AAFF */  sd         $10, 0x70($29)
    /* EA6CC 001E974C 7800ABFF */  sd         $11, 0x78($29)
    /* EA6D0 001E9750 3800ACE7 */  swc1       $f12, 0x38($29)
    /* EA6D4 001E9754 3C00AEE7 */  swc1       $f14, 0x3C($29)
    /* EA6D8 001E9758 4000B0E7 */  swc1       $f16, 0x40($29)
    /* EA6DC 001E975C 4400B2E7 */  swc1       $f18, 0x44($29)
    /* EA6E0 001E9760 0800E003 */  jr         $31
    /* EA6E4 001E9764 8000BD27 */   addiu     $29, $29, 0x80
endlabel func_001E9730
