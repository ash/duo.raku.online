---
title: Тест — Префиксы инструкций
translations_gpt:
---

{% include menu.html %}

Что напечатает следующая программа?

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

Когда вы прибавляете `10` к неопределённой `$v`, Raku считает её равной `0` и даёт `10`. Обычно было бы ещё и предупреждение «uninitialized value». Но префикс `quietly` его скрывает, поэтому печатается только `10`.

</div>

{% include nav.html %}
