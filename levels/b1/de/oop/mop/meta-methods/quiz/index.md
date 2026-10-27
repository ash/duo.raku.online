---
title: 'Quiz — Das MOP'
translations_gpt:
---

{% include menu.html %}

Was gibt das folgende Programm aus?

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
0 | ein Fehler

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` ist eine Metamethode. Sie rufen sie mit `.^` auf dem Metaobjekt des Typs auf. Die Methode listet die Attribute auf, die ein Typ deklariert, und `.elems` zählt sie. `Point` deklariert zwei Attribute, `$.x` und `$.y`, also gibt das Programm `2` aus.

</div>

{% include nav.html %}
