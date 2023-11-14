;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Move_MainCharacter
	.globl _CheckCollision
	.globl _InitLevel1_1
	.globl _Level1_1_Act
	.globl _PlacePlayer
	.globl _MainCharacter_walk
	.globl _MainCharacter_idle
	.globl _dialog_print
	.globl _init_bkg
	.globl _init_win
	.globl _set_sprite_data
	.globl _set_win_tiles
	.globl _set_win_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _vsync
	.globl _joypad
	.globl _keys
	.globl _previous_keys
	.globl _map
	.globl _action_func
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_action_func::
	.ds 2
_map::
	.ds 360
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_previous_keys::
	.ds 1
_keys::
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
;src/main.c:28: void PlacePlayer() {//stays here because of TILES
;	---------------------------------
; Function PlacePlayer
; ---------------------------------
_PlacePlayer::
;src/main.c:29: playerX = playerMapX * TILES;
	ld	a, (#_playerMapX)
	add	a, a
	add	a, a
	add	a, a
	ld	(#_playerX),a
;src/main.c:30: playerY = playerMapY * TILES;
	ld	a, (#_playerMapY)
	add	a, a
	add	a, a
	add	a, a
	ld	(#_playerY),a
;src/main.c:31: }
	ret
;src/main.c:33: void Level1_1_Act(void) {
;	---------------------------------
; Function Level1_1_Act
; ---------------------------------
_Level1_1_Act::
	add	sp, #-128
	add	sp, #-29
;src/main.c:34: int check = CheckCollision();
	call	_CheckCollision
;src/main.c:36: switch(check) {
	ld	a, c
	or	a, a
	or	a, b
	jp	Z,00110$
	ld	a, c
	dec	a
	or	a, b
	jp	Z,00110$
	ld	a, c
	sub	a, #0x02
	or	a, b
	jr	Z, 00103$
	ld	a, c
	sub	a, #0x03
	or	a, b
	jp	Z,00104$
	ld	a, c
	sub	a, #0x04
	or	a, b
	jp	Z,00105$
	ld	a, c
	sub	a, #0x0a
	or	a, b
	jp	Z,00106$
	jp	00110$
;src/main.c:44: case 2://CHUTE
00103$:
;src/main.c:45: char text2[] = "looks like some   sort of chute#*";
	ldhl	sp,	#0
	ld	c, l
	ld	b, h
	ld	(hl), #0x6c
	ldhl	sp,	#1
	ld	a,#0x6f
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x6b
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x6c
	ld	(hl+), a
	ld	a, #0x69
	ld	(hl+), a
	ld	a, #0x6b
	ld	(hl+), a
	ld	a, #0x65
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a, #0x6f
	ld	(hl+), a
	ld	a, #0x6d
	ld	(hl+), a
	ld	a, #0x65
	ld	(hl+), a
	ld	a,#0x20
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a, #0x6f
	ld	(hl+), a
	ld	a, #0x72
	ld	(hl+), a
	ld	a, #0x74
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x6f
	ld	(hl+), a
	ld	a, #0x66
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x63
	ld	(hl+), a
	ld	a, #0x68
	ld	(hl+), a
	ld	a, #0x75
	ld	(hl+), a
	ld	a, #0x74
	ld	(hl+), a
	ld	a, #0x65
	ld	(hl+), a
	ld	a, #0x23
	ld	(hl+), a
	ld	a, #0x2a
	ld	(hl+), a
	ld	(hl), #0x00
;src/main.c:46: dialog_print(text2, sizeof(text2));
	ld	a, #0x22
	ld	e, c
	ld	d, b
	call	_dialog_print
;src/main.c:47: break;
	jp	00110$
;src/main.c:49: case 3://PILE
00104$:
;src/main.c:50: char text3[] = "twisted limbs,    bones, and skulls  peer out from     rotten flesh#*";
	ldhl	sp,	#34
	ld	c, l
	ld	b, h
	ld	(hl), #0x74
	ldhl	sp,	#35
	ld	a, #0x77
	ld	(hl+), a
	ld	a, #0x69
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a, #0x74
	ld	(hl+), a
	ld	a, #0x65
	ld	(hl+), a
	ld	a, #0x64
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x6c
	ld	(hl+), a
	ld	a, #0x69
	ld	(hl+), a
	ld	a, #0x6d
	ld	(hl+), a
	ld	a, #0x62
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a, #0x2c
	ld	(hl+), a
	ld	a,#0x20
	ld	(hl+),a
	ld	(hl+), a
	ld	a,#0x20
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x62
	ld	(hl+), a
	ld	a, #0x6f
	ld	(hl+), a
	ld	a, #0x6e
	ld	(hl+), a
	ld	a, #0x65
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a, #0x2c
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x61
	ld	(hl+), a
	ld	a, #0x6e
	ld	(hl+), a
	ld	a, #0x64
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a, #0x6b
	ld	(hl+), a
	ld	a, #0x75
	ld	(hl+), a
	ld	a,#0x6c
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a,#0x20
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x70
	ld	(hl+), a
	ld	a,#0x65
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x72
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x6f
	ld	(hl+), a
	ld	a, #0x75
	ld	(hl+), a
	ld	a, #0x74
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x66
	ld	(hl+), a
	ld	a, #0x72
	ld	(hl+), a
	ld	a, #0x6f
	ld	(hl+), a
	ld	a, #0x6d
	ld	(hl+), a
	ld	a,#0x20
	ld	(hl+),a
	ld	(hl+), a
	ld	a,#0x20
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x72
	ld	(hl+), a
	ld	a, #0x6f
	ld	(hl+), a
	ld	a,#0x74
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x65
	ld	(hl+), a
	ld	a, #0x6e
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x66
	ld	(hl+), a
	ld	a, #0x6c
	ld	(hl+), a
	ld	a, #0x65
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a, #0x68
	ld	(hl+), a
	ld	a, #0x23
	ld	(hl+), a
	ld	a, #0x2a
	ld	(hl+), a
	ld	(hl), #0x00
;src/main.c:51: dialog_print(text3, sizeof(text3));
	ld	a, #0x46
	ld	e, c
	ld	d, b
	call	_dialog_print
;src/main.c:52: break;
	jp	00110$
;src/main.c:54: case 4://CART
00105$:
;src/main.c:55: char text4[] = "the cart is slick with blood#*";
	ldhl	sp,	#104
	ld	a, #0x74
	ld	(hl+), a
	ld	a, #0x68
	ld	(hl+), a
	ld	a, #0x65
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x63
	ld	(hl+), a
	ld	a, #0x61
	ld	(hl+), a
	ld	a, #0x72
	ld	(hl+), a
	ld	a, #0x74
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x69
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x73
	ld	(hl+), a
	ld	a, #0x6c
	ld	(hl+), a
	ld	a, #0x69
	ld	(hl+), a
	ld	a, #0x63
	ld	(hl+), a
	ld	a, #0x6b
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x77
	ld	(hl+), a
	ld	a, #0x69
	ld	(hl+), a
	ld	a, #0x74
	ld	(hl+), a
	ld	a, #0x68
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x62
	ld	(hl+), a
	ld	a, #0x6c
	ld	(hl+), a
	ld	a,#0x6f
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x64
	ld	(hl+), a
	ld	a, #0x23
	ld	(hl+), a
	ld	a, #0x2a
	ld	(hl+), a
	ld	(hl), #0x00
;src/main.c:56: dialog_print(text4, sizeof(text4));
	ld	a, #0x1f
	ld	hl, #104
	add	hl, sp
	ld	e, l
	ld	d, h
	call	_dialog_print
;src/main.c:57: break;
	jr	00110$
;src/main.c:59: case 10://DOOR1
00106$:
;src/main.c:60: char text10[] = "a fucking door, mate*";
	ld	hl, #135
	add	hl, sp
	ld	a, #0x61
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x66
	ld	(hl+), a
	ld	a, #0x75
	ld	(hl+), a
	ld	a, #0x63
	ld	(hl+), a
	ld	a, #0x6b
	ld	(hl+), a
	ld	a, #0x69
	ld	(hl+), a
	ld	a, #0x6e
	ld	(hl+), a
	ld	a, #0x67
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x64
	ld	(hl+), a
	ld	a,#0x6f
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x72
	ld	(hl+), a
	ld	a, #0x2c
	ld	(hl+), a
	ld	a, #0x20
	ld	(hl+), a
	ld	a, #0x6d
	ld	(hl+), a
	ld	a, #0x61
	ld	(hl+), a
	ld	a, #0x74
	ld	(hl+), a
	ld	a, #0x65
	ld	(hl+), a
	ld	a, #0x2a
	ld	(hl+), a
	ld	(hl), #0x00
;src/main.c:61: dialog_print(text10, sizeof(text10));
	ld	a, #0x16
	ld	hl, #135
	add	hl, sp
	ld	e, l
	ld	d, h
	call	_dialog_print
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 42)
	ld	(hl), #0x24
	ld	hl, #(_shadow_OAM + 46)
	ld	(hl), #0x26
;src/main.c:64: HIDE_BKG;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfe
	ldh	(_LCDC_REG + 0), a
;src/main.c:65: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;src/main.c:66: HIDE_WIN;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xdf
	ldh	(_LCDC_REG + 0), a
;src/main.c:67: InitLevel1_1();
	call	_InitLevel1_1
;src/main.c:68: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/main.c:69: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;src/main.c:71: }
00110$:
;src/main.c:72: }
	add	sp, #127
	add	sp, #30
	ret
;src/main.c:74: void InitLevel1_1() {
;	---------------------------------
; Function InitLevel1_1
; ---------------------------------
_InitLevel1_1::
;src/main.c:75: action_func = Level1_1_Act;
	ld	hl, #_action_func
	ld	a, #<(_Level1_1_Act)
	ld	(hl+), a
	ld	(hl), #>(_Level1_1_Act)
;src/main.c:76: facing = 1;
	ld	hl, #_facing
	ld	(hl), #0x01
;src/main.c:84: set_bkg_data(0,Level1_1_sprite_size,Level1_1_sprite);
	ld	de, #_Level1_1_sprite
	push	de
	ld	hl, #0x4c00
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src/main.c:85: set_bkg_tiles(0,0,MAP_WIDTH,MAP_HEIGHT,Level1_1_map);
	ld	de, #_Level1_1_map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;src/main.c:86: set_sprite_data(32,8,Level1_Door_sprite);
	ld	de, #_Level1_Door_sprite
	push	de
	ld	hl, #0x820
	push	hl
	call	_set_sprite_data
	add	sp, #4
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 42)
	ld	(hl), #0x20
	ld	hl, #(_shadow_OAM + 46)
	ld	(hl), #0x22
;x:\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 40)
;x:\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x14
	ld	(hl+), a
	ld	(hl), #0x38
;x:\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 44)
;x:\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x14
	ld	(hl+), a
	ld	(hl), #0x40
;src/main.c:92: playerMapX = 3;
	ld	hl, #_playerMapX
	ld	(hl), #0x03
;src/main.c:93: playerMapY = 3;
	ld	hl, #_playerMapY
	ld	(hl), #0x03
;src/main.c:95: PlacePlayer();
	call	_PlacePlayer
;src/main.c:97: map[0][9] = CHUTE;
	ld	hl, #(_map + 9)
	ld	(hl), #0x02
;src/main.c:98: map[0][10] = CHUTE;
	ld	hl, #(_map + 10)
	ld	(hl), #0x02
;src/main.c:100: map[1][9] = SOLID;
	ld	hl, #(_map + 27)
	ld	(hl), #0x01
;src/main.c:101: map[1][10] = SOLID;
	ld	hl, #(_map + 28)
	ld	(hl), #0x01
;src/main.c:103: for (uint8_t i = 2; i < 5; i++) map[i][9] = PILE;
	ld	c, #0x02
00110$:
	ld	a, c
	sub	a, #0x05
	jr	NC, 00101$
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	de, #_map
	add	hl, de
	ld	de, #0x0009
	add	hl, de
	ld	(hl), #0x03
	inc	c
	jr	00110$
00101$:
;src/main.c:104: for (uint8_t i = 2; i < 5; i++) map[i][10] = PILE;
	ld	c, #0x02
00113$:
	ld	a, c
	sub	a, #0x05
	jr	NC, 00102$
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	de, #_map
	add	hl, de
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x03
	inc	c
	jr	00113$
00102$:
;src/main.c:106: for (uint8_t i = 7; i < 11; i++) map[i][9] = CART;
	ld	c, #0x07
00116$:
	ld	a, c
	sub	a, #0x0b
	jr	NC, 00103$
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	de, #_map
	add	hl, de
	ld	de, #0x0009
	add	hl, de
	ld	(hl), #0x04
	inc	c
	jr	00116$
00103$:
;src/main.c:107: for (uint8_t i = 7; i < 11; i++) map[i][10] = CART;
	ld	c, #0x07
00119$:
	ld	a, c
	sub	a, #0x0b
	jr	NC, 00104$
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	de, #_map
	add	hl, de
	ld	de, #0x000a
	add	hl, de
	ld	(hl), #0x04
	inc	c
	jr	00119$
00104$:
;src/main.c:109: map[6][0]= DOOR;
	ld	hl, #(_map + 108)
	ld	(hl), #0x0a
;src/main.c:110: }
	ret
;src/main.c:112: int CheckCollision() {
;	---------------------------------
; Function CheckCollision
; ---------------------------------
_CheckCollision::
	dec	sp
;src/main.c:113: int8_t x = 0;
	ld	e, #0x00
;src/main.c:114: int8_t y = 0;
	ldhl	sp,	#0
	ld	(hl), #0x00
;src/main.c:116: switch (facing) {
	ld	a, (#_facing)
	or	a, a
	jr	Z, 00101$
	ld	a, (#_facing)
	dec	a
	jr	Z, 00102$
	ld	a,(#_facing)
	cp	a,#0x02
	jr	Z, 00103$
	sub	a, #0x03
	jr	Z, 00104$
	jr	00105$
;src/main.c:117: case 0:
00101$:
;src/main.c:118: y = -1;
	ldhl	sp,	#0
	ld	(hl), #0xff
;src/main.c:119: break;
	jr	00105$
;src/main.c:121: case 1:
00102$:
;src/main.c:122: y = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
;src/main.c:123: break;
	jr	00105$
;src/main.c:125: case 2:
00103$:
;src/main.c:126: x = -1;
	ld	e, #0xff
;src/main.c:127: break;
	jr	00105$
;src/main.c:129: case 3:
00104$:
;src/main.c:130: x = 1;
	ld	e, #0x01
;src/main.c:132: }
00105$:
;src/main.c:134: if (map[playerMapX+x][playerMapY+y]) return map[playerMapX+x][playerMapY+y];
	ld	a, (#_playerMapX)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c,l
	ld	b,h
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a, l
	add	a, #<(_map)
	ld	e, a
	ld	a, h
	adc	a, #>(_map)
	ld	d, a
	ld	a, (#_playerMapY)
	ldhl	sp,	#0
	add	a, (hl)
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00114$
	ld	c, a
	ld	b, #0x00
	jr	00116$
00114$:
;src/main.c:136: else if (((playerMapX + x) > MAP_WIDTH-2) || ((playerMapX + x) < 0)) return 1;
	ld	e, b
	ld	d, #0x00
	ld	a, #0x12
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00171$
	bit	7, d
	jr	NZ, 00172$
	cp	a, a
	jr	00172$
00171$:
	bit	7, d
	jr	Z, 00172$
	scf
00172$:
	jr	C, 00109$
	bit	7, b
	jr	Z, 00110$
00109$:
	ld	bc, #0x0001
	jr	00116$
00110$:
;src/main.c:138: else if (((playerMapY + y) > MAP_HEIGHT-3) || ((playerMapY + y) < 1)) return 1;
	ld	a, (#_playerMapY)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ldhl	sp,	#0
	ld	a, (hl)
	push	af
	rlca
	sbc	a, a
	ld	e, a
	pop	af
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
	ld	e, b
	ld	d, #0x00
	ld	a, #0x0f
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00173$
	bit	7, d
	jr	NZ, 00174$
	cp	a, a
	jr	00174$
00173$:
	bit	7, d
	jr	Z, 00174$
	scf
00174$:
	jr	C, 00106$
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00115$
00106$:
	ld	bc, #0x0001
	jr	00116$
00115$:
;src/main.c:140: return 0;
	ld	bc, #0x0000
00116$:
;src/main.c:141: }
	inc	sp
	ret
;src/main.c:143: void Move_MainCharacter() {
;	---------------------------------
; Function Move_MainCharacter
; ---------------------------------
_Move_MainCharacter::
;src/main.c:144: if ((((playerX) % TILES) == 0) && (((playerY) % TILES) == 0)) {
	ld	a, (#_playerX)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	bc, #0x0008
	call	__modsint
	ld	a, b
	or	a, c
	jr	NZ, 00102$
	ld	a, (#_playerY)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	bc, #0x0008
	call	__modsint
	ld	a, b
	or	a, c
	jr	NZ, 00102$
;src/main.c:145: playerMoving = 0;
	ld	hl, #_playerMoving
	ld	(hl), #0x00
;src/main.c:146: MainCharacter_idle();
	call	_MainCharacter_idle
	jr	00103$
00102$:
;src/main.c:149: MainCharacter_walk();
	call	_MainCharacter_walk
;src/main.c:150: playerMoving = 1;
	ld	hl, #_playerMoving
	ld	(hl), #0x01
00103$:
;src/main.c:153: if (playerMoving == 1) {
	ld	a, (#_playerMoving)
	dec	a
	jr	NZ, 00133$
;src/main.c:154: switch(facing) {
	ld	a, (#_facing)
	or	a, a
	jr	Z, 00105$
	ld	a, (#_facing)
	dec	a
	jr	Z, 00106$
	ld	a,(#_facing)
	cp	a,#0x02
	jr	Z, 00107$
	sub	a, #0x03
	jr	Z, 00108$
	ret
;src/main.c:155: case 0:
00105$:
;src/main.c:156: playerY -= 1;
	ld	hl, #_playerY
	dec	(hl)
;src/main.c:157: break;
	ret
;src/main.c:158: case 1:
00106$:
;src/main.c:159: playerY += 1;
	ld	hl, #_playerY
	inc	(hl)
;src/main.c:160: break;
	ret
;src/main.c:161: case 2:
00107$:
;src/main.c:162: playerX -= 1;
	ld	hl, #_playerX
	dec	(hl)
;src/main.c:163: break;
	ret
;src/main.c:164: case 3:
00108$:
;src/main.c:165: playerX += 1;
	ld	hl, #_playerX
	inc	(hl)
;src/main.c:167: }
	ret
00133$:
;src/main.c:170: if (KEY_PRESSED(J_UP)) {
	ld	a, (#_keys)
	bit	2, a
	jr	Z, 00127$
;src/main.c:171: facing = 0;
	ld	hl, #_facing
	ld	(hl), #0x00
;src/main.c:172: if (!CheckCollision()) {
	call	_CheckCollision
	ld	a, b
	or	a, c
	jr	NZ, 00128$
;src/main.c:173: playerY -= 1;
	ld	hl, #_playerY
	dec	(hl)
;src/main.c:174: playerMapY -= 1;
	ld	hl, #_playerMapY
	dec	(hl)
	jr	00128$
00127$:
;src/main.c:177: else if (KEY_PRESSED(J_DOWN)) {
	bit	3, a
	jr	Z, 00124$
;src/main.c:178: facing = 1;
	ld	hl, #_facing
	ld	(hl), #0x01
;src/main.c:179: if (!CheckCollision()) {
	call	_CheckCollision
	ld	a, b
	or	a, c
	jr	NZ, 00128$
;src/main.c:180: playerY += 1;
	ld	hl, #_playerY
	inc	(hl)
;src/main.c:181: playerMapY += 1;
	ld	hl, #_playerMapY
	inc	(hl)
	jr	00128$
00124$:
;src/main.c:184: else if (KEY_PRESSED(J_LEFT)) {
	bit	1, a
	jr	Z, 00121$
;src/main.c:185: facing = 2;
	ld	hl, #_facing
	ld	(hl), #0x02
;src/main.c:186: if (!CheckCollision()) {
	call	_CheckCollision
	ld	a, b
	or	a, c
	jr	NZ, 00128$
;src/main.c:187: playerX -= 1;
	ld	hl, #_playerX
	dec	(hl)
;src/main.c:188: playerMapX -= 1;
	ld	hl, #_playerMapX
	dec	(hl)
	jr	00128$
00121$:
;src/main.c:191: else if (KEY_PRESSED(J_RIGHT)) {
	rrca
	jr	NC, 00128$
;src/main.c:192: facing = 3;
	ld	hl, #_facing
	ld	(hl), #0x03
;src/main.c:193: if (!CheckCollision()) {
	call	_CheckCollision
	ld	a, b
	or	a, c
	jr	NZ, 00128$
;src/main.c:194: playerX += 1;
	ld	hl, #_playerX
	inc	(hl)
;src/main.c:195: playerMapX += 1;
	ld	hl, #_playerMapX
	inc	(hl)
00128$:
;src/main.c:199: if (KEY_TICKED(J_A)) {
	ld	a, (#_keys)
	bit	4, a
	ret	Z
	ld	a, (#_previous_keys)
	bit	4, a
	ret	NZ
;src/main.c:200: action_func();
	ld	hl, #_action_func
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_action_func + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;src/main.c:203: }
	jp	(hl)
;src/main.c:205: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:207: init_win(0xCC);
	ld	a, #0xcc
	push	af
	inc	sp
	call	_init_win
	inc	sp
;src/main.c:208: set_win_data(Font_sprite_start,Font_sprite_size,Font_tiles);
	ld	de, #_Font_tiles
	push	de
	ld	hl, #0x34cc
	push	hl
	call	_set_win_data
	add	sp, #4
;src/main.c:209: set_win_data(0xC4,8,Dialog_Border_sprite);
	ld	de, #_Dialog_Border_sprite
	push	de
	ld	hl, #0x8c4
	push	hl
	call	_set_win_data
	add	sp, #4
;src/main.c:210: set_win_tiles(0,0,20,6,Dialog_Border_map);
	ld	de, #_Dialog_Border_map
	push	de
	ld	hl, #0x614
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_win_tiles
	add	sp, #6
;src/main.c:212: init_bkg(0x00);
	xor	a, a
	push	af
	inc	sp
	call	_init_bkg
	inc	sp
;src/main.c:213: InitLevel1_1();
	call	_InitLevel1_1
;src/main.c:214: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/main.c:216: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
;src/main.c:217: set_sprite_data(0, 32, MainCharacter_sprite);
	ld	de, #_MainCharacter_sprite
	push	de
	ld	hl, #0x2000
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src/main.c:218: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;src/main.c:220: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;src/main.c:222: while(1) {
00102$:
;src/main.c:223: Move_MainCharacter();
	call	_Move_MainCharacter
;src/main.c:224: move_sprite(0, playerX+8, playerY+16);
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
;src/main.c:225: move_sprite(2, playerX+16, playerY+16);
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
;src/main.c:227: UPDATE_KEYS();
	ld	a, (#_keys)
	ld	(#_previous_keys),a
	call	_joypad
	ld	(#_keys),a
;src/main.c:229: vsync();
	call	_vsync
;src/main.c:231: }
	jr	00102$
	.area _CODE
	.area _INITIALIZER
__xinit__previous_keys:
	.db #0x00	; 0
__xinit__keys:
	.db #0x00	; 0
	.area _CABS (ABS)
