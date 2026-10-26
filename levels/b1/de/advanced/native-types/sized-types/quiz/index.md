---
title: Quiz — Überlauf
---

{% include menu.html %}

Was gibt das folgende Programm aus?

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

Ein `int8` fasst Werte von `-128` bis `127`. Werte laufen auch am unteren Ende um. Wenn du den kleinsten Wert dekrementierst, kannst du nicht `-129` bekommen. Deshalb springt er zum größten Wert, `127`.

</div>

{% include nav.html %}
