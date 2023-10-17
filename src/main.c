#include <gb/gb.h>
#include <stdint.h>
#include "../res/level1_1_Sprite.h"
#include "../res/MainCharacter_Sprite.h"
#include "../res/level1_1.h"

#include "inc/main.h"

//MAKE AN OVERWORLD INITIALIZATION FILE THINGY
//First let's move Main Character to it's own file area...
//also all rendering should be in the sprite's file

//So we may need to struct for the main character. Other people don't really move...
uint8_t facing = 0;
uint8_t frame = 4;//(0 or 4)
int8_t playerX = 48;//starting position is going to need some help
int8_t playerY = 48;//the initialization will have to handle that
int8_t playerMapX = 3; //gonna sound weird but maps start at 1
int8_t playerMapY = 3;
uint8_t playerMoving = 0;

void (*action_func)(void);

uint8_t map[MAP_WIDTH][MAP_HEIGHT];// all maps are only 1 screen big (dunno how to camera yet)

void PlacePlayer() {
	playerX = playerMapX * TILES;
	playerY = playerMapY * TILES;
}

void Level1_1_Act(void) {
	CheckCollision();
	
}

void InitLevel1_1() {
	action_func = Level1_1_Act;
	
	const uint8_t SOLID = 1;
	const uint8_t CHUTE = 2;
	const uint8_t PILE = 3;
	const uint8_t CART = 4;
	
	set_bkg_data(0,level1_1_sprite_size,level1_1_sprite);
	set_bkg_tiles(0,0,MAP_WIDTH,MAP_HEIGHT,level1_1);
	
	playerMapX = 3;
	playerMapY = 3;
	
	PlacePlayer();
	
	map[0][9] = CHUTE;
	map[0][10] = CHUTE;
	
	map[1][9] = SOLID;
	map[1][10] = SOLID;
	
	for (uint8_t i = 2; i < 5; i++) map[i][9] = PILE;
	for (uint8_t i = 2; i < 5; i++) map[i][10] = PILE;
	
	for (uint8_t i = 7; i < 11; i++) map[i][9] = CART;
	for (uint8_t i = 7; i < 11; i++) map[i][10] = CART;
	
	
}

uint8_t CheckCollision() {
	int8_t x = 0;
	int8_t y = 0;
	
	switch (facing) {
		case 0:
			y = -1;
		break;
		
		case 1:
			y = 1;
		break;
		
		case 2:
			x = -1;
		break;
		
		case 3:
			x = 1;
		break;
	}
	
	if (((playerMapX + x) > MAP_WIDTH-2) || ((playerMapX + x) < 0)) return 1;
	else if (((playerMapY + y) > MAP_HEIGHT-3) || ((playerMapY + y) < 1)) return 1;
	if (map[playerMapX+x][playerMapY+y]) return get_bkg_tile_xy(playerMapX+x, playerMapY+y);
	return 0;
}

void MainCharacter_idle() {
    //set sprite data
    switch(facing) {
        case 0:
            // idle_up
			//turn off flipping
			set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
			set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
            
			set_sprite_tile(0, MainCharacter_idle_up_TL);
			set_sprite_tile(2, MainCharacter_idle_up_TR);
        break;

        case 1:
            // idle_down
			//turn off flipping
			set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
			set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
			
            set_sprite_tile(0, MainCharacter_idle_down_TL);
            set_sprite_tile(2, MainCharacter_idle_down_TR);
        break;
		
		case 2:
            // idle_left
			//turn on flipping
			set_sprite_prop(0, get_sprite_prop(0) | S_FLIPX);
			set_sprite_prop(2, get_sprite_prop(2) | S_FLIPX);
			
			//swap sprites
            set_sprite_tile(2, MainCharacter_idle_side_TL);
            set_sprite_tile(0, MainCharacter_idle_side_TR);
        break;
		
		case 3:
            // idle_right
			//turn off flipping
			set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
			set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
			
            set_sprite_tile(0, MainCharacter_idle_side_TL);
            set_sprite_tile(2, MainCharacter_idle_side_TR);
        break;
    }
}

void MainCharacter_walk() {
    switch(facing) {
        case 0:
            // walk_up
			//turn off flipping
			set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
			set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
			
            set_sprite_tile(0, MainCharacter_walk_up_TL+frame);
            set_sprite_tile(2, MainCharacter_walk_up_TR+frame);
        break;

        case 1:
            // walk_down
			//turn off flipping
			set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
			set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
			
            set_sprite_tile(0, MainCharacter_walk_down_TL+frame);
            set_sprite_tile(2, MainCharacter_walk_down_TR+frame);
        break;
		
		case 2:
            //walk_left
			//turn on flipping
			set_sprite_prop(0, get_sprite_prop(0) | S_FLIPX);
			set_sprite_prop(2, get_sprite_prop(2) | S_FLIPX);
			
			//swap sprites
            set_sprite_tile(2, MainCharacter_walk_side_TL);
            set_sprite_tile(0, MainCharacter_walk_side_TR);
        break;
		
		case 3:
            // idle_down
			//turn off flipping
			set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
			set_sprite_prop(2, get_sprite_prop(2) & ~S_FLIPX);
			
            set_sprite_tile(0, MainCharacter_walk_side_TL);
            set_sprite_tile(2, MainCharacter_walk_side_TR);
        break;
    }
	
	if (playerMoving == 0) {
		if (frame == 0) {
			frame = 4;
		}
		else {
			frame = 0;
		}
	}
}

void Move_MainCharacter() {
	if ((((playerX) % TILES) == 0) && (((playerY) % TILES) == 0)) {
		playerMoving = 0;
		MainCharacter_idle();
	}
	else {
		MainCharacter_walk();
		playerMoving = 1;
	}
	
	if (playerMoving == 1) {
		switch(facing) {
			case 0:
				playerY -= 1;
			break;
			case 1:
				playerY += 1;
			break;
			case 2:
				playerX -= 1;
			break;
			case 3:
				playerX += 1;
			break;
		}
	}
	else {
		if (KEY_PRESSED(J_UP)) {
			facing = 0;
			if (!CheckCollision()) {
				playerY -= 1;
				playerMapY -= 1;
			}
		}
		else if (KEY_PRESSED(J_DOWN)) {
			facing = 1;
			if (!CheckCollision()) {
				playerY += 1;
				playerMapY += 1;
			}
		}
		else if (KEY_PRESSED(J_LEFT)) {
			facing = 2;
			if (!CheckCollision()) {
				playerX -= 1;
				playerMapX -= 1;
			}
		}
		else if (KEY_PRESSED(J_RIGHT)) {
			facing = 3;
			if (!CheckCollision()) {
				playerX += 1;
				playerMapX += 1;
			}
		}
		
		if (KEY_PRESSED(J_SELECT)) {
			action_func();
		}
	}
}

void main(void)
{	
	InitLevel1_1();
	SHOW_BKG;
	SPRITES_8x16;
	set_sprite_data(0, 32, MainCharacter_sprite);
	SHOW_SPRITES;

	DISPLAY_ON;
    // Loop forever
    while(1) {
		Move_MainCharacter();
		move_sprite(0, playerX+8, playerY+16);
		move_sprite(2, playerX+16, playerY+16);
		
		UPDATE_KEYS();
		// Done processing, yield CPU and wait for start of next frame
        vsync();
    }
}
