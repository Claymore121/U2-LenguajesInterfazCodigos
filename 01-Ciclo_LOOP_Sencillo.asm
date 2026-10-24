; Materia: Lenguajes de Interfaz Horario: 8-9
; Alumno: Lopez ibarra Luis angel
; Docente: Dr Jose Luis Medina Jimenez

; Ejercicio: Ciclo LOOP Sencillo
; Descripcion: Repite un ciclo 5 veces sumando 10 al acumulador EAX en cada iteracion.

INCLUDE Irvine32.inc

.data
    msg BYTE "Hola mundo geis", 0Dh, 0Ah, 0


.code
main PROC
    mov ecx, 5 ; definir cuantas veces se repetira el ciclo
    mov eax, 0 ; Acumulador para observar cambios en los registros


MiCiclo: 
    add eax, 10  ; SUma 10 a EAX en cada vuelta 

    loop MiCiclo

     exit

main ENDP
END main
