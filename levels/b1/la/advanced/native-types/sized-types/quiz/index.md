---
title: Quiz — Superfluentia
translations_gpt:
---

{% include menu.html %}

Quid sequens programma imprimit?

```raku
my int8 $i = -128;
$i--;
say $i;
```

{:.quiz}
1 | 127
0 | -129
0 | -128
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

`int8` valores a `-128` ad `127` continet. Valores in margine infimo quoque circumvolvuntur. Si minimum valorem decrementas, `-129` accipere non potes. Itaque ad maximum valorem, `127`, circumvolvitur.

</div>

{% include nav.html %}
