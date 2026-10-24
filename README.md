# Lenguajes de Interfaz — Prácticas y Ejercicios en Ensamblador x86

Repositorio con los programas y prácticas desarrollados para la materia de **Lenguajes de Interfaz**, implementados en lenguaje ensamblador x86 para procesadores Intel utilizando la librería **Irvine32** y **MASM**.

---

## 📌 Datos Generales

| Campo | Información |
| :--- | :--- |
| **Institución / Semestre** | Semestre 10 |
| **Materia** | Lenguajes de Interfaz |
| **Horario** | 8:00 – 9:00 hrs |
| **Alumno** | Luis Ángel López Ibarra |
| **Docente** | Dr. José Luis Medina Jiménez |
| **Arquitectura / Entorno** | x86 (32 bits) — MASM / Irvine32 |

---

## 📑 Índice de Prácticas y Programas

A continuación se listan las prácticas numeradas junto con su archivo fuente y una breve descripción de los conceptos abordados:

| # | Archivo | Ejercicio | Descripción |
| :-: | :--- | :--- | :--- |
| **01** | [`01-Ciclo_LOOP_Sencillo.asm`](./01-Ciclo_LOOP_Sencillo.asm) | Ciclo LOOP Sencillo | Repite un ciclo 5 veces sumando 10 al acumulador `EAX` en cada iteración. |
| **02** | [`02-Captura_desplegado_mensaje.asm`](./02-Captura_desplegado_mensaje.asm) | Captura y Despliegue de Mensajes | Captura el nombre del usuario por consola, lo muestra y calcula la cantidad de caracteres. |
| **03** | [`03-Comparacion_y_Prueba.asm`](./03-Comparacion_y_Prueba.asm) | Comparación y Prueba | Uso de `CMP` y `TEST` para observar el comportamiento de las banderas de estado (`ZF`, `SF`, `CF`, `OF`). |
| **04** | [`04-Saltos.asm`](./04-Saltos.asm) | Saltos | Comparación de registros y bifurcación con saltos condicionales (`JE`) e incondicionales (`JMP`). |
| **04.1** | [`04.1-Mayor_Menor_o_Igual_con_Entrada_del_Usuario.asm`](./04.1-Mayor_Menor_o_Igual_con_Entrada_del_Usuario.asm) | Mayor, Menor o Igual | Entrada de dos enteros y evaluación de relaciones de orden (`JG`, `JL`, `JE`). |
| **05** | [`05-Condicionales.asm`](./05-Condicionales.asm) | Condicionales | Impresión de la secuencia del 1 al 100 usando un bucle controlado con `JLE`. |
| **05** | [`05-Condicionales_2.asm`](./05-Condicionales_2.asm) | Condicionales 2 | Generación de números del 1 al 10 evaluando la condición de salida al inicio del ciclo (`JG`). |
| **05.1** | [`05.1-Repetir_Hasta_que_el_Usuario_Ingrese_0.asm`](./05.1-Repetir_Hasta_que_el_Usuario_Ingrese_0.asm) | Repetir Hasta Cero | Bucle continuo que clasifica números en positivos o negativos hasta ingresar 0. |
| **06** | [`06-Decremento_e_Incremento.asm`](./06-Decremento_e_Incremento.asm) | Decremento e Incremento | Validación de PIN de acceso limitando a 3 intentos mediante decrementos (`DEC`). |
| **06.1** | [`06.1-Control_de_Ocupacion_de_un_Estacionamiento.asm`](./06.1-Control_de_Ocupacion_de_un_Estacionamiento.asm) | Control de Estacionamiento | Menú interactivo de control de entrada y salida para 20 plazas con `INC` y `DEC`. |
| **07** | [`07-Validacion_de_Formato.asm`](./07-Validacion_de_Formato.asm) | Validación de Formato | Inspección byte por byte de una cadena para validar el patrón `TEC-123`. |
| **08** | [`08-Operaciones_Aritmeticas.asm`](./08-Operaciones_Aritmeticas.asm) | Operaciones Aritméticas | Operaciones de suma, resta, multiplicación y división con y sin signo (`MUL`, `IMUL`, `DIV`, `IDIV`). |
| **09** | [`09-Push_y_Pop.asm`](./09-Push_y_Pop.asm) | Push y Pop | Manejo de la pila (LIFO), conservación de contexto de registros y subrutinas (`CALL` / `RET`). |
| **10** | [`10-Cadena_con_Decimal.asm`](./10-Cadena_con_Decimal.asm) | Cadena con Decimal | Cálculo de métricas de descarga y algoritmo propio para convertir enteros a caracteres ASCII. |
| **11** | [`11-Operaciones_Logicas.asm`](./11-Operaciones_Logicas.asm) | Operaciones Lógicas | Manipulación y enmascaramiento de bits con compuertas `AND`, `OR`, `XOR`, `NOT` y `TEST`. |
| **12** | [`12-Desplazamiento_y_Rotacion.asm`](./12-Desplazamiento_y_Rotacion.asm) | Desplazamiento y Rotación | Uso de instrucciones `SHL`, `SHR`, `SAR`, `ROL`, `ROR`, `RCL` y `RCR` para transformar registros a nivel de bit. |
| **13** | [`13-String_Hexadecimal.asm`](./13-String_Hexadecimal.asm) | String Hexadecimal | Conversión de una cadena con dígitos hexadecimales a un valor numérico de 32 bits en memoria. |
| **14** | [`14-Captura_y_Almacenamiento_de_Dato_Numerico.asm`](./14-Captura_y_Almacenamiento_de_Dato_Numerico.asm) | Captura y Almacenamiento Numérico | Lectura de texto, validación de rango (1-99), conversión a entero y actualización de stock. |
| **15** | [`15-Manipulacion_de_Archivo.asm`](./15-Manipulacion_de_Archivo.asm) | Manipulación de Archivo | Creación, escritura y cierre de un archivo de texto (`Inventario.txt`) en disco. |


## 🛠️ Requisitos y Compilación

1. **Entorno**: Visual Studio (configurado para ensamblado MASM de 32 bits) o consola con MASM32 / ML.exe.
2. **Librería**: [Irvine32 Library](http://www.kipirvine.com/asm/) incluida en las dependencias de compilación (`INCLUDE Irvine32.inc`).
3. **Modo**: Arquitectura x86 (32 bits).
