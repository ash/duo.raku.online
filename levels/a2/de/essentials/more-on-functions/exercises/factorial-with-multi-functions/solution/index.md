---
title: 'Solution: Fakultät mit Multi-Funktionen'
---

{% include menu.html %}

Diese Übung handelt wieder von Fakultäten. Mit dieser Aufgabe können wir mehr Möglichkeiten von Raku zeigen.

Für eine Fakultät können wir bei der gegebenen Zahl beginnen. Dann gehen wir nach unten. Wir müssen bei der Zahl 1 aufhören. Multi-Funktionen können das. Setze den Fall `$n == 1` in eine eigene Multi-Funktion.

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

Beachte: Das Programm macht das Eingabeargument zu einem Integer. Es macht das mit `@*ARGS[0].Int`. Ohne diesen Schritt führt die Eingabe `1` zu einer Endlosschleife. Hier ist der Grund. Die Funktion `factorial` bekommt dann einen Wert vom Typ [`IntStr`](/de/essentials/typed-variables/allomorphs). Deshalb kann Raku die erste Variante der Multi-Funktion nicht verwenden. Der rekursive Aufruf `factorial(2 - 1)` ist anders. Dort ist das Argument ein Integer. Deshalb kann Raku die erste Variante aufrufen.

{% include nav.html %}
