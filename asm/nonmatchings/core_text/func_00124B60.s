.align 3
nonmatching func_00124B60, 0x28

glabel func_00124B60
    /* 25AE0 00124B60 80FFBD27 */  addiu      $29, $29, -0x80
    /* 25AE4 00124B64 4800A5FF */  sd         $5, 0x48($29)
    /* 25AE8 00124B68 5000A6FF */  sd         $6, 0x50($29)
    /* 25AEC 00124B6C 5800A7FF */  sd         $7, 0x58($29)
    /* 25AF0 00124B70 6000A8FF */  sd         $8, 0x60($29)
    /* 25AF4 00124B74 6800A9FF */  sd         $9, 0x68($29)
    /* 25AF8 00124B78 7000AAFF */  sd         $10, 0x70($29)
    /* 25AFC 00124B7C 7800ABFF */  sd         $11, 0x78($29)
    /* 25B00 00124B80 0800E003 */  jr         $31
    /* 25B04 00124B84 8000BD27 */   addiu     $29, $29, 0x80
endlabel func_00124B60
