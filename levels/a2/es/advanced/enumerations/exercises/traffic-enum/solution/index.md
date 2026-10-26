---
title: 'Solution: Semáforos'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 Puedes encontrar el código fuente en el archivo [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Salida

```
red is 0
amber is 1
green is 2
```

## Comentarios

1. `my Light $current` es una variable normal. Puedes cambiar su valor. Pero solo puede guardar un `Light`. Asigna la siguiente constante, y la luz avanza. Cada vez, el número cambia con el nombre: `0`, `1`, `2`.

1. Parece que `$current++` pasa a la siguiente luz por sí solo. Pero falla con un error de verificación de tipo. `++` ve la constante solo como su número. Devuelve un `Int`: `red` se convierte en `1`. Pero un `Int` no es un `Light`. Así que, para mover la luz, asigna la siguiente constante, como arriba.

1. Raku comprueba el tipo en cada asignación, no solo en la primera. `$current` acepta `red`, `amber` o `green`. No acepta otros valores, como un número o una cadena. No son un `Light`. Una asignación así da un error de verificación de tipo.

{% include nav.html %}
