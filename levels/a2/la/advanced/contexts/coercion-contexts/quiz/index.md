---
title: Quiz — Contextus
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
my @a = 10, 20, 30;
say +@a;
```

{:.quiz}
0 | 60
1 | 3
0 | 10
0 | 10 20 30

{% include quiz.html %}

<div class="extended-explanation">

Praefixum `+` contextum numericum ponit. Ut numerus, ordo est numerus elementorum suorum. Itaque `+@a` est `3`. Non est summa. Pro contextu chordae adhibe `~`. Hoc `10 20 30` dat. Si elementa addere vis, adhibe `[+]`.

</div>

{% include nav.html %}
