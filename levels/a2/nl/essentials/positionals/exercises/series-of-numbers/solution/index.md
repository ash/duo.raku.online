---
title: 'Solution: Print een reeks van getallen'
---

{% include menu.html %}

Je kunt dit probleem op meer dan één manier oplossen.

## Code 1

De eerste oplossing is korter. Ze past ook meer bij de stijl van Raku.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

.say for $begin .. $end;
```

🦋 Vind het programma in het bestand [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Code 2

De tweede oplossing gebruikt de `loop`-instructie.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Vind het programma in het bestand [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Zoals je ziet, is de eerste variant veel korter. Hij laat het idee ook duidelijker zien.

## Discussie

De eerste variant gebruikt de [postfix-vorm van de `for`-lus](/nl/essentials/loops/postfix-for). In deze vorm komt `for` na de statement. Het tweede programma gebruikt `loop`.

## Uitvoer

Voer het programma uit. Typ de twee getallen in de console. Beide varianten printen hetzelfde resultaat.

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
