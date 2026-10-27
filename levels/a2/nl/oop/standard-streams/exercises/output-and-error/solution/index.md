---
title: 'Oplossing: Uitvoer en fout'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
my @data = 3, 5, 7;

my $sum = 0;
for @data -> $n {
    $sum += $n;
    $*ERR.say("running total: $sum");
}

$*OUT.say($sum);
```

🦋 Je kunt de broncode vinden in het bestand [output-and-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/output-and-error.raku).

## Uitvoer

Je ziet beide stromen op het scherm. Eerst komen de tussenstanden, dan het eindresultaat:

```
running total: 3
running total: 8
running total: 15
15
```

Hier gooien we de standaardfout weg. Alleen de echte uitvoer blijft over:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Opmerkingen

1. `$*OUT` is de handle voor de standaarduitvoer. `$*ERR` is de handle voor de standaardfout. Ze hebben allebei een eigen methode `say`.

1. Elke ronde van de lus telt het volgende getal op. Daarna schrijft ze de tussenstand naar `$*ERR`. Alleen de eindsom gaat naar `$*OUT`. Op het scherm zien de voortgang en het resultaat er hetzelfde uit. Maar ze gaan door verschillende stromen. `2>/dev/null` stuurt de standaardfout weg. Dus blijft alleen de laatste `15` over.

{% include nav.html %}
