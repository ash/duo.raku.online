---
title: 'Тест — Префікси операторів'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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

`$v` невизначений. Коли ви додаєте до нього `10`, Raku бере `0` замість `$v`. Тож результат — `10`. Зазвичай є ще й попередження: «uninitialized value». Але префікс `quietly` його ховає. Тож програма виводить лише `10`.

</div>

{% include nav.html %}
