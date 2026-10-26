---
title: Quiz — Parametri slurpy
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

I parametri fissi ricevono i loro valori prima di quello slurpy. `$first` prende `'a'`, e solo i due argomenti rimanenti, `'b'` e `'c'`, vanno in `@rest`. Quindi il suo `.elems` è `2`.

</div>

{% include nav.html %}
