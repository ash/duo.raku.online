---
title: Тест — Значения перечислений
translations_gpt: true
---

{% include menu.html %}

Что напечатает эта программа?

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

`.value` даёт число, которое стоит за константой. Но `.key` даёт её *имя* в виде строки. Поэтому `Tue.key` — это `Tue`. Число `2` у этой константы здесь не важно.

</div>

{% include nav.html %}
