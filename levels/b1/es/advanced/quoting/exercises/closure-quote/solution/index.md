---
title: 'Solution: Un closure en una cadena q'
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. La forma `q` normalmente deja todo el texto tal como está. El adverbio `:c` (closure) activa en ella la interpolación de código `{ … }`. Dentro de las llaves, `$x` es código real, así que `{$x ** 2}` da `100`.

1. El `$x` fuera de las llaves queda exactamente como está escrito. Esto es porque el adverbio escalar `:s` *no* está activado. Precisamente para eso hay un adverbio para cada característica. Tienes código en la cadena sin activar también la interpolación de `$`.

1. Puedes combinar adverbios. Si añades también `:s`, el primer `$x` también se interpola. Ahora las dos características están activadas a la vez:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
