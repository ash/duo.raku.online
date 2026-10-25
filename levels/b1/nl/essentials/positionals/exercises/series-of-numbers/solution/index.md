---
title: 'Solution: Print een reeks van getallen'
---

{% include menu.html %}

Er is meer dan één manier om dit probleem op te lossen.

## Code 1

De eerste oplossing is korter en typischer voor Raku.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

.say for $begin .. $end;
```

🦋 Vind het programma in het bestand [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Code 2

Een tweede mogelijke oplossing gebruikt de `loop`-instructie.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Vind het programma in het bestand [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Zoals je ziet, is de eerste variant veel korter en laat hij het idee duidelijker zien.

## Discussie

De eerste variant van het programma gebruikt de [postfix-vorm van de `for`-lus](/nl/essentials/loops/postfix-for). Het tweede programma gebruikt een `loop`.

## Uitvoer

Voer het programma uit en typ de twee getallen in de console. Beide varianten geven dezelfde uitvoer.

```console
$ raku exercises/positionals/series-of-numbers.raku
Begin: 15
Einde: 19
15
16
17
18
19
```

{% include nav.html %}
