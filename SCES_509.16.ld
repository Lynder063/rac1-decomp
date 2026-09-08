SECTIONS
{
    HIDDEN(__romPos = 0);
    core_ROM_START = __romPos;
    core_VRAM = ADDR(.core);
    .core 0x100080 : AT(core_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        core_TEXT_START = .;
        build/src/core_text.c.o(.text);
        . = ALIGN(., 16);
        core_TEXT_END = .;
        core_TEXT_SIZE = ABSOLUTE(core_TEXT_END - core_TEXT_START);
        core_DATA_START = .;
        build/assets/vutext.bin.o(.data);
        build/src/core_text.c.o(.data);
        build/asm/data/core_data.data.s.o(.data);
        . = ALIGN(., 16);
        core_DATA_END = .;
        core_DATA_SIZE = ABSOLUTE(core_DATA_END - core_DATA_START);
        core_RODATA_START = .;
        build/src/core_text.c.o(.rodata);
        build/asm/data/core_rdata.rodata.s.o(.rodata);
        . = ALIGN(., 16);
        core_RODATA_END = .;
        core_RODATA_SIZE = ABSOLUTE(core_RODATA_END - core_RODATA_START);
    }
    core_bss_VRAM = ADDR(.core_bss);
    .core_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        core_BSS_START = .;
        build/src/core_text.c.o(.bss);
        build/asm/data/core_bss.bss.s.o(.bss);
        . = ALIGN(., 16);
        core_BSS_END = .;
        core_BSS_SIZE = ABSOLUTE(core_BSS_END - core_BSS_START);
    }
    __romPos += SIZEOF(.core);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    core_ROM_END = __romPos;
    core_VRAM_END = .;

    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x15ED80 : AT(main_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        main_TEXT_START = .;
        build/src/text.c.o(.text);
        . = ALIGN(., 16);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_DATA_START = .;
        build/asm/data/data.data.s.o(.data);
        build/asm/data/lvl_vtbl.data.s.o(.data);
        build/asm/data/lvl_camvtbl.data.s.o(.data);
        build/asm/data/lvl_sndvtbl.data.s.o(.data);
        build/src/text.c.o(.data);
        . = ALIGN(., 16);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
        main_RODATA_START = .;
        build/asm/data/core_lit.rodata.s.o(.rodata);
        build/asm/data/lit.rodata.s.o(.rodata);
        build/src/text.c.o(.rodata);
        . = ALIGN(., 16);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        main_BSS_START = .;
        build/asm/data/bss.bss.s.o(.bss);
        build/src/text.c.o(.bss);
        . = ALIGN(., 16);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
