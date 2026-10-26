---
title: 'Solution: Una primera prueba'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
use Test;

ok 'Raku'.chars == 4, 'Raku has four letters';

done-testing;
```

🦋 Puedes encontrar el código fuente en el archivo [a-first-test.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/a-first-test.raku).

## Salida

```
ok 1 - Raku has four letters
1..1
```

## Comentarios

1. La condición `'Raku'.chars == 4` es verdadera. Así que `ok` pasa.

1. `done-testing` imprime la línea de plan `1..1`. Dice que se ejecutó una prueba.

{% include nav.html %}
