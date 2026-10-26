---
title: 'Solution: Relajar strict'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. `no strict` desactiva la regla de que las variables deben estar declaradas. Así, puedes asignar valores a `$a` y `$b` sin un `my`. Con la pragma `strict` por defecto, cada una de estas líneas sería un error en tiempo de compilación.

1. Después de asignarlas, las variables se comportan como siempre, así que `$a + $b` es `30`. Esta regla más débil es léxica. Dura solo hasta el final del ámbito donde aparece `no strict`.

1. Esto es solo una demostración, y no lo recomendamos en la práctica. `strict` está activada por defecto por una buena razón. Detecta errores de escritura en los nombres de variables en tiempo de compilación. En código real, déjala activada y declara tus variables con `my`.

{% include nav.html %}
