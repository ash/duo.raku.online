---
title: Getallen vergelijken
---

{% include menu.html %}

Om twee getallen te vergelijken, gebruik je de volgende operatoren. Als je andere programmeertalen kent, zijn ze allemaal vrij duidelijk.

`==` | Gelijk
`!=` | Niet gelijk
`<` | Minder dan
`<=` | Minder dan of gelijk aan
`>` | Groter dan
`>=` | Groter dan of gelijk aan

## Ongeveer-gelijk

Naast de standaardoperatoren voegt Raku er nog één toe: de ongeveer-gelijk operator `=~=`. Die kijkt of twee getallen bijna gelijk zijn. Het resultaat is `True` als de twee getallen relatief dicht bij elkaar liggen. Het relatieve verschil mag niet groter zijn dan de ingebouwde waarde `$*TOLERANCE`. Deze waarde is `1e-15`.

## Unicode-versies

Sommige operatoren hierboven hebben ook Unicode-versies:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Voorbeelden

Hier zijn een paar voorbeelden van het vergelijken van getallen met deze operatoren:

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

Merk op dat `1.000000000000000000000001` een `Rat`-getal is. Daardoor blijft de volledige precisie behouden bij de vergelijking met `1.000000000000000000000002`, een getal dat er dicht bij ligt. Het laatste voorbeeld, met `2e17`, werkt met `Num`-getallen. Hun precisie is beperkt.

{% include nav.html %}
