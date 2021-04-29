; funciones booleanas parte 1
; Determina si un número es par o impar

;------------- Seccion de datos -------------
section .data
; declaracion de mensajes si es par o impar el numero
msg1 db "numero par", 0xa, 0xd
longmsg1 equ $-msg1

msg2 db "numero impar", 0xa, 0xd
longmsg2 equ $-msg2

section .bss

;------------- Seccion de texto -------------
section .text
    global _start

_start:
; si desea cambiar el valor de comparacion solo reemplaze el numero 5
; el valor de 1 del registro bl sirve para la comparacion de si es impar
mov al, 5            ; mueve y almacena el valor 5 en "al"
mov bl, 1            ; mueve y almacena el valor 1 en "bl"

and al, bl           ; comparacion logica "and" que se ejecuta mediante codigo binario
jz numeropar         ; bandera jz que manda un mensaje si el numero es par

; si el numero no es par manda un mensaje con el siguiente codigo
mov eax, 4           ; indica a la maquina que se va a escribir
mov ebx, 1           ; indica a la maquina que se va a escribir en pantalla
mov ecx, msg2        ; indica la direccion de memoria donde esta almacenado la variable msg2
mov edx, longmsg2    ; numero de bites a imprimir
int 0x80

; para evitar que mande los mensajes al mismo tiempo se manda un salto de linea
jmp salir

numeropar:
; manda un mensaje del numero que es par
mov eax, 4           ; indica a la maquina que se va a escribir
mov ebx, 1           ; indica a la maquina que se va a escribir en pantalla
mov ecx, msg1        ; indica la direccion de memoria donde esta almacenado la variable msg1
mov edx, longmsg1    ; numero de bites a imprimir
int 0x80

salir:
; indica a la maquina si el programa se ejecuto de forma exitosa
mov eax, 1
mov ebx, 0
int 0x80
