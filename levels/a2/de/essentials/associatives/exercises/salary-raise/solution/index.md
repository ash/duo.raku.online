---
title: 'Solution: Gehaltserhöhung'
---

{% include menu.html %}

Das Programm muss einen Wert im Hash ändern. Sie weisen ihm einen neuen Wert zu. Das ist fast so wie bei einer skalaren Variablen.

## Code

Hier ist die Lösung:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Vertrieb',
    salary => 3000;

my $raise = 5; # in Prozent

%employee<salary> *= (1 + $raise / 100);
say "Neues Gehalt von %employee<full-name>: %employee<salary>";
```

🦋 Finde das Programm in der Datei [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Ausgabe

Führen Sie das Programm aus. Prüfen Sie, ob die Berechnungen richtig sind. Prüfen Sie auch, ob Sie die Prozente richtig umrechnen.

```console
$ raku exercises/associatives/salary-raise.raku
Neues Gehalt von Eliza Vents: 3150
```

{% include nav.html %}
