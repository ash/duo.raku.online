---
title: 'Solution: Anzahl der Zehner'
---

{% include menu.html %}

So können Sie die Aufgabe lösen.

## Code

```raku
my $n = prompt 'Geben Sie eine positive ganze Zahl ein: ';

say ($n % 100) div 10;
```

🦋 Den vollständigen Code finden Sie in der Datei [tens.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/tens.raku).

## Ausgabe

Führen Sie das Programm aus und testen Sie einige verschiedene Fälle:

* Eine runde dreistellige Zahl, wie 120;
* Ein Vielfaches von 100, zum Beispiel 400;
* Eine Zahl größer als 10, aber kleiner als 100;
* Eine Zahl kleiner als 10.

Für die Zahl 234 sieht die Ausgabe des Programms so aus:

```console
$ raku exercises/numbers/tens.raku
Geben Sie eine positive ganze Zahl ein: 234
3
```

## Kommentare

Diese Lösung kombiniert wieder Modulo `%` und Ganzzahldivision `div`.

Beachten Sie das Leerzeichen vor der öffnenden Klammer. Es muss dort stehen, sonst bekommen Sie einen Syntaxfehler. Wir kommen im Abschnitt über Funktionen auf [diese Eigenschaft](/de/essentials/more-on-functions/mind-the-space) von Raku zurück. Geben Sie den Code vorerst so ein, wie oben gezeigt. Oder Sie setzen ein weiteres Paar Klammern um das Argument der Funktion. In diesem Fall brauchen Sie kein Leerzeichen:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
