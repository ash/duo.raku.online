---
title: Quiz — gist et Str
---

{% include menu.html %}

Quid sequens programma imprimit?

```raku
my @a = 1, 2, 3;
say @a.Str;
```

{:.quiz}
0 | [1 2 3]
1 | 1 2 3
0 | (1 2 3)
0 | 1, 2, 3

{% include quiz.html %}

<div class="extended-explanation">

`.Str` formam seriei planae dat. Hic elementa solum spatiis iunguntur, sine uncis: `1 2 3`. Formam cum uncis, `[1 2 3]`, ex `.gist` accipis, et ergo etiam ex `say @a`.

</div>

{% include nav.html %}
