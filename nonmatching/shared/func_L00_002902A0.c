/* NON_MATCHING func_L00_002902A0 -- src/overlays/shared/space_0028FB78.c
 * Best so far: BYTES 20/624 (96.8% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   func_L00_002902A0: for each table entry of the current mode (D_0013E130 record's short at +0x26 picks D_L00_00
 *   The instruction sequence and structure match (do-while over arr[sel], `next = i + 1` copied back, `tbl + i * 1
 *   Also retail forms the address of D_0013E130 as lui + addiu + lh 0x26($2) (not folded into the symbol offset), 
 *   q28/t06: p8.c (632 vs 624) is the closest this round. Fixed: g is `D_0013DE6E + 0x2C2` kept in a local for the
 *   Left: table select compiles to bnel with `addiu $fp,$v0,0` move (retail sets $fp directly, bne with lui in del
 *   q29/u10: p12.c (Lombyte for-loop port, 624 bytes, 20 bytes differ) is the closest; size and structure match. L
 */
extern int func_001F4868(int);
extern void func_001F9C30(void *, void *, float);
extern int func_002140B0(int);
extern float func_001FA888(int);
extern void func_001F9BD8(void *, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern void func_L00_001FD1D8(void *, void *, int);
extern char D_L00_001BDD40[];
extern char D_L00_001BDDC0[];
extern char D_L00_001BDDE0[];
extern float D_L00_001BDD20[][2];
extern float D_L00_001BDE00[][4];
extern short D_L00_00160640;
extern char D_0013DE6E[];

typedef struct {
    float v[3];
    float w;
} TEnt;

typedef struct {
    float pos[4][4];
    int col[4];
    float uv[4][2];
    long tag[4];
} Quad;

/* Draws the level's four-corner quad sprites for each table entry of the current mode, around the moby.
   Adapted from Lombyte (MIT) for PAL: src/overlays/shared/gameplay_space_0028e8a0.c, FUN_L00_0028efc8. */
void func_L00_002902A0(char *m) {
    Quad q;
    float v[4];
    TEnt *tbl;
    char *g;
    int i;
    int j;
    int k;
    int c;
    unsigned int col;
    float s;

    g = D_0013DE6E + 0x2C2;
    tbl = (TEnt *)D_L00_001BDD40;
    if (*(short *)(g + 0x26) == 1) tbl = (TEnt *)D_L00_001BDDC0;
    else if (*(short *)(g + 0x26) == 2) tbl = (TEnt *)D_L00_001BDDE0;
    q.tag[1] = func_001F4868(5);
    q.tag[2] = 0xFF9000000260L;
    q.tag[3] = 0x8000000048L;
    q.tag[0] = 0;
    for (j = 0; j < 4; j++) {
        q.uv[j][0] = D_L00_001BDD20[j][0];
        q.uv[j][1] = D_L00_001BDD20[j][1];
    }
    func_001F9C30(v, m, 0.0009765625f);
    for (i = 0; i < ((int *)&D_L00_00160640)[*(short *)(g + 0x26)]; i++) {
        c = *(unsigned char *)(m + 0xBC);
        if (*(short *)(m + 0xB2)) c += func_002140B0(*(short *)(m + 0xB2));
        s = func_001FA888(c) * (tbl[i].w / 40.0f);
        col = (c << 24) | 0x2058B0;
        if (*(short *)(m + 0xA6) == 0x215) col = (c << 24) | 0x308000;
        for (k = 0; k < 4; k++) {
            q.col[k] = col;
            func_001F9C30(q.pos[k], D_L00_001BDE00[k], s);
            func_001F9BD8(q.pos[k], q.pos[k], &tbl[i]);
            func_001F9EC0(q.pos[k], q.pos[k], *(char **)(D_0013DE6E + 0x2C2) + 0xC0);
            func_001F9BD8(q.pos[k], q.pos[k], v);
        }
        func_L00_001FD1D8(&q, 0, 0);
    }
}
