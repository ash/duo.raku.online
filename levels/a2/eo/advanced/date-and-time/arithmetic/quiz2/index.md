---
title: Kvizo — Aldoni monatojn
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

Unu monaton post la 31-a de januaro estas «la 31-a de februaro». Sed ĉi tiu tago ne ekzistas. Do `later` anstataŭe donas la lastan veran tagon de tiu monato. Tio estas la 28-a de februaro 2026. La jaro 2026 ne estas superjaro. Do februaro havas 28 tagojn.

</div>

{% include nav.html %}
