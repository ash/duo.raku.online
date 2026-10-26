---
title: Quiz — Der `...`-Operator
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Hier gibt es *drei* Startwerte. Also schaut `...` auf das Verhältnis zwischen ihnen. Das Verhältnis sagt, wievielmal größer jeder Wert ist. In `1, 3, 9` ist jeder Wert dreimal so groß wie der davor. Also geht die Sequenz als geometrische Sequenz weiter: `27, 81`. Mit zwei Startwerten bekommst du stattdessen einen arithmetischen Schritt.

</div>

{% include nav.html %}
