---
title: 'Solution: Funktion zur Berechnung von _xʸ_'
---

{% include menu.html %}

Verwenden Sie in diesem Programm den Operator `**`. Er berechnet die Potenz.

## Code

Hier ist die Lösung:

```raku
sub f($x, $y) { $x ** $y }

say f(5, 3);
say f(2, 10);
say f(-4, 5);
```

🦋 Finde das Programm in der Datei [function-x-to-the-power-of-y.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-x-to-the-power-of-y.raku).

## Ausgabe

Führen Sie das Programm aus. Prüfen Sie, ob die Antworten richtig sind:

```console
$ raku exercises/functions/function-x-to-the-power-of-y.raku
125
1024
-1024
```

## Kommentar

Die Funktion funktioniert auch mit negativen Potenzen. Zum Beispiel:

```raku
say f(5, -1);  # 0.2
say f(10, -2); # 0.01
```

{% include nav.html %}
