---
title: 'Solution: Usar el convertidor'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

El programa, `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 Puedes encontrar ambos archivos fuente en el directorio [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature).

## Salida

```console
$ raku -I. temperature.raku 100
212
```

## Comentarios

1. `use Temperature` carga el módulo. También importa la subrutina exportada `c-to-f`. Así que el programa puede llamarla directamente.

1. `sub MAIN($celsius)` recibe el argumento de línea de comandos. Así que eliges la temperatura cuando ejecutas el programa. No está fija en el código. Sin argumento, Raku imprime automáticamente un mensaje de uso. Este mensaje muestra cómo ejecutar el programa.

1. Raku debe poder encontrar el módulo. Por eso ejecutas el programa con `-I.`. Entonces Raku busca `Temperature.rakumod` en el directorio actual. El programa cambia `100` °C a `212` °F.

{% include nav.html %}
