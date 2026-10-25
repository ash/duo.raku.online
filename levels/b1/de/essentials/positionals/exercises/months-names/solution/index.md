---
title: 'Solution: Monatsnamen'
---

{% include menu.html %}

Die Namen der Monate kommen aus dem Array `@months`, das zwölf Zeichenketten hat. Array-Indizes beginnen bei 0. Darum ziehen wir vor dem Indizieren des Arrays 1 von der Eingabezahl ab.

## Code

Hier ist die Lösung:

```raku
my @months = <
    January February March April
    May June July August
    September October November December
>;

say @months[@*ARGS[0] - 1];
```

🦋 Finden Sie das Programm in der Datei [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Ausgabe

Starten Sie das Programm ein paar Mal, um verschiedene Monatsnamen zu sehen.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Stil

Sie können selbst wählen, wie Sie Listen wie die in diesem Programm formatieren. Hier sind ein paar Möglichkeiten zum Vergleich:

```raku
my @months = <
    January February March April
    May June July August
    September October November December >;
```

Oder:

```raku
my @months = < January   February March    April
               May       June     July     August
               September October  November December >;
```

Sie können auch alle Monate in einer einzigen Zeile auflisten.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
