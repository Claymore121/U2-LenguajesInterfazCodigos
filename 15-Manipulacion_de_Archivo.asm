; Materia: Lenguajes de Interfaz Horario: 8-9
; Alumno: Lopez ibarra Luis angel
; Docente: Dr Jose Luis Medina Jimenez

; Ejercicio: Manipulacion de Archivo
; Descripcion: Crea un archivo de texto, escribe un valor y verifica que se guarde sin errores.

INCLUDE Irvine32.inc

.data
nombreArchivo BYTE "Inventario.txt", 0
texto BYTE "125", 0
archivoHandle DWORD ?

mensajeExito BYTE "Archivo guardado", 0
mensajeError BYTE "No se guardo el archivo correctamente", 0

.code
main PROC

    ; 1. CREAR EL ARCHIVO
    mov edx, OFFSET nombreArchivo
    call CreateOutputFile

    cmp eax, INVALID_HANDLE_VALUE ; se Comprueba si se creo correctamente
    je error

    mov archivoHandle, eax

    ; 2. Escribir el texto ("125")
    mov eax, archivoHandle
    mov edx, OFFSET texto
    mov ecx, SIZEOF texto - 1
    call WriteToFile

    jc errorEscritura ; se verifica si hubo un error escribiendo

    cmp eax, SIZEOF texto - 1
    jne errorEscritura

    ; 3. Cerrar archivo txt
    mov eax, archivoHandle
    call CloseFile

    test eax, eax
    jz error

     ; se muestra el mensaje si se guardo correctamente
    mov edx, OFFSET mensajeExito
    call WriteString
    jmp fin

errorEscritura:
    mov eax, archivoHandle
    call CloseFile

error:
 ; se cierra el archivo si hubo un error
    mov edx, OFFSET mensajeError
    call WriteString

fin:
    exit

main ENDP

END main
