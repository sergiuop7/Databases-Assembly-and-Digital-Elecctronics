
int adc_l,adc_h,ms;

void init_PWM2(){
     DDRD |= 1<<7; //PD7 – pin de iesire
     TCCR2 = 0b01101010; //Fast PWM, neinversat
     TCNT2 = 0;
     OCR2 = 125;
}

void init_pini() {
     DDRB |= (1<<2);
     DDRB &= ~(1<<3);
     PORTB |= (1<<3);
     DDRB &= ~(1<<4);
     PORTB |= (1<<4);
     DDRB &= ~(1<<5);
     PORTB |= (1<<5);
     
}

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
        PORTC |=0b01101000;       //L
    case 11:
        PORTC |= 0b00111111;      //O
    case 12:
        PORTC |= 0b01110110;      //H
    case 13:
        PORTC |= 0b00000110;      //I
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

void init_timer(){
    TCCR2 = 0b00001101;
    SREG |= 1<<7;
    TCNT2 = 0;
    OCR2 = 250;
    TIMSK |= 0b10000000;
}

void init_adc(){
  ADMUX = 0b00000000;
  ADCSRA= 0b10000111;
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

void interrupt2() iv IVT_ADDR_TIMER2_COMP ics ICS_AUTO {

     if(ms>=500) {
        x = readADC(6);
        if(x<512)
        {
          display(1,10);
          display(2,11);
          Delay_ms(4);
         } else
         {
          display(1,12);
          display(2,13);
          Delay_ms(4);
         }
    }
}

void main() {
     DDRA = 0b00001111;
     DDRC = 0b11111111;
     init_pini();
     init_adc();
     init_timer();
     for(;;);
}