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

Voer het programma een paar keer uit met verschillende waarden van `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Opmerkingen

Dit programma gebruikt de operator `*=`, die in één stap vermenigvuldigt en toewijst: `$x *= $y` betekent hetzelfde als `$x = $x * $y`.

In plaats van de postfix-vorm kun je ook een ‘volledige’ lus gebruiken:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Meer over dit onderwerp

We komen nog een paar keer terug op deze taak. Later in dit deel van de cursus lossen we de taak ook op met recursie.

In het tweede deel van de cursus leren we de reductie-operators kennen. Ze maken de oplossing heel eenvoudig. We maken ook onze eigen operator `!`, zodat `$n!` een faculteit geeft. Ten slotte is er nog een interessante oplossing wanneer we het over de `where`-clausule hebben.

{% include nav.html %}
