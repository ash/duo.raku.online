---
title: 'Тест — Значення перелічення'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

```raku
enum Day (Mon => 1, Tue => 2);
say Tue.key;
```

{:.quiz}
1 | Tue
0 | 2
0 | 1
0 | Mon

{% include quiz.html %}

<div class="extended-explanation">

`.value` дає число, що стоїть за константою. Але `.key` дає її *ім'я* як рядок. Тож `Tue.key` — це `Tue`. Число `2` цієї константи тут не важливе.

</div>

{% include nav.html %}
