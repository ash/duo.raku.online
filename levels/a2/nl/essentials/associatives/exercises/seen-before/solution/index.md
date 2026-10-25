---
title: 'Solution: Eerder gezien?'
---

{% include menu.html %}

Dit is een klassieke taak voor een hash. De hash onthoudt welke items al eerder kwamen. Voor de lus maakt het programma de hash `%seen`. In de lus voert de gebruiker een woord in, `$word`. Het programma gebruikt dit woord als sleutel van de hash.

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

De code `%seen{$word}++` telt 1 op bij de waarde. Als de waarde nog niet bestaat, maakt de code hem ook aan. Een waarde op deze manier maken heet _autovivificatie_. Let op: dat gebeurt niet als je de waarde alleen _leest_. Het gebeurt bijvoorbeeld niet in de voorwaarde `if %seen{$word}`.

{% include nav.html %}
