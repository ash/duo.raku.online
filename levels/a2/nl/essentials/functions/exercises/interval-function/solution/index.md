---
title: 'Solution: Intervalfunctie'
---

{% include menu.html %}

De functie heeft een `if` met drie vertakkingen. De eerste twee vertakkingen hebben een test. De test is `True` of `False`. De derde vertakking heeft geen test nodig. Een getal kan de eerste twee tests niet halen. Dan blijft alleen de derde vertakking over.

## Code

Hier is de oplossing:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Vind het programma in het bestand [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Uitvoer

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}
