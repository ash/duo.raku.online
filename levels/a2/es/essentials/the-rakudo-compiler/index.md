---
title: El compilador Rakudo
translations_gpt:
---

{% include menu.html %}

**Rakudo** es el compilador principal de Raku. Este curso lo usa. Hoy, Rakudo es la forma más completa de ejecutar Raku. También está muy bien probado en el trabajo real. Así que cuando la gente dice «el compilador de Raku», normalmente habla de Rakudo.

Rakudo está escrito sobre todo en el propio Raku. Un lenguaje más pequeño ayuda a construirlo. Este lenguaje es NQP, la forma corta de «Not Quite Perl». Rakudo compila tu programa a bytecode. Después ejecuta el bytecode en una máquina virtual llamada **MoarVM**. Cuando instalas Rakudo, también recibes MoarVM. Rakudo intenta cubrir todo el lenguaje. ¿Necesitas que funcione cada parte de Raku? Entonces Rakudo es la opción más segura.

Rakudo admite Raku 6.d. Salen versiones nuevas de Rakudo a menudo. Así recibes rápido las correcciones y las funciones nuevas.

## La máquina virtual

Normalmente, Rakudo funciona sobre MoarVM. MoarVM es una máquina virtual hecha solo para Raku. Pero Rakudo también puede funcionar con otras máquinas virtuales. Puedes construirlo sobre ellas. Aun así, MoarVM es la opción estándar. Tiene buen soporte. Este curso espera que uses MoarVM. Esta es la diferencia principal entre Rakudo y [Raku++](/es/essentials/the-rakupp-compiler). Raku++ está escrito en C++. No necesita una máquina virtual propia.

## Código fuente y enlaces

Rakudo es de código abierto. Cualquiera puede seguir su desarrollo:

* [rakudo.org](https://rakudo.org)
* [Rakudo en GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
