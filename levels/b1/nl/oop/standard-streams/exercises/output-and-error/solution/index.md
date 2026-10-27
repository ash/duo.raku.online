---
title: 'Oplossing: Uitvoer en fout'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

Beide stromen verschijnen op het scherm. Eerst komen de tussenstanden, en daarna het eindresultaat:

```
running total: 3
running total: 8
running total: 15
15
```

Als je de standaardfout weggooit, blijft alleen de echte uitvoer over:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Opmerkingen

1. `$*OUT` en `$*ERR` zijn de handles voor de standaarduitvoer en de standaardfout. Ze hebben allebei een eigen methode `say`.

1. Elke ronde telt het volgende getal op en schrijft de tussenstand naar `$*ERR`. Alleen de eindsom gaat naar `$*OUT`. Op het scherm lijken de voortgang en het resultaat op elkaar. Maar ze gaan door verschillende stromen. Dus als `2>/dev/null` de standaardfout wegstuurt, blijft alleen de laatste `15` over.

{% include nav.html %}
