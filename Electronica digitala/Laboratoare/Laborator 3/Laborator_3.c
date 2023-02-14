 /*
        EXERCITIUL 1     Implementarea unui ceas digital

int ms =0 , s = 0 , m = 0;
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
void init(){
     TCCR0 = 0b00000011;     //prescaler 64, mod normal de operare
     TCNT0 = 0;              //se initializeaza numaratorul cu 0
}
void main() {
     init();
     DDRA |= 0b11110000;
     DDRC |= 0b11111111;
     while(1){
     if(TCNT0 >= 125)         //se împlineste o milisecunda
     {
       TCNT0 = 0;             //resetare software
       ms++;
     }
     if(ms >= 1000)           //împlinirea unei secunde
     {
       ms = 0;
       s++;
     }
     if(s >= 60)
     {
       s = 0;
       m++;
     }
      display(4 , s%10);
      display(3 , (s/10)%10);
      display(2 , m%10);
      display(1 , (m/10)%10);
     }
}*/

/*
        EXERCITIUL 2      Modificati exercitiul 1 pentru a folosi Timer2 si un prescaler N = 64. Verificati setarea registrilor.
        
int ms =0 , s = 0 , m = 0;
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
void init(){
     TCCR2 = 0b00000100;
     TCNT2 = 0;
}
void main() {
     init();
     DDRA |= 0b11110000;
     DDRC |= 0b11111111;
     while(1){
              if(TCNT2 >= 125)
               {
                TCNT2 = 0;
                ms++;
               }
              if(ms >= 1000)
               {
                ms = 0;
                s++;
               }
              if(s >=60)
               {
                s = 0;
                m++;
               }
               display(1 , s%10);
               display(2 , (s/10)%10);
               display(3 , m%10);
               display(4 , (m/10)%10);
     }
}*/

/*
        EXERCITIUL 3      Implementati un cronometru cu secunde si sutimi de secunde.
                          Se vor folosi 2 butoane: unul pentru start/stop si unul pentru reset.
int ms, ss, s,start = 0;
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
void init(){
     TCCR0 = 0b00000011;
     TCNT0 = 0;
}
void main(){
     init();
     DDRA |= 0b11110000;
     DDRC |= 0b11111111;
     DDRB &= 0b00000000;
     while(1){
       if(PINB & (1<<2)) start++;
               if(start % 2 == 1)
                {
                 if(TCNT0 >= 125)
                  {
                   TCNT0 = 0;
                   ms++;
                  }
                  if(ms >= 10)
                   {
                    ms = 0;
                    ss++;
                   }
                   if(ss >= 100)
                   {
                    ss = 0;
                    s++;
                   }
                 }
       if(PINB & (1<<3)){
         TCNT0 = 0;
         ms = 0;
         ss = 0;
         s = 0;
       }
       display(4 , (ss%10));
       display(3 , (ss/10)%10);
       display(2 , (s%10));
       display(1 , (s/10)%10);
     }
}*/