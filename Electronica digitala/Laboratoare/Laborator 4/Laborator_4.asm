
_display:

;Laborator_4.c,206 :: 		void display(char p , char c){
;Laborator_4.c,207 :: 		PORTA &= 0b11110000;
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;Laborator_4.c,208 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;Laborator_4.c,209 :: 		switch(c){
	JMP        L_display0
;Laborator_4.c,210 :: 		case 0:
L_display2:
;Laborator_4.c,211 :: 		PORTC |= 0b00111111;break;
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator_4.c,212 :: 		case 1:
L_display3:
;Laborator_4.c,213 :: 		PORTC |= 0b00000110;break;
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator_4.c,214 :: 		case 2:
L_display4:
;Laborator_4.c,215 :: 		PORTC |= 0b01011011;break;
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator_4.c,216 :: 		case 3:
L_display5:
;Laborator_4.c,217 :: 		PORTC |= 0b01001111;break;
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator_4.c,218 :: 		case 4:
L_display6:
;Laborator_4.c,219 :: 		PORTC |= 0b01100110;break;
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator_4.c,220 :: 		case 5:
L_display7:
;Laborator_4.c,221 :: 		PORTC |= 0b01101101;break;
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator_4.c,222 :: 		case 6:
L_display8:
;Laborator_4.c,223 :: 		PORTC |= 0b01111101;break;
	IN         R16, PORTC+0
	ORI        R16, 125
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator_4.c,224 :: 		case 7:
L_display9:
;Laborator_4.c,225 :: 		PORTC |= 0b00000111;break;
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator_4.c,226 :: 		case 8:
L_display10:
;Laborator_4.c,227 :: 		PORTC |= 0b01111111;break;
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator_4.c,228 :: 		case 9:
L_display11:
;Laborator_4.c,229 :: 		PORTC |= 0b01100111;break;
	IN         R16, PORTC+0
	ORI        R16, 103
	OUT        PORTC+0, R16
	JMP        L_display1
;Laborator_4.c,230 :: 		}
L_display0:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__display30
	JMP        L_display2
L__display30:
	LDI        R27, 1
	CP         R3, R27
	BRNE       L__display31
	JMP        L_display3
L__display31:
	LDI        R27, 2
	CP         R3, R27
	BRNE       L__display32
	JMP        L_display4
L__display32:
	LDI        R27, 3
	CP         R3, R27
	BRNE       L__display33
	JMP        L_display5
L__display33:
	LDI        R27, 4
	CP         R3, R27
	BRNE       L__display34
	JMP        L_display6
L__display34:
	LDI        R27, 5
	CP         R3, R27
	BRNE       L__display35
	JMP        L_display7
L__display35:
	LDI        R27, 6
	CP         R3, R27
	BRNE       L__display36
	JMP        L_display8
L__display36:
	LDI        R27, 7
	CP         R3, R27
	BRNE       L__display37
	JMP        L_display9
L__display37:
	LDI        R27, 8
	CP         R3, R27
	BRNE       L__display38
	JMP        L_display10
L__display38:
	LDI        R27, 9
	CP         R3, R27
	BRNE       L__display39
	JMP        L_display11
L__display39:
L_display1:
;Laborator_4.c,232 :: 		switch(p){
	JMP        L_display12
;Laborator_4.c,233 :: 		case 1:
L_display14:
;Laborator_4.c,234 :: 		PORTA |= 0b00000001;break;
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
	JMP        L_display13
;Laborator_4.c,235 :: 		case 2:
L_display15:
;Laborator_4.c,236 :: 		PORTA |= 0b00000010;break;
	IN         R27, PORTA+0
	SBR        R27, 2
	OUT        PORTA+0, R27
	JMP        L_display13
;Laborator_4.c,237 :: 		case 3:
L_display16:
;Laborator_4.c,238 :: 		PORTA |= 0b00000100;break;
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
	JMP        L_display13
;Laborator_4.c,239 :: 		case 4:
L_display17:
;Laborator_4.c,240 :: 		PORTA |= 0b00001000;break;
	IN         R16, PORTA+0
	ORI        R16, 8
	OUT        PORTA+0, R16
	JMP        L_display13
;Laborator_4.c,241 :: 		}
L_display12:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__display40
	JMP        L_display14
L__display40:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__display41
	JMP        L_display15
L__display41:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__display42
	JMP        L_display16
L__display42:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__display43
	JMP        L_display17
L__display43:
L_display13:
;Laborator_4.c,242 :: 		}
L_end_display:
	RET
; end of _display

_sec_min:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Laborator_4.c,243 :: 		void sec_min() iv IVT_ADDR_TIMER0_COMP ics ICS_AUTO {
;Laborator_4.c,244 :: 		digit++;
	PUSH       R2
	PUSH       R3
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _digit+0, R16
	STS        _digit+1, R17
;Laborator_4.c,245 :: 		switch(digit){
	JMP        L_sec_min18
;Laborator_4.c,246 :: 		case 1 : display(4 , s%10);break;
L_sec_min20:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _s+0
	LDS        R17, _s+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 4
	MOV        R2, R27
	CALL       _display+0
	JMP        L_sec_min19
;Laborator_4.c,247 :: 		case 2 : display(3,  (s/10)%10);break;
L_sec_min21:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _s+0
	LDS        R17, _s+1
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
	JMP        L_sec_min19
;Laborator_4.c,248 :: 		case 3 : display(2 , m%10);break;
L_sec_min22:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _m+0
	LDS        R17, _m+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 2
	MOV        R2, R27
	CALL       _display+0
	JMP        L_sec_min19
;Laborator_4.c,249 :: 		case 4 : display(1 , (m/10)%10); digit = 0; break;
L_sec_min23:
	LDI        R20, 10
	LDI        R21, 0
	LDS        R16, _m+0
	LDS        R17, _m+1
	CALL       _Div_16x16_S+0
	MOVW       R16, R22
	LDI        R20, 10
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	MOV        R3, R16
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
	LDI        R27, 0
	STS        _digit+0, R27
	STS        _digit+1, R27
	JMP        L_sec_min19
;Laborator_4.c,250 :: 		}
L_sec_min18:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__sec_min45
	CPI        R16, 1
L__sec_min45:
	BRNE       L__sec_min46
	JMP        L_sec_min20
L__sec_min46:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__sec_min47
	CPI        R16, 2
L__sec_min47:
	BRNE       L__sec_min48
	JMP        L_sec_min21
L__sec_min48:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__sec_min49
	CPI        R16, 3
L__sec_min49:
	BRNE       L__sec_min50
	JMP        L_sec_min22
L__sec_min50:
	LDS        R16, _digit+0
	LDS        R17, _digit+1
	CPI        R17, 0
	BRNE       L__sec_min51
	CPI        R16, 4
L__sec_min51:
	BRNE       L__sec_min52
	JMP        L_sec_min23
L__sec_min52:
L_sec_min19:
;Laborator_4.c,251 :: 		if(ms == 999){
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	CPI        R17, 3
	BRNE       L__sec_min53
	CPI        R16, 231
L__sec_min53:
	BREQ       L__sec_min54
	JMP        L_sec_min24
L__sec_min54:
;Laborator_4.c,252 :: 		s++;
	LDS        R16, _s+0
	LDS        R17, _s+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _s+0, R16
	STS        _s+1, R17
;Laborator_4.c,253 :: 		ms = 0;
	LDI        R27, 0
	STS        _ms+0, R27
	STS        _ms+1, R27
;Laborator_4.c,254 :: 		if(s == 60){
	CPI        R17, 0
	BRNE       L__sec_min55
	CPI        R16, 60
L__sec_min55:
	BREQ       L__sec_min56
	JMP        L_sec_min25
L__sec_min56:
;Laborator_4.c,255 :: 		s = 0;
	LDI        R27, 0
	STS        _s+0, R27
	STS        _s+1, R27
;Laborator_4.c,256 :: 		m++;
	LDS        R16, _m+0
	LDS        R17, _m+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _m+0, R16
	STS        _m+1, R17
;Laborator_4.c,257 :: 		}
L_sec_min25:
;Laborator_4.c,258 :: 		}else ms++;
	JMP        L_sec_min26
L_sec_min24:
	LDS        R16, _ms+0
	LDS        R17, _ms+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _ms+0, R16
	STS        _ms+1, R17
L_sec_min26:
;Laborator_4.c,259 :: 		}
L_end_sec_min:
	POP        R3
	POP        R2
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _sec_min

_secunda:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Laborator_4.c,261 :: 		void secunda() org IVT_ADDR_INT0 {
;Laborator_4.c,262 :: 		s++;
	LDS        R16, _s+0
	LDS        R17, _s+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _s+0, R16
	STS        _s+1, R17
;Laborator_4.c,263 :: 		}
L_end_secunda:
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _secunda

_minut:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;Laborator_4.c,265 :: 		void minut() org IVT_ADDR_INT1 {
;Laborator_4.c,266 :: 		m++;
	LDS        R16, _m+0
	LDS        R17, _m+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _m+0, R16
	STS        _m+1, R17
;Laborator_4.c,267 :: 		}
L_end_minut:
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _minut

_init_INT0:

;Laborator_4.c,269 :: 		void init_INT0(){
;Laborator_4.c,270 :: 		SREG |= (1<<7);
	IN         R27, SREG+0
	SBR        R27, 128
	OUT        SREG+0, R27
;Laborator_4.c,271 :: 		MCUCR |= 0b00000011;
	IN         R16, MCUCR+0
	ORI        R16, 3
	OUT        MCUCR+0, R16
;Laborator_4.c,272 :: 		GICR |= (1<<6);
	IN         R16, GICR+0
	ORI        R16, 64
	OUT        GICR+0, R16
;Laborator_4.c,273 :: 		}
L_end_init_INT0:
	RET
; end of _init_INT0

_init_INT1:

;Laborator_4.c,274 :: 		void init_INT1(){
;Laborator_4.c,275 :: 		SREG |= (1<<7);
	IN         R27, SREG+0
	SBR        R27, 128
	OUT        SREG+0, R27
;Laborator_4.c,276 :: 		MCUCR |= 0b00001100;
	IN         R16, MCUCR+0
	ORI        R16, 12
	OUT        MCUCR+0, R16
;Laborator_4.c,277 :: 		GICR |= (1<<7);
	IN         R16, GICR+0
	ORI        R16, 128
	OUT        GICR+0, R16
;Laborator_4.c,278 :: 		}
L_end_init_INT1:
	RET
; end of _init_INT1

_init_timer:

;Laborator_4.c,279 :: 		void init_timer(){
;Laborator_4.c,280 :: 		SREG |= 1<<7;
	IN         R27, SREG+0
	SBR        R27, 128
	OUT        SREG+0, R27
;Laborator_4.c,281 :: 		TCCR0 = 0b00001011;
	LDI        R27, 11
	OUT        TCCR0+0, R27
;Laborator_4.c,282 :: 		TCNT0 = 0;
	LDI        R27, 0
	OUT        TCNT0+0, R27
;Laborator_4.c,283 :: 		OCR0 = 125;
	LDI        R27, 125
	OUT        OCR0+0, R27
;Laborator_4.c,284 :: 		TIMSK = 0b00000010;
	LDI        R27, 2
	OUT        TIMSK+0, R27
;Laborator_4.c,285 :: 		}
L_end_init_timer:
	RET
; end of _init_timer

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Laborator_4.c,286 :: 		void main(){
;Laborator_4.c,287 :: 		DDRA |= 0b00001111;
	IN         R16, DDRA+0
	ORI        R16, 15
	OUT        DDRA+0, R16
;Laborator_4.c,288 :: 		DDRC |= 0b11111111;
	IN         R16, DDRC+0
	ORI        R16, 255
	OUT        DDRC+0, R16
;Laborator_4.c,289 :: 		init_timer();
	CALL       _init_timer+0
;Laborator_4.c,290 :: 		init_INT0();
	CALL       _init_INT0+0
;Laborator_4.c,291 :: 		init_INT1();
	CALL       _init_INT1+0
;Laborator_4.c,292 :: 		while(1);
L_main27:
	JMP        L_main27
;Laborator_4.c,293 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
