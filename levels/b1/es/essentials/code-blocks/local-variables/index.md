---
title: Variables locales
---

{% include menu.html %}

Vamos a declarar una variable en el ámbito global. ¿Qué pasa si también la declaramos localmente en el bloque?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Ahora hay dos variables separadas en el programa. Las dos se llaman `$x`. En el ámbito global, `$x` siempre se refiere a la variable global. Pero dentro del bloque, `$x` es una variable diferente y local. El programa imprime dos valores diferentes:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
