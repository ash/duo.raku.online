---
title: 'Solution: La variable de tema'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Puedes encontrar el código fuente en el archivo [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Salida

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Comentarios

1. Un bucle `for` da a la variable tópico `$_` cada elemento, uno tras otro. Así que el bloque se ejecuta tres veces, y `$_` es `'apple'`, luego `'fig'` y luego `'cherry'`.

1. Dentro de la cadena, `$_` inserta la palabra actual. La llamada `.chars`, forma corta de `$_.chars`, da su longitud. Las dos usan el mismo tópico, así que el número siempre coincide con la palabra de la línea.

{% include nav.html %}
