---
title: 'Solution: Die Bezeichner korrigieren'
---

{% include menu.html %}

Sie können die Bezeichner auf mehr als eine Art korrigieren. Hier sind einige Möglichkeiten:

## Code

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Alle diese Bezeichner sind korrekt. Aber Namen mit Apostrophen sind keine gute Idee. Vermeiden Sie sie, wenn Sie `$don't` keinen guten Grund haben.

🦋 Den Quellcode finden Sie in der Datei [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Ausgabe

Dieses Programm gibt nichts aus. Rakudo kompiliert das Programm und führt es aus. Sie sollten keine Fehler sehen:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Kommentare

Hier sind die Probleme mit den Namen aus der Aufgabe:

1. Ein Name darf keine Leerzeichen haben: `$ A G E`.
1. Eine Variable braucht ein Sigil: `Name`. Raku hat zwar auch Variablen ohne Sigil. Aber auch für sie können Sie nicht `my Name` schreiben.
1. Ein Name darf nicht mit einem Apostroph beginnen: `$'Middle'Name`. Eigentlich ist es hier ein einfaches Anführungszeichen.
1. Ein Name darf auch nicht mit einer Ziffer beginnen: `$2address`.
1. Ein Name darf nicht zwei Bindestriche nebeneinander haben: `$from--to`.

{% include nav.html %}
