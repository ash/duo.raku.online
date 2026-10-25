---
title: 'Solution: De waarde van e'
---

{% include menu.html %}

## Disclaimer

Raku heeft een ingebouwde constante `e`. Die geeft meteen het antwoord op deze taak. De oplossing hieronder is alleen bedoeld om van te leren.

## Code

De formule in deze taak bevat een faculteit. We hebben al minstens twee manieren om die te berekenen, en er komen er nog meer. Het programma hieronder definieert twee functies. De ene berekent de faculteit, en de andere berekent de deelsom van de formule.

De functie moet ook zonder argumenten werken. In dat geval draait de lus een vast aantal keer. Daarom kunnen we de parameter een [standaardwaarde](/nl/essentials/functions/default-values) geven: `sub e-approx($max = 100)`.

Let in de code op dat beide functies hun resultaten op een vergelijkbare manier opbouwen. Ze gebruiken een [postfix `for`-lus](/nl/essentials/loops/postfix-for) over een [bereik](/nl/essentials/ranges).

Hier is de oplossing:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Vind het programma in het bestand [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Uitvoer

Met 10 en 100 rondes van de lus krijgen we deze resultaten. Probeer ook andere waarden van `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
