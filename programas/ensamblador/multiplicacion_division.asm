;------------- Seccion de datos -------------
section .data

section .bss
resultado1 resb 1 ; reserva de memoria 
resultado2 resb 1 ; reserva de memoria

;------------- Seccion de texto -------------
section .text
    global _start

start:
; ---- multiplicacion ----
; Registro fuente de 16 bits
mov ax, 3            ; se almacena un 3 en el registro ax
mov cx, 2            ; se almacena un 2 en el registro cx

mul cx               ; de forma implicita tomara ax y lo multiplicara por cx

add ax, 48           ; se suman los bits del registro ax + 48 para tener el valor 6
mov [resultado1], ax ; se almacenan los bits ax en la direccion de memoria donde se encuentra la variable resultado1
mov eax, 4           ; indica a la maquina que se va a escribir
mov ebx, 1           ; indica a la maquina que se va a escribir en pantalla
mov ecx, resultado1  ; indica la direccion de memoria donde esta almacenado la variable resultado1
mov edx, 1           ; numero de bites a imprimir
int 0x80


; ---- division ----
; Registro fuente de 16 bits
mov bx, 2            ; se almacena un 2 en el registro bx
mov dx, 0            ; se almacena un 0 en el registro dx
mov ax, 8            ; se almacena un 8 en el registro ax

div bx               ; de forma implicita se esta haciendo la division en el registro ax

add ax, 48           ; se suman los bits del registro ax + 48 para tener el valor 4 
mov [resultado2], ax ; se almacenan los bits ax en la direccion de memoria donde se encuentra la variable resultado2
mov eax, 4           ; indica a la maquina que se va a escribir
mov ebx, 1           ; indica a la maquina que se va a escribir en pantalla
mov ecx, resultado2  ; indica la direccion de memoria donde esta almacenado la variable resultado2
mov edx, 1           ; numero de bites a imprimir
int 0x80

; indica a la maquina si el programa se ejecuto de forma exitosa
mov eax, 1
mov ebx, 0
int 0x80