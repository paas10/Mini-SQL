# Mini-SQL
Proyecto Compiladores - Analizador Léxico

El programa realizado utiliza una librería de JFlex que genera un analizador léxico en base a un archivo .flex en donde se especifican todas las gramáticas necesarias para comprender el lenguaje deseado.

El programa es robusto ya he ha pasado por procesos de depuración para eliminar errores o malas interpretaciones de las expresiones regulares ingresadas en el archivo .flex hasta que ha llegado a superar todos los requerimientos del enunciado.

La validación de errores se maneja de la siguiente manera:
El analizador lexico generado por JFlex retorna tokens correspondintes a las experesiones regulares que se cumplen durante el análisis. Algunas expresiones, después de no haberse cumplido se valida que se cometa un error y se retornan tokens como <<Error_Comentario>> que posteriormente es analizado como un error en el lenguaje.

El programa solicita un archivo de entrada que debe de ser .sql, el cual debe ser el archivo que se analizará.
Inmediatamente, el programa obtiene el archivo .flex de la ubicación "C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/src/minisql/Lexer.flex". Automaticamente genera el analizador lexico e imprime el resultado de la compilación en pantalla, asi como genera un archivo .out con la compilación en la misma ubicación que estaba el archivo .sql.

## Mini-SQL FASE 2
Se crearon las gramáticas de las expresiones indicadas en el enunciado, principalmente se tomó en cuenta qué palabras reservadas aceptaba el lenguaje Mini-SQL y sobre eso se adaptaron las gramaticas a las posibles expresiones.
Se introdujo en una cola todos los tokens obtenidos por el Análizador Lexico, exceptuando las sentencias que incluyeran un token de error.
Se elaboró un parser (Emparejador), que realiza las comparaciones respectivas entre lo que se esperaba encontrar según las gramáticas y lo que se estaba desencolando de la cola de análisis.
Si no coincidian ambas entradas del emparejador, se lanzaba un error que es descrito en un jTextArea en pantalla.