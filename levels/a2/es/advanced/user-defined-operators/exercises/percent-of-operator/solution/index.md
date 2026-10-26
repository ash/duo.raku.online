---
title: 'Solution: Operador de porcentaje'
translations_gpt:
---

{% include menu.html %}

Aquí hay una forma de resolver la tarea.

## Código

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 Puedes encontrar el código fuente en el archivo [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Salida

```
30
```

## Comentarios

1. El operando izquierdo del operador es el porcentaje, `$p`. El operando derecho es la cantidad total, `$whole`.

1. Multiplica `$whole` por `$p` y divide entre `100`. Esto da la parte que necesitamos: `150 * 20 / 100` es `30`.

{% include nav.html %}
