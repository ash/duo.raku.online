---
title: 'Solution: Clasificar el tamaño'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Puedes encontrar el código fuente en el archivo [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Salida

```
small
medium
large
```

## Comentarios

1. Los tres candidatos toman un único `Int`, así que entrarían en conflicto sin las cláusulas `where`. Las condiciones de los dos primeros los hacen diferentes. El tercero recoge todo lo demás.

1. Las cláusulas `where` comprueban `$n.abs`. Así que solo el tamaño del número decide el resultado, y el signo se ignora. `size(7)` coincide con el primer candidato (`small`). En `size(-250)`, el valor absoluto es `250`. No cumple ninguna de las dos condiciones y pasa al candidato comodín (`large`).

1. Los candidatos se prueban desde el más específico hasta el más general. Aquí, este es exactamente el orden en que están escritos.

{% include nav.html %}
