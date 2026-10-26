---
title: Тест — Диспетчеризация с `where`
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа?

```raku
multi sub f(Int $n where $n %% 2) { say 'even' }
multi sub f(Int $n)               { say 'odd' }

f(4);
```

{:.quiz}
1 | even
0 | odd
0 | both
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

Условие `where $n %% 2` истинно для `4`. Поэтому Raku выбирает более конкретного кандидата. Он печатает `even`. У другого кандидата есть только `Int`. Он принимает все значения, которые не проходят условие.

</div>

{% include nav.html %}
