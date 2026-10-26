---
title: 'Solution: Relajar strict'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
no strict;

$a = 10;
$b = 20;
say $a + $b;
```

🦋 Puedes encontrar el código fuente en el archivo [no-strict.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/no-strict.raku).

## Salida

```
30
```

## Comentarios

1. `no strict` desactiva una regla. La regla dice que debes declarar todas las variables. Así, puedes asignar valores a `$a` y `$b` sin `my`. Con la pragma `strict` normal, estas líneas dan errores en tiempo de compilación.

1. Después de la asignación, las variables funcionan como siempre. Así, `$a + $b` es `30`. Este cambio de la regla es léxico. Dura solo hasta el final del ámbito actual. Es el ámbito con `no strict`.

1. Esto es solo una demostración. No lo recomendamos en la práctica. `strict` está activada por defecto por una buena razón. Encuentra errores de escritura en los nombres de variables en tiempo de compilación. En código real, déjala activada. Declara tus variables con `my`.

{% include nav.html %}
