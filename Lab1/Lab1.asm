
_carla:

;Lab1.c,1 :: 		void carla(char p, char c)
;Lab1.c,4 :: 		PORTC &= 0b11110000;
	IN         R16, PORTC+0
	ANDI       R16, 240
	OUT        PORTC+0, R16
;Lab1.c,5 :: 		PORTA &= 0b00000000;
	IN         R16, PORTA+0
	ANDI       R16, 0
	OUT        PORTA+0, R16
;Lab1.c,6 :: 		switch(c)
	JMP        L_carla0
;Lab1.c,8 :: 		case 0: PORTC|=0b00111111; break;
L_carla2:
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
	JMP        L_carla1
;Lab1.c,9 :: 		case 1: PORTC|=0b00000110; break;
L_carla3:
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
	JMP        L_carla1
;Lab1.c,10 :: 		case 2: PORTC|=0b01011011; break;
L_carla4:
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
	JMP        L_carla1
;Lab1.c,11 :: 		case 3: PORTC|=0b01001111; break;
L_carla5:
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
	JMP        L_carla1
;Lab1.c,12 :: 		case 4: PORTC|=0b01100110; break;
L_carla6:
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
	JMP        L_carla1
;Lab1.c,13 :: 		case 5: PORTC|=0b01101101; break;
L_carla7:
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
	JMP        L_carla1
;Lab1.c,14 :: 		case 6: PORTC|=0b01111101; break;
L_carla8:
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
	JMP        L_carla1
;Lab1.c,15 :: 		case 7: PORTC|=0b00000111; break;
L_carla9:
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
	JMP        L_carla1
;Lab1.c,16 :: 		case 8: PORTC|=0b01111111; break;
L_carla10:
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
	JMP        L_carla1
;Lab1.c,17 :: 		case 9: PORTC|=0b01101111; break;
L_carla11:
	IN         R16, PORTC+0
	ORI        R16, 111
	OUT        PORTC+0, R16
	JMP        L_carla1
;Lab1.c,18 :: 		}
L_carla0:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__carla24
	JMP        L_carla2
L__carla24:
	LDI        R27, 1
	CP         R3, R27
	BRNE       L__carla25
	JMP        L_carla3
L__carla25:
	LDI        R27, 2
	CP         R3, R27
	BRNE       L__carla26
	JMP        L_carla4
L__carla26:
	LDI        R27, 3
	CP         R3, R27
	BRNE       L__carla27
	JMP        L_carla5
L__carla27:
	LDI        R27, 4
	CP         R3, R27
	BRNE       L__carla28
	JMP        L_carla6
L__carla28:
	LDI        R27, 5
	CP         R3, R27
	BRNE       L__carla29
	JMP        L_carla7
L__carla29:
	LDI        R27, 6
	CP         R3, R27
	BRNE       L__carla30
	JMP        L_carla8
L__carla30:
	LDI        R27, 7
	CP         R3, R27
	BRNE       L__carla31
	JMP        L_carla9
L__carla31:
	LDI        R27, 8
	CP         R3, R27
	BRNE       L__carla32
	JMP        L_carla10
L__carla32:
	LDI        R27, 9
	CP         R3, R27
	BRNE       L__carla33
	JMP        L_carla11
L__carla33:
L_carla1:
;Lab1.c,20 :: 		switch(p)
	JMP        L_carla12
;Lab1.c,22 :: 		case 1:
L_carla14:
;Lab1.c,23 :: 		PORTC |= 0b00000001; break;
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
	JMP        L_carla13
;Lab1.c,24 :: 		case 2:
L_carla15:
;Lab1.c,25 :: 		PORTC |= 0b00000010; break;
	IN         R27, PORTC+0
	SBR        R27, 2
	OUT        PORTC+0, R27
	JMP        L_carla13
;Lab1.c,26 :: 		case 3:
L_carla16:
;Lab1.c,27 :: 		PORTC |= 0b00000100;  break;
	IN         R16, PORTC+0
	ORI        R16, 4
	OUT        PORTC+0, R16
	JMP        L_carla13
;Lab1.c,28 :: 		case 4:
L_carla17:
;Lab1.c,29 :: 		PORTC |= 0b00001000;   break;
	IN         R16, PORTC+0
	ORI        R16, 8
	OUT        PORTC+0, R16
	JMP        L_carla13
;Lab1.c,31 :: 		}
L_carla12:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__carla34
	JMP        L_carla14
L__carla34:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__carla35
	JMP        L_carla15
L__carla35:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__carla36
	JMP        L_carla16
L__carla36:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__carla37
	JMP        L_carla17
L__carla37:
L_carla13:
;Lab1.c,32 :: 		Delay_ms(1);
	LDI        R17, 11
	LDI        R16, 99
L_carla18:
	DEC        R16
	BRNE       L_carla18
	DEC        R17
	BRNE       L_carla18
;Lab1.c,33 :: 		}
L_end_carla:
	RET
; end of _carla

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Lab1.c,35 :: 		void main() {
;Lab1.c,36 :: 		DDRC |= 0b00001111;
	PUSH       R2
	PUSH       R3
	IN         R16, DDRC+0
	ORI        R16, 15
	OUT        DDRC+0, R16
;Lab1.c,37 :: 		DDRA |= 0b11111111;
	IN         R16, DDRA+0
	ORI        R16, 255
	OUT        DDRA+0, R16
;Lab1.c,39 :: 		for(;;)
L_main20:
;Lab1.c,41 :: 		carla(1, 1);
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _carla+0
;Lab1.c,42 :: 		carla(2, 1);
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _carla+0
;Lab1.c,43 :: 		carla(3, 1);
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 3
	MOV        R2, R27
	CALL       _carla+0
;Lab1.c,44 :: 		carla(4, 1);
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 4
	MOV        R2, R27
	CALL       _carla+0
;Lab1.c,49 :: 		}
	JMP        L_main20
;Lab1.c,51 :: 		}
L_end_main:
	POP        R3
	POP        R2
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
