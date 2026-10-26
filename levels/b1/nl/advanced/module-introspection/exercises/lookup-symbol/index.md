---
title: Een symbool opzoeken
translations_gpt:
---

{% include menu.html %}

## Opgave

Naast het weergeven van de namen van een pakket kun je ook één enkele naam bereiken. Gebruik daarvoor de naam als sleutel in de stash van het pakket. Dan hoeft de naam niet vast in de code te staan. Hier is een module, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Schrijf een apart programma dat de module laadt en de waarde van `$pi` afdrukt. Het moet `$pi` opzoeken in de stash met `Circle::{'$pi'}`. Het mag niet de gekwalificeerde naam `$Circle::pi` gebruiken.

## Voorbeeld

Als je het uitvoert met de module op het zoekpad, drukt het programma af:

```console
$ raku -I. lookup.raku
3.14
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
