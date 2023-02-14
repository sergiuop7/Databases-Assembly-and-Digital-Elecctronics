/*
        EXERCITIUL 1      Folosirea întreruperii de Comparare la Iesire (Output Compare) - Implementarea unui ceas digital
        
int ms,s,m,digit;
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
void clock() iv IVT_ADDR_TIMER0_COMP ics ICS_AUTO {       //ISR
     digit++;
     switch(digit){
             case 1 : display(4 ,  s%10);break;
             case 2 : display(3 , (s/10)%10);break;
             case 3 : display(2 ,  m%10);break;
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
void init_timer(){
     SREG = 1<<7;            // Global Interrupt Enable
     TCCR0 = 0b00001011;     //CTC-3,6; Prescaler-0,1,2
     TCNT0 = 0;
     OCR0 = 125;
     TIMSK = 0b00000010;     //set interrupt OCM
}
void main() {
     DDRA = 0b00001111;     //seteazã pinii de iesire
     DDRC = 0b11111111;
     init_timer();
     while(1);
}*/

/*
        EXERCITIUL 2      Modificati exercitiul 1 pentru a folosi Timer2 si un prescaler N = 32. Verificati setarea registrilor.
        
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
void clock() iv IVT_ADDR_TIMER2_COMP ics ICS_AUTO {
     digit++;
     switch(digit){
                   case 1: display(1,  s%10);break;
                   case 2: display(2, (s/10)%10);break;
                   case 3: display(3, m%10);break;
                   case 4: display(4, (m/10)%10);digit = 0;break;
     }
     if(ms == 999){
           ms = 0;
           s++;
           if(s == 60){
                m++;
                s = 0;
           }
     }else ms++;
}
void init_timer(){
     SREG = (1<<7);
     TCCR2 = 0b00001011;
     TCNT2 = 0;
     OCR2 = 250;
     TIMSK = 0b10000000;
}
void main(){
     DDRA = 0b00001111;
     DDRC = 0b11111111;
     init_timer();
     while(1);
}*/

/*
        EXERCITIUL 3     Exemplu de setare a unei întreruperi externe.
        
int n;
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
void number() org IVT_ADDR_INT0 {         // Interrupt routine
     n++;
     display(1, n%10);
}
void init_INT0(){
     SREG |= (1<<7);
     MCUCR = 0b00000010;           // precizare cã evenimentul va avea loc pe frontul descrescãtor
     GICR |= (1<<6);              // activarea întreruperii externe INT0
}
void main(){
     DDRA = 0b00001111;
     DDRC = 0b11111111;
     init_INT0();
     while(1);
}*/

/*
        EXERCITIUL 4      Folositi întreruperile INT0 si INT1 pentru implementarea a 2 butoane pentru
                           incrementarea minutelor si secundelor. Se va folosi întreruperea pe frontul crescator.
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
                   case 2 : display(3,  (s/10)%10);break;
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
}*/