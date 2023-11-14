#include <gb/gb.h>
#include <stdint.h>
#include <stdio.h>
#include "../res/Level1_1_sprite.h"
#include "../res/MainCharacter_sprite.h"
#include "../res/Level1_1_map.h"
#include "../res/Level1_1_map.h"
#include "inc/Font.h"
#include "inc/main.h"
#include "../res/Dialog_Border_sprite.h"
#include "../res/Dialog_Border_map.h"
#include "../res/Level1_Door_Sprite.h"
#include "inc/MainCharacter.h"

//So we may need to struct for the main character. Other people don't really move...


void (*action_func)(void);

uint8_t map[MAP_WIDTH][MAP_HEIGHT];// all maps are only 1 screen big (dunno how to camera yet)

void PlacePlayer() {//stays here because of TILES
    playerX = playerMapX * TILES;
    playerY = playerMapY * TILES;
}

void Level1_1_Act(void) {
	int check = CheckCollision();
	
    switch(check) {
        case 0://empty
		break;
        case 1://SOLID
			//char text1[] = "bonk!";
			//dialog_print(text1, sizeof(text1));
        break;

        case 2://CHUTE
			char text2[] = "looks like some   sort of chute#*";
			dialog_print(text2, sizeof(text2));
        break;

        case 3://PILE
			char text3[] = "twisted limbs,    bones, and skulls  peer out from     rotten flesh#*";
			dialog_print(text3, sizeof(text3));
        break;

        case 4://CART
			char text4[] = "the cart is slick with blood#*";
			dialog_print(text4, sizeof(text4));
        break;
		
		case 10://DOOR1
			char text10[] = "a fucking door, mate*";
			dialog_print(text10, sizeof(text10));
			set_sprite_tile(10,36);
			set_sprite_tile(11,38);
			HIDE_BKG;
			HIDE_SPRITES;
			HIDE_WIN;
			InitLevel1_1();
			SHOW_BKG;
			SHOW_SPRITES;
		break;
    }
}

void InitLevel1_1() {
    action_func = Level1_1_Act;
	facing = 1;
    const uint8_t SOLID = 1;
    const uint8_t CHUTE = 2;
    const uint8_t PILE = 3;
    const uint8_t CART = 4;
	const uint8_t DOOR = 10;
	

    set_bkg_data(0,Level1_1_sprite_size,Level1_1_sprite);
    set_bkg_tiles(0,0,MAP_WIDTH,MAP_HEIGHT,Level1_1_map);
	set_sprite_data(32,8,Level1_Door_sprite);
	set_sprite_tile(10,32);
	set_sprite_tile(11,34);
	move_sprite(10,7*TILES,2*TILES+4);
	move_sprite(11,8*TILES,2*TILES+4);

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
	
	map[6][0]= DOOR;
}

int CheckCollision() {
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
	
	if (map[playerMapX+x][playerMapY+y]) return map[playerMapX+x][playerMapY+y];
	
    else if (((playerMapX + x) > MAP_WIDTH-2) || ((playerMapX + x) < 0)) return 1;
	
    else if (((playerMapY + y) > MAP_HEIGHT-3) || ((playerMapY + y) < 1)) return 1;
	
    return 0;
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

        if (KEY_TICKED(J_A)) {
            action_func();
        }
    }
}

void main(void)
{	
	init_win(0xCC);
	set_win_data(Font_sprite_start,Font_sprite_size,Font_tiles);
	set_win_data(0xC4,8,Dialog_Border_sprite);
	set_win_tiles(0,0,20,6,Dialog_Border_map);
    
	init_bkg(0x00);
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
