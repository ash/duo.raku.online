---
title: 'Solution: El valor predeterminado nativo'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my num $n;
my str $s;

say $n;
say "[$s]";
```

🦋 Encuentra el programa en el archivo [native-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-default.raku).

## Salida

```
0
[]
```

## Comentarios

1. Un `num` nativo no puede ser indefinido. Así que, como un `int` nativo, empieza en `0` y no en `(Num)`.

1. Un `str` nativo empieza como la cadena vacía. Por eso no hay nada entre los corchetes en la salida. Ninguno de los tipos nativos guarda nunca un valor indefinido.

1. Los nombres de tipo son muy importantes aquí. Si los quitas y escribes `my $n; my $s;`, las variables se convierten en contenedores ordinarios. Empiezan *indefinidas* (`Any`). Entonces `say $n` imprime `(Any)`. Interpolar el `$s` indefinido también da una advertencia: *"Use of uninitialized value … in string context"*. Solo los tipos nativos `num` y `str` dan los valores por defecto `0` y la cadena vacía.

{% include nav.html %}
