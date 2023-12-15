#ifndef Battle_h
#define Battle_h

extern uint8_t previous_keys;
extern uint8_t keys;
uint8_t previous_keys = 0;
uint8_t keys = 0;

#define UPDATE_KEYS() previous_keys = keys; keys = joypad()
 
#define KEY_PRESSED(K) (keys & (K))
#define KEY_TICKED(K)   ((keys & (K)) && !(previous_keys & (K)))
#define KEY_RELEASED(K) ((previous_keys & (K)) && !(keys & (K)))

#define ANY_KEY_PRESSED (keys)

extern uint8_t dieResult;
extern uint8_t battleEnemy;

uint8_t step;

uint8_t dieRoll1;
uint8_t dieRoll2;

uint8_t index;
uint8_t attack;
uint8_t target;
uint8_t rolling1;
uint8_t rolling2;

//PUT ENEMY STATS HERE TO LOAD

void BattleGraphicsInit(void);

void RollDie(void);
void GetRoll(void);

void BattleUpdate(void);

void BattlePlayIntro(void);
void BattleShowMenu(void);
void BattleShowDeath(void);
void BattleShowPlayerAttack(void);
void BattleShowPlayerTarget(void);
void BattleShowRoll(void);

#endif