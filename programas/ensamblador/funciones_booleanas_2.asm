; funciones booleanas parte 2
; Conversión de un carácter de mayúscula a minúscula 

;------------- Seccion de datos -------------
section .bss
resultado resb 1 ; reserva de memoria de un byte

;------------- Seccion de texto -------------
section .text
    global _start

_start:
mov bl, 'A'          ; se almacena el caracter mayuscula
or bl, 00100000b     ; valor binario para hacer la comparacion con "OR" y hacer la conversion de mayúscula a minúscula el carácter

mov [resultado], bl  ; el resultado de la comparacion se mueve a la direccion de memoria de "resultado"

mov eax, 4           ; indica a la maquina que se va a escribir
mov ebx, 1           ; indica a la maquina que se va a escribir en pantalla
mov ecx, resultado   ; indica la direccion de memoria donde esta almacenado la variable resultado
mov edx, 1           ; numero de bites a imprimir
int 0x80

; indica a la maquina si el programa se ejecuto de forma exitosa
mov eax, 1
mov ebx, 0
int 0x80