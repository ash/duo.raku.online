---
title: Quiz — Priorität
translations_gpt:
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

`**` hat einen höheren Vorrang als `*`. Also rechnet Raku zuerst die Potenz: `3 ** 2` ist `9`. Dann ist `2 * 9` gleich `18`. Lesen Sie es nicht von links nach rechts als `(2 * 3) ** 2`. Das gibt die falsche Antwort, `36`.

</div>

{% include nav.html %}
