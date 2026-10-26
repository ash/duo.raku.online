---
title: Quiz — Prefijos de sentencia
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

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

`$v` está indefinido. Cuando le sumas `10`, Raku usa `0` para `$v`. Así que el resultado es `10`. Normalmente, también hay una advertencia: «valor no inicializado». Pero el prefijo `quietly` la oculta. Así que el programa imprime solo `10`.

</div>

{% include nav.html %}
