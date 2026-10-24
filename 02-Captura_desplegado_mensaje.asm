; Materia: Lenguajes de Interfaz Horario: 8-9
; Alumno: Lopez ibarra Luis angel
; Docente: Dr Jose Luis Medina Jimenez

; Ejercicio: Captura y despliegue de mensajes
; Descripcion: Captura el nombre del usuario y  lo muestra en pantalla y muestra la cantidad de caracteres

INCLUDE Irvine32.inc

.data
mensajeEntrada BYTE "Escribe tu nombre: ", 0
mensajeLongitud BYTE "Numero de Caracteres capturados: ", 0

nombre BYTE 30 DUP(0)
longitud DWORD ?

.code
main PROC

   
    mov edx, OFFSET mensajeEntrada ; 
    call WriteString
    mov edx, OFFSET nombre  ; Captura el nombre que se ingresara 
    mov ecx, SIZEOF nombre
    call ReadString

    mov longitud, eax  ; Guarda la cantidad de caracteres
    call Crlf
    mov edx, OFFSET nombre   ; Muestra el nombre capturado
    call WriteString
    call Crlf

    mov edx, OFFSET mensajeLongitud ; Muestra el mensaje de longitud
    call WriteString
    mov eax, longitud  ; Muestra la cantidad de caracteres puestos
    call WriteDec

    exit

main ENDP
END main