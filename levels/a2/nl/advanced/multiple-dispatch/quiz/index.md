---
title: Quiz — Dispatch met `where`
---

{% include menu.html %}

Wat print dit programma?

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

De voorwaarde `where $n %% 2` is waar voor `4`. Dus kiest Raku de meer specifieke kandidaat. Die print `even`. De andere kandidaat heeft alleen `Int`. Die neemt alle waarden die niet aan de voorwaarde voldoen.

</div>

{% include nav.html %}
