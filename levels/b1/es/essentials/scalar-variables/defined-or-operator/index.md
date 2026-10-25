---
title: El operador defined-or
---

{% include menu.html %}

El llamado operador _definido-o_ `//` ayuda cuando una variable todavía no tiene valor. En ese caso, te da otro valor para usar en su lugar.

```raku
my $a = 'alpha';
say $a // 'gamma';

my $b;
say $b // 'delta';
```

Este programa imprime:

```
alpha
delta
```

El valor de `$a` se asigna en la primera línea. Por eso, la expresión `$a // 'gamma'` usa el valor actual de `$a`. En cambio, la variable `$b` no recibió un valor inicial. Por eso, `$b // 'delta'` devuelve el operando del lado derecho, y el programa imprime `delta`.

## //=

Cuando combinas `//` y `=`, obtienes el operador `//=`. Asigna un valor solo si la variable no está definida.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
