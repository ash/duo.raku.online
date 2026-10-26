---
title: Een array aliassen
translations_gpt:
---

{% include menu.html %}

## Probleem

Hier is een array:

```raku
my @original = 10, 20, 30;
```

Maak een tweede naam, `@alias`, voor _hetzelfde_ array. Kopieer het array niet. Voeg deze keer met `push` een nieuw element toe aan `@original`. Print daarna `@alias`. Zo zie je dat de alias meer ziet dan nieuwe waarden. Hij ziet ook veranderingen in de structuur van het array.

## Voorbeeld

Het programma print:

```
[10 20 30 40]
```

## Oplossing

✅ [Zie de oplossing](solution)

{% include nav.html %}
