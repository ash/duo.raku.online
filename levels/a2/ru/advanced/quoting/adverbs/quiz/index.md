---
title: Тест — Наречия кавычек
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа?

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

Обычно `qq` интерполирует скаляры. Но наречие с `!` *выключает* возможность. Здесь `:!s` выключает интерполяцию скаляров. Поэтому `$price` остаётся точно таким, как есть. Raku не заменяет его на `5`.

</div>

{% include nav.html %}
