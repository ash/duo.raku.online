---
title: 'Solution: Variablen aller bekannten Typen erstellen'
---

{% include menu.html %}

Solche Programme schreiben Sie in der echten Arbeit wahrscheinlich nicht. Aber Sie müssen wissen, wie man in echte Programme hineinschaut.

## Code

Hier ist eine mögliche Lösung. Die Lösung erstellt Variablen der fünf Typen von oben. Dann gibt sie ihre Typen aus.

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

Das Programm gibt Folgendes aus:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
zehn (Str)
```

{% include nav.html %}
