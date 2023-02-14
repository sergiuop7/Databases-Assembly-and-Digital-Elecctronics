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

var1 DB 16
var2 DB 4
var3 DB 9
var4 DB 15
var5 DB 27
var6 DB 12
rezultat DB 0
	
.code
start:
	
	mov eax, 0
	mov al, var1
	add al, var2
	add al, var3
	add al, var4
	add al, var5
	add al, var6
	
	mov ecx, 0
	mov cl, 6
	div cl

	mov rezultat, al

	;terminarea programului
	push 0
	call exit
	
end start