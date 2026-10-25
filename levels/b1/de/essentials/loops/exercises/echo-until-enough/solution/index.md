---
title: 'Solution: Echo bis genug'
---

{% include menu.html %}

Dieses Programm braucht eine Schleife, die anhält, wenn der Benutzer ein bestimmtes Wort eingibt.

## Code

Es gibt mehrere ähnliche Möglichkeiten, die Aufgabe mit `while`, `until` oder `repeat` zu lösen. Eine davon ist unten gezeigt.

```raku
my $word;
repeat {
    $word = prompt 'Dein Wort: ';
    say $word;
} while $word ne 'genug';

say 'OK, fertig.';
```

🦋 Finde das Programm in der Datei [echo-until-enough.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/echo-until-enough.raku).

## Ausgabe

Führe das Programm aus, gib ein paar verschiedene Wörter ein und beende dann die Schleife.

```console
$ raku exercises/loops/echo-until-enough.raku
Dein Wort: dies
dies
Dein Wort: ist
ist
Dein Wort: mein
mein
Dein Wort: Wort
Wort
Dein Wort: genug
genug
OK, fertig.
```

## Kommentar

Beachte, dass du die Variable `$word` _vor_ der Schleife deklarierst, weil der `while`-Test außerhalb des Gültigkeitsbereichs des Schleifenkörpers liegt. Wenn du die Variable innerhalb der Schleife definierst, sieht der Test sie nicht.

{% include nav.html %}
