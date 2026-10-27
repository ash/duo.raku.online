---
title: Subroutinen versus Methoden
translations_gpt:
---

{% include menu.html %}

Sie haben jetzt zwei Möglichkeiten, Verhalten zu verpacken: eine _Subroutine_ und eine _Methode_. Sie sehen ähnlich aus, aber Sie benutzen sie auf verschiedene Weise.

Eine Subroutine steht für sich. Sie rufen sie über ihren Namen auf und übergeben ihr alles, was sie braucht, als Argumente:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Eine Methode gehört zu einer Klasse. Sie rufen sie mit einem Punkt auf einem Objekt auf. Sie kann über `self` und die Attribut-Accessoren die eigenen Daten des Objekts benutzen. Diese Daten müssen Sie also nicht übergeben:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Beide berechnen dieselbe Zahl. Der Unterschied ist, woher die Daten kommen. Die Subroutine bekommt den Radius als Argument. Die Methode liest ihn aus dem Objekt, auf dem sie aufgerufen wurde.

Hier ist eine einfache Regel. Nehmen Sie eine Subroutine für eine eigene Operation, die nur aus ihren Argumenten ein Ergebnis macht. Nehmen Sie eine Methode, wenn das Verhalten zu einem Objekt gehört und seine Daten benutzt. Für allgemeine Routinen, die zur ganzen Klasse gehören, nehmen Sie Klassenmethoden.

{% include nav.html %}
