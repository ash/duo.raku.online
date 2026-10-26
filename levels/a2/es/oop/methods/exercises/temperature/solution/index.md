---
title: 'Solución: Conversión de temperatura'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El método usa el atributo `degrees` del objeto. Así que la fórmula no necesita ningún argumento.

1. `100` grados Celsius son `212` grados Fahrenheit.

{% include nav.html %}
