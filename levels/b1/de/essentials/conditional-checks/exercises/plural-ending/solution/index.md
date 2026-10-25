---
title: 'Solution: Pluralendung'
---

{% include menu.html %}

Das Programm soll prüfen, ob die Zahl größer als eins ist. Wenn ja, muss das Wort in der Pluralform stehen.

## Code

```raku
my $n = prompt 'Wie viele Dateien sollen kopiert werden? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n Datei{$ending} kopiert.";
```

🦋 Finde das Programm in der Datei [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Ausgabe

Starten Sie das Programm zweimal oder öfter. Probieren Sie die Eingabe `1` und auch eine andere positive ganze Zahl aus:

```console
$ raku exercises/conditional-checks/plural-ending.raku
Wie viele Dateien sollen kopiert werden? 10
10 Dateien kopiert.

$ raku exercises/conditional-checks/plural-ending.raku
Wie viele Dateien sollen kopiert werden? 1
1 Datei kopiert.
```

## Kommentar

Vielleicht tippen Sie oft aus Versehen ein einzelnes `?` statt des doppelten `??`. Vielleicht tippen Sie auch einen Doppelpunkt `:` statt `!!`, oder Sie machen beide Fehler.

{% include nav.html %}
