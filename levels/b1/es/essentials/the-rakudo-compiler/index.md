---
title: El compilador Rakudo
translations_gpt:
---

{% include menu.html %}

**Rakudo** es la implementación de referencia de Raku: el compilador principal y estándar. Este curso lo usa. Hoy es la forma más completa de ejecutar Raku. También está bien probado en el trabajo real. Así que cuando alguien dice «el compilador de Raku», normalmente se refiere a Rakudo.

Rakudo está escrito sobre todo en el propio Raku. Un lenguaje más pequeño, NQP («Not Quite Perl»), ayuda a construirlo. Tu programa se compila a bytecode y se ejecuta en una máquina virtual llamada **MoarVM**. Recibes MoarVM automáticamente cuando instalas Rakudo. Rakudo intenta cubrir todo el lenguaje. Por eso es la opción más segura si cada parte de Raku tiene que funcionar.

Rakudo admite Raku 6.d. Salen versiones nuevas a menudo, así que las correcciones y las novedades te llegan pronto.

## La máquina virtual

Por defecto, Rakudo funciona sobre MoarVM, una máquina virtual hecha especialmente para Raku. El diseño no ata Rakudo a una sola máquina. También se puede construir sobre otras máquinas virtuales. Pero MoarVM es la opción estándar y con buen soporte. Este curso supone que la usas. Esta es la diferencia principal con [Raku++](/es/essentials/the-rakupp-compiler). Raku++ está escrito en C++ y no necesita una máquina virtual propia.

## Código fuente y enlaces

Rakudo es de código abierto, y cualquiera puede seguir su desarrollo:

* [rakudo.org](https://rakudo.org)
* [Rakudo en GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
