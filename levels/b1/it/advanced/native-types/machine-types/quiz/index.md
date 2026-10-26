---
title: Quiz — Tipi nativi
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
my int $n = 42;
say $n.^name;
```

{:.quiz}
1 | Int
0 | int
0 | (Int)
0 | Num

{% include quiz.html %}

<div class="extended-explanation">

Quando chiedi a un valore nativo informazioni su sé stesso, Raku ne fa automaticamente il *boxing*. Il valore va nel tipo completo corrispondente. Qui `$n` è dichiarato come `int` nativo. Ma `.^name` riporta comunque il suo tipo come `Int` boxed.

</div>

{% include nav.html %}
