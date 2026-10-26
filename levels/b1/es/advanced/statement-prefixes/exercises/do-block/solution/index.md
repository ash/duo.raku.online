---
title: 'Solution: El valor de un bloque do'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 Puedes encontrar el código fuente en el archivo [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Salida

```
big
```

## Comentarios

1. Un `if` simple es una sentencia, y no puedes usar su valor. El prefijo `do` convierte todo el `if`/`else` en una expresión.

1. `7 > 5` es verdadero, así que la expresión da `'big'`, y este valor se asigna a `$label`. El mismo truco funciona con `do given` y `do for`.

1. Las llaves `{ }` no son opcionales. En Raku, `if` siempre toma un bloque. Así que no puedes acortar las ramas a `if 7 > 5 'big' else 'small'`. Esto falla al compilar con el error *Missing block*.

{% include nav.html %}
