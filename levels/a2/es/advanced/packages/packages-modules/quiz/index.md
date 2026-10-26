---
title: Quiz — Paquetes
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

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

`$x` se crea con `my`. Así que es léxica. Nunca entra en el espacio de nombres `M`. Por eso, la ruta `$M::x` no encuentra nada. Da un valor indefinido. Así que `.defined` es `False`. Solo puedes llegar así a una variable `our`.

</div>

{% include nav.html %}
