---
title: 'Тест — MOP'
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

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
0 | грешка

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` е метаметод. Извиквате го с `.^` върху метаобекта на типа. Той изброява атрибутите на типа. `.elems` ги преброява. `Point` има два атрибута, `$.x` и `$.y`. Затова програмата отпечатва `2`.

</div>

{% include nav.html %}
