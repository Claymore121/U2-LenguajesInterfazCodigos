; Materia: Lenguajes de Interfaz Horario: 8-9
; Alumno: Lopez ibarra Luis angel
; Docente: Dr Jose Luis Medina Jimenez

; Ejercicio: String Hexadecimal
; Descripcion: Convierte una cadena hexadecimal a su valor numerico empleando desplazamientos.

INCLUDE Irvine32.inc

.data
cadena BYTE "123AB4CD", 0
numero DWORD 0

.code
main PROC

     ; cambio en los registros
    mov esi, 0
    mov ecx, 8
    mov eax, 0

L1:
    ; mover 4 bits para agregar otro digito
    shl eax, 4

    mov bl, cadena[esi]  ; Obtener el caracter actual de la cadena

     ; Comprobar si es un numero o una letra
    cmp bl, '9'
    jbe Digito

    sub bl, 7

Digito:
    sub bl, '0' ; Convertir el caracter a su valor numerico

    movzx ebx, bl
    add eax, ebx

    inc esi  ; Pasar al siguiente caracter

    loop L1

    mov numero, eax  ; Guardar el numero convertido

    call DumpRegs

    mov eax, numero ; Mostrar el resultado en hexadecimal
    call WriteHex

    call Crlf

    exit

main ENDP

END main
