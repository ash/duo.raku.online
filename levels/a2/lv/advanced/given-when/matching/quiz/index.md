---
title: 'Viktorīna — `when`'
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
given 5 {
    when $_ > 0 { say 'positive' }
    when 5      { say 'five' }
}
```

{:.quiz}
1 | positive
0 | five
0 | both lines
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

Kad `when` bloks atbilst, tas automātiski *iziet* no `given`. Raku neturpina ar nākamo `when`. `5` atbilst pirmajam nosacījumam, `$_ > 0`. Tāpēc programma izdrukā `positive`. Arī otrais `when 5` der. Bet Raku līdz tam nekad netiek.

</div>

{% include nav.html %}
