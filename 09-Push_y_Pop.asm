; Materia: Lenguajes de Interfaz Horario: 8-9
; Alumno: Lopez ibarra Luis angel
; Docente: Dr Jose Luis Medina Jimenez

; Ejercicio: Push y Pop
; Descripcion: Manejo de la pila con PUSH y POP para respaldar registros y llamar procedimientos.

INCLUDE Irvine32.inc

.code
main PROC

  ; BLOQUE 1: PUSH Y POP
  mov eax, 500

  push eax
  nop

  mov ebx, 0

  pop ebx

  nop


  ; BLOQUE 2: ORDEN LIFO
  mov eax, 10
  push eax

  mov eax, 20
  push eax

  mov eax, 30
  push eax

  nop

  pop eax
  pop ebx
  pop ecx

  nop


  ; BLOQUE 3: CONSERVAR REGISTROS

  mov eax, 100
  mov ebx, 200

  push eax
  push ebx

  mov eax, 999
  mov ebx, 888

  pop ebx
  pop eax

  nop


  ; BLOQUE 4: CALL Y RET
  mov eax, 50
  mov ebx, 666

  call aumentarDiez

  nop

  exit

main ENDP


; PROCEDIMIENTO PARA AUMENTAR 10 A EAX
aumentarDiez PROC

  nop

  push ebx

  nop

  mov ebx, 10
  add eax, ebx

  nop

  pop ebx

  nop

  ret

aumentarDiez ENDP

END main
