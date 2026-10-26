---
title: Quiz — Coniuncta
translations_gpt:
---

{% include menu.html %}

Quid sequens programma imprimit?

```raku
say (set(1, 2) ∪ set(2, 3)).elems;
```

{:.quiz}
1 | 3
0 | 4
0 | 2
0 | 1

{% include quiz.html %}

<div class="extended-explanation">

Unio omnem valorem ex ambobus coniunctis colligit. Sed coniunctum quemque valorem solum semel servat. Ambo coniuncta `2` habent, itaque unio est `{1, 2, 3}`, cum tribus elementis distinctis.

</div>

{% include nav.html %}
