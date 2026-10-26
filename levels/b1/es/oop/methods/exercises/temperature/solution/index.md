---
title: 'Solución: Conversión de temperatura'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class Celsius {
    has $.degrees;

    method to-fahrenheit {
        $.degrees * 9 / 5 + 32;
    }
}

say Celsius.new(degrees => 100).to-fahrenheit;
```

🦋 Puedes encontrar el código fuente en el archivo [temperature.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/temperature.raku).

## Salida

```
212
```

## Comentarios

1. El método usa el propio atributo `degrees` del objeto. Así que no necesitas pasar ningún argumento para la fórmula.

1. Para `100` grados Celsius el resultado son `212` grados Fahrenheit.

{% include nav.html %}
