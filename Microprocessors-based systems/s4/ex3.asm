.386
.model flat, stdcall
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;includem msvcrt.lib, si declaram ce functii vrem sa importam
includelib msvcrt.lib
extern exit: proc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;declaram simbolul start ca public - de acolo incepe executia
public start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;declararea datelor
.data
;de data aceasta nu am date in memorie
rez dw 0
.code
start:
	;initializez pe ax si bx cu valori oarecare
	mov eax,0
	mov ebx,0
	mov ecx,0
	mov edx,0
	
	mov ax, 2
	mov bx, 12
	
	;ax=7*ax - 2*bx - bx/8
	;7*ax		
	mov cl,7
	mul cl
	mov rez,ax
	
	;2*bx
	mov ax,bx
    mov cl,2
    mul cl	
	sub rez,ax
	
	;bx/8
	mov ax,bx
	mov cl,8
	div cl
	mov ah,0
	sub rez,ax
	mov ax,rez
	
	;terminarea programului
	push 0
	call exit

end start