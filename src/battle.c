#include <gb/gb.h>
#include <stdint.h>
#include "inc/Font.h"
#include "../res/Dice_sprite.h"
#include "../res/Battle_sprite.h"
#include "inc/battle.h"
#include "inc/MainCharacter.h"

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

uint8_t dieResult = 0;
uint8_t dieRoll1 = 0;
uint8_t dieRoll2 = 2;
uint8_t rolling1 = 0;
uint8_t rolling2 = 0;
uint8_t step = 0;
uint8_t battleEnemy = 0;
uint8_t index = 1;
uint8_t attack = 0;
uint8_t target = 0;

//gotta load the enemy stats here too

void BattleGraphicsInit() {
	set_bkg_data(128, 128+13,Battle_sprite);
	set_sprite_data(142, 142+48,Dice_sprite);
	
	index = 1;
	step = 0;
	rolling1 = 0;
	rolling2 = 0;
	dieResult = 0;
	uint8_t attack = 0;
	uint8_t target = 0;
	
	//load enemy sprite from their file
}

void RollDie() {
	if (rolling1) dieRoll1 += 1;
	if (rolling2) dieRoll2 += 1;
	if (dieRoll1 == 6) dieRoll1 = 0;
	if (dieRoll2 == 6) dieRoll2 = 0;
}

void GetRoll() {
	if (rolling1 == 0) rolling2 = 0;
	else rolling1 = 0;
}

void BattlePlayIntro() {
	uint8_t GO = 1;
	while (GO) {
		//play intro
		GO = 0;
	}
}

void BattleShowMenu() {
	//show sprites //make sprites vibrate
	//move to index
	
	if (KEY_PRESSED(J_UP)) {
		index -= 2;
		if (index < 1) {
			index += 4;
		}
	}
	else if (KEY_PRESSED(J_DOWN)) {
		index += 2;
		if (index > 4) {
			index -= 4;
		}
	}
	else if (KEY_PRESSED(J_LEFT)) {
		index -= 1;
		if (index % 2 == 0) {
			index += 2;
		}
	}
	else if (KEY_PRESSED(J_RIGHT)) {
		index += 1;
		if (index % 2 == 1) {
			index -= 2;
		}
	}
	else if (KEY_PRESSED(J_A)) {
		switch (index) {
			case 1:
				step == 2; //FIGHT
			break;
			
			case 2:
				step == 6; //DEFEND
			break;
			
			case 3:
				step == 8; //ITEM
			break;
			
			case 4:
				step == 10; //RUN
			break;
			
			default:
				//woops
			break;
		}
	}
}

void BattleShowDeath() {//STEP 1
	//show player death, reset game to just before the fight
}

void BattleShowPlayerAttack() {//STEP 2
	//show player limbs
	uint8_t bdex = 1;
	if (KEY_PRESSED(J_UP)) {
		bdex -= 1;
		if (bdex < 1) {
			bdex = 1;
		}
	}
	else if (KEY_PRESSED(J_DOWN)) {
		bdex += 1;
		if (bdex > 6) {
			bdex == 6;
		}
	}
	else if (KEY_PRESSED(J_LEFT)) {
		bdex == 1;
	}
	else if (KEY_PRESSED(J_RIGHT)) {
		bdex == 6;
	}
	else if (KEY_PRESSED(J_A)) {
		attack = bdex;
		step = 3;
	}
	else if (KEY_PRESSED(J_B)) {
		step = 1;
	}
}

void BattleShowPlayerTarget() {//STEP 3
	//show enemy target
	
	uint8_t bdex = 5;
	if (KEY_PRESSED(J_UP)) {
		bdex -= 3;
		if (bdex < 1) {
			bdex += 6;
		}
	}
	else if (KEY_PRESSED(J_DOWN)) {
		bdex += 3;
		if (bdex > 6) {
			bdex -= 6;
		}
	}
	else if (KEY_PRESSED(J_LEFT)) {
		bdex -= 1;
		if (bdex % 3 == 0) {
			bdex += 3;
		}
	}
	else if (KEY_PRESSED(J_RIGHT)) {
		bdex += 1;
		if (bdex % 3 == 1) {
			bdex -= 3;
		}
	}
	else if (KEY_PRESSED(J_A)) {
		target = bdex;
		step = 4;
	}
	else if (KEY_PRESSED(J_B)) {
		step = 2;
	}
}

void BattleShowRoll() {//STEP 4
	//show dice rolling
	if (KEY_PRESSED(J_A)) {
		if (rolling2 == 1) GetRoll();
	}
}

void BattleUpdate() {
	if (battleEnemy == 0) {
		return 0;
	}
	
	RollDie();
	
	switch (step) {
		case 0:
			//save player's current everything
			BattlePlayIntro();
		break;
		
		case 1:
			BattleShowMenu();
			if (playerCurrentHP < 1) {
				BattleShowDeath();
			}
			//else if (battle enemy HP is gone...) show victory	
			//check if someone is dead, end battle
			//show menu
		break;
		
		case 2:
			BattleShowPlayerAttack();
		break;
		
		case 3:
			BattleShowPlayerTarget();
		break;
		
		case 4:
			BattleShowFightRoll();
			//check roll
		break;
		
		case 5:
			//fight -> show animations
			//show results
		break;
		
		case 6:
			//defend -> roll defense
		break;
		
		case 7:
			//defend -> show animations
			//show results //Can this be CASE 5?
		break;
		
		case 8:
			//item -> show inventory
		break;
		
		case 9:
			//item -> show animations
			//show results //Case 5?
		break;
		
		case 10:
			//run -> roll run
		break;
		
		case 11:
			//run -> show animations
			//show results //Case 5?
		break;
		
		case 12:
			//conclude battle
		break;
	}
}