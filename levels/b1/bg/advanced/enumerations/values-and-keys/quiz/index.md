---
title: Тест — Стойности на enum
---

{% include menu.html %}

Какво отпечатва следната програма?

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

`.value` връща числото зад константата. А `.key` връща нейното *име* като низ. Затова `Tue.key` е `Tue`, а числото `2`, което ѝ е дадено, няма значение.

</div>

{% include nav.html %}
