---
title: 'Тест — Значення перелічення'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

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

`.value` повертає число, що стоїть за константою. А от `.key` повертає її *ім'я* як рядок. Тож `Tue.key` — це `Tue`, і число `2`, яке їй дали, не має значення.

</div>

{% include nav.html %}
