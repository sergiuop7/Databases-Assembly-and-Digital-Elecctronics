#line 1 "E:/ANUL II/Electronica digitala/Laboratoare/Laborator 1/Laborator_1.c"
#line 35 "E:/ANUL II/Electronica digitala/Laboratoare/Laborator 1/Laborator_1.c"
int numar = 0;
char starePB2 = 0;
void main(){
 DDRD =0b11111111;
 DDRB &= ~(1<<2);
 while(1)
 {
 if(PINB & (1<<2))
 {
 if(starePB2 == 0)
 {
 starePB2 = 1;
 numar++;
 }
 }
 else starePB2 = 0;
 PORTD = numar;
 }

}
