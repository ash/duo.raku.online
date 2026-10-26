---
title: Quiz — Der `...`-Operator
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
say 1, 3, 9 ... 81;
```

{:.quiz}
1 | (1 3 9 27 81)
0 | (1 3 9 81)
0 | (1 3 5 7 ... 81)
0 | (3 9 27)

{% include quiz.html %}

<div class="extended-explanation">

Mit *drei* Startwerten schaut `...` auf das Verhältnis zwischen ihnen. In `1, 3, 9` ist jeder Wert dreimal so groß wie der vorherige. Also geht die Sequenz geometrisch weiter: `27, 81`. Mit zwei Startwerten würde er stattdessen einen arithmetischen Schritt festlegen.

</div>

{% include nav.html %}
