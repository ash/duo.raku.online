---
title: 'Solution: Faculteit'
---

{% include menu.html %}

Voor de faculteit van `N` vermenigvuldig je alle getallen van 1 tot en met `N`. De faculteit van 4 is bijvoorbeeld 1 * 2 * 3 * 4 = 24.

## Code

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Vind het programma in het bestand [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Uitvoer

Voer het programma een paar keer uit. Probeer verschillende waarden van `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Opmerkingen

Het programma gebruikt de operator `*=`. Hij vermenigvuldigt en bewaart het resultaat in de variabele. `$x *= $y` is dus hetzelfde als `$x = $x * $y`.

Je kunt ook een ‘volledige’ lus schrijven, met `for` voor het blok:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Meer hierover

Deze taak komt een paar keer terug in de cursus. In dit deel lossen we de taak ook anders op. We gebruiken een functie die zichzelf aanroept.

In het tweede deel leer je de reductie-operators kennen. Daarmee is de oplossing heel makkelijk. Je leert ook je eigen operator `!` maken. Dan kun je `$n!` schrijven voor een faculteit. Later zie je nog een mooie oplossing met `where`.

{% include nav.html %}
