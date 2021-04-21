; division de un numero haciendo uso de registros de saltos

;------------- Seccion de datos -------------
section .data
; cadena de texto
msg db 0xA,0xD,"no es posible dividir entre cero",0xA,0xD
lonmsg equ $-msg

section .bss
resultado resb 1

;------------- Seccion de texto -------------
section .text 
    global _start:
    
_start:
mov eax, 4 ; variable donde almacena un 4 para la division
mov edx, 0

mov ebx, 2 ; variable donde almacena un 2 para la division

cmp ebx, 0 ; compara ebx si es un valor cero
je escero

div ebx    ; division de forma implicita

add ebx, 48
mov [resultado], ebx

; impresion de mensaje por pantalla
mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1
int 0x80

jmp salir

; manda un mensaje si el denominador es un cero
escero:
mov eax, 4
mov ebx, 1
mov ecx, msg
mov edx, lonmsg
int 0x80

; indica a la maquina si el programa se ejecuto de forma exitosa
salir:
 mov eax, 1
 mov ebx, 0
 int 0x80
