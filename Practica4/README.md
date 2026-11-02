# Practica 4 Números Naturales y recursión

## Objetivo

El objetivo de esta practica es comprender y aplicar la recursividad estructural mediante la definicion y manipulacion de estructuras de datos en Haskell, representando numeros naturales, enteros y estructuras anidadas como las matrioskas. A traves de la implementacion de operaciones aritmeticas, conversiones, comparaciones y recorridos recursivos para desarrollar la capacidad de expresar soluciones mediante casos base y casos recursivos, asi como comprender la relacion entre la definicion de los tipos de datos y las funciones que operan sobre ellos.

## Tiempo requerido

Dos horas.

## Ejercicio favorito

Me gusto la funcion de aplanar, fue interesante representar una matrioska como una lista.

## Explicacion de la chivita recursiva

La cancion muestra la recursividad como una cadena de acciones que dependen unas de otras porque para lograr que la chivita salga, se necesita que un personaje convenza al siguiente, formando una secuencia que se va acumulando. Entonces el paso recursivo ocurre cada vez que un personaje no puede resolver el problema y se necesita recurrir a otro. Cuando se llega al caso base (cuando Plim Plim finalmente acepta ayudar), la cadena comienza a resolverse en orden inverso, haciendo que cada personaje cumpla su funcion hasta que finalmente la chivita sale.

## Actividad 8

1. ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Como se manejan todos casos en cada implementación?

La principal diferencia es que entero.hs implementa la suma y la resta mediante casos base y recursivos, reduciendo progresivamente las estructuras hasta obtener el resultado. Contempla las combinaciones de numeros positivos, negativos y cero, aunque algunas operaciones requieren llamadas entre suma_ent y resta_ent. Por otro lado, enteros.hs implementa tres operaciones mayorEnt, sumaEnt y restaEnt. La suma y la resta tambien contemplan las diferentes combinaciones de signos pero incorporan condiciones y comparaciones para determinar la magnitud de los operandos y el signo del resultado. 

2. ¿Por qué se tiene implementada la operación mayorEnt en el archivo enteros.hs ?

La funcion mayorEnt permite determinar cual de dos numeros enteros es mayor considerando sus signos y magnitudes. Se utiliza principalmente dentro de restaEnt para comparar dos numeros positivos y determinar cual tiene mayor magnitud, de manera que se pueda establecer correctamente el signo del resultado. Esto permite resolver casos como una resta cuyo primer operando es menor que el segundo, evitando obtener un resultado negativo incorrectamente representado.

3. Si pudieras quedarte con una sola implementación. ¿Cuál sería? Justifica tu respuesta.

Me quedaria con la implementacion de entero.hs, porque considero que su estructura es mas sencilla de comprender y seguir, ya que utiliza principalmente recursividad para resolver las operaciones sin necesitar una funcion adicional de comparacion como mayorEnt. Me parece interesante que la propia reduccion de las estructuras permita determinar el resultado y su signo, lo que evita agregar mas condiciones y dependencias entre funciones.
