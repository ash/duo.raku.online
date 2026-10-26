---
title: 'Тест — `gather`'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

```raku
my @r = gather for 1..6 {
    take $_ if $_ %% 3;
};

say @r;
```

{:.quiz}
1 | [3 6]
0 | [1 2 3 4 5 6]
0 | [3]
0 | []

{% include quiz.html %}

<div class="extended-explanation">

`gather` збирає лише ті значення, які йдуть до `take`. Перевірка `$_ %% 3` істинна лише для `3` і `6`. Тож код бере лише ці два числа. Результат — `[3 6]`.

</div>

{% include nav.html %}
