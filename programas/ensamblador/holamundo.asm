;------------- Seccion de datos -------------
section .data
; definiendo una variable
; 10 -> salto de linea
; 10 -> 0x0a o 0xa convertido en hexadecimal
msg db "Hola Mundo!", 0x0a

; determina cuanto bites contiene la cadena de texto
len equ $-msg 


;------------- Seccion de texto -------------
section .text 
    global _start:

_start:
mov eax, 4    ; indicara que se escribira algún tipo de dato
mov ebx, 1    ; indicara que se imprimira algun tipo de dato en pantalla
mov ecx, msg  ; indicara en que variable se almacenara el dato
mov edx, len  ; indicara donde terminara de escribir 
int 80h       ; interrupacion -> 0x80 hexadecimal llamada del kernel

; indica al programa que termino de forma exitosa el programa
mov eax, 1
int 80h