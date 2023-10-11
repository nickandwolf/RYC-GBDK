#include <gb/gb.h>
#include <stdint.h>
#include "../res/MainCharacter.h"

// ---- KEYS FROM ZGB ---- //
//#ifndef KEYS_H
//#define KEYS_H

//#include "asm/types.h"

//extern uint8_t previous_keys;
//extern uint8_t keys;
uint8_t previous_keys = 0;
uint8_t keys = 0;

#define UPDATE_KEYS() previous_keys = keys; keys = joypad()
 
#define KEY_PRESSED(K) (keys & (K))
#define KEY_TICKED(K)   ((keys & (K)) && !(previous_keys & (K)))
#define KEY_RELEASED(K) ((previous_keys & (K)) && !(keys & (K)))

#define ANY_KEY_PRESSED (keys)

//#endif
// ---- END OF IT ALL ---- //


/*
facing
x
y
idle_down 1,2,3,4 (meta sprite) + up + left + right
move_down ""
*/

uint8_t facing = 0;
uint8_t frame = 4;//(1 or 0)
uint8_t playerX = 80;
uint8_t playerY = 80;
uint8_t playerMoving = 0;

//vram defaults -- using 8x16 makes every other entry redundant
const uint8_t MainCharacter_idle_up_TL = 4;
const uint8_t MainCharacter_idle_up_TR = 6;

const uint8_t MainCharacter_idle_down_TL = 0;
const uint8_t MainCharacter_idle_down_TR = 2;

const uint8_t MainCharacter_idle_side_TL = 28;
const uint8_t MainCharacter_idle_side_TR = 30;

const uint8_t MainCharacter_walk_up_TL = 16;
const uint8_t MainCharacter_walk_up_TR = 18;

const uint8_t MainCharacter_walk_down_TL = 8;
const uint8_t MainCharacter_walk_down_TR = 10;

const uint8_t MainCharacter_walk_side_TL = 24;
const uint8_t MainCharacter_walk_side_TR = 26;

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

void MainCharacter_bump() {
    //set sprite data
    switch(facing) {
        case 0:
            // bump_up [one frame step]
            set_sprite_tile(0, 0);
            set_sprite_tile(2, 2);
        break;

        case 1:
            // bump_down
            set_sprite_tile(0, 4);
            set_sprite_tile(2, 6);
        break;
    }
}

void MainCharacter_walk() {
    //set sprite data
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

void Move_MainCharacter(int x, int y) {
	//NEED COLLISION DETECTION
	if ((playerX % 16 == 0) && (playerY % 16 == 0)) {
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
			playerY -= 1;
		}
		else if (KEY_PRESSED(J_DOWN)) {
			facing = 1;
			playerY += 1;
		}
		else if (KEY_PRESSED(J_LEFT)) {
			facing = 2;
			playerX -= 1;
		}
		else if (KEY_PRESSED(J_RIGHT)) {
			facing = 3;
			playerX += 1;
		}
	}
}

void main(void)
{
	DISPLAY_ON;
	SPRITES_8x16;
	
	set_sprite_data(0, 32, MainCharacter_sprite);
	
	
	
	move_sprite(0, playerX-4, playerY-4);
	move_sprite(2, playerX+4, playerY-4);
	
	SHOW_SPRITES;
    // Loop forever
    while(1) {
		Move_MainCharacter(0,0);
		move_sprite(0, playerX-4, playerY-4);
		move_sprite(2, playerX+4, playerY-4);
		
		UPDATE_KEYS();
		// Done processing, yield CPU and wait for start of next frame
        vsync();
    }
}
