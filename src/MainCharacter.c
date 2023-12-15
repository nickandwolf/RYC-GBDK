#include <gb/gb.h>
#include <stdint.h>
#include "../res/MainCharacter_sprite.h"

uint8_t inventory[30];
uint8_t facing = 0;
uint8_t frame = 4;//(0 or 4)
int8_t playerX;
int8_t playerY; //the initialization will have to handle that
int8_t playerMapX; //gonna sound weird but maps start at 1
int8_t playerMapY;
uint8_t playerMoving = 0;
uint8_t playerTalking = 0;

uint8_t playerStrength = 0;
uint8_t playerAgility = 0;
uint8_t playerPresence = 0;
uint8_t playerToughness = 0;

uint8_t playerCurrentHP = 0;
uint8_t playerMaxHP = 0;

uint8_t playerWeapon = 0;
uint8_t playerArmor = 0;

uint8_t playerHead = 0;
uint8_t playerLeftArm = 0;
uint8_t playerRightArm = 0;
uint8_t playerTorso = 0;
uint8_t playerLeftLeg = 0;
uint8_t playerRightLeg = 0;

void AdjustStat(uint8_t stat, int8_t amount) {
	switch (stat) {
		case 0:
			//woops
		break;
		
		case 1:
			playerStrength += amount;
		break;
		
		case 2:
			playerAgility += amount;
		break;
		
		case 3:
			playerPresence += amount;
		break;
		
		case 4:
			playerToughness += amount;
		break;
		
		case 5:
			playerCurrentHP += amount;
			if (playerCurrentHP < 1) {
				//gameOver!
			}
		break;
		
		case 6:
			playerMaxHP += amount;
		break;
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