---
title: Mehrfach-Dispatch
translations_gpt:
---

{% include menu.html %}

Im Teil „Grundlagen“ haben Sie [_Multi-Funktionen_](/de/essentials/more-on-functions/multi-functions) kennengelernt. Das sind mehrere Subroutinen mit demselben Namen. Raku sieht sich die Typen der Argumente an. Dann wählt es die richtige Subroutine. Das nennt man _Multiple Dispatch_.

Bis jetzt hat Raku nach dem _Typ_ der Argumente gewählt. Mit einer `where`-Klausel können Sie mehr machen. Raku kann auch nach dem _Wert_ wählen. Sie schreiben `where` nach einem Parameter. Die Klausel enthält eine Bedingung. Jede Variante der Funktion heißt Kandidat. Raku wählt einen Kandidaten nur, wenn seine Bedingung für das Argument wahr ist:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Jeder Aufruf geht an den Kandidaten mit einer wahren Bedingung für diesen Wert:

```
-5 is negative
0 is zero
7 is positive
```

Sehen Sie sich die Typen an. Alle drei Kandidaten haben dieselbe Signatur: ein `Int`. Ohne die `where`-Klauseln kollidieren sie. Raku kann nicht zwischen ihnen wählen. Die Bedingungen machen sie verschieden.

## Eine Rekursion beenden

Man benutzt `where` oft bei einer Rekursion. Bei einer Rekursion ruft eine Funktion sich selbst auf. Sie muss irgendwann aufhören. Diesen Endpunkt können Sie in einen eigenen Kandidaten setzen. Hier ist wieder die Fakultät. Jetzt hat sie zwei Multi-Subs:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

Der erste Kandidat ist der Basisfall. Hier hört die Rekursion auf. In diesem Fall ist `$n` gleich `1` oder kleiner. Dieser Kandidat gibt einfach `1` zurück. Alle anderen Werte gehen an den zweiten Kandidaten. Er ruft `fact` noch einmal mit einer kleineren Zahl auf. In der Funktion gibt es kein `if`. Der Dispatcher wählt zwischen dem Basisfall und dem rekursiven Schritt. Der Dispatcher ist der Teil von Raku, der einen Kandidaten auswählt.

{% include nav.html %}
