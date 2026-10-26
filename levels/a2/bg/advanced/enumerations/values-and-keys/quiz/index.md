---
title: Тест — Стойности на enum
---

{% include menu.html %}

Какво отпечатва тази програма?

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

`.value` дава числото зад константата. Но `.key` дава нейното *име* като низ. Затова `Tue.key` е `Tue`. Числото `2` на тази константа тук няма значение.

</div>

{% include nav.html %}
