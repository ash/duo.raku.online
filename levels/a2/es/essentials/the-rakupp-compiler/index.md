---
title: El compilador Raku++
translations_gpt:
---

{% include menu.html %}

**Raku++** es un segundo compilador de Raku. Su archivo de programa se llama `rakupp`. La primera versión salió en julio de 2026. Rakudo funciona sobre la máquina virtual MoarVM. Raku++ es diferente. Su autor lo escribió en **C++**. No necesita una máquina virtual propia.

Es un **intérprete** y un **compilador** a la vez. Puede ejecutar un programa directamente. También puede convertir un programa en código nativo. Esto lo hace más rápido. No necesita arrancar primero un gran sistema de runtime. Por eso `rakupp` arranca en solo unos pocos milisegundos. Esto lo hace agradable para guiones cortos. También es agradable para el trabajo diario en la línea de comandos. Su autor lo llama el compilador de Raku más rápido.

Por defecto, Raku++ admite Raku 6.d. También admite 6.e. Un programa pide 6.e con `use v6.e.PREVIEW`. La versión 5.4.1 salió en octubre de 2026. Pasa los 1425 archivos de pruebas de Roast. Roast es el conjunto oficial de pruebas de Raku.

Raku++ también funciona en un navegador web. Para esto, se compila a WebAssembly. El campo de pruebas de [raku.online](https://raku.online) funciona con él. Allí puedes probar Raku sin instalar nada.

## Modos de intérprete y de compilador

Ejecuta un programa directamente, como con Rakudo:

```console
$ rakupp hello.raku
```

O pide a Raku++ un archivo de programa nativo. Funciona por sí solo. Y es todavía más rápido:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Para aprender cada día, solo necesitas el modo intérprete simple. Los modos de compilación son para tener más velocidad.

## Código fuente

Raku++ es de código abierto. Puedes encontrarlo en [github.com/ash/rakupp](https://github.com/ash/rakupp). La página también tiene archivos de las versiones e instrucciones para compilarlo.

{% include nav.html %}
