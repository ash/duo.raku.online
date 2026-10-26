---
title: Quiz — Hyper en cross
translations_gpt: 'Quiz — Hyper en cross'
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

De hyper-meta-operator `»+»` past `+` toe op elk element. Aan de rechterkant staat maar één waarde, `10`. Die waarde wordt dus over de hele lijst uitgerekt. Elk element krijgt er `10` bij: `(11 12 13)`. Een reductie `[+]` zou de lijst juist tot één enkele som maken, `6`.

</div>

{% include nav.html %}
