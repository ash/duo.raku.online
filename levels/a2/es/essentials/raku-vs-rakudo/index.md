---
title: Raku, Rakudo, Raku++ y mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** es el nombre del lenguaje de programación. Un **compilador** es un programa. Lee su código y lo ejecuta. Raku puede tener más de un compilador. Este curso usa **Rakudo**, el más antiguo y conocido. También hay otros más nuevos: **Raku++** y **mutsu**.

## Más de un compilador

El diseño de Raku no dice qué compilador usar. Los documentos de diseño vienen con un conjunto de pruebas. Este conjunto se llama Roast. Cualquiera puede escribir un compilador. Si pasa estas pruebas, es un compilador de Raku.

Durante mucho tiempo, Rakudo fue el único compilador completo y estable. Ahora esto ya no es verdad. En julio de 2026 salió un segundo compilador: **Raku++**. Su autor lo escribió en C++. Su archivo de programa se llama `rakupp`. La versión 5.4.1 pasa todas las pruebas de Roast. También arranca muy rápido. Este curso usa Rakudo para sus ejemplos. Pero usted aprende el lenguaje Raku en sí. Casi todo funciona también en Raku++, sin cambios.

También hay un tercero: **mutsu**. Es un intérprete. Tokuhiro Matsuno lo escribió en Rust. Compila el código Raku a bytecode. Después, su propia máquina virtual ejecuta este bytecode. También puede ejecutarlo en un navegador web, mediante WebAssembly. Su sitio web tiene un tutorial de Raku y un campo de pruebas. Los dos funcionan con mutsu. El autor todavía trabaja mucho en él. El autor dice que aún no está listo para proyectos reales. Pero ya pasa casi todos los archivos de pruebas de Roast.

Las próximas páginas muestran cada uno de los tres: Rakudo, Raku++ y mutsu. También muestran cómo instalarlos.

## Enlaces externos

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ en GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
