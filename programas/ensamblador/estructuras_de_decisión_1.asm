; Estructuras de decisión parte 1
; Simulando la sentencia if

;------------- Seccion de datos -------------
section .bss
resultado resb 1 ; reserva de memoria de un byte

;------------- Seccion de texto -------------
section .text
    global _start

_start:
mov eax, 5             ; almacenando el valor 5
mov ebx, 0             ; almacenando el valor 0

cmp eax, 5             ; comparación del registro eax con 5
jz cuerpoif            ; si la comparación es igual manda un 1 desde cuerpoif
jmp salir              ; si la comparacion no es igual se termina el programa imprimiendo el numero cero

cuerpoif:
mov ebx, 1             ; almacenando el valor 1

salir:
add ebx, 48            ; suma de código ascii para tener el valor de la comparación
mov [resultado], ebx   ; el resultado de la suma se almacena en la variable "resultado"

mov eax, 4             ; indica a la maquina que se va a escribir
mov ebx, 1             ; indica a la maquina que se va a escribir en pantalla
mov ecx, resultado     ; indica la direccion de memoria donde esta almacenado la variable resultado
mov edx, 1             ; numero de bites a imprimir
int 0x80

; indica a la maquina si el programa se ejecuto de forma exitosa
mov eax, 1
mov ebx, 0
int 0x80
