---
title: 'Solution: Fractieel deel'
---

{% include menu.html %}

Om het fractionele deel van een getal te krijgen, trek je het gehele deel ervan af. Het gehele deel krijg je door het getal om te zetten naar een `Int`.

## Code

Hieronder staat een mogelijke oplossing:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Vind het programma in het bestand [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Uitvoer

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Opmerking

Probeer hetzelfde programma ook met negatieve getallen, bijvoorbeeld:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

In dit geval zou het resultaat ook correct moeten zijn:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
