---
title: 'Тест — Диспетчеризація з `where`'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

```raku
multi sub f(Int $n where $n %% 2) { say 'even' }
multi sub f(Int $n)               { say 'odd' }

f(4);
```

{:.quiz}
1 | even
0 | odd
0 | обидва
0 | нічого

{% include quiz.html %}

<div class="extended-explanation">

Умова `where $n %% 2` істинна для `4`. Тож Raku вибирає конкретнішого кандидата. Він виводить `even`. Інший кандидат має лише `Int`. Він бере всі значення, які не проходять умову.

</div>

{% include nav.html %}
