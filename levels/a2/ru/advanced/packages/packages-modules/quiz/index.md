---
title: Тест — Пакеты
translations_gpt:
---

{% include menu.html %}

Что печатает эта программа?

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

`$x` создана с `my`. Поэтому она лексическая. Она никогда не попадает в пространство имён `M`. Из-за этого путь `$M::x` ничего не находит. Он даёт неопределённое значение. Поэтому `.defined` даёт `False`. Так можно добраться только до переменной `our`.

</div>

{% include nav.html %}
