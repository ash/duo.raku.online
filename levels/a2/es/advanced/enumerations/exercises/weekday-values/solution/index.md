---
title: 'Solution: Números de días de la semana'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Escribimos las constantes como pares. Así podemos elegir los números. Aquí empiezan en `1`.

1. `Day(5)` llama al tipo del enum. Busca al revés, del número a la constante. Encuentra la constante con el valor `5`. Esta constante es `Fri`. Del mismo modo, `Day(1)` da `Mon`. `Fri.value` hace lo contrario. Va del nombre al número.

{% include nav.html %}
