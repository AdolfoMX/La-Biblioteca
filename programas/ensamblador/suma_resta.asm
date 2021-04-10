;------------- Seccion de datos -------------
section .data
resultado db '0' ; variable pre-definido

section .bss
resultado2 resb 1 ; reserva de memoria de un bite

;------------- Seccion de texto -------------
section .text
    global _start

start:
; ---- suma ----
mov eax, 2           ; asignacion del valor 2 al registro eax
mov ebx, 3           ; asignacion del valor 3 al registro ebx

add eax, ebx         ; suma de los valores 2 y 3
add eax, 48          ; 48 valor ascii -> se suma el 48 + 5 para tener el valor 5 en ascii
mov [resultado], eax ; mueve el valor del registro eax a la variable resultado

mov eax, 4           ; indica a la maquina que se escrbira un dato
mov ebx, 1           ; indica a la maquina que imprimira un dato en pantalla
mov ecx, resultado   ; imprime en pantalla la variable resultado en referencia de su direccion de memoria
mov edx, 1           ; indica a la maquina cuantos bites o datos se imprimira en pantalla
int 0x80

; ---- resta ----
mov eax, 8           ; asignacion del valor 8 al registro eax
mov ebx, 1           ; asignacion del valor 1 al registro ebx

add eax, ebx         ; suma de los valores 8 y 1
add eax, 48          ; 48 valor ascii -> se suma el 48 + 7 para tener el valor 7
mov [resultado], eax ; mueve el valor del registro eax a la variable resultado2

mov eax, 4           ; indica a la maquina que se escrbira un dato
mov ebx, 1           ; indica a la maquina que imprimira un dato en pantalla
mov ecx, resultado   ; imprime en pantalla la variable resultado2 en referencia de su direccion de memoria
mov edx, 1           ; indica a la maquina cuantos bites o datos se imprimira en pantalla
int 0x80

; indica a la maquina si el programa se ejecuto de forma exitosa
mov eax, 1
mov ebx, 0