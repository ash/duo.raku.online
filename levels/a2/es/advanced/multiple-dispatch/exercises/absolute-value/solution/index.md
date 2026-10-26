---
title: 'Solution: Valor absoluto'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 Puedes encontrar el código fuente en el archivo [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Salida

```
7
4
```

## Comentarios

1. El primer candidato solo funciona con números negativos. Devuelve el número con el signo contrario. Este valor es positivo.

1. Todos los demás números van al segundo candidato. Son el cero y los números positivos. El segundo candidato devuelve el valor tal como está.

{% include nav.html %}
