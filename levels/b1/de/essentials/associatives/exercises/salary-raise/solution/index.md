---
title: 'Solution: Gehaltserhöhung'
---

{% include menu.html %}

Das Programm muss einen der Werte im Hash ändern. Das Zuweisen des neuen Wertes funktioniert fast genauso wie bei einer skalaren Variablen.

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

Wenn Sie das Programm ausführen, prüfen Sie, ob Ihre Berechnungen richtig sind. Prüfen Sie auch, ob Sie die Prozente richtig umgerechnet haben.

```console
$ raku exercises/associatives/salary-raise.raku
Neues Gehalt von Eliza Vents: 3150
```

{% include nav.html %}
