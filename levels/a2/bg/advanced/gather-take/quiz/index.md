---
title: Тест — `gather`
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

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

`gather` събира само стойностите, които отиват към `take`. Проверката `$_ %% 3` е вярна само за `3` и `6`. Затова кодът взема само тези две стойности. Резултатът е `[3 6]`.

</div>

{% include nav.html %}
