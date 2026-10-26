---
title: 'Solution: Usar el convertidor'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. `use Temperature` carga el módulo e importa su subrutina exportada `c-to-f`. Así que el programa puede llamarla directamente.

1. `sub MAIN($celsius)` recibe el argumento de línea de comandos. Así que eliges la temperatura al ejecutar el programa. No está escrita en el código. Si ejecutas el programa sin argumento, Raku imprime un mensaje de uso automáticamente.

1. Raku debe poder encontrar el módulo. Por eso ejecutas el programa con `-I.`. Así Raku busca `Temperature.rakumod` en el directorio actual. La conversión de `100` °C da `212` °F.

{% include nav.html %}
