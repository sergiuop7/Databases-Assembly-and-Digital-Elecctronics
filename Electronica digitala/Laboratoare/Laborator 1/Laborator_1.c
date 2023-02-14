/*
        EXERCITIUL 1    Sã se aprindã LED-ul asociat pinului PB7 atâta timp cât butonul asociat pinului PB3este apãsat.

void main() {
     DDRB |= (1<<7);       //Se seteazã pin-ul PB7 ca iesire iar PB3 ca intrare în sectiunea de configurãri a functiei main.
     DDRB &= ~(1<<3);
     while(1){             //În bucla infinitã se testeazã dacã starea logicã a pin-ului de intrare PB3 este 1(HIGH).
     if(PINB & (1<<3))          //Dacã este adevãratã conditia, atunci se va aprinde LED-ul. Altfel, LED-ulse va stinge.
             PORTB |= (1<<7);
     else
             PORTB &= ~(1<<7);
     }
}
*/

/*
        EXERCITUL 2    Sã se schimbe starea LED-ul asociat pinului PB6 de fiecare datã când butonul asociatpinului PB2 este apãsat.
     
char starePB2 = 0;
void main() {
     DDRB |= (1<<6);     //Se seteazã pinii PB6-iesire, PB2-intrare în sectiunea de configurãri a functiei main.
     DDRB &= ~(1<<2);
     while(1){              //În bucla infinitã se testeazã dacã starea logicã a pin-ului de intrare PB3 este 1(HIGH).
      if(PINB & (1<<2))      //Dacã este adevãratã conditia si daca starea anterioarã a pin-ului a fost 0, atunci se schimbã starea LED-ului.
      {
          if(starePB2 == 0)
          {
              starePB2 = 1;
              PORTB ^= (1<<6);
          }
      }
      else starePB2 = 0;
      
}*/

/*
        EXERCITIUL 3     Sã se incrementeze o variabilã la fiecare apãsare a butonului PB2 si valoarea acesteiasã se codifice pe LED-urile din PORTD.
                         Astfel se vor contoriza valori între 0 si 255.
int n = 0;
char starePB2 = 0;
void main(){
     DDRD =0b11111111;        //Se seteazã toti pinii din PORTD ca iesiri digitale
     DDRB &= ~(1<<2);              //iar pin-ul PB2 ca intrare digitalã.
     while(1)
     {                         //În bucla infinitã, la fiecare apãsare a butonului asociat pin-ului PB2 se vaincrementa o variabilã n.
       if(PINB & (1<<2))
       {
         if(starePB2 == 0)
         {
           starePB2 = 1;
           nu++;
         }
       }
       else starePB2 = 0;
       PORTD = n;          //Valoarea lui n se codificã în baza 2 pe led-urile din PORTD.
     }
}*/