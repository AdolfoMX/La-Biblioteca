; Estructuras de control parte 1
; réplica de la instrucción for - sumatoria de números

;------------- Seccion de datos -------------
section .bss
resultado resb 1 ; reserva de memoria de un byte para guardar un caracter

;------------- Seccion de texto -------------
section .text
    global _start

_start:
mov ecx, 3             ; almacena el valor 3 (contador)
mov eax, 0             ; almacena el valor 0 

for:                   ; función que replica el ciclo for
add eax, ecx           ; suma de valores
loop for               ; etiqueta de for que si el valor de ecx es 3 se termina el ciclo

add eax, 48            ; suma de código ascii para tener el valor de la comparación
mov [resultado], eax   ; el resultado de la suma se almacena en la variable "resultado"

mov eax, 4             ; indica a la maquina que se va a escribir
mov ebx, 1             ; indica a la maquina que se va a escribir en pantalla
mov ecx, resultado     ; indica la direccion de memoria donde esta almacenado la variable resultado
mov edx, 1             ; numero de bites a imprimir
int 0x80

; indica a la maquina si el programa se ejecuto de forma exitosa
mov eax, 1
mov ebx, 0
int 0x80