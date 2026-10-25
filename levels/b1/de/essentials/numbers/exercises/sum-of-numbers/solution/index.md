---
title: 'Solution: Summe der Zahlen'
---

{% include menu.html %}

Hier ist die Lösung für das Problem.

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

Führen Sie das Programm ein paar Mal aus. Stellen Sie sicher, dass es mit verschiedenen Arten von Zahlen funktioniert.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Geben Sie die Zahl A ein: 1.2
Geben Sie die Zahl B ein: -3.4
Geben Sie die Zahl C ein: 45
Die Summe der Zahlen ist 42.8.
```

## Kommentare

Beachten Sie, dass wir den Rückgabewert der `prompt`-Routine direkt verwenden. Das kann Probleme machen, wenn der Benutzer eine Zeichenkette eingibt, die keine Zahl ist. Wir können das Programm später verbessern, wenn wir etwas über Ausnahmen gelernt haben.

{% include nav.html %}
