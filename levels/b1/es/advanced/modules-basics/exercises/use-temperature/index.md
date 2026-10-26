---
title: Usar el convertidor
translations_gpt:
---

{% include menu.html %}

## Problema

Tienes un módulo en un archivo `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Escribe un programa separado que use este módulo. El programa recibe una temperatura en Celsius como argumento de línea de comandos. La convierte a Fahrenheit con el módulo e imprime el resultado.

## Ejemplo

```console
$ raku -I. temperature.raku 100
212
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
