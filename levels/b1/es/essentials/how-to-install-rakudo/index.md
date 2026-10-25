---
title: Cómo instalar Rakudo
translations_gpt:
---

{% include menu.html %}

Para ejecutar un programa en Raku, necesita instalar un compilador. Este curso usa Rakudo. Los otros dos, [Raku++](/es/essentials/the-rakupp-compiler) y [mutsu](/es/essentials/the-mutsu-interpreter), se instalan aparte. Vea [Cómo instalar Raku++](/es/essentials/how-to-install-rakupp) y [Cómo instalar mutsu](/es/essentials/how-to-install-mutsu). Visite [el sitio web de Rakudo](https://rakudo.org) y descargue la versión para su sistema operativo.

## Fuentes

Puede descargar un instalador para su sistema en [rakudo.org/downloads](https://rakudo.org/downloads). Hay versiones para todos los sistemas operativos principales: Windows, Mac OS y Linux. También puede obtener el código fuente y compilarlo usted mismo.

## Imágenes de Docker

Rakudo también está disponible como imagen de docker. Puede usarla para ejecutar programas. También sirve para probar pequeños guiones en un intérprete REPL. Encontrará todas las instrucciones en [github.com/Raku/docker](https://github.com/Raku/docker).

## Números de versión

Un número de versión de Rakudo tiene dos partes: el año y el mes de publicación. Así puede ver fácilmente lo reciente que es su compilador. Ejecute este comando para ver su número de versión:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Aquí puede ver tres números de versión. El primero es la versión del propio Rakudo: `v2026.06`. Luego viene la versión del lenguaje Raku: `v6.d`. Por ahora, las actualizaciones reciben la letra siguiente como versión menor. Por ejemplo, la siguiente es `v6.e`, y así sucesivamente. Por último, ve el nombre de la máquina virtual de este compilador: MoarVM versión `2026.06`.

{% include nav.html %}
