---
title: Quiz — Sets
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

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

De vereniging neemt elke waarde uit beide sets. Maar een set bewaart elke waarde maar één keer. De waarde `2` zit in beide sets. Dus is de vereniging `{1, 2, 3}`. Die heeft drie unieke elementen.

</div>

{% include nav.html %}
