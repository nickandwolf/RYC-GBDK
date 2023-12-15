#include <gb/gb.h>
#include <stdint.h>
#include "../src/inc/MainCharacter.h"

void PrintCharacter() {
    //make sure everything is loaded
	
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