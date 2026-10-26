---
title: 'Тест — Префікси операторів'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

```raku
my $v;
quietly {
    say $v + 10;
}
```

{:.quiz}
0 | Попередження, а потім 10
1 | 10
0 | Nil
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Коли ви додаєте `10` до невизначеного `$v`, Raku вважає його за `0` і дає `10`. Зазвичай було б ще й попередження «uninitialized value». Але префікс `quietly` його ховає, тож виводиться лише `10`.

</div>

{% include nav.html %}
