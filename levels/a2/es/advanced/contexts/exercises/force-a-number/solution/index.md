---
title: 'Solution: Forzar un número'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my @a = 1, 2, 3;
say +@a;
```

🦋 Encuentra el código fuente en el archivo [force-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/force-a-number.raku).

## Salida

```
3
```

## Comentarios

1. El prefijo `+` pone el contexto numérico.

1. En contexto numérico, un array se convierte en el número de sus elementos. Así que el resultado es `3`.

{% include nav.html %}
