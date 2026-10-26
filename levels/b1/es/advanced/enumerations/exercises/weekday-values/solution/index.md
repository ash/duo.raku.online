---
title: 'Solution: Números de días de la semana'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Puedes encontrar el código fuente en el archivo [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Salida

```
Fri
Mon
```

## Comentarios

1. Si escribes las constantes como pares, puedes elegir los números. Aquí empiezan en `1`.

1. Si llamas al tipo del enum como `Day(5)`, hace una búsqueda inversa. Encuentra la constante con el valor `5`, que es `Fri`. Del mismo modo, `Day(1)` da `Mon`. Esto es lo contrario de `Fri.value`, que va del nombre al número.

{% include nav.html %}
