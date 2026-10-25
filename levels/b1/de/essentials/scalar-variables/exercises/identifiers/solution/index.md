---
title: 'Solution: Die Bezeichner korrigieren'
---

{% include menu.html %}

Es gibt mehrere Wege, die Bezeichner zu korrigieren. Hier sind einige davon:

## Code

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Alle Bezeichner sind gültig. Aber es ist besser, Apostrophe in Namen zu vermeiden, wenn Sie `$don't` keine guten Gründe haben.

🦋 Den Quellcode finden Sie in der Datei [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Ausgabe

Dieses Programm gibt nichts aus. Aber wenn Rakudo es kompiliert und ausführt, sollten Sie keine Fehler bekommen:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Kommentare

Sehen wir uns an, was mit den ursprünglichen Namen falsch war:

1. Leerzeichen sind in Namen nicht erlaubt: `$ A G E`.
1. Eine Variable braucht ein Sigil: `Name`. Raku kann Variablen ohne Sigil haben, aber auch diese kann man nicht als `my Name` deklarieren.
1. Ein Name kann nicht mit einem Apostroph beginnen, oder genauer gesagt, mit einem einfachen Anführungszeichen: `$'Middle'Name`.
1. Ein Name kann auch nicht mit einer Ziffer beginnen: `$2address`.
1. Zwei Bindestriche können nicht direkt nacheinander stehen: `$from--to`.

{% include nav.html %}
