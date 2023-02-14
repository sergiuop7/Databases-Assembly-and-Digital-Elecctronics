.386
.model flat, stdcall
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;includem msvcrt.lib, si declaram ce functii vrem sa importam
includelib msvcrt.lib
extern exit: proc
extern printf: proc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;declaram simbolul start ca public - de acolo incepe executia
public start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;declararea datelor
.data

	sir1 db '1','*','A','a','B','2','3','#','x','a','1','E','e','/'
	sir2 db 10 dup(0) ;; litere mici
	sir3 db 10 dup(0) ;; cifre
	sir4 db 10 dup(0) ;; litere mari
	format_string db "%s",10,0
	
.code
start:
	mov eax, 0
	mov ecx, 0

	mov cx,14
	lea esi,sir1
	lea edi,sir2
	lea ebx,sir3
	lea ebp,sir4
	
et:
	mov al,[esi]
	cmp al,'0'
	jb urm
	cmp al,'9'
	ja litera_mare
	
	mov [ebx],al
	inc ebx
	jmp urm
	
litera_mare:
	cmp al,'A'
	jb urm
	cmp al,'Z'
	ja litera_mica
	
	mov [ebp],al
	inc ebp
	jmp urm
	
litera_mica:
	cmp al,'a'
	jb urm
	cmp al,'z'
	ja urm
	
	mov [edi],al
	inc edi

urm:
	inc esi
	loop et
	
	push offset sir1
	push offset format_string
	call printf
	
	push offset sir2
	push offset format_string
	call printf
	
	push offset sir3
	push offset format_string
	call printf
	
	push offset sir4
	push offset format_string
	call printf
	
	;terminarea programului
	push 0
	call exit

end start