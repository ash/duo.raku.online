---
title: 'Solution: Omtrek van een rechthoek'
---

{% include menu.html %}

Dit programma moet werken met een of twee command-line argumenten. De oplossing laat een nieuwe truc zien. De tweede variabele heeft een standaardwaarde. Dat is de waarde van de eerste variabele: `sub MAIN($a, $b = $a)`. We maken dus geen twee multi-functies. In plaats daarvan hebben we één algemene functie. Bij een vierkant stelt deze functie de grootte van de tweede zijde in.

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

Probeer verschillende invoerwaarden. Test zowel vierkanten als rechthoeken.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
De omtrek van een vierkant is 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
De omtrek van een rechthoek is 6.
```

Er is ook een derde geval. Je moet dat ook testen. Geef twee gelijke getallen door. Het programma moet nog steeds zien dat dit een vierkant is:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
De omtrek van een vierkant is 8.
```

{% include nav.html %}
