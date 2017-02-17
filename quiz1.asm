; Quiz 03
; CSCI 2525 Assembly Language
; Monday February 13, 2017
; Patricia Figueroa 

TITLE Quiz03
INCLUDE Irvine32.inc

clear eax TEXTEQU <mov eax, 0>  ; macro to clearr eax 
.data       ; data segment 
myArray SWORD 123h, 101011011b, -567d, -689d, 238h  ; declare variables here
ArraySize = ($myArrray)/TYPE myArray

.code       ;code segment 
main PROC   ;main procedure 
dec ecx     ; decrement
mov esi, 0  ;clear register 
clear eax 	; zero out eax register before using

ONE:   ; label for loop
mov ax, [myArray + esi]   ;adress of the first element
add esi, TYPE myArray     ;TYPE return, declared size of myArray
add ax , [myArray + esi]  ;gets second element 

call DumpRegs             ;clears the register 

loop ONE   ; back to ONE

invoke ExitProcess,0
main endp      ; ends main procedure 
end main       ; end of source code
