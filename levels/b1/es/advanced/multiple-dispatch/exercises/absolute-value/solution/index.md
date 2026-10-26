---
title: 'Solution: Valor absoluto'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El primer candidato coincide solo con números negativos. Devuelve el valor con el signo contrario, que es positivo.

1. Todos los demás números, es decir, el cero y los positivos, van al segundo candidato. Este devuelve el valor sin ningún cambio.

{% include nav.html %}
