---
title: Mehrfach-Dispatch
translations_gpt:
---

{% include menu.html %}

Im Teil „Grundlagen“ haben Sie [_Multi-Funktionen_](/de/essentials/more-on-functions/multi-functions) kennengelernt. Das sind mehrere Subroutinen mit demselben Namen. Raku wählt die richtige aus, indem es sich die Typen der Argumente ansieht. Das nennt man _Multiple Dispatch_.

Bisher hat Raku nach dem _Typ_ der Argumente gewählt. Mit einer `where`-Klausel können Sie weiter gehen und auch nach dem _Wert_ wählen. Sie schreiben sie nach einem Parameter, und sie enthält eine Bedingung. Das Argument muss diese Bedingung erfüllen, sonst wird dieser Kandidat nicht gewählt:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Jeder Aufruf führt den Kandidaten aus, dessen Bedingung für den gegebenen Wert wahr ist:

```
-5 is negative
0 is zero
7 is positive
```

Wenn Sie nur auf die Typen schauen, haben alle drei Kandidaten dieselbe Signatur: ein `Int`. Ohne die `where`-Klauseln würden sie also kollidieren. Erst die Bedingungen machen sie verschieden.

## Ein Basisfall für die Rekursion

`where` wird oft für den Endpunkt einer Rekursion benutzt. Dieser Punkt bekommt einen eigenen Kandidaten. Hier ist wieder die Fakultät, jetzt als zwei Multi-Subs:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

Der erste Kandidat behandelt den Basisfall, wenn `$n` gleich `1` oder kleiner ist. Er gibt einfach `1` zurück. Jeder andere Wert geht an den zweiten Kandidaten. Dieser ruft `fact` noch einmal mit einer kleineren Zahl auf. Innerhalb der Funktion gibt es kein `if`. Der Dispatcher wählt zwischen dem Basisfall und dem rekursiven Schritt.

{% include nav.html %}
