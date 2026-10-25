---
title: Getallen vergelijken
---

{% include menu.html %}

Gebruik deze operatoren om twee getallen te vergelijken. Ken je andere programmeertalen? Dan zijn ze allemaal heel duidelijk voor je.

`==` | Gelijk
`!=` | Niet gelijk
`<` | Minder dan
`<=` | Minder dan of gelijk aan
`>` | Groter dan
`>=` | Groter dan of gelijk aan

## Ongeveer-gelijk

Raku heeft de standaardoperatoren. Het voegt er ook nog één toe: `=~=`. Deze operator kijkt of twee getallen bijna gelijk zijn. Het resultaat is `True` als de getallen dicht bij elkaar liggen. Raku vergelijkt het verschil met de grootte van de getallen. Dat geeft het relatieve verschil. Dat mag niet groter zijn dan de ingebouwde waarde `$*TOLERANCE`. Deze waarde is `1e-15`.

## Unicode-versies

Sommige van deze operatoren hebben ook een Unicode-vorm:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Voorbeelden

Hier zijn een paar voorbeelden die getallen vergelijken:

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

Let op: `1.000000000000000000000001` is een `Rat`-getal. De expressie vergelijkt het met een getal heel dicht erbij: `1.000000000000000000000002`. Met `Rat`-getallen verlies je hier geen precisie. Raku bewaart alle cijfers. Het laatste voorbeeld heeft `2e17`. Het gebruikt `Num`-getallen. Hun precisie is beperkt. Ze kunnen niet alle cijfers bewaren.

{% include nav.html %}
