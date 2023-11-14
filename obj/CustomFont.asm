;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module CustomFont
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CustomFont
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
_CustomFont:
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
	.area _INITIALIZER
	.area _CABS (ABS)