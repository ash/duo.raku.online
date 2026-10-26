---
title: Quiz — Vocatio cum duplo puncto
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
say 'programming'.substr: 0, 3;
```

{:.quiz}
1 | pro
0 | program
0 | ing
0 | (0 3)

{% include quiz.html %}

<div class="extended-explanation">

Colon *totum* reliquum enuntiati capit. Totum fit index argumentorum. Itaque `substr: 0, 3` idem est quod `substr(0, 3)`. Ambo argumenta ad `substr` eunt. Ab indice `0` incipit et `3` litteras capit. Exitus est `pro`.

</div>

{% include nav.html %}
