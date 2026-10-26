---
title: Quiz — Tipi nativi
---

{% include menu.html %}

Cosa stampa questo programma?

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

Chiedi a un valore nativo informazioni su sé stesso, e Raku ne fa automaticamente il *boxing*. Mette il valore nel tipo completo corrispondente. Dichiari `$n` come `int` nativo. Ma `.^name` chiede il nome del suo tipo. Così ottieni il tipo boxed, `Int`.

</div>

{% include nav.html %}
