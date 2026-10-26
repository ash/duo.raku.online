---
title: Viktorīna — Pakotnes
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

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
0 | Kļūda

{% include quiz.html %}

<div class="extended-explanation">

`$x` ir izveidots ar `my`. Tāpēc tas ir leksisks. Tas nekad nenonāk `M` vārdtelpā. Tādēļ ceļš `$M::x` neatrod neko. Tas dod nedefinētu vērtību. Tātad `.defined` ir `False`. Šādi var sasniegt tikai `our` mainīgo.

</div>

{% include nav.html %}
