---
title: Quiz — Prefissi di istruzione
translations_gpt:
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

Quando sommate `10` al `$v` non definito, Raku lo tratta come `0` e dà `10`. Normalmente ci sarebbe anche un avviso “uninitialized value”. Ma il prefisso `quietly` lo nasconde, quindi viene stampato solo `10`.

</div>

{% include nav.html %}
