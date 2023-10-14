/*

 MAINCHARACTER_SPRITE.H

 Include File.

 Info:
  Form                 : All tiles as one unit.
  Format               : Gameboy 4 color.
  Compression          : None.
  Counter              : None.
  Tile size            : 16 x 16
  Tiles                : 0 to 7

  Palette colors       : None.
  SGB Palette          : None.
  CGB Palette          : None.

  Convert to metatiles : No.

 This file was generated by GBTD v2.2

*/

#ifndef __MainCharacter_Sprite_h_INCLUDE
#define __MainCharacter_Sprite_h_INCLUDE

/* Bank of tiles. */
#define MainCharacterSpriteBank 0
/* Start of tile array. */
extern const unsigned char MainCharacter_sprite[];

//assign tile names
extern const uint8_t MainCharacter_idle_up_TL;
extern const uint8_t MainCharacter_idle_up_TR;

extern const uint8_t MainCharacter_idle_down_TL;
extern const uint8_t MainCharacter_idle_down_TR;

extern const uint8_t MainCharacter_idle_side_TL;
extern const uint8_t MainCharacter_idle_side_TR;

extern const uint8_t MainCharacter_walk_up_TL;
extern const uint8_t MainCharacter_walk_up_TR;

extern const uint8_t MainCharacter_walk_down_TL;
extern const uint8_t MainCharacter_walk_down_TR;

extern const uint8_t MainCharacter_walk_side_TL;
extern const uint8_t MainCharacter_walk_side_TR;
#endif

/* End of MAINCHARACTER_SPRITE.H */
