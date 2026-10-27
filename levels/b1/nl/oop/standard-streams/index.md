---
title: Standaardstromen
translations_gpt:
---

{% include menu.html %}

Elk programma heeft drie _standaardstromen_ die het met zijn omgeving verbinden. Het zijn standaarduitvoer, standaardfout en standaardinvoer. Raku maakt ze beschikbaar via drie bijzondere variabelen: `$*OUT`, `$*ERR` en `$*IN`.

Eigenlijk schrijf je al vanaf het allereerste begin naar de standaarduitvoer. Zowel `say` als `print` sturen hun tekst naar `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

Foutmeldingen en andere meldingen over problemen gaan naar een aparte stroom, de standaardfout. Zo raken ze niet vermengd met de echte uitvoer van het programma. De routine `note` schrijft daarheen:

```raku
note 'Something looks wrong'; # goes to standard error
```

Ze apart houden is handig, omdat je elke stroom los kunt omleiden. Je kunt bijvoorbeeld de uitvoer van een programma in een bestand opslaan. De foutmeldingen verschijnen dan nog steeds op het scherm.

Je kunt ook rechtstreeks naar de stromen schrijven. `$*OUT` en `$*ERR` zijn allebei _handles_ met hun eigen methoden `say` en `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

De derde stroom, `$*IN`, is de standaardinvoer. Je hebt hem al gebruikt, maar niet direct: `prompt` leest er een regel uit. In het onderwerp over [bestandshandles](/nl/oop/file-handles) komen we terug op het lezen van invoer. Dat komt doordat `$*IN` een handle is, net als een open bestand.

{% include nav.html %}
