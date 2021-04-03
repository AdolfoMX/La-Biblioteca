# ENSAMBLADOR x86 - curso online
* * *
## Descripción
En este archivo contendrá apuntes del curso online de youtube para el lenguaje ensamblador.

**Enlace del curso:** [Ensamblador x86](https://www.youtube.com/watch?v=oLsk9J_mViE&list=PLZw5VfkTcc8Mzz6HS6-XNxfnEyHdyTlmP)

### Parte 1 Componentes básicos
Componentes básicos que conforman una computadora:
* **CPU:** Su trabajo es interpretar las instrucciones de un programa informático mediante la realización de las operaciones básicas aritméticas, lógicas 
  y externas (provenientes de la unidad de entrada/salida):
   
  * **Unidad aritmético lógica (ALU):** realiza operaciones aritméticas y lógicas.
  * **Unidad de control (CU):** dirige el tráfico de información entre los registros de la CPU y conecta con la ALU las instrucciones extraídas de la memoria.
  * **Registros internos:** no accesibles (de instrucción, de bus de datos y bus de dirección) y accesibles de uso específico (contador programa, puntero pila, 
     acumulador, flags, etc.) o de uso general.
   
  **Arquitecturas de diferentes procesadores:**
  La arquitectura del procesador es lo que resulta de decisiones de diseño como cuál será el número y tamaño de los registros de instrucción, de qué manera las 
  instrucciones y los datos se moverán hacia la memoria y desde está, etcétera.
  
  * **RISC:** “Reduced Instruction Set Computer”. Esto significa que los microprocesadores RISC utilizan un conjunto sencillo de instrucciones para leer y procesar los datos.
    Una computadora RISC es una computadora que solo usa comandos simples que se pueden dividir en varias instrucciones. De esta forma logran ejecutar una operación de bajo nivel 
    dentro de un solo ciclo, de allí su nombre.
  * **CISC:** “Complex Instruction Set Computer”. Como sugiere su nombre el microprocesador CISC ejecuta los comandos complejos usando menos líneas de código. Una 
    computadora CISC es una computadora donde las instrucciones individuales pueden realizar numerosas operaciones de bajo nivel. Por ejemplo, una carga de memoria, una 
    operación aritmética y el almacenamiento en memoria.

* **BUS DE CONTROL:** es un sistema digital que transfiere datos entre los componentes de una computadora. Gobierna el uso y acceso a las líneas de datos y de direcciones. 
  Como éstas líneas están compartidas por todos los componentes, tiene que proveerse de determinados mecanismos que controlen su utilización. 
* **BUS DE DATOS:** el bus de datos permite el intercambio de datos entre la CPU y el resto de unidades.
* **BUS DE DIRECCIONES:** es un canal del microprocesador totalmente independiente del bus de datos donde se establece la dirección de memoria del dato en tránsito. El bus de 
  dirección consiste en el conjunto de líneas eléctricas necesarias para establecer una dirección.
* **MEMORIA (término general):** es el dispositivo que retiene, memoriza o almacena datos informáticos durante algún periodo de tiempo.La memoria proporciona una de las 
  principales funciones de la computación moderna: el almacenamiento de información y conocimiento.
  
### Parte 2 Arquitecturas de cómputo
Formas en que se interconectan los componentes de una computadora son los siguientes:
  * **HARDVARD:** es una configuración de la computadora en la que los datos y las instrucciones de un programa se encuentran en celdas separadas de memoria, que se pueden 
    abordar de forma independiente, es decir, contiene dos áreas separadas: para los comandos o instrucciones y para los datos. Por tanto, la función principal de esta 
    arquitectura es almacenar los datos separados físicamente, proporcionando diferentes rutas de señal para las instrucciones y los datos.
    
  * **VON NEUMAN:** es un diseño teórico para que una computadora pueda tener un programa almacenado internamente, consiste de una unidad central de procesamiento, la cual 
    tiene incluidas una unidad aritmética lógica y una unidad de control, además una memoria principal, almacenamiento secundario y dispositivos de entrada/salida.
    
    En una arquitectura von Neumann se utiliza la misma memoria y el mismo bus para almacenar tanto los datos como las instrucciones que ejecutan un programa.
    
  * **HARVARD MODIFICADA:** es una variación de la arquitectura harvard, la arquitectura Harvard modificada tiene dos buses separados, uno para el código y otro para los datos, 
    pero la memoria en sí es un elemento compartido físicamente. El controlador de memoria es donde se asienta el cambio, porque este dispositivo es el que maneja la memoria y 
    cómo se debe utilizar.
    
    En resumen la arquitectura permite que los contenidos de la memoria de instrucciones sean accedidas como si fuesen datos.

### Parte 3 Registros
Los registros se encuentran dentro de cada microprocesador y su función es almacenar los valores de datos, comandos, instrucciones o estados binarios que ordenan qué dato debe procesarse, como la forma en la que se debe hacer. Cada registro puede contener una instrucción, una dirección de almacenamiento o cualquier tipo de dato.

* **Registros de propósitos generales:** son los encargados de almacenar temporalmente los datos con los que el procesador realiza las operaciones, y de guardar los resultados     de dichas operaciones. También se utilizan para guardar direcciones de memoria.
* **Registros de banderas:** los registros de banderas sirven para mostrar el estado actual de la máquina y también el resultado del procesamiento de una instrucción.
* **Registros de segmentos** un registro de segmento almacena direcciones de memoria donde comienzan y terminan los distintos segmentos o partes en las que el sistema operativo
  la divide.

### Parte 4 Ciclo de Fetch
Es el conjunto de acciones que se llevan a cabo en la realización de una instrucción. Comprende una secuencia de acciones determinada que debe llevar a cabo la CPU para ejecutar cada instrucción en un programa. Cada instrucción del juego de instrucciones de una CPU, puede requerir diferente número de ciclos de instrucción para su ejecución. Un ciclo de instrucción está formado por uno o más ciclos máquina. Se compone de las dos siguientes fases:

* **Fase de búsqueda.** En esta fase se transfiere la instrucción que corresponde ejecutar desde la memoria central a la unidad de control.
* **Fase de decodificación.** El decodificador de instrucción interpreta e implementa la instrucción. El registro de instrucción (IR) mantiene la instrucción en curso mientras     el contador de programa (PC, program counter) guarda la dirección de memoria de la siguiente instrucción a ser ejecutada.
* **Fase de ejecución**. Consiste en la realización de todas las acciones que conlleva la propia instrucción.
