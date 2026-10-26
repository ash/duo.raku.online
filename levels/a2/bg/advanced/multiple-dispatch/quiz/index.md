---
title: Тест — Диспечеризация с `where`
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

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

Условието `where $n %% 2` е вярно за `4`. Затова Raku избира по-специфичния кандидат. Той отпечатва `even`. Другият кандидат има само `Int`. Той приема всички стойности, за които условието не е вярно.

</div>

{% include nav.html %}
