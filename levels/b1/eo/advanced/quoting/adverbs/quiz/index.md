---
title: Kvizo — Citaj adverboj
translations_gpt:
---

{% include menu.html %}

Kion presas la sekva programo?

```raku
my $price = 5;
say qq:!s{costs $price};
```

{:.quiz}
0 | costs 5
1 | costs $price
0 | costs
0 | costs {5}

{% include quiz.html %}

<div class="extended-explanation">

`qq` kutime interpolas skalarojn, sed adverbo kun `!` *malŝaltas* funkcion. Ĉi tie, `:!s` malŝaltas skalaran interpoladon. Do `$price` restas ĝuste kiel skribita kaj ne estas anstataŭigita per `5`.

</div>

{% include nav.html %}
