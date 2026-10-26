---
title: Viktorīna — gist un Str
---

{% include menu.html %}

Ko izdrukā šī programma?

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

`.Str` dod vienkāršas virknes formu. Elementi ir vienkārši savienoti ar atstarpēm. Iekavu nav: `1 2 3`. Forma ar iekavām, `[1 2 3]`, nāk no `.gist`. Tāpēc arī `say @a` to izdrukā.

</div>

{% include nav.html %}
