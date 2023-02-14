#line 1 "E:/Electronica digitala/Laboratoare/Laborator 4/Laborator_4.c"
#line 205 "E:/Electronica digitala/Laboratoare/Laborator 4/Laborator_4.c"
int ms, s, m, digit;
void display(char p , char c){
 PORTA &= 0b11110000;
 PORTC &= 0b00000000;
 switch(c){
 case 0:
 PORTC |= 0b00111111;break;
 case 1:
 PORTC |= 0b00000110;break;
 case 2:
 PORTC |= 0b01011011;break;
 case 3:
 PORTC |= 0b01001111;break;
 case 4:
 PORTC |= 0b01100110;break;
 case 5:
 PORTC |= 0b01101101;break;
 case 6:
 PORTC |= 0b01111101;break;
 case 7:
 PORTC |= 0b00000111;break;
 case 8:
 PORTC |= 0b01111111;break;
 case 9:
 PORTC |= 0b01100111;break;
 }

 switch(p){
 case 1:
 PORTA |= 0b00000001;break;
 case 2:
 PORTA |= 0b00000010;break;
 case 3:
 PORTA |= 0b00000100;break;
 case 4:
 PORTA |= 0b00001000;break;
 }
}
void sec_min() iv IVT_ADDR_TIMER0_COMP ics ICS_AUTO {
 digit++;
 switch(digit){
 case 1 : display(4 , s%10);break;
 case 2 : display(3, (s/10)%10);break;
 case 3 : display(2 , m%10);break;
 case 4 : display(1 , (m/10)%10); digit = 0; break;
 }
 if(ms == 999){
 s++;
 ms = 0;
 if(s == 60){
 s = 0;
 m++;
 }
 }else ms++;
}

void secunda() org IVT_ADDR_INT0 {
 s++;
}

void minut() org IVT_ADDR_INT1 {
 m++;
}

void init_INT0(){
 SREG |= (1<<7);
 MCUCR |= 0b00000011;
 GICR |= (1<<6);
}
void init_INT1(){
 SREG |= (1<<7);
 MCUCR |= 0b00001100;
 GICR |= (1<<7);
}
void init_timer(){
 SREG |= 1<<7;
 TCCR0 = 0b00001011;
 TCNT0 = 0;
 OCR0 = 125;
 TIMSK = 0b00000010;
}
void main(){
 DDRA |= 0b00001111;
 DDRC |= 0b11111111;
 init_timer();
 init_INT0();
 init_INT1();
 while(1);
}
