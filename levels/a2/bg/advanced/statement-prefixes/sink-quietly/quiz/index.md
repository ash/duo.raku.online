---
title: Тест — Префикси на инструкции
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
my $v;
quietly {
    say $v + 10;
}
```

{:.quiz}
0 | A warning, then 10
1 | 10
0 | Nil
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

`$v` е неопределена. Когато добавите `10` към нея, Raku използва `0` за `$v`. Затова резултатът е `10`. Обикновено има и предупреждение: „неинициализирана стойност“. Но префиксът `quietly` го скрива. Затова програмата отпечатва само `10`.

</div>

{% include nav.html %}
