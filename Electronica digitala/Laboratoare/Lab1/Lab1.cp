#line 1 "E:/Electronica digitala/Laboratoare/Lab1/Lab1.c"



void display(unsigned char val, unsigned char pos) {
 const unsigned char digit_patterns[] = {
 0b00111111, 0b00000110, 0b00011011, 0b01001111, 0b01100110, 0b01101101, 0b01011111, 0b00000111, 0b01111111, 0b01101111,
 0b01110001, 0b00111001
 };
 PORTA &= ~0b1111; PORTA |= 1<<pos;
 PORTC = digit_patterns[val];
}


float c2f(float celsius) {
 return celsius * 9 / 5 + 32;
}


unsigned char temp_scale_is_farenheit;

unsigned char get_adcl() { return ADCL; }
unsigned char get_adch() { return ADCH; }

unsigned int read_adc() {
 ADCSRA |= 1<<6;
 while(ADCSRA & (1<<6));
 unsigned int adc = get_adcl();
 adc |= get_adch() << 8;
 return adc;
}

ISR(TIMER0_COMP_vect) {
 float celsius;
 static int cnt = 0;
 static int digit_pos = 0;
 static int value_to_display = 123;


 switch(digit_pos++) {
 case 0: display(temp_scale_is_farenheit ? 10 : 11, 0); break;
 case 1: display(value_to_display % 10, 1); break;
 case 2: display(value_to_display / 10 % 10, 2); break;
 case 3: display(value_to_display / 100 % 10, 3); digit_pos = 0; break;
 }


 if(cnt++ < 125) return;
 cnt -= 125;

 celsius = read_adc() * 0.48828125;
 if(temp_scale_is_farenheit)
 value_to_display = c2f(celsius);
 else
 value_to_display = celsius;


 if(celsius > 28)
 OCR2 = 51;
 else
 OCR2 = 0;
}

int main(void)
{
 char prev_B1 = 0;


 TCCR2 = 0b01111101;
 OCR2 = 0;



 DDRB |= 1;
 DDRB &= ~(1<<1);
 PORTB |= 1<<1;


 DDRA |= 0b1111;
 DDRC = 255;


 TCCR0 = 0b00001100;
 OCR0 = 124;
 TIMSK |= 0b00000010;
 SREG |= 1<<7;


 ADCSRA = 0b10000111;
 ADMUX = 0b01000110;


 while(1) {
 if(!(PINB & (1<<1))) {
 if(prev_B1 == 0) {
 temp_scale_is_farenheit ^= 1;
 }
 prev_B1 = 1;
 } else prev_B1 = 0;
 }

 return 0;
}
