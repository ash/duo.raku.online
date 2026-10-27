---
title: 'Тест — MOP'
translations_gpt:
---

{% include menu.html %}

Какво отпечатва следната програма?

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

`.^attributes` е метаметод. Извиквате го с `.^` върху метаобекта на типа. Той изброява атрибутите, които типът декларира, а `.elems` ги преброява. `Point` декларира два атрибута, `$.x` и `$.y`, така че програмата отпечатва `2`.

</div>

{% include nav.html %}
