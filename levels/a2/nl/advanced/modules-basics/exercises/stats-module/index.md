---
title: Een statistiekmodule gebruiken
translations_gpt: Oefening 'Gebruik een statistiekmodule'
---

{% include menu.html %}

## Opgave

Hier is een module, `Stats.rakumod`. Hij exporteert twee subroutines: `total` en `mean`. De subroutine `mean` gebruikt `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Schrijf een apart programma. Het gebruikt deze module. Het neemt de lijst `10, 20, 30, 40`. Het drukt het totaal en het gemiddelde van deze lijst af.

## Voorbeeld

Voer het programma uit met de module op het zoekpad. Het drukt af:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
