---
title: El compilador Raku++
translations_gpt:
---

{% include menu.html %}

**Raku++** es un segundo compilador de Raku. Su archivo ejecutable se llama `rakupp`, y se publicó por primera vez en julio de 2026. Rakudo funciona sobre la máquina virtual MoarVM. Raku++, en cambio, está escrito en **C++**. No necesita ninguna máquina virtual propia.

Es a la vez un **intérprete** y un **compilador**. Puede ejecutar un programa directamente. O puede traducirlo a código nativo para ganar velocidad. No hay ningún runtime pesado que arrancar. Por eso `rakupp` se pone en marcha en unos pocos milisegundos. Esto lo hace agradable para guiones cortos y para el trabajo diario en la terminal. Su autor lo llama el compilador de Raku más rápido.

Por defecto, Raku++ admite Raku 6.d. Admite 6.e cuando un programa lo pide con `use v6.e.PREVIEW`. La versión 5.4.1 se publicó en octubre de 2026. Pasa los 1425 archivos de pruebas de la suite Roast. Roast es el conjunto oficial de pruebas de Raku.

Raku++ también funciona en un navegador web. Se compila a WebAssembly y es el motor del campo de pruebas de [raku.online](https://raku.online). Allí puedes probar Raku sin instalar nada.

## Modos de intérprete y de compilador

Puedes ejecutar un programa directamente, igual que con Rakudo:

```console
$ rakupp hello.raku
```

O pídele a Raku++ que convierta un programa en un ejecutable nativo aparte. Se ejecuta aún más rápido:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Para aprender a diario, el modo intérprete normal es todo lo que necesitas. Los modos de compilación están ahí para cuando quieras más velocidad.

## Código fuente

Raku++ es de código abierto. Puedes encontrarlo en [github.com/ash/rakupp](https://github.com/ash/rakupp). Allí también están los archivos ya preparados de las versiones y las instrucciones de compilación.

{% include nav.html %}
