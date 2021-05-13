; Arreglos parte 1
; manejo de arreglos - impresion de un arreglo de números de forma manual

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
datos db '45','23','11','09'   ; declaracion de un arreglo que almacena un caracter por cada valor que haya
len equ $-datos                ; longitud de bites del arreglo para después imprimir

ln db 0xA,0xD                  ; salto de linea
lenln equ $-ln

;------------- Seccion de texto -------------
section .text
    global _start

_start:
; llamada del macro - impresion de la posicion 0 del arreglo
imprime datos, 2           ; el 2 indicia la cantidad de caracteres a imprimir en el arreglo para despues
imprime ln, lenln

; llamada del macro - impresion de la posicion 1 del arreglo
imprime datos+2, 2           ; el 2 indicia la cantidad de caracteres a imprimir en el arreglo para despues
imprime ln, lenln

; llamada del macro - impresion de la posicion 2 del arreglo
imprime datos+4, 2           ; el 2 indicia la cantidad de caracteres a imprimir en el arreglo para despues
imprime ln, lenln

; llamada del macro - impresion de la posicion 3 del arreglo
imprime datos+6, 2           ; el 2 indicia la cantidad de caracteres a imprimir en el arreglo para despues
imprime ln, lenln

; indica a la maquina que el programa se ejecuto de forma exitosa
mov eax, 1
mov ebx, 0
int 0x80