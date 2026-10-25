---
title: 'Solvo: Sumo de nombroj'
---

{% include menu.html %}

Jen la solvo.

## Kodo

```raku
my $a = prompt 'Enigu numeron A: ';
my $b = prompt 'Enigu numeron B: ';
my $c = prompt 'Enigu numeron C: ';

my $sum = $a + $b + $c;

say "La sumo de la nombroj estas $sum.";
```

🦋 Vi povas trovi la tutan kodon en la dosiero [sum-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum-of-numbers.raku).

## Eligo

Rulu la programon kelkajn fojojn. Kontrolu, ke ĝi funkcias kun malsamaj specoj de nombroj.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Enigu numeron A: 1.2
Enigu numeron B: -3.4
Enigu numeron C: 45
La sumo de la nombroj estas 42.8.
```

## Komentoj

Notu, ke ni uzas la valoron de la rutino `prompt` rekte. Sed la uzanto povas enigi ĉenon, kiu ne estas nombro. Tiam la programo povas havi problemojn. Poste ni lernos pri esceptoj. Post tio, ni povas plibonigi la programon.

{% include nav.html %}
