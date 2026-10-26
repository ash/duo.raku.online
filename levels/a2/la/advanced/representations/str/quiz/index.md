---
title: Quiz — gist et Str
---

{% include menu.html %}

Quid hoc programma imprimit?

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

`.Str` formam seriei planae dat. Inter elementa solum spatia sunt. Nulli unci sunt: `1 2 3`. Forma cum uncis, `[1 2 3]`, ex `.gist` venit. Itaque `say @a` quoque eam imprimit.

</div>

{% include nav.html %}
