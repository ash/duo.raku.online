---
title: Kvizo — gist kaj Str
---

{% include menu.html %}

Kion presas la sekva programo?

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

`.Str` donas la simplan ĉenan formon. Ĉi tie, la elementoj estas simple kunigitaj per spacoj, sen krampoj: `1 2 3`. La formon kun krampoj, `[1 2 3]`, vi ricevas de `.gist`, kaj do ankaŭ de `say @a`.

</div>

{% include nav.html %}
