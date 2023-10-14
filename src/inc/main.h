#ifndef KEYS_H
#define KEYS_H

extern uint8_t previous_keys;
extern uint8_t keys;
uint8_t previous_keys = 0;
uint8_t keys = 0;

#define UPDATE_KEYS() previous_keys = keys; keys = joypad()
 
#define KEY_PRESSED(K) (keys & (K))
#define KEY_TICKED(K)   ((keys & (K)) && !(previous_keys & (K)))
#define KEY_RELEASED(K) ((previous_keys & (K)) && !(keys & (K)))

#define ANY_KEY_PRESSED (keys)

#endif