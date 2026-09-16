#include "common.h"

/*
 * libgcc2 L_udivdi3 and L_umoddi3, then fp-bit L_pack_df and L_unpack_df. udivdi3 comes out 12 bytes short (retail keeps a 0x10 frame), umoddi3 2/336 words (frame 0x30 vs 0x10). pack_d/unpack_d differ from the fp-bit.c revision used here. One stub object, because nothing between them is compiled from source yet.
 */

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011EF28);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011F4F8);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FA38);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011FB68);
