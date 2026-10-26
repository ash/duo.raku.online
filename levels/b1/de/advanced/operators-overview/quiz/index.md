---
title: Quiz — Priorität
translations_gpt:
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
say 2 * 3 ** 2;
```

{:.quiz}
1 | 18
0 | 36
0 | 12
0 | 81

{% include quiz.html %}

<div class="extended-explanation">

`**` hat einen höheren Vorrang als `*`, also kommt die Potenzierung zuerst. `3 ** 2` ist `9`, und dann ist `2 * 9` gleich `18`. Wenn man es von links nach rechts als `(2 * 3) ** 2` liest, bekommt man die falsche Antwort, `36`.

</div>

{% include nav.html %}
