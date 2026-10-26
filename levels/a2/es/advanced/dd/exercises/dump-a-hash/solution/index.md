---
title: 'Solution: Volcar un hash'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Puedes encontrar el código fuente en el archivo [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Salida

```
{:alpha(1), :beta(2)}
```

## Comentarios

1. `dd` imprime el hash en una forma parecida al código. Cada par tiene la forma `:clave(valor)`.

1. Las claves salen en orden alfabético. Por eso `alpha` va antes que `beta`. Pero en el código, `beta` está primero.

{% include nav.html %}
