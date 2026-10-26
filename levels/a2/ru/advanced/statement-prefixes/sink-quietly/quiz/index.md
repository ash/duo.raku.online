---
title: Тест — Префиксы инструкций
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа?

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

`$v` не определена. Когда вы прибавляете к ней `10`, Raku берёт `0` вместо `$v`. Поэтому результат — `10`. Обычно есть ещё и предупреждение: «uninitialized value». Но префикс `quietly` его скрывает. Поэтому программа печатает только `10`.

</div>

{% include nav.html %}
