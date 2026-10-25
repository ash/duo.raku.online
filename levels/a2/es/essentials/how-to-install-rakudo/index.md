---
title: Cómo instalar Rakudo
translations_gpt:
---

{% include menu.html %}

Necesita un compilador para ejecutar un programa en Raku. Primero tiene que instalarlo. Este curso usa Rakudo. También hay [Raku++](/es/essentials/the-rakupp-compiler) y [mutsu](/es/essentials/the-mutsu-interpreter). Los instala por separado. Lea [Cómo instalar Raku++](/es/essentials/how-to-install-rakupp) y [Cómo instalar mutsu](/es/essentials/how-to-install-mutsu). Vaya al [sitio web de Rakudo](https://rakudo.org). Allí puede descargar la versión correcta para su sistema operativo.

## Fuentes

Descargue un instalador para su sistema en [rakudo.org/downloads](https://rakudo.org/downloads). Hay versiones para todos los sistemas operativos principales: Windows, Mac OS y Linux. También está el código fuente. Puede compilarlo usted mismo.

## Imágenes de Docker

También puede obtener Rakudo como imagen de docker. Con ella, puede ejecutar programas. También puede probar pequeños guiones en un intérprete REPL. Todas las instrucciones están en [github.com/Raku/docker](https://github.com/Raku/docker).

## Números de versión

Un número de versión de Rakudo tiene dos partes. Son el año y el mes de la publicación. Así puede ver fácilmente lo nuevo que es su compilador. Ejecute este comando para ver su número de versión:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Aquí ve tres números de versión. El primero es la versión del propio Rakudo: `v2026.06`. Después viene la versión del lenguaje Raku: `v6.d`. Por ahora, cada actualización del lenguaje recibe la letra siguiente. Esta letra es la parte menor, o pequeña, de la versión. Por ejemplo, después viene `v6.e`, y así sucesivamente. Al final, ve el nombre de la máquina virtual. Este compilador usa MoarVM versión `2026.06`.

{% include nav.html %}
