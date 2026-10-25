---
title: 'Solution: Omtrek van een rechthoek'
---

{% include menu.html %}

Dit programma moet een of twee command-line argumenten kunnen aannemen. De oplossing laat een nieuwe truc zien. De standaardwaarde van de tweede variabele is de waarde van de eerste: `sub MAIN($a, $b = $a)`. Dus in plaats van twee multi-functies hebben we één algemene functie. Als de vorm een vierkant is, stelt deze functie de grootte van de tweede zijde in.

## Code

Hier is de oplossing:

```raku
sub MAIN($a, $b = $a) {
    my $perimeter = 2 * ($a + $b);

    my $shape = $a == $b ?? 'vierkant' !! 'rechthoek';
    say "De omtrek van een $shape is $perimeter.";
}
```

🦋 Vind het programma in het bestand [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Output

Probeer verschillende invoerwaarden om zowel vierkanten als rechthoeken te testen.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
De omtrek van een vierkant is 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
De omtrek van een rechthoek is 6.
```

Let op: er is een derde geval, dat je ook moet testen. Met twee gelijke getallen moet het programma nog steeds begrijpen dat het een vierkant is:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
De omtrek van een vierkant is 8.
```

{% include nav.html %}
