---
title: Een symbool opzoeken
translations_gpt:
---

{% include menu.html %}

## Opgave

Je kunt de namen van een pakket weergeven. Je kunt ook op een andere manier één naam krijgen. Gebruik de naam als sleutel in de stash van het pakket. De stash is de tabel met namen van het pakket. Met een sleutel kan het programma de naam kiezen terwijl het draait. Hier is een module, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Schrijf een apart programma. Het laadt de module. Dan drukt het de waarde van `$pi` af. Het moet `$pi` in de stash zoeken met `Circle::{'$pi'}`. Gebruik niet de volledige naam `$Circle::pi`.

## Voorbeeld

Voer het programma uit met de module op het zoekpad. Het drukt af:

```console
$ raku -I. lookup.raku
3.14
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
