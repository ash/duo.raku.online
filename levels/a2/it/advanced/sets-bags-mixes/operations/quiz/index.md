---
title: Quiz — Set
---

{% include menu.html %}

Cosa stampa questo programma?

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

L'unione prende ogni valore dei due set. Ma un set tiene ogni valore una volta sola. Il valore `2` è in tutti e due i set. Quindi l'unione è `{1, 2, 3}`. Ha tre elementi distinti.

</div>

{% include nav.html %}
