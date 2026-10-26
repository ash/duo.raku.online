---
title: Quiz — Hyper et crux
translations_gpt:
---

{% include menu.html %}

Quid sequens programma imprimit?

```raku
say (1, 2, 3) »+» 10;
```

{:.quiz}
1 | (11 12 13)
0 | (11 2 3)
0 | 16
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

Meta-operator hyper `»+»` operatorem `+` ad omne elementum applicat. A dextra tantum unus valor est, `10`. Ergo per totam listam extenditur. Quodque elementum `10` plus accipit: `(11 12 13)`. Reductio `[+]` potius listam in unam summam converteret, `6`.

</div>

{% include nav.html %}
