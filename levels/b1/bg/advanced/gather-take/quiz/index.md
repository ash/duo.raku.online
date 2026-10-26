---
title: Тест — `gather`
translations_gpt:
---

{% include menu.html %}

Какво отпечатва следната програма?

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

`gather` събира само стойностите, за които `take` наистина е извикано. Проверката `$_ %% 3` е вярна само за `3` и `6`. Затова се вземат само тези две и резултатът е `[3 6]`.

</div>

{% include nav.html %}
