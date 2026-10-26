---
title: Тест — Звездата Whatever
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
my @a = 5, 6, 7, 8, 9;
say @a[*-2];
```

{:.quiz}
1 | 8
0 | 7
0 | 9
0 | 3

{% include quiz.html %}

<div class="extended-explanation">

В индекс звездата сама е броят на елементите. Тук това е `5`. Затова `*-2` е индексът `3`. Броим от нула. Елементът с индекс `3` е `8`.

</div>

{% include nav.html %}
