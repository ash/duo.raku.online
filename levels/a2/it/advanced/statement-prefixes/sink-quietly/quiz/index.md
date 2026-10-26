---
title: Quiz — Prefissi di istruzione
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma?

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

`$v` non è definito. Quando ci sommate `10`, Raku usa `0` per `$v`. Così il risultato è `10`. Di solito c'è anche un avviso: “uninitialized value”. Ma il prefisso `quietly` lo nasconde. Così il programma stampa solo `10`.

</div>

{% include nav.html %}
