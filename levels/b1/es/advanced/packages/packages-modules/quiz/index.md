---
title: Quiz — Paquetes
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

```raku
module M {
    my $x = 5;
}

say $M::x.defined;
```

{:.quiz}
1 | False
0 | True
0 | 5
0 | Un error

{% include quiz.html %}

<div class="extended-explanation">

`$x` se declara con `my`, así que es léxica y nunca entra en el espacio de nombres `M`. Por eso la ruta `$M::x` no encuentra nada, solo un valor indefinido. Así que `.defined` es `False`. Solo se podría acceder de esta forma a una variable `our`.

</div>

{% include nav.html %}
