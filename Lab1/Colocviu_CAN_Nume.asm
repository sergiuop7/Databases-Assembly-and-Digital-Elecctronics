
_init_PWM2:

;Colocviu_CAN_Nume.c,4 :: 		void init_PWM2(){
;Colocviu_CAN_Nume.c,5 :: 		DDRD |= 1<<7; //PD7 – pin de iesire
	IN         R27, DDRD+0
	SBR        R27, 128
	OUT        DDRD+0, R27
;Colocviu_CAN_Nume.c,6 :: 		TCCR2 = 0b01101010; //Fast PWM, neinversat
	LDI        R27, 106
	OUT        TCCR2+0, R27
;Colocviu_CAN_Nume.c,7 :: 		TCNT2 = 0;
	LDI        R27, 0
	OUT        TCNT2+0, R27
;Colocviu_CAN_Nume.c,8 :: 		OCR2 = 125;
	LDI        R27, 125
	OUT        OCR2+0, R27
;Colocviu_CAN_Nume.c,9 :: 		}
L_end_init_PWM2:
	RET
; end of _init_PWM2

_init_pini:

;Colocviu_CAN_Nume.c,11 :: 		void init_pini() {
;Colocviu_CAN_Nume.c,12 :: 		DDRB |= (1<<2);
	IN         R16, DDRB+0
	ORI        R16, 4
	OUT        DDRB+0, R16
;Colocviu_CAN_Nume.c,13 :: 		DDRB &= ~(1<<3);
	MOV        R18, R16
	ANDI       R18, 247
	OUT        DDRB+0, R18
;Colocviu_CAN_Nume.c,14 :: 		PORTB |= (1<<3);
	IN         R16, PORTB+0
	MOV        R17, R16
	ORI        R17, 8
	OUT        PORTB+0, R17
;Colocviu_CAN_Nume.c,15 :: 		DDRB &= ~(1<<4);
	MOV        R16, R18
	ANDI       R16, 239
	OUT        DDRB+0, R16
;Colocviu_CAN_Nume.c,16 :: 		PORTB |= (1<<4);
	ORI        R17, 16
	OUT        PORTB+0, R17
;Colocviu_CAN_Nume.c,17 :: 		DDRB &= ~(1<<5);
	ANDI       R16, 223
	OUT        DDRB+0, R16
;Colocviu_CAN_Nume.c,18 :: 		PORTB |= (1<<5);
	MOV        R16, R17
	ORI        R16, 32
	OUT        PORTB+0, R16
;Colocviu_CAN_Nume.c,20 :: 		}
L_end_init_pini:
	RET
; end of _init_pini

_display:

;Colocviu_CAN_Nume.c,22 :: 		void display(char p, char c)
;Colocviu_CAN_Nume.c,24 :: 		PORTA &= 0b11110000;
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Colocviu_CAN_Nume.c,25 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,26 :: 		switch(c)
	JMP        L_display0
;Colocviu_CAN_Nume.c,28 :: 		case 0:
L_display2:
;Colocviu_CAN_Nume.c,29 :: 		PORTC |= 0b00111111;
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,30 :: 		break;
	JMP        L_display1
;Colocviu_CAN_Nume.c,31 :: 		case 1:
L_display3:
;Colocviu_CAN_Nume.c,32 :: 		PORTC |= 0b00000110;
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,33 :: 		break;
	JMP        L_display1
;Colocviu_CAN_Nume.c,34 :: 		case 2:
L_display4:
;Colocviu_CAN_Nume.c,35 :: 		PORTC |= 0b01011011;
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,36 :: 		break;
	JMP        L_display1
;Colocviu_CAN_Nume.c,37 :: 		case 3:
L_display5:
;Colocviu_CAN_Nume.c,38 :: 		PORTC |= 0b01001111;
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,39 :: 		break;
	JMP        L_display1
;Colocviu_CAN_Nume.c,40 :: 		case 4:
L_display6:
;Colocviu_CAN_Nume.c,41 :: 		PORTC |= 0b01100110;
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,42 :: 		break;
	JMP        L_display1
;Colocviu_CAN_Nume.c,43 :: 		case 5:
L_display7:
;Colocviu_CAN_Nume.c,44 :: 		PORTC |= 0b01101101;
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,45 :: 		break;
	JMP        L_display1
;Colocviu_CAN_Nume.c,46 :: 		case 6:
L_display8:
;Colocviu_CAN_Nume.c,47 :: 		PORTC |= 0b01111101;
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,48 :: 		break;
	JMP        L_display1
;Colocviu_CAN_Nume.c,49 :: 		case 7:
L_display9:
;Colocviu_CAN_Nume.c,50 :: 		PORTC |= 0b00000111;
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,51 :: 		break;
	JMP        L_display1
;Colocviu_CAN_Nume.c,52 :: 		case 8:
L_display10:
;Colocviu_CAN_Nume.c,53 :: 		PORTC |= 0b11111111;
	IN         R16, PORTC+0
	ORI        R16, 255
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,54 :: 		break;
	JMP        L_display1
;Colocviu_CAN_Nume.c,55 :: 		case 9:
L_display11:
;Colocviu_CAN_Nume.c,56 :: 		PORTC |= 0b01100111;
	IN         R16, PORTC+0
	ORI        R16, 103
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,57 :: 		break;
	JMP        L_display1
;Colocviu_CAN_Nume.c,58 :: 		case 10:
L_display12:
;Colocviu_CAN_Nume.c,59 :: 		PORTC |=0b01101000;       //L
	IN         R16, PORTC+0
	ORI        R16, 104
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,60 :: 		case 11:
L_display13:
;Colocviu_CAN_Nume.c,61 :: 		PORTC |= 0b00111111;      //O
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,62 :: 		case 12:
L_display14:
;Colocviu_CAN_Nume.c,63 :: 		PORTC |= 0b01110110;      //H
	IN         R16, PORTC+0
	ORI        R16, 118
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,64 :: 		case 13:
L_display15:
;Colocviu_CAN_Nume.c,65 :: 		PORTC |= 0b00000110;      //I
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
;Colocviu_CAN_Nume.c,66 :: 		}
	JMP        L_display1
L_display0:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__display37
	JMP        L_display2
L__display37:
	LDI        R27, 1
	CP         R3, R27
	BRNE       L__display38
	JMP        L_display3
L__display38:
	LDI        R27, 2
	CP         R3, R27
	BRNE       L__display39
	JMP        L_display4
L__display39:
	LDI        R27, 3
	CP         R3, R27
	BRNE       L__display40
	JMP        L_display5
L__display40:
	LDI        R27, 4
	CP         R3, R27
	BRNE       L__display41
	JMP        L_display6
L__display41:
	LDI        R27, 5
	CP         R3, R27
	BRNE       L__display42
	JMP        L_display7
L__display42:
	LDI        R27, 6
	CP         R3, R27
	BRNE       L__display43
	JMP        L_display8
L__display43:
	LDI        R27, 7
	CP         R3, R27
	BRNE       L__display44
	JMP        L_display9
L__display44:
	LDI        R27, 8
	CP         R3, R27
	BRNE       L__display45
	JMP        L_display10
L__display45:
	LDI        R27, 9
	CP         R3, R27
	BRNE       L__display46
	JMP        L_display11
L__display46:
	LDI        R27, 10
	CP         R3, R27
	BRNE       L__display47
	JMP        L_display12
L__display47:
	LDI        R27, 11
	CP         R3, R27
	BRNE       L__display48
	JMP        L_display13
L__display48:
	LDI        R27, 12
	CP         R3, R27
	BRNE       L__display49
	JMP        L_display14
L__display49:
	LDI        R27, 13
	CP         R3, R27
	BRNE       L__display50
	JMP        L_display15
L__display50:
L_display1:
;Colocviu_CAN_Nume.c,67 :: 		switch(p)
	JMP        L_display16
;Colocviu_CAN_Nume.c,69 :: 		case 1:
L_display18:
;Colocviu_CAN_Nume.c,70 :: 		PORTA |= 0b00000001;
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
;Colocviu_CAN_Nume.c,71 :: 		break;
	JMP        L_display17
;Colocviu_CAN_Nume.c,72 :: 		case 2:
L_display19:
;Colocviu_CAN_Nume.c,73 :: 		PORTA |= 0b00000010;
	IN         R27, PORTA+0
	SBR        R27, 2
	OUT        PORTA+0, R27
;Colocviu_CAN_Nume.c,74 :: 		break;
	JMP        L_display17
;Colocviu_CAN_Nume.c,75 :: 		case 3:
L_display20:
;Colocviu_CAN_Nume.c,76 :: 		PORTA |= 0b00000100;
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
;Colocviu_CAN_Nume.c,77 :: 		break;
	JMP        L_display17
;Colocviu_CAN_Nume.c,78 :: 		case 4:
L_display21:
;Colocviu_CAN_Nume.c,79 :: 		PORTA |= 0b00001000;
	IN         R16, PORTA+0
	ORI        R16, 8
	OUT        PORTA+0, R16
;Colocviu_CAN_Nume.c,80 :: 		break;
	JMP        L_display17
;Colocviu_CAN_Nume.c,82 :: 		}
L_display16:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__display51
	JMP        L_display18
L__display51:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__display52
	JMP        L_display19
L__display52:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__display53
	JMP        L_display20
L__display53:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__display54
	JMP        L_display21
L__display54:
L_display17:
;Colocviu_CAN_Nume.c,83 :: 		}
L_end_display:
	RET
; end of _display

_init_timer:

;Colocviu_CAN_Nume.c,85 :: 		void init_timer(){
;Colocviu_CAN_Nume.c,86 :: 		TCCR2 = 0b00001101;
	LDI        R27, 13
	OUT        TCCR2+0, R27
;Colocviu_CAN_Nume.c,87 :: 		SREG |= 1<<7;
	IN         R27, SREG+0
	SBR        R27, 128
	OUT        SREG+0, R27
;Colocviu_CAN_Nume.c,88 :: 		TCNT2 = 0;
	LDI        R27, 0
	OUT        TCNT2+0, R27
;Colocviu_CAN_Nume.c,89 :: 		OCR2 = 250;
	LDI        R27, 250
	OUT        OCR2+0, R27
;Colocviu_CAN_Nume.c,90 :: 		TIMSK |= 0b10000000;
	IN         R16, TIMSK+0
	ORI        R16, 128
	OUT        TIMSK+0, R16
;Colocviu_CAN_Nume.c,91 :: 		}
L_end_init_timer:
	RET
; end of _init_timer

_init_adc:

;Colocviu_CAN_Nume.c,93 :: 		void init_adc(){
;Colocviu_CAN_Nume.c,94 :: 		ADMUX = 0b00000000;
	LDI        R27, 0
	OUT        ADMUX+0, R27
;Colocviu_CAN_Nume.c,95 :: 		ADCSRA= 0b10000111;
	LDI        R27, 135
	OUT        ADCSRA+0, R27
;Colocviu_CAN_Nume.c,96 :: 		}
L_end_init_adc:
	RET
; end of _init_adc

_readADC:

;Colocviu_CAN_Nume.c,97 :: 		int readADC (char ch){
;Colocviu_CAN_Nume.c,98 :: 		ADMUX &= 0b11100000;
	IN         R16, ADMUX+0
	ANDI       R16, 224
	OUT        ADMUX+0, R16
;Colocviu_CAN_Nume.c,99 :: 		ADMUX |= ch;
	OR         R16, R2
	OUT        ADMUX+0, R16
;Colocviu_CAN_Nume.c,100 :: 		ADCSRA |= (1<<6);
	IN         R27, ADCSRA+0
	SBR        R27, 64
	OUT        ADCSRA+0, R27
;Colocviu_CAN_Nume.c,101 :: 		while(ADCSRA & (1<<6));
L_readADC22:
	IN         R16, ADCSRA+0
	SBRS       R16, 6
	JMP        L_readADC23
	JMP        L_readADC22
L_readADC23:
;Colocviu_CAN_Nume.c,102 :: 		adc_l = ADCL;
	IN         R16, ADCL+0
	STS        _adc_l+0, R16
	LDI        R27, 0
	STS        _adc_l+1, R27
;Colocviu_CAN_Nume.c,103 :: 		adc_h = ADCH;
	IN         R16, ADCH+0
	STS        _adc_h+0, R16
	LDI        R27, 0
	STS        _adc_h+1, R27
;Colocviu_CAN_Nume.c,104 :: 		return ((adc_h << 8) | adc_l);
	LDS        R16, _adc_h+0
	LDS        R17, _adc_h+1
	MOV        R19, R16
	CLR        R18
	LDS        R16, _adc_l+0
	LDS        R17, _adc_l+1
	OR         R16, R18
	OR         R17, R19
;Colocviu_CAN_Nume.c,105 :: 		}
L_end_readADC:
	RET
; end of _readADC

_interrupt2:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Colocviu_CAN_Nume.c,107 :: 		void interrupt2() iv IVT_ADDR_TIMER2_COMP ics ICS_AUTO {
;Colocviu_CAN_Nume.c,109 :: 		if(ms>=500) {
	PUSH       R2
	PUSH       R3
	LDS        R18, _ms+0
	LDS        R19, _ms+1
	LDI        R16, 244
	LDI        R17, 1
	CP         R18, R16
	CPC        R19, R17
	BRGE       L__interrupt259
	JMP        L_interrupt224
L__interrupt259:
;Colocviu_CAN_Nume.c,110 :: 		x = readADC(6);
	LDI        R27, 6
	MOV        R2, R27
	CALL       _readADC+0
	MOVW       R26, R16
;Colocviu_CAN_Nume.c,111 :: 		if(x<512)
	CPI        R17, 2
	BRNE       L__interrupt260
	CPI        R16, 0
L__interrupt260:
	BRLO       L__interrupt261
	JMP        L_interrupt225
L__interrupt261:
;Colocviu_CAN_Nume.c,113 :: 		display(1,10);
	LDI        R27, 10
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;Colocviu_CAN_Nume.c,114 :: 		display(2,11);
	LDI        R27, 11
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _display+0
;Colocviu_CAN_Nume.c,115 :: 		Delay_ms(4);
	LDI        R17, 42
	LDI        R16, 142
L_interrupt226:
	DEC        R16
	BRNE       L_interrupt226
	DEC        R17
	BRNE       L_interrupt226
	NOP
;Colocviu_CAN_Nume.c,116 :: 		} else
	JMP        L_interrupt228
L_interrupt225:
;Colocviu_CAN_Nume.c,118 :: 		display(1,12);
	LDI        R27, 12
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;Colocviu_CAN_Nume.c,119 :: 		display(2,13);
	LDI        R27, 13
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _display+0
;Colocviu_CAN_Nume.c,120 :: 		Delay_ms(4);
	LDI        R17, 42
	LDI        R16, 142
L_interrupt229:
	DEC        R16
	BRNE       L_interrupt229
	DEC        R17
	BRNE       L_interrupt229
	NOP
;Colocviu_CAN_Nume.c,121 :: 		}
L_interrupt228:
;Colocviu_CAN_Nume.c,122 :: 		}
L_interrupt224:
;Colocviu_CAN_Nume.c,123 :: 		}
L_end_interrupt2:
	POP        R3
	POP        R2
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _interrupt2

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Colocviu_CAN_Nume.c,125 :: 		void main() {
;Colocviu_CAN_Nume.c,126 :: 		DDRA = 0b00001111;
	LDI        R27, 15
	OUT        DDRA+0, R27
;Colocviu_CAN_Nume.c,127 :: 		DDRC = 0b11111111;
	LDI        R27, 255
	OUT        DDRC+0, R27
;Colocviu_CAN_Nume.c,128 :: 		init_pini();
	CALL       _init_pini+0
;Colocviu_CAN_Nume.c,129 :: 		init_adc();
	CALL       _init_adc+0
;Colocviu_CAN_Nume.c,130 :: 		init_timer();
	CALL       _init_timer+0
;Colocviu_CAN_Nume.c,131 :: 		for(;;);
L_main31:
	JMP        L_main31
;Colocviu_CAN_Nume.c,132 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
