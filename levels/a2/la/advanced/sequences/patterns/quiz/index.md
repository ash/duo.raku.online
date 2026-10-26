---
title: 'Quiz — Operator `...`'
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
say 1, 3, 9 ... 81;
```

{:.quiz}
1 | (1 3 9 27 81)
0 | (1 3 9 81)
0 | (1 3 5 7 ... 81)
0 | (3 9 27)

{% include quiz.html %}

<div class="extended-explanation">

Hic sunt *tres* valores initiales. Itaque `...` rationem inter eos spectat. Ratio ostendit quotiens maior sit quisque valor. In `1, 3, 9` quisque valor est triplum prioris. Itaque series ut series geometrica pergit: `27, 81`. Cum duobus valoribus initialibus gradum arithmeticum potius accipis.

</div>

{% include nav.html %}
