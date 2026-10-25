---
title: 'Solution: Ungerade oder gerade'
---

{% include menu.html %}

Der Körper dieser Funktion ist ziemlich klein. Das ist ein guter Grund, die `return`-Routine wegzulassen. Man kann auch das Semikolon am Ende der Zeile weglassen.

## Code

Hier ist die Lösung:

```raku
sub f($n) {
    $n %% 2 ?? 'Gerade' !! 'Ungerade'
}

say f(10);
say f(5);
say f(0);
say f(3);
```

🦋 Finde das Programm in der Datei [odd-or-even.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/odd-or-even.raku).

## Ausgabe

```console
$ raku exercises/functions/odd-or-even.raku
Gerade
Ungerade
Gerade
Ungerade
```

{% include nav.html %}
