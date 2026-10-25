---
title: El intérprete mutsu
translations_gpt:
---

{% include menu.html %}

**mutsu** es una tercera implementación de Raku. Tokuhiro Matsuno la escribió en **Rust**. Igual que Rakudo, compila tu programa a bytecode. Después ejecuta el bytecode en una máquina virtual. Pero esta máquina no es MoarVM. Es la máquina propia de mutsu. Está dentro del archivo de programa `mutsu`.

mutsu admite Raku 6.d. Su autor todavía trabaja mucho en él. Aún no está listo para proyectos reales. El autor lo dice claramente. Pero ya pasa casi todos los archivos de pruebas de Roast. Así que casi todos los programas de este curso funcionan en él sin cambios.

Falta una parte que es importante mientras aprendes. Todavía no tiene algunas comprobaciones en tiempo de compilación. Estas comprobaciones ocurren antes de ejecutar el programa. Este es el caso más visible, en la versión 0.24.0. Quizás olvidas declarar una variable. Rakudo y Raku++ avisan de esto antes de ejecutar el programa. Pero mutsu no lo hace. ¿El curso muestra un mensaje de error así? Entonces prueba ese ejemplo con uno de los otros dos compiladores.

## Raku en el navegador

También puedes compilar mutsu a WebAssembly. Entonces funciona dentro de una página web. Su sitio web, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), usa esto. Tiene una introducción a Raku en inglés y en japonés. También tiene un tutorial. En él, pruebas las cosas tú mismo. Y tiene un campo de pruebas. Allí puedes ejecutar Raku sin instalar nada. Todas estas páginas ejecutan el propio mutsu.

## Módulos

mutsu trae su propia copia del gestor de paquetes zef. Esta copia se llama `mzef`. Así que puedes instalar módulos de Raku para mutsu como siempre. Escribe `mzef install` y después el nombre del módulo.

## Código fuente

mutsu es de código abierto. Puedes encontrarlo en [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). La página también tiene versiones compiladas e instrucciones para compilarlo.

{% include nav.html %}
