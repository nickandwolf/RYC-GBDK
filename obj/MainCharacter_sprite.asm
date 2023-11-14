;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module MainCharacter_sprite
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _MainCharacter_sprite
	.globl _MainCharacter_walk_side_TR
	.globl _MainCharacter_walk_side_TL
	.globl _MainCharacter_walk_down_TR
	.globl _MainCharacter_walk_down_TL
	.globl _MainCharacter_walk_up_TR
	.globl _MainCharacter_walk_up_TL
	.globl _MainCharacter_idle_side_TR
	.globl _MainCharacter_idle_side_TL
	.globl _MainCharacter_idle_down_TR
	.globl _MainCharacter_idle_down_TL
	.globl _MainCharacter_idle_up_TR
	.globl _MainCharacter_idle_up_TL
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
	.area _CODE
_MainCharacter_idle_up_TL:
	.db #0x04	; 4
_MainCharacter_idle_up_TR:
	.db #0x06	; 6
_MainCharacter_idle_down_TL:
	.db #0x00	; 0
_MainCharacter_idle_down_TR:
	.db #0x02	; 2
_MainCharacter_idle_side_TL:
	.db #0x1c	; 28
_MainCharacter_idle_side_TR:
	.db #0x1e	; 30
_MainCharacter_walk_up_TL:
	.db #0x10	; 16
_MainCharacter_walk_up_TR:
	.db #0x12	; 18
_MainCharacter_walk_down_TL:
	.db #0x08	; 8
_MainCharacter_walk_down_TR:
	.db #0x0a	; 10
_MainCharacter_walk_side_TL:
	.db #0x18	; 24
_MainCharacter_walk_side_TR:
	.db #0x1a	; 26
_MainCharacter_sprite:
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x69	; 105	'i'
	.db #0x6e	; 110	'n'
	.db #0xf7	; 247
	.db #0x98	; 152
	.db #0xf1	; 241
	.db #0x9e	; 158
	.db #0xf7	; 247
	.db #0x98	; 152
	.db #0xf9	; 249
	.db #0x9e	; 158
	.db #0xfa	; 250
	.db #0x9d	; 157
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xd8	; 216
	.db #0x38	; 56	'8'
	.db #0x16	; 22
	.db #0xf6	; 246
	.db #0xdf	; 223
	.db #0x3d	; 61
	.db #0x3f	; 63
	.db #0xf1	; 241
	.db #0xbe	; 190
	.db #0x72	; 114	'r'
	.db #0xde	; 222
	.db #0xd2	; 210
	.db #0xde	; 222
	.db #0xd2	; 210
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x1b	; 27
	.db #0x6f	; 111	'o'
	.db #0x68	; 104	'h'
	.db #0xbc	; 188
	.db #0xfb	; 251
	.db #0x8f	; 143
	.db #0xfc	; 252
	.db #0x4e	; 78	'N'
	.db #0x7d	; 125
	.db #0x4b	; 75	'K'
	.db #0x7b	; 123
	.db #0x4b	; 75	'K'
	.db #0x7b	; 123
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0x9e	; 158
	.db #0xee	; 238
	.db #0xfa	; 250
	.db #0x8e	; 142
	.db #0x99	; 153
	.db #0xef	; 239
	.db #0xf9	; 249
	.db #0x9f	; 159
	.db #0xb9	; 185
	.db #0x5f	; 95
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x6e	; 110	'n'
	.db #0x69	; 105	'i'
	.db #0x98	; 152
	.db #0xf7	; 247
	.db #0x9e	; 158
	.db #0xf1	; 241
	.db #0x98	; 152
	.db #0xf7	; 247
	.db #0x9e	; 158
	.db #0xff	; 255
	.db #0x97	; 151
	.db #0xf6	; 246
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0xe6	; 230
	.db #0x26	; 38
	.db #0x3d	; 61
	.db #0xdf	; 223
	.db #0xf1	; 241
	.db #0x1f	; 31
	.db #0x32	; 50	'2'
	.db #0xde	; 222
	.db #0xf2	; 242
	.db #0x3e	; 62
	.db #0x72	; 114	'r'
	.db #0xbe	; 190
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x97	; 151
	.db #0xf7	; 247
	.db #0x9e	; 158
	.db #0xf9	; 249
	.db #0x98	; 152
	.db #0xf7	; 247
	.db #0x9e	; 158
	.db #0xf1	; 241
	.db #0x98	; 152
	.db #0xf7	; 247
	.db #0x7e	; 126
	.db #0x71	; 113	'q'
	.db #0x0d	; 13
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0xd8	; 216
	.db #0xf6	; 246
	.db #0x16	; 22
	.db #0x3d	; 61
	.db #0xdf	; 223
	.db #0xf1	; 241
	.db #0xff	; 255
	.db #0xd2	; 210
	.db #0xde	; 222
	.db #0xd2	; 210
	.db #0xde	; 222
	.db #0xf2	; 242
	.db #0xfe	; 254
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x1b	; 27
	.db #0x6f	; 111	'o'
	.db #0x68	; 104	'h'
	.db #0xac	; 172
	.db #0xeb	; 235
	.db #0x8f	; 143
	.db #0xfc	; 252
	.db #0x4e	; 78	'N'
	.db #0x7d	; 125
	.db #0x4b	; 75	'K'
	.db #0x7b	; 123
	.db #0x4f	; 79	'O'
	.db #0x7f	; 127
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0xfa	; 250
	.db #0x9e	; 158
	.db #0x99	; 153
	.db #0xef	; 239
	.db #0xf9	; 249
	.db #0x8f	; 143
	.db #0x99	; 153
	.db #0xef	; 239
	.db #0xf6	; 246
	.db #0x96	; 150
	.db #0xb0	; 176
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x67	; 103	'g'
	.db #0x64	; 100	'd'
	.db #0xbc	; 188
	.db #0xfb	; 251
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x4c	; 76	'L'
	.db #0x7b	; 123
	.db #0x4f	; 79	'O'
	.db #0x7c	; 124
	.db #0x4e	; 78	'N'
	.db #0x7d	; 125
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0x9e	; 158
	.db #0xee	; 238
	.db #0xfa	; 250
	.db #0x8e	; 142
	.db #0x99	; 153
	.db #0xef	; 239
	.db #0xf9	; 249
	.db #0x9f	; 159
	.db #0xb9	; 185
	.db #0x5f	; 95
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x60	; 96
	.db #0x60	; 96
	.area _INITIALIZER
	.area _CABS (ABS)
