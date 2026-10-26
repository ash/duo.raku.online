---
title: Quiz — Sets
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Die Vereinigung nimmt jeden Wert aus beiden Sets. Aber ein Set behält jeden Wert nur einmal. Der Wert `2` ist in beiden Sets. Also ist die Vereinigung `{1, 2, 3}`. Sie hat drei verschiedene Elemente.

</div>

{% include nav.html %}
