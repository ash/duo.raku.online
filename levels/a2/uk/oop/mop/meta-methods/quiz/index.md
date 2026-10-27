---
title: 'Тест — MOP'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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
0 | помилку

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` — це метаметод. Ви викликаєте його через `.^`, для метаоб'єкта типу. Він перелічує атрибути типу. `.elems` їх рахує. `Point` має два атрибути, `$.x` та `$.y`. Тож програма виводить `2`.

</div>

{% include nav.html %}
