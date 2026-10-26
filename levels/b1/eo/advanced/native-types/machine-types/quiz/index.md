---
title: Kvizo — Denaskaj tipoj
translations_gpt:
---

{% include menu.html %}

Kion presas la sekva programo?

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

Kiam vi demandas indiĝenan valoron pri ĝi mem, Raku aŭtomate *enkastas* ĝin. La valoro iras en la respondan plenan tipon. Ĉi tie, `$n` estas deklarita kiel indiĝena `int`. Sed `.^name` tamen raportas ĝian tipon kiel la enkastitan `Int`.

</div>

{% include nav.html %}
