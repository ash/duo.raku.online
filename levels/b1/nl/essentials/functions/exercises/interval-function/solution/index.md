---
title: 'Solution: Intervalfunctie'
---

{% include menu.html %}

Deze functie gebruikt een `if`-constructie met drie vertakkingen. De eerste twee vertakkingen hebben een Booleaanse test. De derde vertakking heeft geen test nodig. Als het getal de eerste twee tests niet haalt, is dit de enige optie die overblijft.

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
