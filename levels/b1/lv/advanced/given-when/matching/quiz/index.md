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

Kad `when` bloks ir atbildis, tas automātiski *iziet* no `given`. Tāpēc caurkritšanas nav. `5` atbilst pirmajam nosacījumam, `$_ > 0`, tāpēc tiek izdrukāts `positive`. Līdz otrajam `when 5` programma nekad nenonāk, lai gan arī tas atbilstu.

</div>

{% include nav.html %}
