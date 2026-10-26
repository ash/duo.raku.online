---
title: 'Kvizo — `when`'
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

Kiam bloko `when` kongruas, ĝi aŭtomate *forlasas* la `given`. Raku ne daŭrigas al la sekva `when`. `5` plenumas la unuan kondiĉon, `$_ > 0`. Do la programo presas `positive`. La dua `when 5` ankaŭ taŭgas. Sed Raku neniam atingas ĝin.

</div>

{% include nav.html %}
