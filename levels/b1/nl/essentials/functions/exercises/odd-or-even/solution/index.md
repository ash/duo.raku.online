---
title: 'Solution: Oneven of even'
---

{% include menu.html %}

Het lichaam van deze functie is vrij klein. Dat is een goede reden om de `return`-routine weg te laten. Je kunt ook de puntkomma aan het einde van de regel weglaten.

## Code

Hier is de oplossing:

```raku
sub f($n) {
    $n %% 2 ?? 'Even' !! 'Odd'
}

say f(10);
say f(5);
say f(0);
say f(3);
```

🦋 Vind het programma in het bestand [odd-or-even.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/odd-or-even.raku).

## Uitvoer

```console
$ raku exercises/functions/odd-or-even.raku
Even
Odd
Even
Odd
```

{% include nav.html %}
