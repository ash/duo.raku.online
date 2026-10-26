---
title: Quiz — Sets
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
say (set(1, 2) ∪ set(2, 3)).elems;
```

{:.quiz}
1 | 3
0 | 4
0 | 2
0 | 1

{% include quiz.html %}

<div class="extended-explanation">

Die Vereinigung sammelt jeden Wert aus beiden Sets. Aber ein Set behält jeden Wert nur einmal. Beide Sets haben `2`, also ist die Vereinigung `{1, 2, 3}`, mit drei verschiedenen Elementen.

</div>

{% include nav.html %}
