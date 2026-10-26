---
title: Тест — Наречия за цитиране
translations_gpt:
---

{% include menu.html %}

Какво отпечатва следната програма?

```raku
my $price = 5;
say qq:!s{costs $price};
```

{:.quiz}
0 | costs 5
1 | costs $price
0 | costs
0 | costs {5}

{% include quiz.html %}

<div class="extended-explanation">

`qq` обикновено интерполира скалари, но наречие с `!` *изключва* функция. Тук `:!s` изключва интерполирането на скалари. Затова `$price` остава точно както е написано и не се заменя с `5`.

</div>

{% include nav.html %}
