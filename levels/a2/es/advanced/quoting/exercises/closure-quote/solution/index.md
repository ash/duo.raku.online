---
title: 'Solution: Un closure en una cadena q'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $x = 10;
say q:c/$x squared is {$x ** 2}/;
```

🦋 Encuentra el programa en el archivo [closure-quote.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/closure-quote.raku).

## Salida

```
$x squared is 100
```

## Comentarios

1. La forma `q` normalmente deja el texto tal como está. El adverbio `:c` (closure) cambia esto. Activa la interpolación de código `{ … }` en el texto. Dentro de las llaves, `$x` es código real. Así que `{$x ** 2}` da `100`.

1. El `$x` fuera de las llaves queda exactamente como está. Esto es porque el adverbio escalar `:s` *no* está activado. Esa es toda la idea de tener un adverbio para cada característica. Tienes código en el texto. Pero no activas también la interpolación de las variables `$`.

1. Puedes usar varios adverbios juntos. Añade también `:s`. Entonces el primer `$x` también se interpola. Ahora las dos características están activadas:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
