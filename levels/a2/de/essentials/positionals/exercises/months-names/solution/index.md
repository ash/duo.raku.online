---
title: 'Solution: Monatsnamen'
---

{% include menu.html %}

Das Programm nimmt die Namen der Monate aus dem Array `@months`. Dieses Array hat zwölf Zeichenketten. Array-Indizes beginnen bei 0. Darum müssen wir 1 von der Eingabezahl abziehen. Das machen wir, bevor wir sie als Index verwenden.

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

Starten Sie das Programm ein paar Mal. Sie sehen verschiedene Monatsnamen.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Stil

Es gibt verschiedene Arten, so eine Liste zu formatieren. Sie können jede davon wählen. Vergleichen Sie ein paar Möglichkeiten:

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

Sie können auch alle Monate in eine Zeile schreiben.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
