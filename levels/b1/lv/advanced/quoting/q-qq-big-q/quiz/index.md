---
title: Viktorīna — Citēšana
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
say q{a\nb};
```

{:.quiz}
1 | a\nb
0 | a<newline>b
0 | ab
0 | anb

{% include quiz.html %}

<div class="extended-explanation">

Operators `q` darbojas kā vienpēdiņas. Tas neapstrādā atpakaļsvītras aizbēgšanas secības, piemēram, `\n`. Virknē paliek visas četras rakstzīmes: `a`, `\`, `n` un `b`. Tikai interpolējoša forma, piemēram, `qq` vai dubultpēdiņas, pārvērš `\n` par īstu jaunrindu.

</div>

{% include nav.html %}
