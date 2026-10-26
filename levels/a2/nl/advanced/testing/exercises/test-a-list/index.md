---
title: Twee controles plannen
translations_gpt:
---

{% include menu.html %}

## Opgave

Schrijf een testbestand. Gebruik `plan`, niet `done-testing`. Zeg met `plan` aan het begin dat het bestand precies twee controles heeft. Maak deze twee controles:

1. Controleer met `is-deeply` of de lijst `3, 1, 2` na het sorteren `[1, 2, 3]` geeft.
1. Controleer met `is` of `10 % 3` gelijk is aan `1`.

Schrijf voor elke controle een eigen korte beschrijving.

## Voorbeeld

Neem als beschrijvingen `sorted` en `remainder`. Dan print het programma dit:

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
