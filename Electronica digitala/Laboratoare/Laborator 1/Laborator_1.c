/*
        EXERCITIUL 1    S� se aprind� LED-ul asociat pinului PB7 at�ta timp c�t butonul asociat pinului PB3este ap�sat.

void main() {
     DDRB |= (1<<7);       //Se seteaz� pin-ul PB7 ca iesire iar PB3 ca intrare �n sectiunea de configur�ri a functiei main.
     DDRB &= ~(1<<3);
     while(1){             //�n bucla infinit� se testeaz� dac� starea logic� a pin-ului de intrare PB3 este 1(HIGH).
     if(PINB & (1<<3))          //Dac� este adev�rat� conditia, atunci se va aprinde LED-ul. Altfel, LED-ulse va stinge.
             PORTB |= (1<<7);
     else
             PORTB &= ~(1<<7);
     }
}
*/

/*
        EXERCITUL 2    S� se schimbe starea LED-ul asociat pinului PB6 de fiecare dat� c�nd butonul asociatpinului PB2 este ap�sat.
     
char starePB2 = 0;
void main() {
     DDRB |= (1<<6);     //Se seteaz� pinii PB6-iesire, PB2-intrare �n sectiunea de configur�ri a functiei main.
     DDRB &= ~(1<<2);
     while(1){              //�n bucla infinit� se testeaz� dac� starea logic� a pin-ului de intrare PB3 este 1(HIGH).
      if(PINB & (1<<2))      //Dac� este adev�rat� conditia si daca starea anterioar� a pin-ului a fost 0, atunci se schimb� starea LED-ului.
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
        EXERCITIUL 3     S� se incrementeze o variabil� la fiecare ap�sare a butonului PB2 si valoarea acesteias� se codifice pe LED-urile din PORTD.
                         Astfel se vor contoriza valori �ntre 0 si 255.
int n = 0;
char starePB2 = 0;
void main(){
     DDRD =0b11111111;        //Se seteaz� toti pinii din PORTD ca iesiri digitale
     DDRB &= ~(1<<2);              //iar pin-ul PB2 ca intrare digital�.
     while(1)
     {                         //�n bucla infinit�, la fiecare ap�sare a butonului asociat pin-ului PB2 se vaincrementa o variabil� n.
       if(PINB & (1<<2))
       {
         if(starePB2 == 0)
         {
           starePB2 = 1;
           nu++;
         }
       }
       else starePB2 = 0;
       PORTD = n;          //Valoarea lui n se codific� �n baza 2 pe led-urile din PORTD.
     }
}*/