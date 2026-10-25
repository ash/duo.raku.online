---
title: Vergleichen von Zahlen
---

{% include menu.html %}

Um zwei Zahlen zu vergleichen, benutzen Sie die folgenden Operatoren. Wenn Sie andere Programmiersprachen kennen, sind sie alle ziemlich klar.

`==` | Gleich
`!=` | Ungleich
`<` | Kleiner als
`<=` | Kleiner oder gleich
`>` | Größer als
`>=` | Größer oder gleich

## Ungefähr gleich

Neben den Standardoperatoren fügt Raku noch einen hinzu: den Ungefähr-gleich-Operator `=~=`. Er prüft, ob zwei Zahlen fast gleich sind. Das Ergebnis ist `True`, wenn die beiden Zahlen relativ nah beieinander liegen. Der relative Unterschied darf nicht größer als der eingebaute Wert `$*TOLERANCE` sein. Dieser Wert ist `1e-15`.

## Unicode-Versionen

Einige der Operatoren von oben haben auch Unicode-Versionen:

`!=` | `≠`
`<=` | `≤`
`>=` | `≥`
`=~=` | `≅`

## Beispiele

Hier sind ein paar Beispiele, die Zahlen mit diesen Operatoren vergleichen:

```raku
say 10 == 10; # True
say 10 != 10; # False

say 15 < 10;  # False
say 10 <= 10; # True
say 16 > 10;  # True
say 10 >= 14; # False

say 1.000000000000000000000001 =~= 1.000000000000000000000002; # True
say 2e17 + 1 =~= 2e17 + 100; # True
```

Beachten Sie, dass `1.000000000000000000000001` eine `Rat`-Zahl ist. Deshalb behält der Vergleich mit der nahen Zahl `1.000000000000000000000002` die volle Genauigkeit. Das letzte Beispiel, mit `2e17`, arbeitet mit `Num`-Zahlen. Ihre Genauigkeit ist begrenzt.

{% include nav.html %}
