REM Automatically generated from Makefile
REM delete previous files
DEL *.gb

REM compile .c files into .o files
X:\gbdk\bin\lcc   -c -o main.o src\main.c
X:\gbdk\bin\lcc   -c -o Font.o src\Font.c
X:\gbdk\bin\lcc   -c -o border_sprite.o res\border_sprite.c
X:\gbdk\bin\lcc   -c -o border_map.o res\border_map.c
X:\gbdk\bin\lcc   -c -o MainCharacter_Sprite.o res\MainCharacter_Sprite.c
X:\gbdk\bin\lcc   -c -o level1_1_Sprite.o res\level1_1_Sprite.c
X:\gbdk\bin\lcc   -c -o level1_1.o res\level1_1.c
X:\gbdk\bin\lcc   -c -o level1_door_Sprite.o res\level1_door_Sprite.c

REM compile a .gb file from the compiled .o files
X:\gbdk\bin\lcc   -o RYC-alpha.gb main.o MainCharacter_Sprite.o level1_1.o level1_1_Sprite.o Font.o border_sprite.o border_map.o level1_door_Sprite.o

REM delete garbo files
DEL *.asm
DEL *.lst
DEL *.ihx
DEL *.sym
DEL *.o