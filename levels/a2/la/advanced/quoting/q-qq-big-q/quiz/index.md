---
title: Quiz — Quotatio
---

{% include menu.html %}

Quid hoc programma imprimit?

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

Operator `q` sicut apostrophi simplices operatur. Effugia per obliquum reversum ut `\n` non tractat. Itaque series omnes quattuor characteres servat: `a`, `\`, `n`, `b`. Solum forma quae interpolat `\n` in verum finem lineae convertit. Exempla sunt `qq` et apostrophi duplices.

</div>

{% include nav.html %}
