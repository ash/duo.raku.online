---
title: Quiz — Hyper und Kreuz
translations_gpt:
---

{% include menu.html %}

Was gibt das folgende Programm aus?

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

Der Hyper-Meta-Operator `»+»` wendet `+` auf jedes Element an. Rechts steht nur ein Wert, `10`. Also wird er über die ganze Liste gestreckt. Jedes Element bekommt `10` dazu: `(11 12 13)`. Eine Reduktion `[+]` würde die Liste dagegen zu einer einzigen Summe machen, `6`.

</div>

{% include nav.html %}
