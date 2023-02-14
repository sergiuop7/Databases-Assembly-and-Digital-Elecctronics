data segment

    ; add your data here!

    Array db 000h,012h,15h,020h,015h,050h,0FEh,0FFH,0D7h,040H,0f3h,060h

     

ends

 

stack segment

    dw   128  dup(0)

ends

 

code segment

start:

; set segment registers:

    mov ax, data

    mov ds, ax

    mov es, ax

 

    ; add your code here

             

    Mov SI, offset Array ;

    xor bx,0

    mov ch,  [SI]  ; size of array

    mov cl,  [SI+1] ;  size of array

    MOV bh,[si]

     

  arrayR:  cmp [si],7Fh  ; split the positve and negative numbers

      JLE Pos

  mov bl,[si]

          cmp bl,[SI] 

          jG minV

           jmp s

     inc SI

        jmp s

      minV: mov bl,[SI]

          

   inc SI

   jmp s

     

    pos:cmp bh,[SI]

    jNG maxv

    inc [SI]

    jmp s

    maxv: mov bh,[SI]

    inc si

                s: nop

         

        loop arrayR

    ; wait for any key....   

    mov ah, 1

    int 21h

     

    mov ax, 4c00h ; exit to operating system.

    int 21h   

ends
