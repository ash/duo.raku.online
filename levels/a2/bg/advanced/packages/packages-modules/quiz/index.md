---
title: Тест — Пакети
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

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

`$x` е създадена с `my`. Затова тя е лексикална. Тя никога не влиза в пространството от имена `M`. Заради това пътят `$M::x` не намира нищо. Той дава недефинирана стойност. Така `.defined` е `False`. Само до `our` променлива може да се стигне по този начин.

</div>

{% include nav.html %}
