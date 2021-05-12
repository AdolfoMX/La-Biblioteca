; Subrutinas y macros
; impresión de mensajes por medio de subrutinas y macros

; macros
%macro imprime 2       ; 2 - indica el numero de parametros a imprimir
mov eax, 4             ; indica a la maquina que se va a escribir
mov ebx, 1             ; indica a la maquina que se va a escribir en pantalla
mov ecx, %1            ; primer parametro a utilizar indicando el numero de bites a pasar
mov edx, %2            ; segundo parametro indica el numero de bites a recuperar del primer parametro
int 0x80
%endmacro              ; finalizacion del macro

;------------- Seccion de datos -------------
section .data
msg1 db "mensaje1",0xA,0xD  ; declaracion de mensaje 1
len1 equ $-msg1             ; longitud de mensaje 1

msg2 db "mensaje2",0xA,0xD  ; declaracion de mensaje 2  
len2 equ $-msg2             ; longitud de mensaje 2

msg3 db "mensaje3",0xA,0xD  ; declaracion de mensaje 3
len3 equ $-msg3             ; longitud de mensaje 3

msg4 db "mensaje4",0xA,0xD  ; declaracion de mensaje 4  
len4 equ $-msg4             ; longitud de mensaje 4

;------------- Seccion de texto -------------
section .text

; subrutinas
imprime: 
mov eax, 4             ; indica a la maquina que se va a escribir
mov ebx, 1             ; indica a la maquina que se va a escribir en pantalla
int 0x80
ret                    ; finaliza la subrutina para que no se continue ejecuntando

    global _start

_start:
; impresion de mensajes con subrutinas
mov ecx, msg1          ; indica la direccion de memoria donde esta almacenado la variable msg1
mov edx, len1          ; numero de bites a imprimir
call imprime           ; llamada de la subrutina imprime para ser ejecutada

mov ecx, msg2          ; indica la direccion de memoria donde esta almacenado la variable msg2
mov edx, len2          ; numero de bites a imprimir
call imprime           ; llamada de la subrutina imprime para ser ejecutada

; impresion de mensajes con macros
imprime msg3, len3 
imprime msg4, len4

; indica a la maquina que el programa se ejecuto de forma exitosa
mov eax, 1
mov ebx, 0
int 0x80