REM Automatically generated from Makefile
REM delete previous files
DEL *.gb

REM compile .c files into .o files
C:\gbdk\bin\lcc   -c -o main.o src\main.c
C:\gbdk\bin\lcc   -c -o Font.o src\Font.c
C:\gbdk\bin\lcc   -c -o border_sprite.o res\border_sprite.c
C:\gbdk\bin\lcc   -c -o border_map.o res\border_map.c
C:\gbdk\bin\lcc   -c -o MainCharacter_Sprite.o res\MainCharacter_Sprite.c
C:\gbdk\bin\lcc   -c -o level1_1_Sprite.o res\level1_1_Sprite.c
C:\gbdk\bin\lcc   -c -o level1_1.o res\level1_1.c

REM compile a .gb file from the compiled .o files
C:\gbdk\bin\lcc   -o Example.gb main.o MainCharacter_Sprite.o level1_1.o level1_1_Sprite.o Font.o border_sprite.o border_map.o

REM delete garbo files
DEL *.asm
DEL *.lst
DEL *.ihx
DEL *.sym
DEL *.o