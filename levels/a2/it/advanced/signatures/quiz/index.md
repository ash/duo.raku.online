---
title: Quiz — Parametri slurpy
---

{% include menu.html %}

Cosa stampa questo programma?

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

I parametri fissi ricevono i loro valori prima di quello slurpy. `$first` prende `'a'`. Solo gli altri due argomenti, `'b'` e `'c'`, vanno in `@rest`. Così per questo array `.elems` dà `2`.

</div>

{% include nav.html %}
