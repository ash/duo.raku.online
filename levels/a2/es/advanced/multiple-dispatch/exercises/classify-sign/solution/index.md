---
title: 'Solution: Clasificar el tamaño'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Los tres candidatos toman un `Int`. Sin las cláusulas `where`, chocan. Raku no puede elegir entre ellos. Las condiciones de los dos primeros los hacen diferentes. El tercer candidato recibe todos los demás números.

1. Las cláusulas `where` comprueban `$n.abs`. Así que solo importa el tamaño del número, no su signo. `size(7)` coincide con el primer candidato y da `small`. En `size(-250)`, el valor absoluto es `250`. No cumple ninguna de las dos condiciones. Así que va al último candidato, que recibe todo lo demás. El resultado es `large`.

1. Raku prueba los candidatos del más específico al más general. Aquí, este es exactamente su orden en el código.

{% include nav.html %}
