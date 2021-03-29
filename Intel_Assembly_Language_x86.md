# INTEL ASSEMBLY LANGUAGE x86
* * *
## Descripción
En este archivo contendrá apuntes acerca del libro Intel Assembly Language x86.

**NOTA:** Los apuntes no abarcara todos los capítulos del libro solo serán algunos a modo de
consulta y recordatorio.

## Arquitectura del Procesador x86
La unidad central de procesamiento (CPU) es en donde se realizan cálculos y operaciones lógicas, contiene un número límitado de ubicaciones
de almacenamiento llamado registros también contiene los siguientes componentes en la arquitectura del procesador:

* **Clock** sincroniza  las operaciones internas del CPU con otros componentes del sistema.
* **Unidad de control (CU)** coordina la secuencia de pasos involucrando una ejecución de instrucciones máquina.
* **Unidad lógica aritmética (ALU)** realiza operaciones aritméticas como sumas y restas y operaciones lógicas como AND, OR y NOT.

La **unidad de almacenamiento de memoria** es donde se guardan las instrucciones y los datos mientras se ejecuta un programa de computadora.
corriendo. La unidad de almacenamiento recibe solicitudes de datos de la CPU, transfiere datos de forma aleatoria. Accede a la memoria (RAM) 
a la CPU y transfiere datos desde la CPU a la memoria. Todo el procesamiento de datos tiene lugar dentro de la CPU, 
por lo que los programas que residen en la memoria deben copiarse en el CPU antes de que puedan ejecutarse.

### Modos de operación
Los procesadores x86 tienen tres modos principales de funcionamiento: modo protegido, modo de dirección real y modo de gestión del sistema. 
Un submodo, denominado virtual-8086, es un caso especial de protegido
modo.

**Modo protegido:** El modo protegido es el estado nativo del procesador, en el que todas las instrucciones y las funciones están disponibles. 
A los programas se les asignan áreas de memoria separadas denominadas segmentos, y el procesador evita que los programas hagan referencia a la 
memoria fuera de sus segmentos asignados.

**Modo Virtual-8086:** Mientras está en modo protegido, el procesador puede ejecutar directamente la dirección real software de modo como los 
programas MS-DOS en un entorno seguro. En otras palabras, si un programa se bloquea o intenta escribir datos en el área de memoria del sistema, 
no afectará a otros programas corriendo al mismo tiempo. Un sistema operativo moderno puede ejecutar varios virtual-8086 independientes
sesiones al mismo tiempo.

**Modo Real-Address:** El modo implementa el entorno de programación de un procesador Intel temprano con algunas características adicionales, 
como la capacidad de cambiar a otros modos. Este modo es útil si un programa requiere acceso directo a la memoria del sistema y al hardware.
dispositivos.

**Modo de gestión del sistema:** El modo de administración del sistema (SMM) proporciona un sistema operativo con un mecanismo para implementar 
funciones como la administración de energía y la seguridad del sistema. Estas funciones suelen ser implementadas por fabricantes de computadoras 
que personalizan procesador para una configuración de sistema en particular.

### Registros básicos de ejecución de programas
Los registros son ubicaciones de almacenamiento de alta velocidad directamente dentro de la CPU, diseñadas para acceder a una velocidad mucho 
mayor que la memoria convencional. Cuando un ciclo de procesamiento se optimiza para la velocidad, por ejemplo, los contadores de ciclo se 
mantienen en registros en lugar de variables. muestra los registros básicos de ejecución del programa. Hay ocho registros de propósito general, 
seis registros de segmento, un registro de indicadores de estado del procesador (EFLAGS) y un puntero de instrucción (EIP).

**Registros de propósito general** Los registros de propósito general se utilizan principalmente para aritmética y movimiento de datos.

**Usos especiales**
* **EAX** se utiliza automáticamente en las instrucciones de multiplicación y división. A menudo se le llama registro acumulador ampliado.
* La CPU utiliza automáticamente ECX como contador de bucle.
* **ESP** direcciona los datos en la pila (una estructura de memoria del sistema). Rara vez se usa para ordinarios transferencia aritmética o de 
datos. A menudo se denomina registro de puntero de pila extendido.
* **ESI y EDI** son utilizados por instrucciones de transferencia de memoria de alta velocidad. A veces se les llama el índice de origen extendido 
y los registros de índice de destino extendido.
* **EBP** es utilizado por lenguajes de alto nivel para hacer referencia a parámetros de función y variables locales en la pila. No debe usarse 
para operaciones aritméticas ordinarias o transferencia de datos excepto en un nivel avanzado. Nivel de programación. A menudo se denomina registro 
de puntero de trama extendido.

**Registros de segmento** En el modo de dirección real, los registros de segmento de 16 bits indican direcciones base de áreas de memoria asignadas 
previamente denominadas segmentos. En modo protegido, los registros de segmento contienen punteros para segmentar tablas de descriptores. Algunos 
segmentos contienen instrucciones de programa (código), otros contienen variables (datos) y otro segmento llamado segmento de pila contiene 
variables de función local y parámetros de función.

**Puntero de instrucción** El registro EIP, o puntero de instrucción, contiene la dirección del siguiente instrucción a ejecutar. Ciertas 
instrucciones de la máquina manipulan  EIP, lo que hace que el programa sucursal a una nueva ubicación.

**Registro de EFLAGS** El registro EFLAGS (o simplemente Flags) consta de bits binarios individuales que controlan el funcionamiento de la CPU o 
reflejan el resultado de alguna operación de la CPU. Algunos Las instrucciones prueban y manipulan los indicadores del procesador individual.

**Estados de las banderas** Los estados de banderas reflejan los resultados de las operaciones aritméticas y lógicas realizadas por la CPU. Son 
las banderas de desbordamiento, signo, cero, transporte auxiliar, paridad y transporte. Sus abreviaturas se muestran inmediatamente después de 
sus nombres:

* **La bandera de acarreo (CF)** se activa cuando el resultado de una operación aritmética sin firmar es demasiado grande para encajar en el 
* destino.
* **La bandera de desbordamiento (OF)** se establece cuando el resultado de una operación aritmética con signo es demasiado grande o
demasiado pequeño para caber en el destino.
* **La bandera de signo (SF)** se activa cuando el resultado de una operación aritmética o lógica genera una resultado negativo.
* **La bandera de cero (ZF)** se establece cuando el resultado de una operación aritmética o lógica genera una resultado de cero.
* **La bandera de acarreo auxiliar (AC)** se establece cuando una operación aritmética provoca un acarreo desde el bit 3 al bit 4 en un operando 
de 8 bits.
* **La bandera de paridad (PF)** se establece si el byte menos significativo en el resultado contiene un número par de 1 bits. De lo contrario, 
PF es claro. En general, se utiliza para comprobar errores cuando existe la posibilidad de que los datos se alteren o corrompan.
