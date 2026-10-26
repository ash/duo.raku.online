---
title: Kvizo — gist kaj Str
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

`.Str` donas la simplan ĉenan formon. La elementoj estas simple kunigitaj per spacoj. Ne estas krampoj: `1 2 3`. La formo kun krampoj, `[1 2 3]`, venas de `.gist`. Do ankaŭ `say @a` presas ĝin.

</div>

{% include nav.html %}
