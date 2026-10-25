---
title: 'Solution: Fractieel deel'
---

{% include menu.html %}

Hoe krijg je het fractionele deel van een getal? Haal het gehele deel eraf. Voor het gehele deel zet je het getal om naar een `Int`.

## Code

Hier is een oplossing:

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

Probeer het programma ook met negatieve getallen. Bijvoorbeeld:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Ook hier is het resultaat goed:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
