---
title: 'Solution: De waarde van e'
---

{% include menu.html %}

## Disclaimer

Raku heeft al een constante `e`. Die geeft meteen het antwoord op deze taak. De oplossing hieronder is alleen om te leren.

## Code

In de formule zit een faculteit. We kennen al minstens twee manieren om een faculteit te berekenen. Later komen er meer manieren. Het programma hieronder heeft twee functies. Eén functie berekent de faculteit. De andere telt de eerste termen van de formule op.

De functie moet ook zonder argumenten werken. Dan draait de lus een vast aantal keer. Daarom geven we de parameter een [standaardwaarde](/nl/essentials/functions/default-values): `sub e-approx($max = 100)`.

Kijk naar de code. Beide functies maken hun resultaat op bijna dezelfde manier. Elke functie heeft [`for` aan het einde van een regel](/nl/essentials/loops/postfix-for). Deze lus gaat over een [bereik](/nl/essentials/ranges).

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

Hier zijn de resultaten voor 10 en 100 rondes van de lus. Probeer ook andere waarden van `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
