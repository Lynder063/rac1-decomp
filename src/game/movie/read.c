#include "common.h"
#include "structs.h"

extern char *D_0016130C MACRO_ADDR;
extern char D_001E8E38[];
extern void func_0023DFC0(void *, char **, int *, char **, int *);
extern int func_0023CBE0(char *, int, char *, int, char *, int, char *, int);
extern int func_0023E068(void *, long, long, void *, int);
extern void func_0023BF48(void *);
extern void func_0023DFE0(void *, int);

/* Copies wrapped input into free decoder spans, records timestamps, then submits the copied bytes. */
int func_0023C9C0(void *unused, char *entry, char *buffer) {
    struct { char *p1; int n1; char *p2; int n2; } spans;
    char *source = *(char **)(entry + 8);
    int total = *(int *)(entry + 0xC);
    int first = buffer + *(int *)(buffer + 0x50008) - source;
    int copied;
    int remaining;
    if (total < first) first = total;
    remaining = total - first;
    videoDecBeginPut(D_0016130C + 0xD9048, &spans.p1, &spans.n1, &spans.p2, &spans.n2);
    copied = cpy2area((char *)(((unsigned int)spans.p1 & 0xFFFFFFF) | 0x20000000), spans.n1,
                          (char *)(((unsigned int)spans.p2 & 0xFFFFFFF) | 0x20000000), spans.n2,
                          source, first, buffer, remaining);
    if (copied > 0) {
        if (!videoDecPutTs(D_0016130C + 0xD9048, *(long *)(entry + 0x10), *(long *)(entry + 0x18), spans.p1, copied)) {
            ErrMessage(D_001E8E38);
        }
    }
    videoDecEndPut(D_0016130C + 0xD9048, copied);
    return copied > 0;
}
INCLUDE_ASM("asm/nonmatchings/text", func_0023CAF8); /* pcmCallback(sceMpeg *, sceMpegCbDataStr *, void *) */
INCLUDE_ASM("asm/nonmatchings/text", func_0023CBE0); /* cpy2area(unsigned char *, int, unsigned char *, int, unsigned char *, int, unsigned char *, int) */
