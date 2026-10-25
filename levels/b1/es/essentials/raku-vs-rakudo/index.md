---
title: Raku, Rakudo, Raku++ y mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** es el nombre del lenguaje de programación. Un **compilador** es el programa que lee su código y lo ejecuta. Raku no está atado a un solo compilador. Este curso usa **Rakudo**, que existe desde hace años. También hay otros más nuevos: **Raku++** y **mutsu**.

## Más de un compilador

El diseño de Raku no dice qué compilador debe usar. Sus documentos de diseño vienen con un conjunto de pruebas llamado Roast. Cualquiera puede escribir un compilador. Si pasa esas pruebas, es un compilador de Raku.

Durante mucho tiempo, Rakudo fue el único compilador completo y estable. Ahora eso ya no es así. En julio de 2026 apareció un segundo compilador: **Raku++**, escrito en C++. Su archivo ejecutable se llama `rakupp`. La versión 5.4.1 pasa toda la suite de pruebas Roast. Además, arranca sorprendentemente rápido. Este curso usa Rakudo para sus ejemplos. Pero lo que usted aprende es el lenguaje Raku en sí. Casi todo también funciona en Raku++ sin cambios.

Existe además una tercera implementación, **mutsu**. Es un intérprete escrito en Rust por Tokuhiro Matsuno. Compila Raku a bytecode para su propia máquina virtual. También funciona dentro de un navegador web mediante WebAssembly. Su sitio web tiene un tutorial de Raku y un campo de pruebas que funcionan con él. El proyecto todavía está en desarrollo activo. Su autor dice que aún no está listo para proyectos reales. Pero ya pasa casi todos los archivos de pruebas de Roast.

Las páginas siguientes presentan los tres uno por uno: Rakudo, Raku++ y mutsu. También explican cómo instalarlos.

## Enlaces externos

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ en GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
