---
title: Quiz — Überlauf
---

{% include menu.html %}

Was gibt dieses Programm aus?

```raku
my int8 $i = -128;
$i--;
say $i;
```

{:.quiz}
1 | 127
0 | -129
0 | -128
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

In einen `int8` passen Werte von `-128` bis `127`. Werte laufen auch am unteren Ende um. Nimm den kleinsten Wert und dekrementiere ihn. Du kannst nicht `-129` bekommen. Deshalb springt der Wert zum größten Wert, `127`.

</div>

{% include nav.html %}
