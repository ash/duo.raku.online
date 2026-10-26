---
title: 'Solution: Semáforos'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. `my Light $current` es una variable normal, y puedes cambiarla. El único límite es que debe guardar un `Light`. Cuando asignas la siguiente constante, la luz avanza. El número sigue al nombre cada vez: `0`, `1`, `2`.

1. Parece que `$current++` debería pasar a la siguiente luz por sí solo. Pero falla con un error de verificación de tipo. `++` usa la constante como su número simple y devuelve un `Int` (`red` se convierte en `1`). Pero un `Int` no encaja en el tipo `Light`. Así que mueves la luz asignando la siguiente constante, como arriba.

1. La verificación de tipo funciona en cada asignación, no solo en la primera. `$current` acepta `red`, `amber` o `green`. Algo que no sea un `Light` da un error de verificación de tipo. Esto pasa, por ejemplo, con un número suelto o con una cadena.

{% include nav.html %}
