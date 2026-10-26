---
title: Quiz — Quotatio
---

{% include menu.html %}

Quid sequens programma imprimit?

```raku
say q{a\nb};
```

{:.quiz}
1 | a\nb
0 | a<newline>b
0 | ab
0 | anb

{% include quiz.html %}

<div class="extended-explanation">

Operator `q` sicut apostrophi simplices operatur. Effugia per obliquum reversum ut `\n` non tractat. Series omnes quattuor characteres servat: `a`, `\`, `n` et `b`. Solum forma interpolans, ut `qq` vel apostrophi duplices, `\n` in verum finem lineae convertit.

</div>

{% include nav.html %}
