---
title: 'Solution: El valor de un bloque do'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Un `if` simple es una sentencia. No tiene un valor que puedas usar. El prefijo `do` convierte todo el `if`/`else` en una expresión.

1. `7 > 5` es verdadero. Así que el valor de la expresión es `'big'`. El programa lo asigna a `$label`. El mismo truco funciona con `do given` y `do for`.

1. Tienes que escribir las llaves `{ }`. En Raku, `if` siempre necesita un bloque. Así que no puedes hacer las ramas más cortas, como `if 7 > 5 'big' else 'small'`. Este código no compila. El error es *Missing block*.

{% include nav.html %}
