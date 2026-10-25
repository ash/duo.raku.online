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

Führen Sie das Programm aus. Testen Sie es mit einigen verschiedenen Fällen:

* Eine runde Zahl mit drei Ziffern, zum Beispiel 120;
* Eine Zahl, die sich ohne Rest durch 100 teilen lässt, zum Beispiel 400;
* Eine Zahl größer als 10, aber kleiner als 100;
* Eine Zahl kleiner als 10.

Für die Zahl 234 gibt das Programm Folgendes aus:

```console
$ raku exercises/numbers/tens.raku
Geben Sie eine positive ganze Zahl ein: 234
3
```

## Kommentare

Auch diese Lösung verwendet wieder zwei Operatoren zusammen: Modulo `%` und Ganzzahldivision `div`.

Sehen Sie sich das Leerzeichen vor der öffnenden Klammer an. Es muss dort sein. Ohne das Leerzeichen bekommen Sie einen Syntaxfehler. Wir kommen im Abschnitt über Funktionen auf [diese Eigenschaft](/de/essentials/more-on-functions/mind-the-space) von Raku zurück. Geben Sie den Code vorerst so ein, wie Sie ihn oben sehen. Oder fügen Sie ein weiteres Paar Klammern hinzu. Setzen Sie die Klammern um das Argument der Funktion. Dann brauchen Sie kein Leerzeichen:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
