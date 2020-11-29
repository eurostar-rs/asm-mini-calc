%include "asm_io.inc"


segment .data


number1 db "Write the first number:",10,0
number2 db "Write the second number:",10,0
addition db "The result of the addition is: ",0
subtraction db "The result of the subtraction is: ",0
multiplication db "The result of multiplication is: ",0
division db "The result of division is: ",0


segment .bss

no1   resd 1
no2   resd 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************

        mov eax,number1
        call print_string
        call read_int
        mov [no1],eax

        mov eax,number2
        call print_string
        call read_int
        mov [no2],eax

        mov eax,addition
        call print_string
        mov eax,[no1]
        add eax,[no2]
        call print_int
        call print_nl

        mov eax,subtraction
        call print_string
        mov eax,[no1]
        sub eax,[no2]
        call print_int
        call print_nl

        mov eax,multiplication
        call print_string
        mov eax,[no1]
        mov ecx,[no2]
        mul ecx
        call print_int
        call print_nl

        mov eax,division
        call print_string
        mov eax,[no1]
        mov ecx,[no2]
        div ecx
        call print_int
        call print_nl


	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave
        ret
