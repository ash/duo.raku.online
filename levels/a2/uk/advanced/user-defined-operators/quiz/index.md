---
title: 'Тест — Визначення оператора'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

```raku
sub infix:<times>($a, $b) { $a * $b }

say 6 times 7;
```

{:.quiz}
1 | 42
0 | 67
0 | times
0 | помилку

{% include quiz.html %}

<div class="extended-explanation">

`infix:<times>` визначає новий оператор. Ви пишете його між двома операндами. Його тіло їх перемножує. Тож `6 times 7` дає `42`. Оператор — це просто підпрограма з особливим іменем.

</div>

{% include nav.html %}
