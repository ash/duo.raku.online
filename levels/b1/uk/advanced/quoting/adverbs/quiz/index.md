---
title: 'Тест — Наріччя цитування'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

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

`qq` зазвичай інтерполює скаляри, але наріччя з `!` *вимикає* можливість. Тут `:!s` вимикає інтерполяцію скалярів. Тож `$price` лишається точно таким, як записано, і не замінюється на `5`.

</div>

{% include nav.html %}
