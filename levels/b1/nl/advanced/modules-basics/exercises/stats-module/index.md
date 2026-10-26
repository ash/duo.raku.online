---
title: Een statistiekmodule gebruiken
translations_gpt: Oefening 'Gebruik een statistiekmodule'
---

{% include menu.html %}

## Opgave

Je hebt een module `Stats.rakumod` die twee subroutines exporteert, `total` en `mean`. De subroutine `mean` is gebouwd op `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Schrijf een apart programma dat deze module gebruikt. Voor de lijst `10, 20, 30, 40` moet het zowel het totaal als het gemiddelde afdrukken.

## Voorbeeld

Als je het uitvoert met de module op het zoekpad, drukt het programma af:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
