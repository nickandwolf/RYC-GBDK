#include <gb/gb.h>
#include <stdint.h>
#include "inc/Font.h"
#include "../res/Dice_sprite.h"
#include "../res/Battle_sprite.h"
#include "inc/battle.h"

/*
results
128+24/26 = 1
128+28/30 = 2
128+32/34 = 3
128+36/38 = 4
128+40/42 = 5
128+44/46 = 6

rolling
128+0/2
128+4/6
128+8/10
128+12/14
~22
*/

uint8_t dieRoll = 0;
uint8_t rolling = 1;//change to 0

void RollDie() {
	dieRoll += 1;
	if (dieRoll == 6) dieRoll = 0;
}

void BattleGraphicsInit() {
	set_bkg_data(128, 128+13,Battle_sprite);
	set_sprite_data(142, 142+48,Dice_sprite);
}

void BattleUpdate() {
	if (rolling) {
		RollDie();
		set_sprite_tile(20,142+(dieRoll*4));
		set_sprite_tile(21,144+(dieRoll*4));
	}
	
	else {
		set_sprite_tile(20,142+24+(dieRoll*4));
		set_sprite_tile(21,144+24+(dieRoll*4));
	}
	
	move_sprite(20,80,80);
	move_sprite(21,88,80);
	vsync();
}

void GetRoll() {
	rolling = 0;
}