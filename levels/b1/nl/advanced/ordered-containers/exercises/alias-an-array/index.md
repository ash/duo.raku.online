---
title: Een array aliassen
translations_gpt:
---

{% include menu.html %}

## Probleem

Je hebt dit array:

```raku
my @original = 10, 20, 30;
```

Maak een tweede naam, `@alias`, voor _hetzelfde_ array, zonder het te kopiëren. Voeg deze keer met `push` een nieuw element toe aan `@original`, en print daarna `@alias`. Zo zie je dat de alias ook veranderingen in structuur ziet, niet alleen in waarden.

## Voorbeeld

Het programma print:

```
[10 20 30 40]
```

## Oplossing

✅ [Zie de oplossing](solution)

{% include nav.html %}
