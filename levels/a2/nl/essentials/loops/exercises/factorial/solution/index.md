---
title: 'Solution: Faculteit'
---

{% include menu.html %}

De faculteit van `N` is: alle hele getallen van 1 tot `N` met elkaar vermenigvuldigd. De faculteit van 4 is bijvoorbeeld 1 * 2 * 3 * 4 = 24.

## Code

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Vind het programma in het bestand [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Uitvoer

Voer het programma een paar keer uit met verschillende waarden van `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Opmerkingen

Dit programma gebruikt de operator `*=`. Het is een korte manier om te vermenigvuldigen en toe te wijzen: `$x *= $y` betekent hetzelfde als `$x = $x * $y`.

Je kunt ook een ‘volledige’ lus gebruiken in plaats van de postfix-vorm:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Meer hierover

We komen in de cursus meerdere keren terug op deze taak. In dit deel van de cursus lossen we de taak ook op met recursie.

In het tweede deel van de cursus leer je de reductie-operators kennen. Daarmee is de oplossing heel makkelijk. Je leert ook om je eigen operator `!` te maken. Dan kun je `$n!` schrijven voor een faculteit. Later zien we nog een interessante oplossing met de `where`-clausule.

{% include nav.html %}
