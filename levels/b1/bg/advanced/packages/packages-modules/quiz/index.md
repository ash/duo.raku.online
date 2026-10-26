---
title: Тест — Пакети
translations_gpt:
---

{% include menu.html %}

Какво отпечатва следната програма?

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

`$x` е декларирана с `my`, така че е лексикална и никога не влиза в пространството от имена `M`. Ето защо пътят `$M::x` не намира нищо, само недефинирана стойност. Затова `.defined` е `False`. Само до `our` променлива би могло да се достигне по този начин.

</div>

{% include nav.html %}
