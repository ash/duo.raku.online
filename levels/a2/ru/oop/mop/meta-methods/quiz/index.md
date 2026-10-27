---
title: Тест — Протокол метаобъектов
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа?

```raku
class Point {
    has $.x;
    has $.y;
}

say Point.^attributes.elems;
```

{:.quiz}
0 | 1
1 | 2
0 | (Point)
0 | ошибка

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` — это метаметод. Вы вызываете его через `.^`, у метаобъекта типа. Он перечисляет атрибуты типа. `.elems` их считает. У `Point` два атрибута, `$.x` и `$.y`. Поэтому программа печатает `2`.

</div>

{% include nav.html %}
