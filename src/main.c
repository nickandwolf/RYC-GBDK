#include <gb/gb.h>
#include <stdint.h>
#include "../res/MainCharacter_Sprite.h"
#include "inc/main.h"
#include <stdio.h>

//MAKE AN OVERWORLD INITIALIZATION FILE THINGY
//First let's move Main Character to it's own file area...
//also all rendering should be in the sprite's file

//So we may need to struct for the main character. Other people don't really move...
uint8_t facing = 0;
uint8_t frame = 4;//(0 or 4)
int8_t playerX = 0;//starting position is going to need some help
int8_t playerY = 0;//the initialization will have to handle that
int8_t playerMapX = 0; //gonna sound weird but maps start at 1
int8_t playerMapY = 0;
uint8_t playerMoving = 0;

uint8_t map[10][9];// all maps are only 1 screen big (dunno how to camera yet)

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
	
	if (((playerMapX + x) > 9) || ((playerMapX + x) < 0)) return 0;
	else if (((playerMapY + y) > 8) || ((playerMapY + y) < 0)) return 0;
	if (map[playerMapX+x][playerMapY+y]) return 0;
	return 1;
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
	if ((((playerX) % 16) == 0) && (((playerY) % 16) == 0)) {
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
			if (CheckCollision()) {
				playerY -= 1;
				playerMapY -= 1;
			}
		}
		else if (KEY_PRESSED(J_DOWN)) {
			facing = 1;
			if (CheckCollision()) {
				playerY += 1;
				playerMapY += 1;
			}
		}
		else if (KEY_PRESSED(J_LEFT)) {
			facing = 2;
			if (CheckCollision()) {
				playerX -= 1;
				playerMapX -= 1;
			}
		}
		else if (KEY_PRESSED(J_RIGHT)) {
			facing = 3;
			if (CheckCollision()) {
				playerX += 1;
				playerMapX += 1;
			}
		}
		
		if (KEY_PRESSED(J_SELECT)) {
			
		}
	}
}

void main(void)
{	
	map[4][2] = 1;
	
	DISPLAY_ON;
	SPRITES_8x16;
	
	set_sprite_data(0, 32, MainCharacter_sprite);
	
	SHOW_SPRITES;
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
