; Desplazamientos de bits para realizar operaciones rápidas de 
; multiplicacion y division dentro de los registros de memoria

;------------- Seccion de datos -------------
section .data
; declaracion de caracteres escape
ln db 10, 13
longln equ 2

section .bss
resultado1 resb 1 ; reserva de memoria 
resultado2 resb 1 ; reserva de memoria 

;------------- Seccion de texto -------------
section .text
    global _start

start:
; ---- multiplicacion ----
; desplazamiento hacia la izquierda
mov ebx, 2             ; se almacena un 2
shl ebx, 1             ; desplazamiento de un bit a la izquierda, hace que se este multiplicando por el 2

add ebx, 48            ; suma de numero ascii 48 + 4
mov [resultado1], ebx  ; se almacena el contenido del registro ebx a la variable resultado1
mov eax, 4             ; indica a la maquina que se va a escribir
mov ebx, 1             ; indica a la maquina que se va a escribir en pantalla
mov ecx, resultado1    ; indica la direccion de memoria donde esta almacenado la variable resultado1
mov edx, 1             ; numero de bites a imprimir
int 0x80

; ---- impresion de escape ----
mov eax, 4
mov ebx, 1
mov ecx, ln
mov edx, longln
int 0x80

; ---- division ----
; desplazamiento hacia la derecha
mov ebx, 8             ; se almacena un 8
mov cl, 2              ; division de 8 entre 2
shr ebx, cl            ; desplazamiento donde se dividara el contenido del registro ebx entre el resultante de cl

add ebx, 48            ; suma de numero ascii 48 + 4
mov [resultado2], ebx  ; se almacena el contenido del registro ebx a la variable resultado2
mov eax, 4             ; indica a la maquina que se va a escribir
mov ebx, 1             ; indica a la maquina que se va a escribir en pantalla
mov ecx, resultado2    ; indica la direccion de memoria donde esta almacenado la variable resultado2
mov edx, 1             ; numero de bites a imprimir
int 0x80

; indica a la maquina si el programa se ejecuto de forma exitosa
mov eax, 1
mov ebx, 0
int 0x80