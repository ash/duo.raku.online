---
title: El operador defined-or
---

{% include menu.html %}

A veces una variable todavía no tiene valor. Entonces puedes usar otro valor en su lugar. Para esto, existe el operador `//`. Se llama operador _definido-o_.

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

La primera línea da un valor a `$a`. Así que la expresión `$a // 'gamma'` usa el valor actual de `$a`. La variable `$b` es diferente. No tiene valor. Así que `$b // 'delta'` da el valor de la derecha. El programa imprime `delta`.

## //=

Juntos, `//` y `=` forman el operador `//=`. Asigna un valor solo cuando la variable no está definida.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
