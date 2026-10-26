---
title: Quiz — Praecedentia
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

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

`**` altiorem praecedentiam quam `*` habet. Ergo Raku potestatem primum computat: `3 ** 2` est `9`. Deinde `2 * 9` est `18`. Noli id a sinistra ad dextram legere ut `(2 * 3) ** 2`. Id responsum falsum dat, `36`.

</div>

{% include nav.html %}
