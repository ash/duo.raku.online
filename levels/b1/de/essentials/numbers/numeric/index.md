---
title: Fließkommazahlen
---

{% include menu.html %}

Im vorherigen Abschnitt haben wir gesehen, dass Zahlen wie `1.5` [rationale Zahlen](/de/essentials/numbers/rats) sind. Um eine Zahl wie ein `double` in C++ zu bekommen, verwenden Sie die wissenschaftliche Notation:

```raku
1E0
314e-2
-5e-20
5.424E40
7.6e+15
```

In diesem Fall erstellt Raku Objekte vom Datentyp `Num`. Intern speichert Raku sie als IEEE-Zahlen.

## Eingebaute Konstanten

Unten finden Sie einige Konstanten, die Sie sofort verwenden können. Das sind Zahlen vom Typ `Num`. Sie können jede davon in ASCII oder in Unicode schreiben:

`pi` | `π` | 3.141592653589793
`tau` | `τ` | gleich `2 * π`
`e` | `𝑒` | 2.718281828459045

{% include nav.html %}
