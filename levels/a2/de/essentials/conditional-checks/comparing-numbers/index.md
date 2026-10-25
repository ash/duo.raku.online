---
title: Vergleichen von Zahlen
---

{% include menu.html %}

Mit diesen Operatoren vergleichen Sie zwei Zahlen. Kennen Sie andere Programmiersprachen? Dann sind sie Ihnen alle sehr klar.

`==` | Gleich
`!=` | Ungleich
`<` | Kleiner als
`<=` | Kleiner oder gleich
`>` | Größer als
`>=` | Größer oder gleich

## Ungefähr gleich

Raku hat die Standardoperatoren. Es fügt auch noch einen hinzu: `=~=`. Dieser Operator prüft, ob zwei Zahlen fast gleich sind. Das Ergebnis ist `True`, wenn die Zahlen nah beieinander sind. Raku vergleicht den Unterschied mit der Größe der Zahlen. Das ergibt den relativen Unterschied. Er darf nicht größer als der eingebaute Wert `$*TOLERANCE` sein. Dieser Wert ist `1e-15`.

## Unicode-Versionen

Einige dieser Operatoren haben auch eine Unicode-Form:

`!=` | `≠`
`<=` | `≤`
`>=` | `≥`
`=~=` | `≅`

## Beispiele

Hier sind einige Beispiele zum Vergleichen von Zahlen:

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

Beachten Sie: `1.000000000000000000000001` ist eine `Rat`-Zahl. Der Ausdruck vergleicht sie mit einer sehr nahen Zahl, `1.000000000000000000000002`. Mit `Rat`-Zahlen verlieren Sie hier keine Genauigkeit. Raku behält alle Ziffern. Das letzte Beispiel hat `2e17`. Es benutzt `Num`-Zahlen. Ihre Genauigkeit ist begrenzt. Diese Zahlen können nicht alle Ziffern behalten.

{% include nav.html %}
