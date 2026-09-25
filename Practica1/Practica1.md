# Práctica 1

## 1.¿Cuáles son las principales diferencias entre Haskell y Rust?

La principal diferencia es que en Haskell todo está centrado alrededor de la programación funcional. Haskell es un lenguaje puramente funcional, esto quiere decir que el lenguaje se basa principalmente en el uso de funciones para realizar cálculos, evitando que estas tengan efectos  secundarios (porque lo unico que hace una función es calcular y devolver algo). Además Haskell utiliza algo llamado lazy evaluation o evaluación perezosa, que significa que una expresión no se evalúa inmediatamente sino hasta que su resultado es necesario.

A diferencia de Haskell, Rust es un lenguaje multiparadigma, es decir, permite utilizar diferentes formas de programación, como la programación imperativa y funcional. Rust está diseñado principalmente para desarrollar software eficiente y seguro, especialmente en áreas donde se necesita un mayor control sobre los recursos del sistema. También es considerado un lenguaje de sistemas, por lo que permite trabajar con un nivel de control más cercano al funcionamiento de la computadora y a la memoria.

Haskell se usa principalmente para el desarrollo de software, la programación académica, investigación, criptografía, creación de sistemas complejos y también para el desarrollo de otros lenguajes.

Rust se usa principalmente para el desarrollo de herramientas de línea de comandos, programación de sistemas y desarrollo web. También es utilizado en proyectos donde se busca un buen rendimiento y seguridad.

## 2. ¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?

Haskell no ha alcanzado una adopción significativa en la industria debido principalmente a que su desarrollo estuvo ligado al ámbito académico y no contó con el mismo respaldo de las empresas que otros lenguajes. Además, su enfoque funcional puede resultar menos familiar para los programadores acostumbrados a otros paradigmas y su ecosistema ha sido más reducido. Tambien Haskell históricamente ha incorporado cambios e innovaciones que podían dificultar la compatibilidad con versiones anteriores y para la industria mantener la estabilidad es importante, ya que las empresas necesitan poder actualizar sus herramientas sin tener que modificar constantemente sus programas. A pesar de esto, varias de las ideas de Haskell han influido en otros lenguajes de programación. 

## 3. Si tuvieras que explicarle a una persona que no es de CC la función que cumple Git frente a la de GitHub, ¿cómo se lo explicarías?

Git es un programa que funciona como una linea del tiempo que guarda los cambios en un proyecto en el cual estes trabajando, estos cambios se realizan mediante diferentes versiones llamadas commits para poder consultar o recuperar una versión anterior. También permite crear ramas, que son como caminos separados del proyecto donde se pueden realizar cambios o probar cambios sin modificar directamente la versión principal.

Github lo puedes ver como si fuera un facebook o instagran pero para proyectos de software. Te permite almacenar proyectos en internet, compartirlos con otras personas y colaborar con ellas. Los proyectos se pueden subir desde nuestra computadora a GitHub utilizando Git.

Entonces Git se encarga de controlar las versiones y GitHub sirve como un lugar remoto donde almacenar y compartir el proyecto. 

## Referencias

- Brutti, F. (2025, 24 de junio). Haskell: descubre el lenguaje de programación funcional del momento. ThePower Education. https://thepower.education/blog/tech/haskell-lenguaje-de-programacion

- Chacón Sartori, C. (2023, 7 de octubre). Entrevista a Simon Peyton Jones. Substack. https://camilocs.substack.com/p/entrevista-a-simon-peyton-jones Camilocs

- IONOS. (2020, 9 de octubre). ¿Qué es Haskell? Todo sobre el lenguaje de programación. https://www.ionos.mx/digitalguide/paginas-web/desarrollo-web/que-es-haskell/

- JetBrains. (2021). Programación en Rust: Infografía del estado del ecosistema del desarrollador en 2021. https://www.jetbrains.com/es-es/lp/devecosystem-2021/rust/

- Lipovača, M. (s. f.). Introduction. Learn You a Haskell for Great Good!. https://learnyouahaskell.github.io/introduction.html

- Matsakis, N., & Turon, A. (s. f.). El Lenguaje de Programación Rust: Prefacio. Rust en Español. https://book.rustlang-es.org/foreword
