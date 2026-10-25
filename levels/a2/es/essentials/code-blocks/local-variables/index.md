---
title: Variables locales
---

{% include menu.html %}

Ahora creas una variable en el ámbito global. También la creas localmente, dentro del bloque. ¿Qué pasa entonces?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Ahora hay dos variables en el programa. Tienen el mismo nombre. Pero son variables diferentes. En el ámbito global, cada `$x` es la variable global. Dentro del bloque, `$x` es una variable local. No es el `$x` global. El programa imprime dos valores diferentes:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
