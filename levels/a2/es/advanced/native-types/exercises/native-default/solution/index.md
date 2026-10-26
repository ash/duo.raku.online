---
title: 'Solution: El valor predeterminado nativo'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Un `num` nativo no puede ser indefinido. Por eso empieza en `0`, como un `int` nativo. No empieza como `(Num)`.

1. Un `str` nativo empieza como una cadena vacía. Por eso no hay nada entre los corchetes. Un tipo nativo nunca guarda un valor indefinido.

1. Aquí, los tipos son muy importantes. Intenta quitarlos. Escribe `my $n; my $s;` en su lugar. Ahora las variables son contenedores normales. Al principio, son *indefinidas*: guardan `Any`. Entonces `say $n` imprime `(Any)`. La cadena interpola `$s`, pero `$s` es indefinido. Por eso Raku muestra una advertencia: *"Use of uninitialized value … in string context"*. Solo los tipos nativos `num` y `str` dan los valores iniciales. Son `0` y la cadena vacía.

{% include nav.html %}
