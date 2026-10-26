---
title: Quiz — Coniuncta
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

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

Unio omnem valorem ex ambobus coniunctis sumit. Sed coniunctum quemque valorem solum semel servat. Valor `2` in ambobus coniunctis est. Itaque unio est `{1, 2, 3}`. Tria elementa distincta habet.

</div>

{% include nav.html %}
