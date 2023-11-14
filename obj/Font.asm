;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module Font
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_Font
	.globl ___func_Font
	.globl _fill_win_rect
	.globl _init_win
	.globl _set_win_tile_xy
	.globl _set_win_tiles
	.globl _vsync
	.globl _DIALOG_DELAY
	.globl _keys
	.globl _previous_keys
	.globl _Font_tiles
	.globl _Font_symbols
	.globl _dialog_print
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_previous_keys::
	.ds 1
_keys::
	.ds 1
_DIALOG_DELAY::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/Font.c:12: BANKREF(Font)
;	---------------------------------
; Function __func_Font
; ---------------------------------
	b___func_Font	= 0
___func_Font::
	.local b___func_Font 
	___bank_Font = b___func_Font 
	.globl ___bank_Font 
;src/Font.c:138: void dialog_print(unsigned char *text, uint8_t size)
;	---------------------------------
; Function dialog_print
; ---------------------------------
_dialog_print::
	add	sp, #-8
	ldhl	sp,	#3
	ld	(hl), e
	inc	hl
	ld	(hl), d
	dec	hl
	dec	hl
	ld	(hl), a
;src/Font.c:140: init_win(0xCC);//wipe the screen
	ld	a, #0xcc
	push	af
	inc	sp
	call	_init_win
	inc	sp
;src/Font.c:141: set_win_tiles(0,0,20,6,Dialog_Border_map);//throw up a fresh border
	ld	de, #_Dialog_Border_map
	push	de
	ld	hl, #0x614
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_win_tiles
	add	sp, #6
;src/Font.c:142: SHOW_WIN;//display to the world
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
	ldh	(_LCDC_REG + 0), a
;src/Font.c:145: uint8_t y = 160;
	ld	c, #0xa0
;src/Font.c:146: while (y > 96) {
00101$:
	ld	a, #0x60
	sub	a, c
	jr	NC, 00103$
;x:\gbdk\include\gb\gb.h:1656: WX_REG=x, WY_REG=y;
	ld	a, #0x07
	ldh	(_WX_REG + 0), a
	ld	a, c
	ldh	(_WY_REG + 0), a
;src/Font.c:148: y-=3;//the means the window could end up in the wrong spot, we correct that below
	ld	a, c
	add	a, #0xfd
	ld	c, a
;src/Font.c:150: vsync();
	call	_vsync
	jr	00101$
00103$:
;x:\gbdk\include\gb\gb.h:1656: WX_REG=x, WY_REG=y;
	ld	a, #0x07
	ldh	(_WX_REG + 0), a
	ld	a, #0x60
	ldh	(_WY_REG + 0), a
;src/Font.c:156: if (playerY > 84) {
	ld	hl, #_playerY
	ld	e, (hl)
	ld	a,#0x54
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00292$
	bit	7, d
	jr	NZ, 00293$
	cp	a, a
	jr	00293$
00292$:
	bit	7, d
	jr	Z, 00293$
	scf
00293$:
	jr	NC, 00105$
;src/Font.c:157: move_sprite(0, playerX+8, tempPlayerY+16);
	ld	a, (#_playerX)
	add	a, #0x08
	ld	c, a
;x:\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;x:\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0xb0
	ld	(hl+), a
	ld	(hl), c
;src/Font.c:158: move_sprite(2, playerX+16, tempPlayerY+16);
	ld	a, (#_playerX)
	add	a, #0x10
	ld	c, a
;x:\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 8)
;x:\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0xb0
	ld	(hl+), a
	ld	(hl), c
;src/Font.c:158: move_sprite(2, playerX+16, tempPlayerY+16);
00105$:
;src/Font.c:162: uint8_t xpos=0, ypos=0;
	ldhl	sp,	#5
	xor	a, a
	ld	(hl+), a
;src/Font.c:164: uint8_t index=0;
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
;src/Font.c:166: while (index-0<(size-1))
00117$:
	ldhl	sp,	#7
	ld	c, (hl)
	ld	b, #0x00
	ldhl	sp,	#2
	ld	l, (hl)
	ld	h, #0x00
	dec	hl
	ld	e, h
	ld	d, b
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	bit	7, e
	jr	Z, 00294$
	bit	7, d
	jr	NZ, 00295$
	cp	a, a
	jr	00295$
00294$:
	bit	7, d
	jr	Z, 00295$
	scf
00295$:
	jp	NC, 00119$
;src/Font.c:169: if (xpos % DIALOG_WIDTH == 0) {xpos=1; ypos++;}
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	bc, #0x0012
	ld	(hl), b
	pop	de
	push	de
	call	__modsint
	ld	e, c
	ld	a, b
	or	a, e
	jr	NZ, 00107$
	ldhl	sp,	#5
	ld	a, #0x01
	ld	(hl+), a
	inc	(hl)
	jr	00108$
00107$:
;src/Font.c:170: else xpos++;
	ldhl	sp,	#5
	inc	(hl)
00108$:
;src/Font.c:173: (xpos == 1 && text[index] == ' ')?index++:index;
	ldhl	sp,	#5
	ld	a, (hl)
	dec	a
	jr	NZ, 00142$
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#7
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	sub	a, #0x20
	jr	NZ, 00142$
	ldhl	sp,	#7
	inc	(hl)
00142$:
;src/Font.c:182: const unsigned char *current = &text[index];
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#7
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
;src/Font.c:186: if (ypos > DIALOG_HEIGHT) {
	ld	a, #0x04
	ldhl	sp,	#6
	sub	a, (hl)
	jr	NC, 00110$
;src/Font.c:193: fill_win_rect(DIALOG_INIT_X, DIALOG_INIT_Y, DIALOG_WIDTH, DIALOG_HEIGHT, 0xCC);
	ld	hl, #0xcc04
	push	hl
	ld	hl, #0x1201
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	call	_fill_win_rect
	add	sp, #5
;src/Font.c:194: xpos=ypos=1;
	ldhl	sp,	#6
	ld	a, #0x01
	ld	(hl-), a
	ld	(hl), #0x01
00110$:
;src/Font.c:198: if (*current != ' ') set_win_tile_xy(xpos, ypos, (*current-0x47+Font_sprite_start));
	ld	a, (bc)
	cp	a, #0x20
	jr	Z, 00170$
	add	a, #0x85
	push	af
	inc	sp
	ldhl	sp,	#7
	ld	a, (hl-)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_set_win_tile_xy
	add	sp, #3
;src/Font.c:201: for (uint8_t i=0; i<(sizeof(Font_symbols)); i++)
00170$:
	ld	e, #0x00
00134$:
	ld	a, e
	sub	a, #0x19
	jr	NC, 00115$
;src/Font.c:202: if (*current == Font_symbols[i]) set_win_tile_xy(xpos, ypos, (*current-0x20+Font_sprite_start));
	ld	a, (bc)
	ld	d, a
	ld	a, #<(_Font_symbols)
	add	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_Font_symbols)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, (hl)
;	spillPairReg hl
	ld	a,d
	cp	a,l
	jr	NZ, 00135$
	add	a, #0xac
	push	de
	push	af
	inc	sp
	ldhl	sp,	#9
	ld	a, (hl-)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_set_win_tile_xy
	add	sp, #3
	pop	de
00135$:
;src/Font.c:201: for (uint8_t i=0; i<(sizeof(Font_symbols)); i++)
	inc	e
	jr	00134$
00115$:
;src/Font.c:204: VBlankDelay(DIALOG_DELAY);
	ld	c, #0x00
00137$:
	ld	a, c
	ld	hl, #_DIALOG_DELAY
	sub	a, (hl)
	jr	NC, 00116$
	call	_vsync
	inc	c
	jr	00137$
00116$:
;src/Font.c:206: index++;
	ldhl	sp,	#7
	inc	(hl)
	jp	00117$
00119$:
;src/Font.c:216: if (playerY > 84) {
	ld	hl, #_playerY
	ld	e, (hl)
	ld	a,#0x54
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00303$
	bit	7, d
	jr	NZ, 00304$
	cp	a, a
	jr	00304$
00303$:
	bit	7, d
	jr	Z, 00304$
	scf
00304$:
	jr	NC, 00121$
;src/Font.c:217: move_sprite(0, playerX+8, playerY+16);
	ld	a, (#_playerY)
	add	a, #0x10
	ld	c, a
	ld	a, (#_playerX)
	add	a, #0x08
	ld	b, a
;x:\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;x:\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;src/Font.c:218: move_sprite(2, playerX+16, playerY+16);
	ld	a, (#_playerY)
	add	a, #0x10
	ld	c, a
	ld	a, (#_playerX)
	add	a, #0x10
	ld	b, a
;x:\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 8)
;x:\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;src/Font.c:218: move_sprite(2, playerX+16, playerY+16);
00121$:
;src/Font.c:222: y = 96;
	ld	c, #0x60
;src/Font.c:223: while (y < 160) {
00122$:
	ld	a, c
	sub	a, #0xa0
	jr	NC, 00124$
;x:\gbdk\include\gb\gb.h:1656: WX_REG=x, WY_REG=y;
	ld	a, #0x07
	ldh	(_WX_REG + 0), a
	ld	a, c
	ldh	(_WY_REG + 0), a
;src/Font.c:225: y+=3;
	inc	c
	inc	c
	inc	c
;src/Font.c:227: vsync();
	call	_vsync
	jr	00122$
00124$:
;x:\gbdk\include\gb\gb.h:1656: WX_REG=x, WY_REG=y;
	ld	a, #0x07
	ldh	(_WX_REG + 0), a
	ld	a, #0xa0
	ldh	(_WY_REG + 0), a
;src/Font.c:230: HIDE_WIN;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xdf
	ldh	(_LCDC_REG + 0), a
;src/Font.c:231: }
	add	sp, #8
	ret
_Font_symbols:
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
_Font_tiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xc3	; 195
	.db #0xdd	; 221
	.db #0x81	; 129
	.db #0xa3	; 163
	.db #0x1c	; 28
	.db #0x56	; 86	'V'
	.db #0x20	; 32
	.db #0xe5	; 229
	.db #0x18	; 24
	.db #0xdb	; 219
	.db #0x04	; 4
	.db #0x87	; 135
	.db #0xb9	; 185
	.db #0xef	; 239
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x9d	; 157
	.db #0x9d	; 157
	.db #0x9b	; 155
	.db #0x9b	; 155
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xd9	; 217
	.db #0xd9	; 217
	.db #0xb9	; 185
	.db #0xb9	; 185
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xe3	; 227
	.db #0xdd	; 221
	.db #0xd5	; 213
	.db #0xc9	; 201
	.db #0xeb	; 235
	.db #0xe3	; 227
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xdf	; 223
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xdf	; 223
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc1	; 193
	.db #0xc2	; 194
	.db #0xc1	; 193
	.db #0xc2	; 194
	.db #0xc1	; 193
	.db #0xfe	; 254
	.db #0xe1	; 225
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xdf	; 223
	.db #0xdf	; 223
	.db #0xdf	; 223
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xb9	; 185
	.db #0xb9	; 185
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0x9d	; 157
	.db #0x9d	; 157
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xeb	; 235
	.db #0xeb	; 235
	.db #0xdb	; 219
	.db #0xdb	; 219
	.db #0xbb	; 187
	.db #0xbb	; 187
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0xb9	; 185
	.db #0xb9	; 185
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xb9	; 185
	.db #0xb9	; 185
	.db #0xb9	; 185
	.db #0xb9	; 185
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x3d	; 61
	.db #0x3d	; 61
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3d	; 61
	.db #0x3d	; 61
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x9d	; 157
	.db #0x9d	; 157
	.db #0x9d	; 157
	.db #0x9d	; 157
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xb9	; 185
	.db #0xb9	; 185
	.db #0xa3	; 163
	.db #0xa3	; 163
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xa3	; 163
	.db #0xa3	; 163
	.db #0xb9	; 185
	.db #0xb9	; 185
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0xa7	; 167
	.db #0xa7	; 167
	.db #0xaf	; 175
	.db #0xaf	; 175
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xbb	; 187
	.db #0xbb	; 187
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xbb	; 187
	.db #0xbb	; 187
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xf5	; 245
	.db #0xf5	; 245
	.db #0xf5	; 245
	.db #0xf5	; 245
	.db #0x95	; 149
	.db #0x95	; 149
	.db #0x6d	; 109	'm'
	.db #0x6d	; 109	'm'
	.db #0xbb	; 187
	.db #0xbb	; 187
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xb3	; 179
	.db #0xb3	; 179
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0xa7	; 167
	.db #0xa7	; 167
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x7b	; 123
	.db #0x7b	; 123
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x7d	; 125
	.db #0x7d	; 125
	.db #0x4d	; 77	'M'
	.db #0x4d	; 77	'M'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x7d	; 125
	.db #0x7d	; 125
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x7d	; 125
	.db #0x7d	; 125
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x85	; 133
	.db #0x85	; 133
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x9b	; 155
	.db #0x9b	; 155
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3d	; 61
	.db #0x3d	; 61
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7d	; 125
	.db #0x7d	; 125
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x9d	; 157
	.db #0x9d	; 157
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x95	; 149
	.db #0x95	; 149
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x9b	; 155
	.db #0x9b	; 155
	.db #0xd3	; 211
	.db #0xd3	; 211
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xa5	; 165
	.db #0xa5	; 165
	.db #0xa5	; 165
	.db #0xa5	; 165
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xbb	; 187
	.db #0xbb	; 187
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xbb	; 187
	.db #0xbb	; 187
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7d	; 125
	.db #0x7d	; 125
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x7d	; 125
	.db #0x7d	; 125
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.area _CODE
	.area _INITIALIZER
__xinit__previous_keys:
	.db #0x00	; 0
__xinit__keys:
	.db #0x00	; 0
__xinit__DIALOG_DELAY:
	.db #0x01	; 1
	.area _CABS (ABS)
