---
title: Kvizo — Denaskaj tipoj
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
my int $n = 42;
say $n.^name;
```

{:.quiz}
1 | Int
0 | int
0 | (Int)
0 | Num

{% include quiz.html %}

<div class="extended-explanation">

Demandu indiĝenan valoron pri ĝi mem, kaj Raku aŭtomate *enkastas* ĝin. Ĝi metas la valoron en la respondan plenan tipon. La kodo deklaras `$n` kiel indiĝenan `int`. Sed `.^name` demandas pri ĝia tipnomo. Do vi ricevas la enkastitan tipon, `Int`.

</div>

{% include nav.html %}
