; Materia: Lenguajes de Interfaz Horario: 8-9
; Alumno: Lopez ibarra Luis angel
; Docente: Dr Jose Luis Medina Jimenez

; Ejercicio: Saltos
; Descripcion: Compara dos registros y muestra en pantalla si son iguales o diferentes usando saltos.

INCLUDE Irvine32.inc

.data
msgIguales BYTE "Los valores son iguales", 0
msgDiferente BYTE "Los valores son diferentes", 0

.code
main PROC
  mov eax, 10
  mov ebx, 10

  cmp eax, ebx ; para comparar los dos valores

  je iguales ; se salta si son iguales

  mov edx, OFFSET msgDiferentes  ; Mostrar el mensaje si son diferentes
  call WriteString


  jmp fin

  iguales: 
  mov edx, OFFSET msgIguales  ; Mostrar el mensaje si son iguales
  call WriteString

fin:
call crlf
exit 
  main ENDP 

END main 
