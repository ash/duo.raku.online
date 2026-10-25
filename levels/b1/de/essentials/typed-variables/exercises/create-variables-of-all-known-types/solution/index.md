---
title: 'Solution: Variablen aller bekannten Typen erstellen'
---

{% include menu.html %}

Diese Art von Programm werden Sie in der Praxis wahrscheinlich nicht schreiben. Aber es ist wichtig zu wissen, wie man in die Teile echter Programme hineinschaut.

## Code

Hier ist eine mögliche Lösung. Sie erstellt Variablen der fünf genannten Typen und gibt ihre Typen aus.

```raku
my $a = 10;
my $b = 10.2;
my $c = 10e3;
my $d = True;
my $e = 'zehn';

say $a, ' ', $a.WHAT;
say $b, ' ', $b.WHAT;
say $c, ' ', $c.WHAT;
say $d, ' ', $d.WHAT;
say $e, ' ', $e.WHAT;
```

🦋 Finden Sie das Programm in der Datei [types.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/types.raku).

## Ausgabe

Dieses Programm gibt die folgende Ausgabe aus:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
zehn (Str)
```

{% include nav.html %}
