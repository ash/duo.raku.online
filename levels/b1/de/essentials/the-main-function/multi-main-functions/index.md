---
title: Mehrere `MAIN`-Funktionen
---

{% include menu.html %}

Wie jede andere Funktion in Raku kann auch die Funktion `MAIN` `multi`-Varianten haben. Damit kann das Programm jeden Fall auf seine eigene Weise behandeln. Die Fälle können sich in der Anzahl der Eingabeparameter oder in ihren Typen unterscheiden.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Wenn es nur ein Argument gibt, verdoppelt das Programm seinen Wert. Wenn es ein zweites Argument gibt, addiert das Programm die beiden:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
