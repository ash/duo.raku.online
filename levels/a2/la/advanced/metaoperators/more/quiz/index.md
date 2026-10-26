---
title: Quiz — Hyper et crux
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

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

Meta-operator hyper `»+»` operatorem `+` in omni elemento adhibet. A dextra tantum unus valor est, `10`. Raku hunc valorem pro tota lista adhibet. Ergo quodque elementum `10` plus accipit: `(11 12 13)`. Reductio `[+]` alio modo operatur. Listam in unam summam convertit, `6`.

</div>

{% include nav.html %}
