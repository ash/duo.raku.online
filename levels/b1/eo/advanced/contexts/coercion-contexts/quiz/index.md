---
title: Kvizo — Kuntekstoj
---

{% include menu.html %}

Kion presas la sekva programo?

```raku
my @a = 10, 20, 30;
say +@a;
```

{:.quiz}
0 | 60
1 | 3
0 | 10
0 | 10 20 30

{% include quiz.html %}

<div class="extended-explanation">

La prefikso `+` agordas nombran kuntekston. La nombra valoro de tabelo estas la nombro de ĝiaj elementoj. Do `+@a` estas `3` kaj ne la sumo. Uzu `~` por ĉena kunteksto, kiu donas `10 20 30`. Por vere adicii la elementojn, uzu `[+]`.

</div>

{% include nav.html %}
