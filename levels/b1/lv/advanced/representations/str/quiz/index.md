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

`.Str` dod vienkāršas virknes formu. Šeit elementi ir vienkārši savienoti ar atstarpēm, bez iekavām: `1 2 3`. Formu ar iekavām, `[1 2 3]`, jūs iegūstat no `.gist`, un tātad arī no `say @a`.

</div>

{% include nav.html %}
