---
title: 'Solution: Summe der Zahlen'
---

{% include menu.html %}

Hier ist die Lösung.

## Code

```raku
my $a = prompt 'Geben Sie die Zahl A ein: ';
my $b = prompt 'Geben Sie die Zahl B ein: ';
my $c = prompt 'Geben Sie die Zahl C ein: ';

my $sum = $a + $b + $c;

say "Die Summe der Zahlen ist $sum.";
```

🦋 Den vollständigen Code finden Sie in der Datei [sum-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum-of-numbers.raku).

## Ausgabe

Führen Sie das Programm ein paar Mal aus. Prüfen Sie, ob es mit verschiedenen Arten von Zahlen funktioniert.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Geben Sie die Zahl A ein: 1.2
Geben Sie die Zahl B ein: -3.4
Geben Sie die Zahl C ein: 45
Die Summe der Zahlen ist 42.8.
```

## Kommentare

Beachten Sie, dass wir den Wert der `prompt`-Routine direkt verwenden. Aber der Benutzer kann eine Zeichenkette eingeben, die keine Zahl ist. Dann kann das Programm Probleme haben. Später lernen wir etwas über Ausnahmen. Danach können wir das Programm verbessern.

{% include nav.html %}
