---
title: 'Solution: Una verificación booleana'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my @empty;
say ?@empty;
```

🦋 Encuentra el código fuente en el archivo [boolean-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/boolean-check.raku).

## Salida

```
False
```

## Comentarios

1. El prefijo `?` pone el contexto booleano.

1. Un array vacío es falso. Por eso funciona `if @array`.

{% include nav.html %}
