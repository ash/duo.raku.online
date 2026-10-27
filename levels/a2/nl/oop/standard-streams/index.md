---
title: Standaardstromen
translations_gpt:
---

{% include menu.html %}

Elk programma heeft drie _standaardstromen_. Een stroom brengt tekst in een programma of eruit. De drie stromen verbinden het programma met de buitenwereld. Het zijn standaarduitvoer, standaardfout en standaardinvoer. Raku geeft je er drie bijzondere variabelen voor: `$*OUT`, `$*ERR` en `$*IN`.

Standaarduitvoer is voor de gewone uitvoer van een programma. Je gebruikt hem al de hele tijd. `say` en `print` sturen hun tekst naar `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

Foutmeldingen en andere meldingen over problemen gaan naar de standaardfout. Dat is een aparte stroom. Dus mengen deze meldingen niet met de echte uitvoer van het programma. De routine `note` schrijft naar de standaardfout:

```raku
note 'Something looks wrong'; # goes to standard error
```

Dat is handig. Je kunt elk van de twee stromen naar een andere plek sturen. Dat heet omleiden. Je kunt bijvoorbeeld de uitvoer in een bestand opslaan. Maar je ziet de foutmeldingen nog steeds op het scherm.

Je kunt ook rechtstreeks naar de stromen schrijven. Zowel `$*OUT` als `$*ERR` is een _handle_. Met een handle kan een programma gegevens schrijven of lezen. Elke handle heeft eigen methoden `say` en `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

De derde stroom, `$*IN`, is de standaardinvoer. Die brengt tekst in het programma, bijvoorbeeld van het toetsenbord. Je hebt hem al gebruikt, maar niet direct. De functie `prompt` leest er een regel uit. Op de pagina over [bestandshandles](/nl/oop/file-handles) komen we terug op het lezen van invoer. Dat komt doordat `$*IN` een handle is, net als een open bestand.

{% include nav.html %}
