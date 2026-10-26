---
title: Quiz — Hyper en cross
translations_gpt: 'Quiz — Hyper en cross'
---

{% include menu.html %}

Wat drukt dit programma af?

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

De hyper-meta-operator `»+»` gebruikt `+` op elk element. Rechts staat maar één waarde, `10`. Raku gebruikt die waarde voor de hele lijst. Zo krijgt elk element er `10` bij: `(11 12 13)`. Een reductie `[+]` werkt anders. Die maakt van de lijst één som, `6`.

</div>

{% include nav.html %}
