; instrucciones de rotaciones para corregir digitos los mueve a la izquierda

;------------- Seccion de datos -------------
section .data
; declaracion de caracteres escape
ln db 10, 13
longln equ 2

section .bss
resultado1 resb 1 ; reserva de memoria 

;------------- Seccion de texto -------------
section .text
    global _start

start:
mov bl, 128          ; se almacena un valor de 128 
rol bl, 1            ; se indica el numero de rotaciones a realizar en el registro bl

add bl, 48           ; se suma el 48 mas la rotacion
mov [resultado1], bl ; se almacena el contenido del registro bl a la variable resultado1
mov eax, 4           ; indica a la maquina que se va a escribir
mov ebx, 1           ; indica a la maquina que se va a escribir en pantalla
mov ecx, resultado1  ; indica la direccion de memoria donde esta almacenado la variable resultado1
mov edx, 1           ; numero de bites a imprimir
int 0x80

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