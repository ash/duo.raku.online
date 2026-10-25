---
title: 'Solution: Fakultät mit Multi-Funktionen'
---

{% include menu.html %}

Diese Übung handelt wieder von Fakultäten. Tatsächlich können wir mit dieser Aufgabe weitere Möglichkeiten von Raku zeigen.

Du kannst eine Fakultät berechnen, indem du bei der gegebenen Zahl beginnst und nach unten gehst. Dann musst du aufhören, wenn die Zahl 1 erreicht. Mit Multi-Funktionen geht das. Verschiebe den Fall `$n == 1` in eine eigene Multi-Funktion.

## Code

Hier ist die Lösung:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Finde das Programm in der Datei [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Ausgabe

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Kommentar

Beachte, dass das Programm das Eingabeargument in einen Integer umwandelt: `@*ARGS[0].Int`. Das verhindert eine Endlosschleife, wenn die Eingabezahl `1` ist. Ohne die Umwandlung bekommt die `factorial`-Funktion einen Wert vom Typ [`IntStr`](/de/essentials/typed-variables/allomorphs). Die erste Variante der Multi-Funktion kann so einen Aufruf nicht abfangen. Aber beim rekursiven Aufruf `factorial(2 - 1)` ist das Argument ein Integer. Deshalb kann Raku die erste Variante aufrufen.

{% include nav.html %}
