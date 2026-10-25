---
title: Fließkommazahlen
---

{% include menu.html %}

Der letzte Abschnitt zeigt, dass Zahlen wie `1.5` [rationale Zahlen](/de/essentials/numbers/rats) sind. C++ hat `double`-Zahlen. In Raku können Sie auch so eine Zahl machen. Verwenden Sie dafür die wissenschaftliche Notation mit dem Buchstaben `e` oder `E`:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

Hier macht Raku Werte vom Datentyp `Num`. Intern speichert Raku sie als IEEE-Zahlen.

## Eingebaute Konstanten

Unten sind einige Konstanten. Sie können sie direkt verwenden. Das sind Zahlen vom Typ `Num`. Sie können jede davon in ASCII oder in Unicode schreiben:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | dasselbe wie `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
