; funciones booleanas 
; Determina si un número es par o impar

;------------- Seccion de datos -------------
section .data
; declaracion de caracteres escape
ln db 10, 13
longln equ 2

; declaracion de mensajes si es par o impar el numero
msg1 db "numero par", 0xa, 0xd
longmsg1 equ $-msg1

msg2 db "numero impar", 0xa, 0xd
longmsg2 equ $-msg2

section .bss

;------------- Seccion de texto -------------
section .text
    global _start

start:
mov al, 5  ; mueve y almacena el valor 5 en "al"
mov bl, 1  ; mueve y almacena el valor 1 en "bl"

and al, bl ; comparacion logica "and" que se ejecuta mediante codigo binario



; ---- impresion de escape ----
mov eax, 4
mov ebx, 1
mov ecx, ln
mov edx, longln
int 0x80

; indica a la maquina si el programa se ejecuto de forma exitosa
mov eax, 1
mov ebx, 0
int 0x80