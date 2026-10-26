---
title: Тест — Пакеты
translations_gpt:
---

{% include menu.html %}

Что напечатает следующая программа?

```raku
module M {
    my $x = 5;
}

say $M::x.defined;
```

{:.quiz}
1 | False
0 | True
0 | 5
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`$x` объявлена с `my`, поэтому она лексическая и никогда не попадает в пространство имён `M`. Вот почему путь `$M::x` ничего не находит, только неопределённое значение. Поэтому `.defined` возвращает `False`. Таким способом можно было бы добраться только до переменной `our`.

</div>

{% include nav.html %}
