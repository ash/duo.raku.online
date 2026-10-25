---
title: 'Solution: Eerder gezien?'
---

{% include menu.html %}

Deze taak is een klassiek voorbeeld van het gebruik van een hash om items bij te houden. Voor de lus maakt het programma de hash `%seen`. Binnen de lus wordt het ingevoerde woord `$word` als sleutel van de hash gebruikt.

## Code

Hier is de oplossing:

```raku
my %seen;
loop {
    my $word = prompt 'Woord: ';
    if %seen{$word} {
        say %seen{$word} == 1 ?? 'Gezien!' !! say "Gezien %seen{$word} keer!";
    }
    %seen{$word}++;
}
```

🦋 Vind het programma in het bestand [seen-before.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/seen-before.raku).

## Uitvoer

```console
$ raku exercises/associatives/seen-before.raku
Woord: Ik
Woord: nooit
Woord: zag
Woord: een
Woord: zag
Gezien!
Woord: dat
Woord: zag
Gezien 2 keer!
Waar
Woord: als
Woord: dat
Gezien!
Woord: zag
Gezien 3 keer!
Waar
Woord: zaagde
Woord: ^C
```

## Opmerking

De constructie `%seen{$word}++` telt niet alleen 1 op bij de waarde. Ze maakt de waarde ook aan als die nog niet bestond. Een waarde op deze manier maken heet _autovivificatie_. Let op: als je de waarde alleen _leest_, zoals in de voorwaarde `if %seen{$word}`, wordt hij niet aangemaakt.

{% include nav.html %}
