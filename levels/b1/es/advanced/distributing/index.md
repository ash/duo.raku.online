---
title: Distribución de módulos
translations_gpt:
---

{% include menu.html %}

Un módulo puede ser útil fuera de tu propio ordenador. Entonces puedes empaquetarlo como una _distribución_. Puedes compartirla a través del ecosistema de módulos de Raku. Así cualquiera puede instalarla con `zef`.

Esta sección describe las dos partes que hacen esto posible. La primera es el archivo `META6.json`, que describe una distribución. La segunda son las herramientas que la instalan y la publican: `zef` y `fez`. Estos pasos tratan del ecosistema y de la red, no del lenguaje en sí. Por eso los ejemplos de aquí muestran archivos y comandos, no salida de programas.

{% include nav.html %}
