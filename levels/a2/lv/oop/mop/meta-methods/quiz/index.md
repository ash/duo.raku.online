---
title: Viktorīna — Metaobjektu protokols
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

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
0 | kļūda

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` ir metametode. Jūs to izsaucat ar `.^` uz tipa metaobjekta. Tā uzskaita tipa atribūtus. `.elems` tos saskaita. Klasei `Point` ir divi atribūti, `$.x` un `$.y`. Tāpēc programma izdrukā `2`.

</div>

{% include nav.html %}
