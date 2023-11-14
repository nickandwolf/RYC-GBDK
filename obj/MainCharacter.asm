;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module MainCharacter
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _MainCharacter_walk
	.globl _MainCharacter_idle
	.globl _playerTalking
	.globl _playerMoving
	.globl _frame
	.globl _facing
	.globl _playerMapY
	.globl _playerMapX
	.globl _playerY
	.globl _playerX
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_playerX::
	.ds 1
_playerY::
	.ds 1
_playerMapX::
	.ds 1
_playerMapY::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_facing::
	.ds 1
_frame::
	.ds 1
_playerMoving::
	.ds 1
_playerTalking::
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
;src/MainCharacter.c:14: void MainCharacter_idle() {
;	---------------------------------
; Function MainCharacter_idle
; ---------------------------------
_MainCharacter_idle::
;src/MainCharacter.c:16: switch(facing) {
	ld	a, (#_facing)
	or	a, a
	jr	Z, 00101$
	ld	a, (#_facing)
	dec	a
	jr	Z, 00102$
	ld	a, (#_facing)
	sub	a, #0x02
	jr	Z, 00103$
	ld	a, (#_facing)
	sub	a, #0x03
	jr	Z, 00104$
	ret
;src/MainCharacter.c:17: case 0:
00101$:
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 3) + 0)
;src/MainCharacter.c:20: set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 11) + 0)
;src/MainCharacter.c:21: set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 11)
	ld	(hl), c
;src/MainCharacter.c:23: set_sprite_tile(0, MainCharacter_idle_up_TL);
	ld	hl, #_MainCharacter_idle_up_TL
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;src/MainCharacter.c:24: set_sprite_tile(2, MainCharacter_idle_up_TR);
	ld	hl, #_MainCharacter_idle_up_TR
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), c
;src/MainCharacter.c:25: break;
	ret
;src/MainCharacter.c:27: case 1:
00102$:
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 3) + 0)
;src/MainCharacter.c:30: set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 11) + 0)
;src/MainCharacter.c:31: set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 11)
	ld	(hl), c
;src/MainCharacter.c:33: set_sprite_tile(0, MainCharacter_idle_down_TL);
	ld	hl, #_MainCharacter_idle_down_TL
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;src/MainCharacter.c:34: set_sprite_tile(2, MainCharacter_idle_down_TR);
	ld	hl, #_MainCharacter_idle_down_TR
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), c
;src/MainCharacter.c:35: break;
	ret
;src/MainCharacter.c:37: case 2:
00103$:
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 3) + 0)
;src/MainCharacter.c:40: set_sprite_prop(0, get_sprite_prop(0) | S_FLIPX);
	or	a, #0x20
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 11) + 0)
;src/MainCharacter.c:41: set_sprite_prop(2, get_sprite_prop(2) | S_FLIPX);
	or	a, #0x20
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 11)
	ld	(hl), c
;src/MainCharacter.c:44: set_sprite_tile(2, MainCharacter_idle_side_TL);
	ld	hl, #_MainCharacter_idle_side_TL
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), c
;src/MainCharacter.c:45: set_sprite_tile(0, MainCharacter_idle_side_TR);
	ld	hl, #_MainCharacter_idle_side_TR
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;src/MainCharacter.c:46: break;
	ret
;src/MainCharacter.c:48: case 3:
00104$:
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 3) + 0)
;src/MainCharacter.c:51: set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 11) + 0)
;src/MainCharacter.c:52: set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 11)
	ld	(hl), c
;src/MainCharacter.c:54: set_sprite_tile(0, MainCharacter_idle_side_TL);
	ld	hl, #_MainCharacter_idle_side_TL
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;src/MainCharacter.c:55: set_sprite_tile(2, MainCharacter_idle_side_TR);
	ld	hl, #_MainCharacter_idle_side_TR
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), c
;src/MainCharacter.c:57: }
;src/MainCharacter.c:58: }
	ret
;src/MainCharacter.c:60: void MainCharacter_walk() {
;	---------------------------------
; Function MainCharacter_walk
; ---------------------------------
_MainCharacter_walk::
;src/MainCharacter.c:61: switch(facing) {
	ld	a, (#_facing)
	or	a, a
	jr	Z, 00101$
	ld	a, (#_facing)
	dec	a
	jr	Z, 00102$
	ld	a, (#_facing)
	sub	a, #0x02
	jr	Z, 00103$
	ld	a, (#_facing)
	sub	a, #0x03
	jp	Z,00104$
	jp	00105$
;src/MainCharacter.c:62: case 0:
00101$:
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 3) + 0)
;src/MainCharacter.c:65: set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 11) + 0)
;src/MainCharacter.c:66: set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 11)
	ld	(hl), c
;src/MainCharacter.c:68: set_sprite_tile(0, MainCharacter_walk_up_TL+frame);
	ld	a, (#_MainCharacter_walk_up_TL)
	ld	hl, #_frame
	add	a, (hl)
	ld	c, a
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;src/MainCharacter.c:69: set_sprite_tile(2, MainCharacter_walk_up_TR+frame);
	ld	a, (#_MainCharacter_walk_up_TR)
	ld	hl, #_frame
	add	a, (hl)
	ld	c, a
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), c
;src/MainCharacter.c:70: break;
	jr	00105$
;src/MainCharacter.c:72: case 1:
00102$:
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 3) + 0)
;src/MainCharacter.c:75: set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 11) + 0)
;src/MainCharacter.c:76: set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 11)
	ld	(hl), c
;src/MainCharacter.c:78: set_sprite_tile(0, MainCharacter_walk_down_TL+frame);
	ld	a, (#_MainCharacter_walk_down_TL)
	ld	hl, #_frame
	add	a, (hl)
	ld	c, a
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;src/MainCharacter.c:79: set_sprite_tile(2, MainCharacter_walk_down_TR+frame);
	ld	a, (#_MainCharacter_walk_down_TR)
	ld	hl, #_frame
	add	a, (hl)
	ld	c, a
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), c
;src/MainCharacter.c:80: break;
	jr	00105$
;src/MainCharacter.c:82: case 2:
00103$:
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 3) + 0)
;src/MainCharacter.c:85: set_sprite_prop(0, get_sprite_prop(0) | S_FLIPX);
	or	a, #0x20
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 11) + 0)
;src/MainCharacter.c:86: set_sprite_prop(2, get_sprite_prop(2) | S_FLIPX);
	or	a, #0x20
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 11)
	ld	(hl), c
;src/MainCharacter.c:89: set_sprite_tile(2, MainCharacter_walk_side_TL);
	ld	hl, #_MainCharacter_walk_side_TL
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), c
;src/MainCharacter.c:90: set_sprite_tile(0, MainCharacter_walk_side_TR);
	ld	hl, #_MainCharacter_walk_side_TR
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;src/MainCharacter.c:91: break;
	jr	00105$
;src/MainCharacter.c:93: case 3:
00104$:
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 3) + 0)
;src/MainCharacter.c:96: set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;x:\gbdk\include\gb\gb.h:1860: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 11) + 0)
;src/MainCharacter.c:97: set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
	and	a, #0xdf
	ld	c, a
;x:\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 11)
	ld	(hl), c
;src/MainCharacter.c:99: set_sprite_tile(0, MainCharacter_walk_side_TL);
	ld	hl, #_MainCharacter_walk_side_TL
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;src/MainCharacter.c:100: set_sprite_tile(2, MainCharacter_walk_side_TR);
	ld	hl, #_MainCharacter_walk_side_TR
	ld	c, (hl)
;x:\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), c
;src/MainCharacter.c:102: }
00105$:
;src/MainCharacter.c:104: if (playerMoving == 0) {
	ld	a, (#_playerMoving)
	or	a, a
	ret	NZ
;src/MainCharacter.c:105: if (frame == 0) {
	ld	hl, #_frame
	ld	a, (hl)
	or	a, a
	jr	NZ, 00107$
;src/MainCharacter.c:106: frame = 4;
	ld	(hl), #0x04
	ret
00107$:
;src/MainCharacter.c:109: frame = 0;
	ld	hl, #_frame
	ld	(hl), #0x00
;src/MainCharacter.c:112: }
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__facing:
	.db #0x00	; 0
__xinit__frame:
	.db #0x04	; 4
__xinit__playerMoving:
	.db #0x00	; 0
__xinit__playerTalking:
	.db #0x00	; 0
	.area _CABS (ABS)
