---
title: 'Solution: La variable de tema'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. En un bucle `for`, la variable tópico `$_` recibe cada elemento, uno por uno. Así que el bloque se ejecuta tres veces. Primero `$_` es `'apple'`, luego `'fig'` y luego `'cherry'`.

1. En la cadena, `$_` pone la palabra actual dentro del texto. La llamada `.chars` da la longitud de la palabra. Es la forma corta de `$_.chars`. Las dos usan el mismo tópico. Así que el número siempre corresponde a la palabra de la línea.

{% include nav.html %}
