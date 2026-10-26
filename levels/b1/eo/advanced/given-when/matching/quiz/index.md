---
title: 'Kvizo — `when`'
translations_gpt:
---

{% include menu.html %}

Kion presas la jena programo?

```raku
given 5 {
    when $_ > 0 { say 'positive' }
    when 5      { say 'five' }
}
```

{:.quiz}
1 | positive
0 | five
0 | ambaŭ liniojn
0 | nenion

{% include quiz.html %}

<div class="extended-explanation">

Post kiam bloko `when` kongruas, ĝi aŭtomate *elsaltas* el la `given`. Do ne estas trafalado. `5` plenumas la unuan kondiĉon, `$_ > 0`, do `positive` estas presata. La dua `when 5` neniam estas atingata, kvankam ĝi ankaŭ kongruus.

</div>

{% include nav.html %}
