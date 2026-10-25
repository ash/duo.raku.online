---
title: 'Solution: Pluralendung'
---

{% include menu.html %}

Das Programm muss die Zahl vom Benutzer prüfen. Wenn sie größer als eins ist, muss das Wort im Plural stehen.

## Code

```raku
my $n = prompt 'Wie viele Dateien sollen kopiert werden? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n Datei{$ending} kopiert.";
```

🦋 Finde das Programm in der Datei [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Ausgabe

Starten Sie das Programm mindestens zweimal. Testen Sie es mit der Eingabe `1`. Probieren Sie dann eine andere ganze Zahl größer als null aus:

```console
$ raku exercises/conditional-checks/plural-ending.raku
Wie viele Dateien sollen kopiert werden? 10
10 Dateien kopiert.

$ raku exercises/conditional-checks/plural-ending.raku
Wie viele Dateien sollen kopiert werden? 1
1 Datei kopiert.
```

## Kommentar

Hier machen Sie vielleicht oft einen Fehler. Vielleicht tippen Sie ein einzelnes `?` statt des doppelten `??`. Oder Sie tippen einen Doppelpunkt `:` statt `!!`. Oder Sie machen beides.

{% include nav.html %}
