---
title: Тест — Дефиниране на оператор
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
sub infix:<times>($a, $b) { $a * $b }

say 6 times 7;
```

{:.quiz}
1 | 42
0 | 67
0 | times
0 | грешка

{% include quiz.html %}

<div class="extended-explanation">

`infix:<times>` дефинира нов оператор. Пишете го между двата му операнда. Тялото му ги умножава. Така `6 times 7` дава `42`. Операторът е просто подпрограма със специално име.

</div>

{% include nav.html %}
