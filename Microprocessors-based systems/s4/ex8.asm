.386
.model flat, stdcall
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;includem msvcrt.lib, si declaram ce functii vrem sa importam
includelib msvcrt.lib
extern exit: proc
extern printf:proc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;declaram simbolul start ca public - de acolo incepe executia
public start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;declararea datelor
.data

	NR DW 127
	format db "nr de biti de 1: %d",0
	
.code
start:

	mov eax,0
	mov ebx,0
	mov ecx,0
	mov edx,0
	mov ax,NR
	mov cx,2
	
et1:
	div cx     ;;; (dx:ax) div cx 
	cmp dx,1   ;;; restul impartirii
	jne et2
	inc bx
et2:
	mov dx,0
	cmp ax,0
	jne et1
	
	push ebx
	push offset format
	call printf
	
	;terminarea programului
	push 0
	call exit

end start