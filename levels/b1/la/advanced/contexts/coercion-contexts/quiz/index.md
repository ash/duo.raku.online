---
title: Quiz — Contextus
---

{% include menu.html %}

Quid sequens programma imprimit?

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

Praefixum `+` contextum numericum ponit. Valor numericus ordinis est numerus elementorum eius. Itaque `+@a` est `3`, non summa. Adhibe `~` pro contextu chordae, quod `10 20 30` dat. Ut elementa revera addas, adhibe `[+]`.

</div>

{% include nav.html %}
