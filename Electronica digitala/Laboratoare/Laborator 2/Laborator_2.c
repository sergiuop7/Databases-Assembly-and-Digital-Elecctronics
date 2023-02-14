/*
        EXERCITIUL 1     Sã afiseze pe display un numãr de 4 cifre.
        
void main() {
     DDRA |= 0b00001111;          //Se seteazã pinii PA0-PA3 si PC0-PC7 ca iesiri digitale
     DDRC |= 0b11111111;           //în sectiunea de configurãri a functiei main.
     while(1){
      PORTA = 0b00000001;        //În bucla infinitã se activeazã digitul 1 prin setarea bit-ului 3 din PORTA
      PORTC = 0b00000110;          // si se seteazã combinatia de segment pentru afisarea cifrei 1 folosind PORTC.
      Delay_ms(4);
      PORTA = 0b00000010;         //Se completeazã codul de mai sus cu instruc.iunile pentru digitul 2, 3 si 4.
      PORTC = 0b01011011;
      Delay_ms(4);
      PORTA = 0b00000100;
      PORTC = 0b01001111;
      Delay_ms(4);
      PORTA = 0b00001000;
      PORTC = 0b01100110;
      Delay_ms(4);
     }
}
*/

/*
        EXERCITIUL 2  Sã se creeze o functie care sa afiseze un caracter predefinit pe un digit al display-ului.
        
int n = 1234;        //Variabila value se declara global de tip int înaintea func.iei main.
void display(char p, char c){
     PORTA &= 0b11110000;     //liniile de sel. digit - oprite
     PORTC &= 0b00000000;     //liniile de sel. Seg. - oprite
     switch(c){
     case 0:                                 //Se construieste functia de afisare înaintea functiei main;
          PORTC |= 0b00111111;break;          // primul switch se completeaza pâna la case 9 cu codificarea cifrei corespunzatoare
     case 1:                                   //iar al doilea, pâna la case 4 pentru activarea fiecarui digit în parte.
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
void main(){
     DDRA |= 0b00001111;         //Se seteazã pinii PA0-PA3 si PC0-PC7 ca iesiri digitale
     DDRC |= 0b11111111;          //în sectiunea de configurãri a functiei main.
     while(1){
        display( 1 , n%10);         //În bucla infinitã se apeleazã func.ia display pentru fiecare digit în parte.
        display( 2 , (n/10)%10);
        display( 3 , (n/100)%10);
        display( 4 , (n/1000));
     }
}
*/

/*      
        EXERCITIUL 3       //Folosind si cunostintele de la lucrarea de laborator anterioara, implementati un program
                             //care sa incrementeze o variabila la fiecare apasare a butonului PA7 si sa afiseze valoarea variabilei pe display.
int n = 0;
char starePB7 = 0;
void display(char p, char c){
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

void main(){
      DDRA |= 0b00001111;
      DDRC |= 0b11111111;
      DDRB |= 0b00000000;
      while(1)
      {
        if(PINB & (1<<7)){
                if(starePB7 == 0)
                {
                   starePB7 = 1;
                   n++;
                }
        }
        else starePB7 = 0;
        
        display(1 , n%10);
        display(2 , (n/10)%10);
        display(3 , (n/100)%10);
        display(4 , (n/1000));
      }
}*/