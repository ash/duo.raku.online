---
title: Quiz — Hyper und Kreuz
translations_gpt:
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Der Hyper-Meta-Operator `»+»` benutzt `+` für jedes Element. Rechts steht nur ein Wert, `10`. Raku benutzt diesen Wert für die ganze Liste. Also bekommt jedes Element `10` dazu: `(11 12 13)`. Eine Reduktion `[+]` arbeitet anders. Sie macht aus der Liste eine Summe, `6`.

</div>

{% include nav.html %}
