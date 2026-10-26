---
title: Тест — Значения перечислений
translations_gpt: true
---

{% include menu.html %}

Что напечатает следующая программа?

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

`.value` возвращает число, которое стоит за константой. А `.key` возвращает её *имя* в виде строки. Поэтому `Tue.key` — это `Tue`, а число `2`, которое ей дали, не важно.

</div>

{% include nav.html %}
