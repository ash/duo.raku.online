---
title: Тест — Определение оператора
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа?

```raku
sub infix:<times>($a, $b) { $a * $b }

say 6 times 7;
```

{:.quiz}
1 | 42
0 | 67
0 | times
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

`infix:<times>` определяет новый оператор. Вы пишете его между двумя операндами. Его тело умножает их. Поэтому `6 times 7` даёт `42`. Оператор — это просто подпрограмма с особым именем.

</div>

{% include nav.html %}
