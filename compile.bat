REM Automatically generated from Makefile
REM delete previous files
DEL *.gb

REM compile .c files into .o files
C:\gbdk\bin\lcc   -c -o main.o src\main.c
C:\gbdk\bin\lcc   -c -o MainCharacter_Sprite.o res\MainCharacter_Sprite.c

REM compile a .gb file from the compiled .o files
C:\gbdk\bin\lcc   -o Example.gb main.o MainCharacter_Sprite.o

REM delete garbo files
DEL *.asm
DEL *.lst
DEL *.ihx
DEL *.sym
DEL *.o