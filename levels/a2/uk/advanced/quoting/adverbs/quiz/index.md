---
title: 'Тест — Наріччя цитування'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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

Зазвичай `qq` інтерполює скаляри. Але наріччя з `!` *вимикає* можливість. Тут `:!s` вимикає інтерполяцію скалярів. Тож `$price` лишається зовсім без змін. Raku не замінює його на `5`.

</div>

{% include nav.html %}
