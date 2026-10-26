---
title: Quiz — Parametra absorptiva
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
sub f($first, *@rest) {
    say @rest.elems;
}

f('a', 'b', 'c');
```

{:.quiz}
1 | 2
0 | 3
0 | 1
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Parametri fixi valores suos ante sorbentem accipiunt. `$first` capit `'a'`. Sola duo cetera argumenta, `'b'` et `'c'`, in `@rest` eunt. Itaque pro hoc ordine `.elems` dat `2`.

</div>

{% include nav.html %}
