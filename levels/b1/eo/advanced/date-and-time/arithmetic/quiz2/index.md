---
title: Kvizo — Aldoni monatojn
translations_gpt:
---

{% include menu.html %}

Kion presas la jena programo?

```raku
say Date.new(2026, 1, 31).later(:months(1));
```

{:.quiz}
1 | 2026-02-28
0 | 2026-03-03
0 | 2026-02-31
0 | 2026-03-31

{% include quiz.html %}

<div class="extended-explanation">

Unu monaton post la 31-a de januaro estus «la 31-a de februaro», sed tiu tago ne ekzistas. Do `later` movas la rezulton reen al la lasta vera tago de tiu monato. Tio donas la 28-an de februaro 2026. Ĉar 2026 ne estas superjaro, februaro havas nur 28 tagojn.

</div>

{% include nav.html %}
