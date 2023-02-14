
_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Laborator_1.c,37 :: 		void main(){
;Laborator_1.c,38 :: 		DDRD =0b11111111;
	LDI        R27, 255
	OUT        DDRD+0, R27
;Laborator_1.c,39 :: 		DDRB &= ~(1<<2);
	IN         R27, DDRB+0
	CBR        R27, 4
	OUT        DDRB+0, R27
;Laborator_1.c,40 :: 		while(1)
L_main0:
;Laborator_1.c,42 :: 		if(PINB & (1<<2))
	IN         R16, PINB+0
	SBRS       R16, 2
	JMP        L_main2
;Laborator_1.c,44 :: 		if(starePB2 == 0)
	LDS        R16, _starePB2+0
	CPI        R16, 0
	BREQ       L__main6
	JMP        L_main3
L__main6:
;Laborator_1.c,46 :: 		starePB2 = 1;
	LDI        R27, 1
	STS        _starePB2+0, R27
;Laborator_1.c,47 :: 		numar++;
	LDS        R16, _numar+0
	LDS        R17, _numar+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _numar+0, R16
	STS        _numar+1, R17
;Laborator_1.c,48 :: 		}
L_main3:
;Laborator_1.c,49 :: 		}
	JMP        L_main4
L_main2:
;Laborator_1.c,50 :: 		else starePB2 = 0;
	LDI        R27, 0
	STS        _starePB2+0, R27
L_main4:
;Laborator_1.c,51 :: 		PORTD = numar;
	LDS        R16, _numar+0
	OUT        PORTD+0, R16
;Laborator_1.c,52 :: 		}
	JMP        L_main0
;Laborator_1.c,54 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
