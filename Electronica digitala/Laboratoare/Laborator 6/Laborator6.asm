
_display:

;Laborator6.c,4 :: 		void display(char p , char c){
;Laborator6.c,5 :: 		PORTA &= 0b11110000;
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Laborator6.c,6 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Laborator6.c,7 :: 		switch(c){
	JMP        L_display0
;Laborator6.c,8 :: 		case 0:
L_display2:
;Laborator6.c,9 :: 		PORTC |= 0b00111111;break;
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator6.c,10 :: 		case 1:
L_display3:
;Laborator6.c,11 :: 		PORTC |= 0b00000110;break;
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator6.c,12 :: 		case 2:
L_display4:
;Laborator6.c,13 :: 		PORTC |= 0b01011011;break;
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator6.c,14 :: 		case 3:
L_display5:
;Laborator6.c,15 :: 		PORTC |= 0b01001111;break;
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator6.c,16 :: 		case 4:
L_display6:
;Laborator6.c,17 :: 		PORTC |= 0b01100110;break;
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator6.c,18 :: 		case 5:
L_display7:
;Laborator6.c,19 :: 		PORTC |= 0b01101101;break;
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator6.c,20 :: 		case 6:
L_display8:
;Laborator6.c,21 :: 		PORTC |= 0b01111101;break;
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator6.c,22 :: 		case 7:
L_display9:
;Laborator6.c,23 :: 		PORTC |= 0b00000111;break;
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator6.c,24 :: 		case 8:
L_display10:
;Laborator6.c,25 :: 		PORTC |= 0b01111111;break;
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator6.c,26 :: 		case 9:
L_display11:
;Laborator6.c,27 :: 		PORTC |= 0b01100111;break;
	IN         R16, PORTC+0
	ORI        R16, 103
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator6.c,28 :: 		}
L_display0:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__display31
	JMP        L_display2
L__display31:
	LDI        R27, 1
	CP         R3, R27
	BRNE       L__display32
	JMP        L_display3
L__display32:
	LDI        R27, 2
	CP         R3, R27
	BRNE       L__display33
	JMP        L_display4
L__display33:
	LDI        R27, 3
	CP         R3, R27
	BRNE       L__display34
	JMP        L_display5
L__display34:
	LDI        R27, 4
	CP         R3, R27
	BRNE       L__display35
	JMP        L_display6
L__display35:
	LDI        R27, 5
	CP         R3, R27
	BRNE       L__display36
	JMP        L_display7
L__display36:
	LDI        R27, 6
	CP         R3, R27
	BRNE       L__display37
	JMP        L_display8
L__display37:
	LDI        R27, 7
	CP         R3, R27
	BRNE       L__display38
	JMP        L_display9
L__display38:
	LDI        R27, 8
	CP         R3, R27
	BRNE       L__display39
	JMP        L_display10
L__display39:
	LDI        R27, 9
	CP         R3, R27
	BRNE       L__display40
	JMP        L_display11
L__display40:
L_display1:
;Laborator6.c,30 :: 		switch(p){
	JMP        L_display12
;Laborator6.c,31 :: 		case 1:
L_display14:
;Laborator6.c,32 :: 		PORTA |= 0b00000001;break;
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
	JMP        L_display13
;Laborator6.c,33 :: 		case 2:
L_display15:
;Laborator6.c,34 :: 		PORTA |= 0b00000010;break;
	IN         R27, PORTA+0
	SBR        R27, 2
	OUT        PORTA+0, R27
	JMP        L_display13
;Laborator6.c,35 :: 		case 3:
L_display16:
;Laborator6.c,36 :: 		PORTA |= 0b00000100;break;
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
	JMP        L_display13
;Laborator6.c,37 :: 		case 4:
L_display17:
;Laborator6.c,38 :: 		PORTA |= 0b00001000;break;
	IN         R16, PORTA+0
	ORI        R16, 8
	OUT        PORTA+0, R16
	JMP        L_display13
;Laborator6.c,39 :: 		}
L_display12:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__display41
	JMP        L_display14
L__display41:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__display42
	JMP        L_display15
L__display42:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__display43
	JMP        L_display16
L__display43:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__display44
	JMP        L_display17
L__display44:
L_display13:
;Laborator6.c,40 :: 		}
L_end_display:
	RET
; end of _display

_init_adc:

;Laborator6.c,42 :: 		void init_adc(){
;Laborator6.c,43 :: 		ADMUX = 0b01000000;    // Tensiunea de referinta
	LDI        R27, 64
	OUT        ADMUX+0, R27
;Laborator6.c,44 :: 		ADCSRA = 0b10000111;   // Activare ADC ; Prescaler = 128
	LDI        R27, 135
	OUT        ADCSRA+0, R27
;Laborator6.c,45 :: 		}
L_end_init_adc:
	RET
; end of _init_adc

_read_ADC:

;Laborator6.c,47 :: 		int read_ADC(char ch){
;Laborator6.c,48 :: 		ADMUX &= 0b11100000;
	IN         R16, ADMUX+0
	ANDI       R16, 224
	OUT        ADMUX+0, R16
;Laborator6.c,49 :: 		ADMUX |= ch;
	OR         R16, R2
	OUT        ADMUX+0, R16
;Laborator6.c,50 :: 		ADCSRA |= (1<<6);
	IN         R27, ADCSRA+0
	SBR        R27, 64
	OUT        ADCSRA+0, R27
;Laborator6.c,51 :: 		while(ADCSRA & (1<<6));
L_read_ADC18:
	IN         R16, ADCSRA+0
	SBRS       R16, 6
	JMP        L_read_ADC19
	JMP        L_read_ADC18
L_read_ADC19:
;Laborator6.c,52 :: 		adcxl = ADCL;
	IN         R16, ADCL+0
	STS        _adcxl+0, R16
	LDI        R27, 0
	STS        _adcxl+1, R27
;Laborator6.c,53 :: 		adcxh = ADCH;
	IN         R16, ADCH+0
	STS        _adcxh+0, R16
	LDI        R27, 0
	STS        _adcxh+1, R27
;Laborator6.c,54 :: 		return ((adcxh << 8 ) | adcxl);
	LDS        R16, _adcxh+0
	LDS        R17, _adcxh+1
	MOV        R19, R16
	CLR        R18
	LDS        R16, _adcxl+0
	LDS        R17, _adcxl+1
	OR         R16, R18
	OR         R17, R19
;Laborator6.c,55 :: 		}
L_end_read_ADC:
	RET
; end of _read_ADC

_Timer0:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Laborator6.c,57 :: 		void Timer0() iv IVT_ADDR_TIMER0_COMP ics ICS_AUTO {
;Laborator6.c,58 :: 		digit++;
	PUSH       R2
	PUSH       R3
	LDS        R16, _digit+0
	SUBI       R16, 255
	STS        _digit+0, R16
;Laborator6.c,59 :: 		switch(digit){
	JMP        L_Timer020
;Laborator6.c,60 :: 		case 1: display(1,value % 10); break;
L_Timer022:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _value+0
	LDS        R17, _value+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
	JMP        L_Timer021
;Laborator6.c,61 :: 		case 2: display(2,(value/10)%10); break;
L_Timer023:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _value+0
	LDS        R17, _value+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	LDI        R20, 10
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 2
	MOV        R2, R27
	CALL       _display+0
	JMP        L_Timer021
;Laborator6.c,62 :: 		case 3: display(3,(value/100)%10); break;
L_Timer024:
	LDI        R20, 100
	LDI        R21, 0
	LDS        R16, _value+0
	LDS        R17, _value+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	LDI        R20, 10
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 3
	MOV        R2, R27
	CALL       _display+0
	JMP        L_Timer021
;Laborator6.c,63 :: 		case 4: display(4,(value/1000)%10);digit = 0; break;
L_Timer025:
	LDI        R20, 232
	LDI        R21, 3
	LDS        R16, _value+0
	LDS        R17, _value+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	LDI        R20, 10
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 4
	MOV        R2, R27
	CALL       _display+0
	LDI        R27, 0
	STS        _digit+0, R27
	JMP        L_Timer021
;Laborator6.c,64 :: 		}
L_Timer020:
	LDS        R16, _digit+0
	CPI        R16, 1
	BRNE       L__Timer048
	JMP        L_Timer022
L__Timer048:
	LDS        R16, _digit+0
	CPI        R16, 2
	BRNE       L__Timer049
	JMP        L_Timer023
L__Timer049:
	LDS        R16, _digit+0
	CPI        R16, 3
	BRNE       L__Timer050
	JMP        L_Timer024
L__Timer050:
	LDS        R16, _digit+0
	CPI        R16, 4
	BRNE       L__Timer051
	JMP        L_Timer025
L__Timer051:
L_Timer021:
;Laborator6.c,65 :: 		if(ms == 99){
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	CPI        R17, 0
	BRNE       L__Timer052
	CPI        R16, 99
L__Timer052:
	BREQ       L__Timer053
	JMP        L_Timer026
L__Timer053:
;Laborator6.c,66 :: 		value = (read_ADC(6)/4);
	LDI        R27, 6
	MOV        R2, R27
	CALL       _read_ADC+0
	LDI        R20, 4
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	STS        _value+0, R16
	STS        _value+1, R17
;Laborator6.c,67 :: 		OCR2 = value;
	OUT        OCR2+0, R16
;Laborator6.c,68 :: 		ms=0;
	LDI        R27, 0
	STS        _ms+0, R27
	STS        _ms+1, R27
;Laborator6.c,69 :: 		}
	JMP        L_Timer027
L_Timer026:
;Laborator6.c,70 :: 		else ms++;
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _ms+0, R16
	STS        _ms+1, R17
L_Timer027:
;Laborator6.c,71 :: 		}
L_end_Timer0:
	POP        R3
	POP        R2
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _Timer0

_init_timer0:

;Laborator6.c,73 :: 		void init_timer0(){
;Laborator6.c,74 :: 		TCCR0 = 0b00001011;
	LDI        R27, 11
	OUT        TCCR0+0, R27
;Laborator6.c,75 :: 		TCNT0 = 0;
	LDI        R27, 0
	OUT        TCNT0+0, R27
;Laborator6.c,76 :: 		OCR0 = 125;
	LDI        R27, 125
	OUT        OCR0+0, R27
;Laborator6.c,77 :: 		TIMSK |= 0b00000010;
	IN         R27, TIMSK+0
	SBR        R27, 2
	OUT        TIMSK+0, R27
;Laborator6.c,78 :: 		}
L_end_init_timer0:
	RET
; end of _init_timer0

_init_PWM2:

;Laborator6.c,80 :: 		void init_PWM2(){
;Laborator6.c,81 :: 		DDRD|= 1<<7;
	IN         R27, DDRD+0
	SBR        R27, 128
	OUT        DDRD+0, R27
;Laborator6.c,82 :: 		TCCR2 = 0b01101001;
	LDI        R27, 105
	OUT        TCCR2+0, R27
;Laborator6.c,83 :: 		OCR2 = 128;
	LDI        R27, 128
	OUT        OCR2+0, R27
;Laborator6.c,84 :: 		}
L_end_init_PWM2:
	RET
; end of _init_PWM2

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Laborator6.c,86 :: 		void main(){
;Laborator6.c,87 :: 		DDRC |= 0b11111111;
	IN         R16, DDRC+0
	ORI        R16, 255
	OUT        DDRC+0, R16
;Laborator6.c,88 :: 		DDRA |= 0b00001111;
	IN         R16, DDRA+0
	ORI        R16, 15
	OUT        DDRA+0, R16
;Laborator6.c,89 :: 		init_adc();
	CALL       _init_adc+0
;Laborator6.c,90 :: 		init_timer0();
	CALL       _init_timer0+0
;Laborator6.c,91 :: 		init_PWM2();
	CALL       _init_PWM2+0
;Laborator6.c,92 :: 		SREG |= 1<<7;
	IN         R27, SREG+0
	SBR        R27, 128
	OUT        SREG+0, R27
;Laborator6.c,93 :: 		while(1){
L_main28:
;Laborator6.c,94 :: 		}
	JMP        L_main28
;Laborator6.c,95 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
