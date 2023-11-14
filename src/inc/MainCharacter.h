#ifndef MainCharacter_h
#define MainCharacter_h

extern uint8_t facing;
extern uint8_t frame;//(0 or 4)
extern int8_t playerX;
extern int8_t playerY; //the initialization will have to handle that
extern int8_t playerMapX; //gonna sound weird but maps start at 1
extern int8_t playerMapY;
extern uint8_t playerMoving;
extern uint8_t playerTalking;

extern uint8_t playerStrength;
extern uint8_t playerAgility;
extern uint8_t playerPresence;
extern uint8_t playerToughness;

extern uint8_t playerCurrentHP;
extern uint8_t playerMaxHP;

extern uint8_t playerWeapon;
extern uint8_t playerArmor;

extern uint8_t playerHead;
extern uint8_t playerLeftArm;
extern uint8_t playerRightArm;
extern uint8_t playerTorso;
extern uint8_t playerLeftLeg;
extern uint8_t playerRightLeg;

void MainCharacter_idle(void);
void MainCharacter_walk(void);


#endif