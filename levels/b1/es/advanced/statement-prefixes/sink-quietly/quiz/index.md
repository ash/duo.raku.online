---
title: Quiz — Prefijos de sentencia
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

```raku
my $v;
quietly {
    say $v + 10;
}
```

{:.quiz}
0 | A warning, then 10
1 | 10
0 | Nil
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Cuando sumas `10` al `$v` indefinido, Raku lo trata como `0` y da `10`. Normalmente también habría una advertencia de «valor no inicializado». Pero el prefijo `quietly` la oculta, así que solo se imprime `10`.

</div>

{% include nav.html %}
