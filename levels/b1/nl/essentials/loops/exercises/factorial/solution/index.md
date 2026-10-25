---
title: 'Solution: Faculteit'
---

{% include menu.html %}

De faculteit van `N` is het product van alle gehele getallen van 1 tot en met `N`. De faculteit van 4 is bijvoorbeeld 1 * 2 * 3 * 4 = 24.

## Code

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Vind het programma in het bestand [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Uitvoer

Voer het programma een paar keer uit en probeer verschillende waarden van `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Opmerkingen

Dit programma gebruikt de operator `*=`, een korte vorm voor vermenigvuldiging met toewijzing: `$x *= $y` is hetzelfde als `$x = $x * $y`.

Je kunt ook een ‘volledige’ lus gebruiken in plaats van de postfix-vorm:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Meer over dit onderwerp

We zullen meerdere keren op deze taak terugkomen. In dit deel van de cursus zullen we de taak ook recursief oplossen.

In het tweede deel van de cursus leren we de zogenaamde reductie-operators kennen, die de oplossing heel eenvoudig maken. We zien ook hoe je je eigen operator `!` definieert, zodat je `$n!` kunt schrijven om een faculteit te berekenen. Ten slotte zien we nog een interessante oplossing wanneer we het over de `where`-clausule hebben.

{% include nav.html %}
