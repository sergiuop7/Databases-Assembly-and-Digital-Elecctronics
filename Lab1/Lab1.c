//#include <avr/io.h>
//#include <avr/interrupt.h>

void display(unsigned char val, unsigned char pos) {
    const unsigned char digit_patterns[] = {
        0b00111111, 0b00000110, 0b00011011, 0b01001111, 0b01100110, 0b01101101, 0b01011111, 0b00000111, 0b01111111, 0b01101111,
        0b01110001, 0b00111001 // 10 = 'F', 11 = 'C'
    };
    PORTA &= ~0b1111; PORTA |= 1<<pos;
    PORTC = digit_patterns[val];
}

// e)
float c2f(float celsius) {
    return celsius * 9 / 5 + 32;
}

// f)
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

    // display loop
    switch(digit_pos++) {
    case 0: display(temp_scale_is_farenheit ? 10 : 11, 0); break;
    case 1: display(value_to_display % 10, 1); break;
    case 2: display(value_to_display / 10 % 10, 2); break;
    case 3: display(value_to_display / 100 % 10, 3); digit_pos = 0; break;
    }

    // 4ms per interrupt => need 125 interrupts for 0.5s
    if(cnt++ < 125) return;
    cnt -= 125;

    celsius = read_adc() * 0.48828125; // 5 / 1024 * 100
    if(temp_scale_is_farenheit)
        value_to_display = c2f(celsius);
    else
        value_to_display = celsius;

    // g)
    if(celsius > 28)
        OCR2 = 51;
    else
        OCR2 = 0;
}

int main(void)
{
    char prev_B1 = 0;

    // b)
    TCCR2 = 0b01111101; // FastPWM, inverting, prescaler=128 => freq = 8000000/256/128=244.140Hz
    OCR2 = 0; // because of g)
    // OCR2 = 51; // duty cycle = 51/255 = 20%

    // c)
    DDRB |= 1; // B0 output
    DDRB &= ~(1<<1); // B1 input
    PORTB |= 1<<1; // B1 pull-up

    // d) enable display
    DDRA |= 0b1111;
    DDRC = 255;

    // f) setup interrupt
    TCCR0 = 0b00001100; // CTC, prescale 256 => 31250 counts per second
    OCR0 = 124; // (OCR0+1) * 256 / 8000000 = 4ms per interrupt
    TIMSK |= 0b00000010; // enable timer0 output compare interrupt
    SREG |= 1<<7; // enable interrupts

    // f) setup ADC
    ADCSRA = 0b10000111; // Enable ADC, prescaler 128
    ADMUX = 0b01000110; // always read ADC6

    // f
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

    //senzor de temperatura
int fms=0,adv=0,vin=0,tmp=0,tmpf=0,control=0,op=0;
void display(char p, char c)
{
    PORTA &= 0b11110000;
    PORTC &= 0b00000000;
    switch(c)
    {
    case 0:
        PORTC |= 0b00111111;
        break;
    case 1:
        PORTC |= 0b00000110;
        break;
    case 2:
        PORTC |= 0b01011011;
        break;
    case 3:
        PORTC |= 0b01001111;
        break;
    case 4:
        PORTC |= 0b01100110;
        break;
    case 5:
        PORTC |= 0b01101101;
        break;
    case 6:
        PORTC |= 0b01111101;
        break;
    case 7:
        PORTC |= 0b00000111;
        break;
    case 8:
        PORTC |= 0b11111111;
        break;
    case 9:
        PORTC |= 0b01100111;
        break;
    case 10:
        PORTC |=0b01110001;
    case 11:
        PORTC |= 0b00111001;
    }
    switch(p)
    {
    case 1:
        PORTA |= 0b00000001;
        break;
    case 2:
        PORTA |= 0b00000010;
        break;
    case 3:
        PORTA |= 0b00000100;
        break;
    case 4:
        PORTA |= 0b00001000;
        break;

    }

}
void init_pwm()
{
    TCCR2=0b01111101;
    TCNT2=0;
    OCR2=51;
    DDRD |=1<<7;
}
void init_pin(){
    DDRB &=~(1<<3);
    PORTB |= (1<<3);
    DDRB|=(1<<7);
}
int convert(int celzius){
    return (celzius*9)/5+32;
}
void init_timer(){
    TCCR0=0b00001011
    SREG |= 1<<7;
    TCNT0=0;
    OCR0=250;
    TIMSK |= 0b00000010;
    
}
void init_adc(){
  ADMUX = 0b00000000;
  ADCSRA= 0b10000100;
}
int readADC (char ch){
ADMUX &= 0b11100000;
ADMUX |= ch;
ADCSRA |= (1<<6);
	while(ADCSRA & (1<<6));
adc_l = ADCL;
adc_h = ADCH;
return ((adc_h << 8) | adc_l);
}
void Timer0_OC_ISR() iv IVT_ADDR_TIMER0_COMP{
    fms++;
    digit++;
    switch(digit)
    {
    case 1:
        display(1,op);
        break;
    case 2:
        display(2,tmp%10);
        break;
    case 3:
        display(3,(tmp/10)%10);
        break;
    case 4:
        display(4,(tmp/100)%10);
        digit=0;
        break;
    }
    if(fms==500) {
        adv = readADC(7);
       vin = ((float)adv)*5/1024;
       tmp = vin*1000/10;
    }
    if(tmp>=28) { PORTB |= (1<<7);}
    if((PINB & (1<<3) && comand==0)
     {
         tmpf=convert(tmp);
         op=10
         tmp=tmpf
         comand=1;

     }
    else if ((PINB & (1<<3) && comand==1)
             {
                 op=11;
                 comand=0;
             }



}
int main()
{
    init_pwm();
    init_pin();
    init_adc();
    init_timer();
    return 0;
}