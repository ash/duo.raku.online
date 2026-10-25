---
title: El intérprete mutsu
translations_gpt:
---

{% include menu.html %}

**mutsu** es una tercera implementación de Raku, escrita en **Rust** por Tokuhiro Matsuno. Igual que Rakudo, compila tu programa a bytecode y lo ejecuta en una máquina virtual. Pero esta máquina virtual no es MoarVM. Es la propia de mutsu, integrada en el ejecutable `mutsu`.

mutsu admite Raku 6.d y todavía está en desarrollo activo. Su autor dice abiertamente que aún no está listo para proyectos reales. Pero ya pasa casi todos los archivos de pruebas de Roast. Así que casi todos los programas de este curso funcionan en él sin cambios.

Hay un punto débil que importa mientras aprendes: todavía faltan algunas comprobaciones en tiempo de compilación. La más visible, en la versión 0.24.0, es esta. Imagina que olvidas declarar una variable. Rakudo y Raku++ te avisan antes de ejecutar el programa. Pero mutsu no lo hace. Cuando el curso muestre un error así, prueba ese ejemplo con Rakudo o Raku++.

## Raku en el navegador

mutsu también se puede compilar a WebAssembly. Entonces funciona dentro de una página web. Su sitio web, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), lo usa de varias formas. Tiene una introducción a Raku en inglés y en japonés. También hay un tutorial práctico. Y hay un campo de pruebas donde puedes ejecutar Raku sin instalar nada. Todo lo que hay en esas páginas lo ejecuta el propio mutsu.

## Módulos

mutsu trae su propia copia del gestor de paquetes zef, llamada `mzef`. Así que puedes instalarle módulos de Raku de la manera habitual. Solo escribe `mzef install` y el nombre del módulo.

## Código fuente

mutsu es de código abierto. Puedes encontrarlo en [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Allí también están los binarios de las versiones y las instrucciones de compilación.

{% include nav.html %}
