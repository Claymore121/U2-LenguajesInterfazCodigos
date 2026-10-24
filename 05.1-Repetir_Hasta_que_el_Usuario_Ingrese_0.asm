; Materia: Lenguajes de Interfaz Horario: 8-9
; Alumno: Lopez ibarra Luis angel
; Docente: Dr Jose Luis Medina Jimenez

; Ejercicio: Repetir Hasta que el Usuario Ingrese 0
; Descripcion: Solicita numeros e indica si son positivos o negativos hasta que se ingresa 0.

INCLUDE Irvine32.inc

.data
msgNumero BYTE "Ingresa un numero: ", 0
msgPositivo BYTE "El numero es positivo", 0
msgNegativo BYTE "El numero es negativo", 0
msgSalir BYTE "Programa finalizado", 0

.code
main PROC

ciclo:
    ; Pedir un numero al usuario
    mov edx, OFFSET msgNumero
    call WriteString
    call ReadInt

    ; Comparar el numero con 0
    cmp eax, 0

    je fin
    jg positivo
    jl negativo

positivo:
    mov edx, OFFSET msgPositivo
    call WriteString
    call Crlf
    jmp ciclo

negativo:
    mov edx, OFFSET msgNegativo
    call WriteString
    call Crlf
    jmp ciclo

fin:
    mov edx, OFFSET msgSalir
    call WriteString
    call Crlf

    exit

main ENDP
END main
