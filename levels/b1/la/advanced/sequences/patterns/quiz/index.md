---
title: 'Quiz — Operator `...`'
translations_gpt:
---

{% include menu.html %}

Quid sequens programma imprimit?

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

Cum *tribus* valoribus initialibus, `...` rationem inter eos spectat. In `1, 3, 9` quisque valor triplum est prioris. Itaque series ut geometrica pergit: `27, 81`. Cum duobus valoribus initialibus, gradum arithmeticum potius constitueret.

</div>

{% include nav.html %}
