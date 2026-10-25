---
title: Landcodes
---

{% include menu.html %}

## Probleem

Je hebt een array met een lijst van landcodes van twee letters:

```raku
my @codes = < FR IT DE EE LV US CN IN BR >;
```

Maak het programma af. Het moet de volledige namen van deze landen printen, één per regel. Gebruik het bestand [cc.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/country-codes/cc.raku). Het bevat een hash die voor elke code de naam van het land geeft.

## Voorbeeld

Dit is wat het programma print. Alleen de eerste paar namen worden getoond:

```console
$ raku country-codes.raku
Frankrijk
Italië
Duitsland
. . .
```

## Oplossing

✅ [Zie de oplossing](solution)

{% include nav.html %}
