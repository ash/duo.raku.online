---
title: 'Kvizo — Dissendo kun `where`'
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
multi sub f(Int $n where $n %% 2) { say 'even' }
multi sub f(Int $n)               { say 'odd' }

f(4);
```

{:.quiz}
1 | even
0 | odd
0 | both
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

La kondiĉo `where $n %% 2` estas vera por `4`. Do Raku elektas la pli specifan kandidaton. Ĝi presas `even`. La alia kandidato havas nur `Int`. Ĝi prenas ĉiujn valorojn, kiuj ne plenumas la kondiĉon.

</div>

{% include nav.html %}
